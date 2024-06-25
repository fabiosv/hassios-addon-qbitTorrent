[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Ffabiosv%2Fhassios-addon-qbitTorrent)

The Qbittorrent project aims to provide an open-source software alternative to µTorrent. qBittorrent is based on the Qt toolkit and libtorrent-rasterbar library.


Based on [linuxserver/docker-qbittorrent](https://github.com/linuxserver/docker-qbittorrent/tree/master)

## defaults

The following username and password can be changed in `Tools > Options > Web UI > Authentication`

- username: `admin`
- password: `6QqCkDReY`

## Integrating as DownloadClient

This can be integrated with sonarr/radarr/whisparr/lidarr/readarr addons as a DownloadClient.

`Settings > Download Clients > Add Download Client > qBittorrent`

Params:

- Host: `local-qbittorrent`
- Port: `8080`
- username: `admin`
- password: `6QqCkDReY`

All `/downloads` folder is mapped to `/media/qBittorrent` home-assistant path. It might be required to create the Remote Path Mappings:

|Host             |Remote Path        |Local Path         |
|-----------------|-------------------|-------------------|
|local-qbittorrent|/media/qBittorrent/|/media/qBittorrent/|
|local-qbittorrent|/downloads/        |/media/qBittorrent/|

## Suggested Stack

You can use the following addons as:

- Sonarr/Radarr/Lidarr: Download manager
- Prowlarr: Torrent Indexer
- qBittorrent: Torrent Client
- Media Plex Server: downloaded Torrent file streamer (similar to Popcorn)
- [qBittorrent Integration](https://www.home-assistant.io/integrations/qbittorrent/): use this integration to create automations and monitoring your Torrent Client status.
