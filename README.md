# macOS Setup

This repository contains a script to set up a new macOS system from scratch.

## Usage

To run the setup script, open a terminal and execute the following command:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/beeman/macos-setup/main/scripts/bootstrap.sh)"
```

### Unattended Setup

For unattended setup, you can set the following environment variables before running the script:

- `GIT_USER_NAME`: Your Git user name (defaults to `Your Name`)
- `GIT_USER_EMAIL`: Your Git user email (defaults to `your.email@example.com`)

Example:

```bash
GIT_USER_NAME="John Doe" GIT_USER_EMAIL="john.doe@example.com" /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/beeman/macos-setup/main/scripts/bootstrap.sh)"
```

### Local Development

If you have cloned this repository, you can run the setup script directly from your local copy:

```bash
./scripts/setup.sh
```

This is useful for testing changes to the `Brewfile` or the setup scripts before pushing them to GitHub.

## What it does

The script performs the following actions:

- Installs Homebrew if it's not already installed.
- Installs packages from the `Brewfile` using `brew bundle`.
- Configures Git with your name and email (unattended if environment variables are set).
- Installs Oh My Zsh.
- Sets some sensible macOS defaults.

## Idempotency

The script is idempotent, meaning it can be run multiple times without causing any issues. It checks if a tool is already installed or a setting is already configured before making any changes.

## Customization

You can customize the setup by editing the `Brewfile` to add or remove packages.