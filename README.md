# Docker and Compose Installation Script

This script will install docker and the docker compose plugin (the replacement for docker-compose) with just one command.

* This script uses [official installation script](https://github.com/docker/docker-install) to install docker
* This script retrieves the [latest version from github of docker compose plugin](https://github.com/docker/compose/tags) and automatically install it.

## Usage

1. Clone this repository.
2. Make the `install.sh` executable by running `chmod +x install.sh`.
3. Execute the script by running `./install.sh`
4. Run `docker -v && docker compose version` to verify the installation.