@ECHO OFF
@REM ###########################################
@REM # Script file to run the flow 
@REM # 
@REM ###########################################
@REM #
@REM # Command line for ngdbuild
@REM #
ngdbuild -p xc6slx45csg324-3 -nt timestamp -bm system.bmm "C:/Users/C16Sabin.Park/Documents/Classes/Semester_6/ECE_383/MicroBlaze_Projects_v2/lec_17/implementation/system.ngc" -uc system.ucf system.ngd 

@REM #
@REM # Command line for map
@REM #
map -o system_map.ncd -w -pr b -ol high -timing -detail system.ngd system.pcf 

@REM #
@REM # Command line for par
@REM #
par -w -ol high system_map.ncd system.ncd system.pcf 

@REM #
@REM # Command line for post_par_trce
@REM #
trce -e 3 -xml system.twx system.ncd system.pcf 

