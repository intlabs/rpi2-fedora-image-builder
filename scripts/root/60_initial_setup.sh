#!/bin/bash

[[ -e "$RESOURCEDIR/systemd" ]] || exit 0
echo "Adding services..."
mkdir -p "$MNTDIR/etc/systemd/system" || exit 1
/bin/cp -rf $RESOURCEDIR/systemd/* "$MNTDIR/etc/systemd/system/" || exit 1
