# Black Pearl Media Server
Using Docker containers to build a super great media server.  
This will install deluge-openvpn, plex media server, and jellyfin for the ultimate media server.  
Hardware agnostic and should be able to run anywhere docker can run. Decent processor/memory may be needed to use plex/jellyfin well.
Descriptions:  
  Deluge/openvpn: environment that allows for torrenting behind a vpn, including safteys to prevent leakages  
  Plex: Media server, use plex app to stream to various devices  
  Jellyfin: Backup media server that has some better compatability with chrome cast but less mature than plex  
  Portainer: Management for containers, optional.  


1. First install docker and docker compose on base system:  
  https://docs.docker.com/engine/install/  
  https://docs.docker.com/compose/install/  

2. Clone this repository
  ```
  git clone https://github.com/Jmlannan/Black-Pearl-Media-Server
  ```

3. edit the parameters in .env
  ```
  nano .env
  ```
4. copy your ovpn files from your vpn of choice into /Deluge/config/openvpn/ (login info goes in .env)

5. run the setup code 
  ```
  sudo sh ./setup.sh
  ```
6. optionally install portainer to manage
  ```
  docker run -d -p 8000:8000 -p 9443:9443 --name portainer \
    --restart=always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data \
    cr.portainer.io/portainer/portainer-ce:2.9.3
  ```

7. Access the programs in web browser using
  ```
  Deluge: <IP or Hostname>:8112
  Plex:  <IP or Hostname>:32400/web/index.html
  Jellyfin: <IP or Hostname>:8096
  Portainer: <IP or Hostname>:9000
  ```
  
