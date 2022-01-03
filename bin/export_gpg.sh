#!/bin/sh

BACKUPDIR=$HOME/gpg_backup
mkdir -p $BACKUPDIR
if [ $? -eq 0 ]; then echo "Created backup dir $BACKUPDIR"; else echo "ERROR"; exit 6; fi
echo

echo -n "Exporting public keys..."
gpg -a --export > $BACKUPDIR/mypubkeys.asc
if [ $? -eq 0 ]; then echo "OK"; else echo "ERROR"; exit 6; fi
echo "Public keys exported to $BACKUPDIR/mypubkeys.asc\n"

echo -n "Exporting secret keys..."
gpg -a --export-secret-keys > $BACKUPDIR/myprivatekeys.asc
if [ $? -eq 0 ]; then echo "OK"; else echo "ERROR"; exit 6; fi
echo "Secret keys exported to $BACKUPDIR/myprivatekeys.asc\n"

echo -n "Exporting trustdb keys..."
gpg --export-ownertrust > $BACKUPDIR/otrust.txt
if [ $? -eq 0 ]; then echo "OK"; else echo "ERROR"; exit 6; fi
echo "Trustdb exported to $BACKUPDIR/otrust.txt\n"

echo "Please tranfer safely the keys to another device"
