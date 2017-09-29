@echo off
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

exit 0
