#!/usr/bin/env bash

get_latest_release() {
   curl -sL https://api.github.com/repos/$1/releases/latest | grep '"tag_name":' | cut -d'"' -f4
}

COMPOSE_LATEST_VERSION=$(get_latest_release "docker/compose")

echo "Docker compose plugin latest version: $COMPOSE_LATEST_VERSION"

curl -fsSL https://get.docker.com -o get-docker.sh | sh

sh get-docker.sh

rm get-docker.sh

echo "Docker installed."

mkdir -p /usr/lib/docker/cli-plugins/

curl -SL https://github.com/docker/compose/releases/download/$COMPOSE_LATEST_VERSION/docker-compose-linux-x86_64 -o /usr/lib/docker/cli-plugins/docker-compose

chmod +x /usr/lib/docker/cli-plugins/docker-compose

echo "All done, you can use docker -v && docker compose version to verify the installation."
