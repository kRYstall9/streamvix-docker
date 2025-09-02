# StreamViX Docker

A simple auto-updated Docker image for [StreamViX](https://github.com/qwertyuiop8899/streamvix)

## Usage

### Docker Compose

```yaml
services:
  streamvix:
    image: krystall0/streamvix:latest
    container_name: streamvix
    ports:
      - "7860:7860"
    environment:
      - FAST_DYNAMIC=0 # Set FAST_DYNAMIC=1 to bypass extractor and use direct URLs from dynamic_channels.json
      - DYNAMIC_EXTRACTOR_CONC=10 # Concurrency for extractor resolution of dynamic events (1-50). Also used as CAP of dynamic links processed.
      - MFP_URL= # your mediaflow proxy instance url or http://container-name:port
      - MFP_PSW= # The password of your mediaflow proxy instance
      - TMDB_API_KEY= #https://www.themoviedb.org/settings/api
    restart: always

#   Use watchtower for automatic image updates

#   watchtower:
#     image: containrrr/watchtower
#     container_name: watchtower
#     volumes:
#     - /var/run/docker.sock:/var/run/docker.sock

```
