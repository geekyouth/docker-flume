# docker-flume

  Self-contained Docker image containing Java and [Apache Flume](https://flume.apache.org/)

## Usage

    $ docker compose build
    $ docker run \
      --env FLUME_AGENT_NAME=docker \
      --volume /tmp/config.conf:/opt/flume-config/flume.conf \
      --detach \
      ghcr.io/geekyouth/flume:1.10.1

Note: the `FLUME_AGENT_NAME` environment variable and presence of `/opt/flume-config/flume.conf` on the image are **required**.
