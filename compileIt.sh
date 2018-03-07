gcc -o inspectBinaryFile inspectBinaryFile.c simulate.c T2toolkit.c -O3 -lm 
gcc -o simulateSystemNoise simulateSystemNoise.c simulate.c T2toolkit.c -O3 -lm
gcc -o simulateSetLevels simulateSetLevels.c simulate.c T2toolkit.c -O3 -lm
gcc -o simulateCal simulateCal.c simulate.c T2toolkit.c -O3 -lm
gcc -o createSearchFile createSearchFile.c simulate.c T2toolkit.c -L/usr/lib/ -I/usr/include/ -lcfitsio -O3 -lm
gcc -o simulateSimplePsr simulateSimplePsr.c simulate.c T2toolkit.c -O3 -lm
gcc -o simulateRFI simulateRFI.c simulate.c T2toolkit.c -O3 -lm
gcc -o simulateComplexPsr simulateComplexPsr.c simulate.c T2toolkit.c t1polyco.c tempo2pred.c cheby2d.c -O3 -lm

