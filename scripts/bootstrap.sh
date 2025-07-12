#!/bin/zsh

# macOS Setup Bootstrap Script

# Exit immediately if a command exits with a non-zero status.
set -e

REPO_URL="https://github.com/beeman/macos-setup.git"
REPO_DIR="${HOME}/macos-setup"

if [ ! -d "$REPO_DIR" ]; then
  echo "Cloning macOS setup repository to $REPO_DIR..."
  git clone "$REPO_URL" "$REPO_DIR"
else
  echo "Repository already cloned to $REPO_DIR. Updating..."
  (cd "$REPO_DIR" && git pull)
fi

echo "Executing setup script..."
exec "$REPO_DIR/scripts/setup.sh"
