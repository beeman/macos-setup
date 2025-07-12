#!/bin/zsh

# Configure Git
configure_git() {
  echo "Configuring Git..."
  if [ -z "$(git config --global user.name)" ]; then
    git config --global user.name "${GIT_USER_NAME}"
    echo "Git user name set to: ${GIT_USER_NAME}"
  else
    echo "Git user name is already set to: $(git config --global user.name)"
  fi

  if [ -z "$(git config --global user.email)" ]; then
    git config --global user.email "${GIT_USER_EMAIL}"
    echo "Git user email set to: ${GIT_USER_EMAIL}"
  else
    echo "Git user email is already set to: $(git config --global user.email)"
  fi
}

configure_git
