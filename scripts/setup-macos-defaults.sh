#!/bin/zsh

# Set macOS defaults
set_macos_defaults() {
  echo "Setting macOS defaults..."

  # Show the ~/Library folder
  chflags nohidden ~/Library

  # Show hidden files in Finder
  defaults write com.apple.finder AppleShowAllFiles -bool true

  # Show path bar in Finder
  defaults write com.apple.finder ShowPathbar -bool true

  # Show status bar in Finder
  defaults write com.apple.finder ShowStatusBar -bool true

  # Use list view in all Finder windows by default
  defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

  # Avoid creating .DS_Store files on network volumes
  defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

  # Enable tap to click
  defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
  defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

  # Set a fast keyboard repeat rate
  defaults write -g KeyRepeat -int 2
  defaults write -g InitialKeyRepeat -int 15

  # Restart Finder to apply changes
  killall Finder
}

set_macos_defaults
