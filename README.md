# Black Pearl Media Server, Docker Compose Arr Stack
Using Docker containers to build a super great media server.
Uses nordvpn but this can be replaced with another vpn container.
Hardware agnostic and should be able to run anywhere docker can run. Decent processor/memory may be needed to use jellyfin well.  
  
1. First install docker and docker compose on base system:  
  https://docs.docker.com/engine/install/  
  https://docs.docker.com/compose/install/  

2. Clone this repository.
  ```
  git clone https://github.com/Jmlannan/Black-Pearl-Media-Server
  ```

3. Edit example.env and save as .env

5. Startup with docker compose.
```
sudo docker compose up -d
```
  -d for detatched mode

7. Access the programs in web browser and setup all of the programs following the guides:
  ```
  Jackett:  <IP or Hostname>:9117    #This is for adding trackers, neccisary for further steps. See https://github.com/Jackett/Jackett
  Deluge:   <IP or Hostname>:8112    #Used for downloads, turn on label and autoextract plugin. See https://deluge-torrent.org/userguide/
  Radarr:   <IP or Hostname>:7878    #for downloading movie automatically, https://wiki.servarr.com/radarr
  Sonarr:   <IP or Hostname>:8989    #for downloading shows, https://wiki.servarr.com/sonarr
  Lidarr:   <IP or Hostname>:8686    #for downloading music, https://wiki.servarr.com/en/lidarr
  Jellyfin: <IP or Hostname>:8096    #Use this on TV and other devices for watching content
  ```

  See Jackett setup for adding a tracker of your choice (no recomendations or comments here on how to do that, see their documents and your tracker).
  Deluge needs the label and autoextract plugins enable to work properly.
  For each of Radarr, Sonarr and Lidarr, go to settings>download clients and add deluge. Add your jackett tracker in settings>indexers. 
