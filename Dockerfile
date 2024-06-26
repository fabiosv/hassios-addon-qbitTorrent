# ARG BUILD_FROM
# FROM $BUILD_FROM
FROM lscr.io/linuxserver/qbittorrent:arm64v8-4.6.5-libtorrentv1

USER root

COPY ./qBittorrent.conf /defaults/qBittorrent.conf
COPY ./qBittorrent-data.conf /defaults/qBittorrent-data.conf

RUN echo "**** updated default config ****"

RUN mkdir /custom-cont-init.d
COPY run.sh /custom-cont-init.d/run.sh
