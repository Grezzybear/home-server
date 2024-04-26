#!/bin/bash

# Make users and group
sudo useradd proton -u 10001
sudo useradd qbittorrent -u 10002
sudo useradd jellyfin -u 10003
sudo useradd audiobookshelf -u 10004
sudo useradd jellyseerr -u 10005
sudo useradd prowlarr -u 10006
sudo useradd flaresolverr -u 10007
sudo useradd sonarr -u 10008
sudo useradd radarr -u 10009
sudo useradd readarr -u 10010
sudo useradd lidarr -u 10011
sudo useradd bazarr -u 10012
sudo useradd lazylibrarian -u 10013
sudo useradd freshrss -u 10014
sudo groupadd mediacenter -g 10000
sudo usermod -a -G mediacenter proton
sudo usermod -a -G mediacenter qbittorrent
sudo usermod -a -G mediacenter jellyfin
sudo usermod -a -G mediacenter audiobookshelf
sudo usermod -a -G mediacenter jellyseerr
sudo usermod -a -G mediacenter prowlarr
sudo usermod -a -G mediacenter flaresolverr
sudo usermod -a -G mediacenter sonarr
sudo usermod -a -G mediacenter radarr
sudo usermod -a -G mediacenter readarr
sudo usermod -a -G mediacenter lidarr
sudo usermod -a -G mediacenter bazarr
sudo usermod -a -G mediacenter lazylibrarian
sudo usermod -a -G mediacenter freshrss

# Make directories
sudo mkdir -pv config/{proton,qbittorrent,jellyfin,audiobookshelf,jellyseerr,prowlarr,flaresolverr,sonarr,radarr,readarr,lidarr,bazarr,lazylibrarian,freshrss}-config
sudo mkdir -pv data/{torrents,usenet,media}/{tv,movies,music,books,comics,audiobooks,podcasts,audiobookshelf-metadata}

# Set permissions
sudo chmod -R 775 data/
sudo chown -R $(id -u):mediacenter data/
sudo chown -R proton:mediacenter config/proton-config
sudo chown -R qbittorrent:mediacenter config/qbittorrent-config
sudo chown -R jellyfin:mediacenter config/jellyfin-config
sudo chown -R audiobookshelf:mediacenter config/audiobookshelf-config
sudo chown -R jellyseer:mediacenter config/jellyseerr-config
sudo chown -R prowlarr:mediacenter config/prowlarr-config
sudo chown -R flaresolverr:mediacenter config/flaresolverr-config
sudo chown -R sonarr:mediacenter config/sonarr-config
sudo chown -R radarr:mediacenter config/radarr-config
sudo chown -R readarr:mediacenter config/readarr-config
sudo chown -R lidarr:mediacenter config/lidarr-config
sudo chown -R bazarr:mediacenter config/bazarr-config
sudo chown -R lazylibrarian:mediacenter config/lazylibrarian-config
sudo chown -R freshrss:mediacenter config/freshrss-config

# set our base env values
echo "UID=$(id -u)" >> .env
echo "BASE=$(pwd)" >> .env
echo "PROTON-UID=10001" >> .env
echo "QBIT-UID=10002" >> .env
echo "JELLYFIN-UID=10003" >> .env
echo "AUDIOBOOK-UID=10004" >> .env
echo "SEER-UID=10005" >> .env
echo "PROWLARR-UID=10006" >> .env
echo "FLARESOLVERR-UID=10007" >> .env
echo "SONARR-UID=10008" >> .env
echo "RADARR-UID=10009" >> .env
echo "READARR-UID=10010" >> .env
echo "LIDARR-UID=10011" >> .env
echo "BAZARR-UID=10012" >> .env
echo "LAZYLIBRARIAN-UID=10013" >> .env
echo "FRESHRSS-UID=10014" >> .env
echo "MEDIA-GID=10000" >> .env
echo "TZ=Etc/UTC" >> .env
