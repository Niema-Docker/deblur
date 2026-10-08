# Minimal Docker image for deblur using Debian base
FROM debian:stable-slim

# install deblur
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install -y python3 python3-pip python3-scipy && \
    pip install --no-cache-dir --break-system-packages deblur==1.1.0
