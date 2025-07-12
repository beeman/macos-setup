#!/bin/zsh

# Install packages using Homebrew
install_packages() {
  echo "Installing packages from Brewfile..."
  local brewfile_path="$(dirname "$0")/../Brewfile"

  if [ -f "$brewfile_path" ]; then
    brew bundle --file="$brewfile_path"
  else
    echo "Brewfile not found at $brewfile_path. Please ensure it exists." >&2
    exit 1
  fi
}

install_packages
