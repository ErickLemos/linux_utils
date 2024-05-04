#!/bin/bash

pipewireConfFile=pipewire.conf
pipewirePulseFile=pipewire-pulse.conf
clientFile=client.conf

pipewireDir=/usr/share/pipewire

sudo rm $pipewireDir/$pipewireConfFile.old
sudo rm $pipewireDir/$pipewirePulseFile.old
sudo rm $pipewireDir/$clientFile.old

sudo mv $pipewireDir/$pipewireConfFile $pipewireDir/$pipewireConfFile.old
sudo mv $pipewireDir/$pipewirePulseFile $pipewireDir/$pipewirePulseFile.old
sudo mv $pipewireDir/$clientFile $pipewireDir/$clientFile.old

sudo cp ./$pipewireConfFile $pipewireDir/$pipewireConfFile
sudo cp ./$pipewirePulseFile $pipewireDir/$pipewirePulseFile
sudo cp ./$clientFile $pipewireDir/$clientFile