# apt-installer
### An 8 gb - PLCnext SD card is recomended and an internet connection is required.
### - !!!!! DISCLIAMER INSTALLING APT IS NOT ENDORSED OR SUPPORTED BY PHOENIX CONTACT, USE AT YOUR OWN RISK !!!!!
## Adding root rights
To get root login on the PLCnext connect to the PLC using ssh and log in as admin then use the following command and follow the instructions on screen.

```
sudo passwd root
```

Next download the .sh file and put it on the PLCnext using WinSCP. The directory i used is /opt/plcnext.
The directory where the .deb files will be placed during the install is /opt/plcnext/apt_installer, this can be changed in the script using the built-in linux text editor or any other text editor on your computer (notepad++, notepad,...).

## running the script
Connect to the PLC using ssh and login as admin the switch to the root user we made before.
To run the script make it avalable as an executable using this comand in the folder where the script is located: 
```
chmod 755 apt-installer.sh
```
After this run the following comand also in the folder where the script is located:
```
sed -i 's/\r$//' apt-installer.sh
```
This changed the carrage returns in the file to enters the system can understand.

Next call the script and let it do it's thing using:
```
bash apt-installer.sh 
```
After the script finishes apt and apt-get should be avalable to use. If you run into trouble using apt(-get) update try adding:
```
--allow-unauthenticated
```
or
```
--allow-insecure-repositories
```
This should make it work like it should and get's you the packages.
## Issues with package install?
if a package is having issues with dependencies or configurations try using the following:
```
rm /var/lib/dpkg/info/*Name_off_package*
dpkg --configure -D 777 Name_off_package
apt -f install
```
After you run these comands use:
```
apt install Name_off_package
```
To make sure the installation is done and valid.
