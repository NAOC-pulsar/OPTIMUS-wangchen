#!/bin/bash
tempo2 -pred  "PKS 55999 56001 1040 1460 16 2 1000" -f J1646+0502S.par
\cp t2pred.dat J1646+0502S.pred
../simulateComplexPsr -o J1646+0502S.dat -p params_setup_fast1.dat -p J1646+0502S.params
../simulateSystemNoise -o snoise_fast1.dat -p params_setup_fast1.dat
../simulateSystemNoise -o snoise_fast2.dat -p params_setup_fast2.dat
../simulateSystemNoise -o snoise_fast3.dat -p params_setup_fast3.dat
../simulateSystemNoise -o snoise_fast4.dat -p params_setup_fast4.dat
../simulateSystemNoise -o snoise_fast5.dat -p params_setup_fast5.dat
../simulateSystemNoise -o snoise_fast6.dat -p params_setup_fast6.dat
../simulateSystemNoise -o snoise_fast7.dat -p params_setup_fast7.dat
../simulateSystemNoise -o snoise_fast8.dat -p params_setup_fast8.dat
../simulateSystemNoise -o snoise_fast9.dat -p params_setup_fast9.dat
../simulateSystemNoise -o snoise_fast10.dat -p params_setup_fast10.dat
../simulateSystemNoise -o snoise_fast11.dat -p params_setup_fast11.dat
../simulateSystemNoise -o snoise_fast12.dat -p params_setup_fast12.dat
../simulateSystemNoise -o snoise_fast13.dat -p params_setup_fast13.dat
../simulateSystemNoise -o snoise_fast14.dat -p params_setup_fast14.dat
../simulateSystemNoise -o snoise_fast15.dat -p params_setup_fast15.dat
../simulateSystemNoise -o snoise_fast16.dat -p params_setup_fast16.dat
../simulateSystemNoise -o snoise_fast17.dat -p params_setup_fast17.dat
../simulateSystemNoise -o snoise_fast18.dat -p params_setup_fast18.dat
../simulateSystemNoise -o snoise_fast19.dat -p params_setup_fast19.dat

../simulateSetLevels -f snoise_fast1.dat
../simulateSetLevels -f snoise_fast2.dat
../simulateSetLevels -f snoise_fast3.dat
../simulateSetLevels -f snoise_fast4.dat
../simulateSetLevels -f snoise_fast5.dat
../simulateSetLevels -f snoise_fast6.dat
../simulateSetLevels -f snoise_fast7.dat
../simulateSetLevels -f snoise_fast8.dat
../simulateSetLevels -f snoise_fast9.dat
../simulateSetLevels -f snoise_fast10.dat
../simulateSetLevels -f snoise_fast11.dat
../simulateSetLevels -f snoise_fast12.dat
../simulateSetLevels -f snoise_fast13.dat
../simulateSetLevels -f snoise_fast14.dat
../simulateSetLevels -f snoise_fast15.dat
../simulateSetLevels -f snoise_fast16.dat
../simulateSetLevels -f snoise_fast17.dat
../simulateSetLevels -f snoise_fast18.dat
../simulateSetLevels -f snoise_fast19.dat

../createSearchFile -o beam1.sf -f snoise_fast1.dat -f J1646+0502S.dat -p params_setup_fast1.dat | grep "Angle is" > beam1.log
../createSearchFile -o beam2.sf -f snoise_fast2.dat -f J1646+0502S.dat -p params_setup_fast2.dat | grep "Angle is" > beam2.log
../createSearchFile -o beam3.sf -f snoise_fast3.dat -f J1646+0502S.dat -p params_setup_fast3.dat | grep "Angle is" > beam3.log
../createSearchFile -o beam4.sf -f snoise_fast4.dat -f J1646+0502S.dat -p params_setup_fast4.dat | grep "Angle is" > beam4.log
../createSearchFile -o beam5.sf -f snoise_fast5.dat -f J1646+0502S.dat -p params_setup_fast5.dat | grep "Angle is" > beam5.log
../createSearchFile -o beam6.sf -f snoise_fast6.dat -f J1646+0502S.dat -p params_setup_fast6.dat | grep "Angle is" > beam6.log
../createSearchFile -o beam7.sf -f snoise_fast7.dat -f J1646+0502S.dat -p params_setup_fast7.dat | grep "Angle is" > beam7.log
../createSearchFile -o beam8.sf -f snoise_fast8.dat -f J1646+0502S.dat -p params_setup_fast8.dat | grep "Angle is" > beam8.log
../createSearchFile -o beam9.sf -f snoise_fast9.dat -f J1646+0502S.dat -p params_setup_fast9.dat | grep "Angle is" > beam9.log
../createSearchFile -o beam10.sf -f snoise_fast10.dat -f J1646+0502S.dat -p params_setup_fast10.dat | grep "Angle is" > beam10.log
../createSearchFile -o beam11.sf -f snoise_fast11.dat -f J1646+0502S.dat -p params_setup_fast11.dat | grep "Angle is" > beam11.log
../createSearchFile -o beam12.sf -f snoise_fast12.dat -f J1646+0502S.dat -p params_setup_fast12.dat | grep "Angle is" > beam12.log
../createSearchFile -o beam13.sf -f snoise_fast13.dat -f J1646+0502S.dat -p params_setup_fast13.dat | grep "Angle is" > beam13.log
../createSearchFile -o beam14.sf -f snoise_fast14.dat -f J1646+0502S.dat -p params_setup_fast14.dat | grep "Angle is" > beam14.log
../createSearchFile -o beam15.sf -f snoise_fast15.dat -f J1646+0502S.dat -p params_setup_fast15.dat | grep "Angle is" > beam15.log
../createSearchFile -o beam16.sf -f snoise_fast16.dat -f J1646+0502S.dat -p params_setup_fast16.dat | grep "Angle is" > beam16.log
../createSearchFile -o beam17.sf -f snoise_fast17.dat -f J1646+0502S.dat -p params_setup_fast17.dat | grep "Angle is" > beam17.log
../createSearchFile -o beam18.sf -f snoise_fast18.dat -f J1646+0502S.dat -p params_setup_fast18.dat | grep "Angle is" > beam18.log
../createSearchFile -o beam19.sf -f snoise_fast19.dat -f J1646+0502S.dat -p params_setup_fast19.dat | grep "Angle is" > beam19.log

