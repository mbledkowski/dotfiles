# halley3's setup instructions

## Setup remote drive
 1. `sudo apt update && sudo apt full-upgrade`
 2. `sudo apt install docker docker-compose`
 3. `sudo apt install cifs-utils`
 4. `mkdir ~/s`
 5. `sudo mount -t cifs //u306022.your-storagebox.de/backup /home/ubuntu/s -o username=u306022,password=password_here,dir_mode=0777,file_mode=0777,serverino,sec=ntlmssp`

## Running Yacy

 1. `docker run --name yacy_search_server -p 8090:8090 -p 8443:8443 -e YACY_NETWORK_UNIT_AGENT=h4xx0r -v /home/ubuntu/s:/opt/yacy_search_server/DATA --restart unless-stopped --log-opt max-size=200m --log-opt max-file=2 yacy/yacy_search_server:aarch64-latest`
