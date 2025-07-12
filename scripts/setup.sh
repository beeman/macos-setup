#!/bin/zsh

# macOS Setup Script

# Exit immediately if a command exits with a non-zero status.
set -e

# Source constants
source "$(dirname "$0")/constants.sh"

echo "Starting macOS setup..."

# Function to check if a command exists
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# Source and execute individual setup scripts
source "$(dirname "$0")/setup-homebrew.sh"
source "$(dirname "$0")/setup-packages.sh"
source "$(dirname "$0")/setup-git.sh"
source "$(dirname "$0")/setup-oh-my-zsh.sh"
source "$(dirname "$0")/setup-macos-defaults.sh"

echo "macOS setup complete!"
