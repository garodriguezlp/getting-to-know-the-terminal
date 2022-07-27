# You can find the new timestamped tags here: https://hub.docker.com/r/gitpod/workspace-full/tags
FROM gitpod/workspace-java-17:2022-07-26-05-11-39

# Powershell Installation
    # Update the list of packages
RUN sudo apt-get update \
    # Install pre-requisite packages.
    && sudo apt-get install -y wget apt-transport-https software-properties-common \
    && wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb" \
    # Register the Microsoft repository GPG keys
    && sudo dpkg -i packages-microsoft-prod.deb \
    # Update the list of packages after we added packages.microsoft.com
    && sudo apt-get update

# Install custom tools, runtime, etc.
# install-packages is a wrapper for `apt` that helps skip a few commands in the docker env.
RUN sudo install-packages \
          tmux \
          powershell \