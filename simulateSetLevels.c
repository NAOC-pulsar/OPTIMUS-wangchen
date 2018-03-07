// Routine to read in a binary data file and produce a scaling factor
// that ensures that the rms digitiser output will be 10
//
// Compile with: gcc -lm -o simulateSetLevels simulateSetLevels.c T2toolkit.c -L/Users/hob044/hob044/software/cfitsio/lib -lcfitsio -O3

#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
#include "T2toolkit.h"
#include "simulate.h"

int main(int argc, char *argv[])
{
  double t;
  header *head;  
  int i,n;
  FILE *fout;
  float *dataStream;
  char fname[1024];
  char oname[1024];
  FILE *fin;
  float readVal;
  float x,x2;
  double sdev;

  char paramFile[MAX_PARAM_FILES][1024];
  int  useParamFile=0;

  // Read input parameters
  for (i=0;i<argc;i++)
    {
      if (strcmp(argv[i],"-f")==0) // Input file
	{
	  strcpy(fname,argv[++i]);
	}

    }
  if (!(fin = fopen(fname,"rb")))
    {
      printf("Unable to open file: %s\n",fname);
      exit(1);
    }
  sprintf(oname,"%s.levelSetting",fname);
  head = (header *)malloc(sizeof(header));
  simulateReadHeaderParameters(head,fin);

  // Currently hardcoded to read 1 second of data
  dataStream = (float *)malloc(sizeof(float)*(1.0/head->tsamp)*head->nchan);
  n=0;
  x=x2=0;
  for (t=0;t<1;t+=head->tsamp)
    {
      for (i=0;i<head->nchan;i++)
	{
	  fread(&readVal,sizeof(float),1,fin);	  
	  dataStream[n] = readVal;
	  x+=dataStream[n];
	  x2+=pow(dataStream[n],2);
	  n++;
	} 
    }
  sdev = sqrt(x2/(double)n - pow(x/(double)n,2));
  printf("Standard deviation is %g\n",sdev);
  fout = fopen(oname,"w");
  fprintf(fout,"%g\n",10.0/sdev);
  fclose(fout);
  free(head);
  free(dataStream);
}


