# ARG BUILD_FROM
# FROM $BUILD_FROM
FROM lscr.io/linuxserver/qbittorrent:arm64v8-4.6.5-libtorrentv1

RUN echo "installed"

USER root

RUN mkdir -p /media/qBittorrent
RUN chown 1000:1000 -R /media/qBittorrent
# RUN mkdir -p /data
# RUN ln -nsf /downloads /data/downloads
RUN ln -nsf /media/qBittorrent /downloads
COPY ./qBittorrent.conf /config/qBittorrent/qBittorrent.conf
COPY ./qBittorrent-data.conf /config/qBittorrent/qBittorrent-data.conf
# RUN ln -nsf /downloads /config/qBittorrent/downloads
