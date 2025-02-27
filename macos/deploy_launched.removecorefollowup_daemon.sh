#!/bin/zsh
echo "Downloading launched.removecorefollowup.plist..."
mkdir -p ${HOME}/Library/LaunchAgents
rm -f ${HOME}/Library/LaunchAgents/launched.removecorefollowup.plist
curl -o ${HOME}/Library/LaunchAgents/launched.removecorefollowup.plist "https://raw.githubusercontent.com/ktnjared/system-init/refs/heads/main/macos/launched.removecorefollowup.plist"
echo "Installing launched.removecorefollowup.plist..."
launchctl load -w ${HOME}/Library/LaunchAgents/launched.removecorefollowup.plist