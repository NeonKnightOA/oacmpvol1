@echo off

rem -----------------------------------------------------
rem this script assumes that you have zip installed
rem and it is in your path.  If zip is not installed
rem this script will not work.  Please check your distro's
rem documentation on how to install the zip package.
rem -----------------------------------------------------

echo Compressing...
cd baseoa
..\zip.exe -9r ..\z_oacmp1_beta.pk3 levelshots\*.*
..\zip.exe -9r ..\z_oacmp1_beta.pk3 maps\*.*
..\zip.exe -9r ..\z_oacmp1_beta.pk3 models\*.*
..\zip.exe -9r ..\z_oacmp1_beta.pk3 scripts\*.*
..\zip.exe -9r ..\z_oacmp1_beta.pk3 sound\*.*
..\zip.exe -9r ..\z_oacmp1_beta.pk3 textures\*.*
..\zip.exe -9r ..\z_oacmp1_beta.pk3 *.cfg
echo Done

@echo on