#Ubuntu post-install
#!/bin/bash -x
echo "Install package dependencies - crazy-mqtt-dog"
echo "Initialization"
for (( counter=100; counter>0; counter-- ))
do
echo -n "....."
done
printf "\n"


echo "Ubuntu update ...."
sudo apt-get update
echo "Ubuntu upgrade ...."
sudo apt-get upgrade

echo "Java installation ...."
sudo apt install -y openjdk-18-jre-headless

echo "Python 3 installation ...."
sudo apt-get install -y python3
sudo apt-get install -y python-pip

echo "Git installation ...."
sudo apt-get install -y git

echo "Mosquitto 2 installation ...."
sudo apt-get install -y mosquitto
sudo apt-get install -y mosquitto-clients
sudo apt-get install -y vim


echo "Install Anaconda  ...."
sudo apt-get install curl
cd /tmp
curl –O https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh
bash Anaconda3-2020.02-Linux-x86_64.sh

conda update conda
conda update anaconda





sudo pip3 install paho-mqtt
sudo systemctl disable mosquitto
