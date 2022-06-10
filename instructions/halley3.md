 1. `sudo apt update && sudo apt full-upgrade`
 2. `sudo apt install docker docker-compose`
 3. `sudo apt install cifs-utils`
 4. `mkdir ~/s`
 5. `sudo mount -t cifs //u306022.your-storagebox.de/backup /home/ubuntu/s -o username=u306022,password=password_here,dir_mode=0777,file_mode=0777,serverino,sec=ntlmssp`
