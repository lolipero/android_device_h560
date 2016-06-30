#!/bin/bash

cd `dirname $0`
DSTDIR=$1

if [ -z "$DSTDIR" ]
then
    echo "Используйте: $0 <папка с исходниками>"
    exit 1
fi

red=$(tput setaf 1) # Red
grn=$(tput setaf 2) # Green
txtrst=$(tput sgr0) # Reset

if
echo "${grn}'frameworks_base.patch'${txtrst}"
cat patches/frameworks_base.patch | patch -d $DSTDIR/frameworks/base/ -p1 -N -r -
cp -R patches/res $DSTDIR/frameworks/base/packages/SystemUI
cp -R patches/mediatek $DSTDIR/frameworks/base/core/java/com
then
echo "${grn}Применён успешно!${txtrst}"
else
echo "${red}Не применён!${txtrst}"
fi

if
echo "${grn}'packages_apps_Settings.patch'${txtrst}"
cat patches/packages_apps_Settings.patch | patch -d $DSTDIR/packages/apps/Settings/ -p1 -N -r -
then
echo "${grn}Применён успешно!${txtrst}"
else
echo "${red}Не применён!${txtrst}"
fi

if
echo "${grn}'packages_apps_Nfc.patch'${txtrst}"
cat patches/packages_apps_Nfc.patch | patch -d $DSTDIR/packages/apps/Nfc/ -p1 -N -r -
then
echo "${grn}Применён успешно!${txtrst}"
else
echo "${red}Не применён!${txtrst}"
fi

if
echo "${grn}'external_tinycompress.patch'${txtrst}"
cat patches/external_tinycompress.patch | patch -d $DSTDIR/external/tinycompress/ -p1 -N -r -
then
echo "${grn}Применён успешно!${txtrst}"
else
echo "${red}Не применён!${txtrst}"
fi

if
echo "${grn}'packages_apps_CMUpdater.patch'${txtrst}"
cat patches/packages_apps_CMUpdater.patch | patch -d $DSTDIR/packages/apps/CMUpdater/ -p1 -N -r -
then
echo "${grn}Применён успешно!${txtrst}"
else
echo "${red}Не применён!${txtrst}"
fi

if
echo "${grn}'packages_apps_InCallUI.patch'${txtrst}"
cat patches/packages_apps_InCallUI.patch | patch -d $DSTDIR/packages/apps/InCallUI/ -p1 -N -r -
then
echo "${grn}Применён успешно!${txtrst}"
else
echo "${red}Не применён!${txtrst}"
fi

if
echo "${grn}'packages_apps_ContactsCommon'${txtrst}"
cat patches/packages_apps_ContactsCommon.patch | patch -d $DSTDIR/packages/apps/ContactsCommon/ -p1 -N -r -
then
echo "${grn}Применён успешно!${txtrst}"
else
echo "${red}Не применён!${txtrst}"
fi

if
echo "${grn}'packages_apps_Dialer'${txtrst}"
cat patches/packages_apps_Dialer.patch | patch -d $DSTDIR/packages/apps/Dialer/ -p1 -N -r -
then
echo "${grn}Применён успешно!${txtrst}"
else
echo "${red}Не применён!${txtrst}"
fi

if
echo "${grn}'frameworks_av.patch'${txtrst}"
cat patches/frameworks_av.patch | patch -d $DSTDIR/frameworks/av/ -p1 -N -r -
then
echo "${grn}Применён успешно!${txtrst}"
else
echo "${red}Не применён!${txtrst}"
fi

if
echo "${grn}'hardware_libhardware.patch'${txtrst}"
cat patches/hardware_libhardware.patch | patch -d $DSTDIR/hardware/libhardware/ -p1 -N -r -
then
echo "${grn}Применён успешно!${txtrst}"
else
echo "${red}Не применён!${txtrst}"
fi

cd $DSTDIR

#git diff > x.patch
