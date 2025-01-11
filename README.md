# Black Pearl Media Server
Using Docker containers to build a super great media server.  
This will install deluge-openvpn, plex media server, and jellyfin for the ultimate media server.  
Hardware agnostic and should be able to run anywhere docker can run. Decent processor/memory may be needed to use plex/jellyfin well.  
Instructions are for linux systems, however docker compose file can be used on any system. Has a quick setup script to install after editing the .env files.
  
Descriptions:  
  Deluge/openvpn: environment that allows for torrenting behind a vpn, including safteys to prevent leakages  
  Plex: Media server, use plex app to stream to various devices  
  Jellyfin: Backup media server that has some better compatability with chrome cast but less mature than plex  
  Portainer: Management for containers, optional.  


1. First install docker and docker compose on base system:  
  https://docs.docker.com/engine/install/  
  https://docs.docker.com/compose/install/  

2. Clone this repository into the folder you want to perform the install in.
  ```
  git clone https://github.com/Jmlannan/Black-Pearl-Media-Server
  ```

3. Edit example.env and save as .env

5. Startup with docker compose.
```
sudo docker compose up -d
```
  -d for detatched mode

7. Access the programs in web browser and setup all of the programs in order:
  ```
  Jackett: <IP or Hostname>:9117   #This is for adding trackers, neccisary for further steps. See https://github.com/Jackett/Jackett
  Deluge: <IP or Hostname>:8112    #Used for downloads, turn on label and autoextract plugin. See https://deluge-torrent.org/userguide/
  Radarr: <IP or Hostname>:7878    #for downloading movie automatically, https://wiki.servarr.com/radarr
  Sonarr: <IP or Hostname>:8989    #for downloading shows, https://wiki.servarr.com/sonarr
  Lidarr: <IP or Hostname>:8686    #for downloading music, https://wiki.servarr.com/en/lidarr
  Jellyfin: <IP or Hostname>:8096  #Use this on TV and other devices for watching content
  
  ```
  

  
