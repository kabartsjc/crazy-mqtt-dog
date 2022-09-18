#Ubuntu post-install
#!/bin/bash -x
echo "Install package dependencies - crazy-mqtt-dog"
echo "Initialization"
for (( counter=10; counter>0; counter-- ))
do
echo -n ".."
done
printf "\n"
echo -e "\nRemoving \t backslash \t characters\n"

sudo apt-get update
sudo apt-get upgrade
sudo apt install -y openjdk-18-jre-headless
sudo apt-get install -y python3
sudo apt-get install -y python-pip
sudo apt-get install -y git
sudo apt-get install -y mosquitto
sudo apt-get install -y mosquitto-clients
sudo apt-get install -y vim

sudo systemctl disable mosquitto
