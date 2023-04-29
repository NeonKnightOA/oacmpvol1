#!/bin/sh
# -----------------------------------------------------
# this script assumes that you have zip installed
# and it is in your path.  If zip is not installed
# this script will not work.  Please check your distro's
# documentation on how to install the zip package.
# -----------------------------------------------------
echo Compressing...
cd baseoa
zip -9r ..\z_oacmp1_beta.pk3 levelshots\*.*
zip -9r ..\z_oacmp1_beta.pk3 maps\*.aas
zip -9r ..\z_oacmp1_beta.pk3 maps\*.bsp
zip -9r ..\z_oacmp1_beta.pk3 models\*.*
zip -9r ..\z_oacmp1_beta.pk3 music\*.*
zip -9r ..\z_oacmp1_beta.pk3 scripts\*.arena
zip -9r ..\z_oacmp1_beta.pk3 scripts\*.shader
zip -9r ..\z_oacmp1_beta.pk3 sound\*.*
zip -9r ..\z_oacmp1_beta.pk3 textures\*.*
zip -9r ..\z_oacmp1_beta.pk3 *.cfg
zip -9r ..\z_oacmp1_beta.pk3 docs\COPYING
echo Done

exit 0
