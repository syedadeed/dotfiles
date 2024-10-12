#!/bin/bash

create() {
    local snapshot_name="$1"
    sudo btrfs subvolume snapshot / /.snapshots/"$snapshot_name"
    sudo cp /boot/loader/entries/arch.conf /boot/loader/entries/"${snapshot_name}.conf"
    sudo sed -i "s/@system/@snapshots\/${snapshot_name}/g" /boot/loader/entries/"${snapshot_name}.conf"
}

restore() {
    sudo mount /dev/arch/system /mnt
    sudo rm -rf /mnt/@system/*
    sudo btrfs subvolume delete /mnt/@system
    sudo btrfs subvolume snapshot / /mnt/@system
}

if [[ "$1" == "-c" ]]; then
    create "$2"
elif [[ "$1" == "-r" ]]; then
    restore
else
    echo "Usage: $0 {-c snapshot_name | -r }"
    exit 1
fi
