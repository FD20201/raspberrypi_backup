#!/bin/bash

BACKUP_PFAD="/mnt/Sicherungen/RaspberryPI"
BACKUP_ANZAHL="3"
BACKUP_NAME="RaspberryPIBackup"

dd if=/dev/mmcblk0 of=${BACKUP_PFAD}/${BACKUP_NAME}-$(date +%Y%m%d-%H%M%S).img bs=1MB
pushd ${BACKUP_PFAD}; ls -tr ${BACKUP_PFAD}/${BACKUP_NAME}* | head -n -${BACKUP_ANZAHL} | xargs rm; popd





