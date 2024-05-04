#!/bin/bash

cd $HOME/.local/share/JetBrains/Toolbox/apps/pycharm-professional/jbr/lib/
sudo chown root chrome-sandbox
sudo chmod 4755 chrome-sandbox

cd $HOME/.local/share/JetBrains/Toolbox/apps/intellij-idea-ultimate/jbr/lib/
sudo chown root chrome-sandbox
sudo chmod 4755 chrome-sandbox