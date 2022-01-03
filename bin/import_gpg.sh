#!/bin/sh

usage()
{
  echo "Usage: $0 <gpg_backup_dir>"
}

BACKUPDIR=$1

echo -n "Importing public keys..."
gpg --import $BACKUPDIR/mypubkeys.asc
if [ $? -eq 0 ]; then echo "OK"; else echo "ERROR"; exit 6; fi
echo "Public keys import from $BACKUPDIR/mypubkeys.asc\n"

echo -n "Importing secret keys..."
gpg --import $BACKUPDIR/myprivatekeys.asc
if [ $? -eq 0 ]; then echo "OK"; else echo "ERROR"; exit 6; fi
echo "Secret keys import from $BACKUPDIR/myprivatekeys.asc\n"

echo -n "Importing trustdb keys..."
gpg --import-ownertrust $BACKUPDIR/otrust.txt
if [ $? -eq 0 ]; then echo "OK"; else echo "ERROR"; exit 6; fi
echo "Trustdb imported from $BACKUPDIR/otrust.txt\n"

echo "Imported keys\n"
gpg --list-public-keys

echo "Imported secret keys\n"
gpg --list-secret-keys
