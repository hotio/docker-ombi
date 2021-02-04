[<img src="https://hotio.dev/img/ombi.png" alt="logo" height="130" width="130">](https://github.com/Ombi-app/Ombi)

[![GitHub Source](https://img.shields.io/badge/github-source-ffb64c?style=flat-square&logo=github&logoColor=white&labelColor=757575)](https://github.com/hotio/ombi)
[![GitHub Registry](https://img.shields.io/badge/github-registry-ffb64c?style=flat-square&logo=github&logoColor=white&labelColor=757575)](https://github.com/orgs/hotio/packages/container/package/ombi)
[![Docker Pulls](https://img.shields.io/docker/pulls/hotio/ombi?color=ffb64c&style=flat-square&label=pulls&logo=docker&logoColor=white&labelColor=757575)](https://hub.docker.com/r/hotio/ombi)
[![Discord](https://img.shields.io/discord/610068305893523457?style=flat-square&color=ffb64c&label=discord&logo=discord&logoColor=white&labelColor=757575)](https://hotio.dev/discord)
[![Upstream](https://img.shields.io/badge/upstream-project-ffb64c?style=flat-square&labelColor=757575)](https://github.com/Ombi-app/ombi)
[![Website](https://img.shields.io/badge/website-hotio.dev-ffb64c?style=flat-square&labelColor=757575)](https://hotio.dev/containers/ombi)

## Starting the container

CLI:

```shell
docker run --rm \
    --name ombi \
    -p 5000:5000 \
    -e PUID=1000 \
    -e PGID=1000 \
    -e UMASK=002 \
    -e TZ="Etc/UTC" \
    -e ARGS="" \
    -v /<host_folder_config>:/config \
    hotio/ombi
```

Compose:

```yaml
version: "3.7"

services:
  ombi:
    container_name: ombi
    image: hotio/ombi
    ports:
      - "5000:5000"
    environment:
      - PUID=1000
      - PGID=1000
      - UMASK=002
      - TZ=Etc/UTC
      - ARGS
    volumes:
      - /<host_folder_config>:/config
```

## Tags

| Tag                | Upstream    | Version | Build |
| -------------------|-------------|---------|-------|
| `release` (latest) | v3 releases | ![version](https://img.shields.io/badge/dynamic/json?color=f5f5f5&style=flat-square&label=&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2Fhotio%2Fombi%2Frelease%2FVERSION.json) | ![build](https://img.shields.io/github/workflow/status/hotio/ombi/build/release?style=flat-square&label=) |
| `testing`          | v4 releases | ![version](https://img.shields.io/badge/dynamic/json?color=f5f5f5&style=flat-square&label=&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2Fhotio%2Fombi%2Ftesting%2FVERSION.json) | ![build](https://img.shields.io/github/workflow/status/hotio/ombi/build/testing?style=flat-square&label=) |

You can also find tags that reference a commit or version number.

## Configuration location

Your ombi configuration inside the container is stored in `/config/app`, to migrate from another container, you'd probably have to move your files from `/config` to `/config/app`.
