#!/bin/bash

SRCDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/ && pwd )"

targetfolder="`eval echo ~/printer_data/config/Voron_KlipperScreen`"
[ ! -d $targetfolder ] && mkdir $targetfolder

cp -n ${SRCDIR}/backgrounds/* $targetfolder/

themefolder="~/KlipperScreen/styles/Voron"
[ -d $themefolder ] && rm -r $themefolder
cp -r ~/KlipperScreen/styles/material-darker ~/KlipperScreen/styles/voron
cp -r ${SRCDIR}/style.css ~/KlipperScreen/styles/voron/

sudo systemctl restart KlipperScreen
