#!/bin/bash
echo "Genel Kurulumlar"

# User Variable
INSTALL="Yükleme"
COMMON_INSTALL="Genel Yükleme Yapmak İster misiniz ?"
UPDATE="Yükleme"
IS_UPDATE="Kernel İçin Güncelleme İstiyor musunuz E/H ?"
DELETED="Silme"
COMMON_INFORMATION="Genel Bilgiler"
CHMOD="Shell Dosyalarına İzin Vermek İstiyor musunuz ? E/H"
PERMISSION="Yetki"
PORT="Port"
PORT_ALLOW="Portları Aktifleştirmek ister misiniz ? E/H"
CLEAN="Temizleme"
CACHING="Cache temizliğine Başlamak İstiyor musunuz ?"
SYSTEM="Sistem Bilgileri"
SYSTEM_INFORMATION="Sistemin Genel bilgileri"

# Common
echo -e "\n### ${COMMON_INFORMATION} ###"


# Update
sleep 2
echo -e "\n### ${UPDATE} ###"
read -p "\n### ${IS_UPDATE}\n ###" updatedResult
if [[ $updatedResult == "E" || $updatedResult == "e" ]]
then
    echo -e "Kernel Güncellenmesi Başladı"
    sudo apt-get update && sudo apt-get upgrade -y
else
    echo -e "Kernel Güncellemenmesi Gerçeklemedi !!!"
fi

# Dosya Izni
sleep 2
echo -e "\n### ${PERMISSION} ###"
read -p "\n### ${CHMOD} ###" chmodResult
if [[ $chmodResult == "E" || $chmodResult == "e" ]]
then
    echo -e "Shell Dosyalarına Yetkiler Başladı"
    sudo chmod +x _1_Common.sh
    sudo chmod +x _2_git.sh
    sudo chmod +x _3_vs_code.sh
    sudo chmod +x _4_jdk.sh
    sudo chmod +x _5_maven.sh
    sudo chmod +x _6_docker.sh
    sudo chmod +x _7_postgresql.sh
    sudo chmod +x _8_sonarQube.sh
    sudo chmod +x _9_apache_tomcat.sh
    sudo chmod +x _10_jenkins.sh
else
    echo -e "Shell Dosyalarına Yetkiler Başlanmadı !!!"
fi


# Port
sleep 2
echo -e "\n### ${PORT} ###"
read -p "\n### ${PORT_ALLOW} ###" portResult
if [[ $portResult == "E" || $portResult == "e" ]]
then
    echo -e "Port Açmaya Başladı"
    sudo apt-get install net-tools
    sudo apt-get install openssh-server -y
    netstat -nlptu
    sudo ufw allow 22
    sudo ufw allow 80
    sudo ufw allow 443
    sudo ufw allow 9000
    sudo ufw allow 9090
    sudo ufw allow 5432
    sudo ufw allow 3306
    sudo ufw allow 1111
    sudo ufw allow 2222
    sudo ufw allow 3333
    sudo ufw allow 4444
else
    echo -e "Port Açılmadı  !!!"
fi


# Install
sleep 2
echo -e "\n### ${INSTALL} ###"
read -p "\n### ${COMMON_INSTALL} ###" installResult
if [[ $installResult == "E" || $installResult == "e" ]]
then
    echo -e "Genel Yükleme Başladı"
    sudo apt-get install vim -y
    sudo apt-get install rar -y
    sudo apt-get install unrar -y
    sudo apt-get install curl -y
    sudo apt-get install nodejs -y
    node -v 
    npm -v
    
else
    echo -e "Genel Yükleme Yapılmadı  !!!"
fi


# Cleaning
sleep 2
echo -e "\n### ${CLEAN} ###"
read -p "\n### ${CACHING} ###" cachingResult
if [[ $cachingResult == "E" || $cachingResult == "e" ]]
then
    echo -e "Temizlik başlasın"
    sudo apt-get clean
    sudo apt-get autoremove -y
    sudo apt-get install -f 
else
    echo -e "Genel Yükleme Yapılmadı  !!!"
fi


# Cleaning
sleep 2
echo -e "\n### ${CLEAN} ###"
read -p "\n### ${CACHING} ###" cachingResult
if [[ $cachingResult == "E" || $cachingResult == "e" ]]
then
    echo -e "Temizlik başlasın"
    sudo apt-get clean
    sudo apt-get autoremove -y
    sudo apt-get install -f 
else
    echo -e "Genel Yükleme Yapılmadı  !!!"
fi


SYSTEM="Sistem Bilgileri"
SYSTEM_INFORMATION="Sistemin Genel bilgileri"

# Cleaning
sleep 2
echo -e "\n### ${SYSTEM} ###"
read -p "\n### ${SYSTEM_INFORMATION} ###" systemResult
if [[ $systemResult == "E" || $systemResult == "e" ]]
then
    echo -e "Genel Bilgiler"
    sleep 2
    echo -e "Hostname"
    sudo hostname
    sleep 1
    echo -e "Ben kimim ?"
    sudo whoami
    sleep 1
    echo -e "Linux Bilgileri"
    sudo uname
    sleep 1
    echo -e "Dağıtım Bilgileri"
    sudo lsb_release -a
    sleep 1
    echo -e "Disk alanı"
    sudo df -m
    sleep 1
    echo -e "Cpu Bilgileri"
    sudo cat /proc/cpuinfo
    sleep 1
    echo -e "Ram Bilgileri"
    sudo free -m
    sleep 1
    echo -e "IP Bilgileri"
    sudo ifconfig
    sleep 1
    echo -e "Port Bilgileri"
    sudo netstat -nlptu
    sleep 1
else
    echo -e "Genel Bilgiler okunmadı !!!"
fi


# Bitiş
sleep 2 
echo -e "\n#### Common Bitti"
