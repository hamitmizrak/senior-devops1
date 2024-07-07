#! /bin/bash
echo "Apache Tomcat"

# User Variable
COMMON_INSTALL="Genel Yükleme"
UPDATED="Güncelleme İstiyor musunuz ?"
CLEANER="Temizleme İstiyor musunuz ?"
INSTALL="Yükleme İstiyor musunuz ?"
DELETED="Silme İstiyor musunuz ?"
WHICH="Nerede ?"
COMMON_INFORMATION=" Genel Bilgiler"
PORT="Port İzinleri"
CHMOD="Dosya izinleri ver"
GIT="Git Kurulumu"
JAVA="Java Kurulumu"
JAVA_DELETED="Java Kurulumu"
MAVEN="Maven Kurulumu"
DOCKER="Docker Kurulumu"
LOGIN="Docker Login"
LOGOUT="Docker Logout"
DOCKER_PULL="Docker Pulling"
APACHE="Apache Kurulumu"
CACHE="Cache Temizliği"
TOMCAT="Apache Tomcat"


#####################################################################
#####################################################################
# Common Information
function commonInformation () {
sleep 2
echo -e "\n### ${COMMON_INFORMATION} ###"
read -p "Genel Bilgiler istiyor musunuz  E/H ? " commonResult
if [[ $commonResult == "E" || $commonResult == "e"  ]]
then
    echo -e "Genel Bilgiler Başlandı... "  
        sleep 1
    echo -e "Ben Kimim ... "  
    sudo whoami
        sleep 1
    echo -e "Linux Bilgileri ... "  
    sudo uname
        sleep 1
    echo -e "Dağıtım Bilgileri ... "  
    lsb_release -a    
    echo -e "Disk Alanı ... "  
    sudo df -m
        sleep 1
    echo -e "Cpu  ... "  
    sudo cat /proc/cpuinfo
        sleep 1
    echo -e "IP ... " 
    sudo ifconfig
        sleep 1
    echo -e "Portlar ... " 
    sudo netstat -nlptu
        sleep 1
    echo -e "Ram ... " 
    sudo free -m
else
     echo -e "Genel Bilgiler Gösterilmediı!!!\n "    
fi
}
commonInformation
#####################################################################
#####################################################################
# Permission
sleep 2
echo -e "\n### ${CHMOD} ###"
read -p "Dosyalara izin vermek istiyor musunuz  E/H ? " chmodResult
if [[ $chmodResult == "E" || $chmodResult == "e"  ]]
then
   echo -e "Yetkilendirme Başlandı... "  
   sudo chmod +x apache_tomcat.sh
   echo -e "Çalıştırmak ./apache_tomcat.sh"  
else
     echo -e "apt-get Update List Güncelleme Yapılmadı!!!\n "   
fi

#####################################################################
#####################################################################
function updated () {
    # Updated
    sleep 2
    echo -e "\n### ${UPDATED} ###"
    read -p "Güncelleme istiyor musunuz  E/H ? " updatedResult
    if [[ $updatedResult == "E" || $updatedResult == "e"  ]]
    then
        echo -e "Güncelleme Başlandı... "  
        sudo apt-get update && sudo apt-get upgrade -y
    else
        echo -e "apt-get Update List Güncelleme Yapılmadı!!!\n "   
    fi
}
updated

#####################################################################
#####################################################################
# Install (Common)
function commonIntall () {
sleep 2
echo -e "\n### ${COMMON_INSTALL} ###"
read -p "Yükleme istiyor musunuz  E/H ? " installingResult
if [[ $installingResult == "E" || $installingResult == "e"  ]]
then
    echo -e "Yükleme Başlandı... "
    pwd 
    sudo apt-get install vim -y
    sudo apt-get install unrar -y 
    sudo apt-get install rar
    sudo apt-get install openssh-server -y
    sudo apt install curl -y
    sudo apt install net-tools
    sudo apt-get install nginx -y
    sudo apt install curl -y
    sudo apt install nodejs -y
    node -v
    npm -v
else
     echo -e "Yükleme Yapılmadı!!!\n "   
fi
}

commonIntall

#####################################################################
#####################################################################
function cacheClean () {
# Temizlik
sleep 2
echo -e "\n######  Cache Temizleme  ######"
read -p  "Cache Temizleme istiyor musunuz? E / H " cleanResult
if [[ $cleanResult == "E"  ||  $cleanResult == "e" ]]
then
	echo   -e "\n######"  $CLEANER "######"
	echo -e "Temizlik Başlandı... "  
    sudo apt-get clean
    sudo apt-get autoremove -y
else 
    echo -e "Temizlik Yapılmadı!!!\n "    
fi
}
cacheClean

#####################################################################
#####################################################################

function port () {
# port
sleep 2
echo -e "\n######  ${PORT} ######"
read -p  "Port aktif etmek istiyor musunuz? E / H " portedResult
if [[ $portedResult == "E"  ||  $portedResult == "e" ]]
then
	echo   -e "\n######"  $PORT "######"
	netstat -nlptu
	sudo ufw allow 22
	sudo ufw allow 80
	sudo ufw allow 443
	sudo ufw allow 9000
	sudo ufw allow 9090
	sudo ufw allow 8080
	sudo ufw allow 5432
	sudo ufw allow 3306
	sudo ufw allow 1111
	sudo ufw allow 2222
	sudo ufw allow 3333
	sudo ufw allow 4444
	sudo ufw allow 8888 #apache tomcat port
else 
    echo -e "Genel Güncelleme Yapılmadı!!!\n "    
fi
}
port

# Common Information
commonInformation


#####################################################################
#####################################################################
# CACHE && UPDATED
cacheClean
updated

# GIT
function gitInstall () {
sleep 2
echo -e "\n### ${GIT} ###"
read -p "Git'i Yükleme istiyor musunuz  E/H ? " installingResult
if [[ $installingResult == "E" || $installingResult == "e"  ]]
then
echo -e "Yükleme Başlandı... "
sudo apt-get install git -y
git version
git config --global user.name "git_username"
git config --global user.email "git_email_address"
git config --global -l 
sleep 1
echo -e "Bağımlılıklar Yükleniyor"
sudo apt install –f 
    
else
     echo -e "Yükleme Yapılmadı!!!\n "   
fi
}


#####################################################################
#####################################################################
# CACHE && UPDATED
cacheClean
updated

function javaInstall () {
# JAVA
sleep 2
echo   -e "\n###### ${JAVA} ######"
read -p "JAVA Yükleme istiyor musunuz? E / H ? " installingResult
if [[ $installingResult == "E"  ||  $installingResult == "e" ]]
then
	# Java
	echo   -e "\n###### JAVA"  $INSTALL "######"
	echo   -e "\n######"  $WHICH "######"
	which java
	which git
	sudo apt-get update
	java --version
    javac --version
	sudo apt install openjdk-11-jdk -y
	sudo add-apt-repository ppa:openjdk-r/ppa -y
	# JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/bin/"             
	# vim deneme2.sh  #-s <(echo -e "/foo/\ndd\n:wq")
	echo -e "#Java Home\nJAVA_HOME=\"/usr/lib/jvm/java-11-openjdk-amd64/bin/\" " >> ~/.bashrc 
	# sudo apt-get update
    #sudo apt-get upgrade -y

    #sudo apt-get install wget unzip -y
    #sudo apt-get install openjdk-17-jdk -y
    #sudo apt-get install openjdk-17-jre -y
    #sudo update-alternatives --config java
    #java -version
 

    echo $JAVA_HOME
	# java version
	echo   -e "\n######"  "java" $VERSION  "######"
	java -version
    javac -version
    sleep 1
    echo -e "Bağımlılıklar Yükleniyor"
    sudo apt install –f 
else 
    echo -e "Java Güncelleme Yapılmadı!!!\n "    
fi 
}

javaInstall


# Java Deleted
function javaDeleted () {
sleep 2
echo -e "\n### ${JAVA_DELETED} ###"
echo -e "\nJava'yı Silmek istiyor musunuz ? E/H " deletedResult
if [[ $deletedResult == "E" || $deletedResult == "e"  ]]
then
    echo -e "Temizlik Başlandı... "
    sudo update-alternatives --remove "java" "/usr/lib/jvm/java-1.11.0-openjdk-amd64/bin/java"    
    sudo update-alternatives --remove "javac" "/usr/lib/jvm/java-1.11.0-openjdk-amd64/bin/javac"    
    sudo update-alternatives --remove "javaws" "/usr/lib/jvm/java-1.11.0-openjdk-amd64/bin/javaws"
    sudo rm -r /usr/lib/jvm/
    sudo apt-get clean
    sudo apt-get autoremove -y
else
     echo -e "Java Silme Yapılmadı!!!\n "   
fi
}
javaDeleted

# Common Information
commonInformation

#####################################################################
#####################################################################
# CACHE && UPDATED
cacheClean
updated

# MAVEN INSTALL
function mavenInstall () {
sleep 2
echo   -e "\n###### ${MAVEN} ######"
read -p "MAVEN Yükleme istiyor musunuz? E / H " installingResult
if [[ $installingResult == "E"  ||  $installingResult == "e" ]]
then
	# Java
	echo   -e "\n###### MAVEN"  $INSTALL "######"
	echo   -e "\n######"  $WHICH "######"
    which maven
	which java
	which git
	sudo apt-get update
    echo   -e "\n###### JAVA VERSION ######"
	java --version
    javac --version
    #sudo su

    sudo apt install maven
    sleep 1
    echo -e "Bağımlılıklar Yükleniyor"
    sudo apt install –f 
    #cd /usr/local 
    #sudo wget https://mirrors.estointernet.in/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
    #sudo tar xzf apache-maven-3.6.3-bin.tar.gz 
    #sudo ln -s apache-maven-3.6.3 maven
    #JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
    #M2_HOME=/usr/local/maven
    #MAVEN_HOME=/usr/local/maven
    #PATH=${M2_HOME}/bin:${PATH}
    #sudo rm -rf /etc/profile.d/maven.sh
	### echo -e "#Java Home\nJAVA_HOME=\"/usr/lib/jvm/java-11-openjdk-amd64/bin/\" " >> ~/.bashrc 
    #echo -e "#Maven Home\n export" ${JAVA_HOME}\n" | sudo tee --append /etc/profile.d/maven.sh
    #echo -e "export" ${M2_HOME}\n" | sudo tee --append /etc/profile.d/maven.sh
    #echo -e "export" ${MAVEN_HOME}\n" | sudo tee --append /etc/profile.d/maven.sh
    #echo -e "export" ${PATH}\n" | sudo tee --append /etc/profile.d/maven.sh
    #sudo source /etc/profile.d/maven.sh
    echo   -e "\n###### MAVEN VERSION ######"
    mvn -version
else 
    echo -e "Maven Güncelleme Yapılmadı!!!\n "
fi
}
mavenInstall


# Maven deleted
function mavenDeleted () {
sleep 2
read -p "Maven Silmek istiyor musunuz  E/H ? " deletedResult
if [[ $deletedResult == "E" || $deletedResult == "e"  ]]
then
    echo -e "Güncelleme Başlandı... "  
    echo -e "Temizlik Başlandı... "
    sudo apt-get clean
    sudo apt-get autoremove -y
    sudo apt-get purge maven
    sudo apt-get purge maven
    sudo rm -f apache-maven-3.6.3-bin.tar.gz
    sudo apt-get update && sudo  apt-get upgrade -y
else
     echo -e "apt-get Update List Güncelleme Yapılmadı!!!\n "   
fi
}
mavenDeleted

# Common Information
commonInformation

#####################################################################
#####################################################################
# CACHE && UPDATED
cacheClean
updated

function dockerInstall () {
# DOCKER
sleep 2
echo   -e "\n###### ${DOCKER} ######"
read -p "DOCKER Yükleme istiyor musunuz? E / H " installingResult
if [[ $installingResult == "E"  ||  $installingResult == "e" ]]
then
	# Docker
	echo   -e "\n###### DOCKER"  $INSTALL "######"
	echo   -e "\n######"  $WHICH "######"
    which maven
	which java
	which git
	sudo apt-get update
	java -version
    git -v
    maven -v
     
    # Eğer önceden Docker varsa sil
    echo -e "##### docker Eski Sürümü Varsa Siliniyor #####"
    sudo apt-get purge docker-ce docker-ce-cli containerd.io -y
    sudo rm -rf /var/lib/docker
    sudo rm -rf /var/lib/containerd
    sudo apt-get clean
    sudo apt-get autoremove -y
    sudo apt-get update
    sudo apt-get remove docker docker-engine docker.io containerd runc
    sudo apt-get update
    sudo apt-get upgrade

    ### HTTPS üzerinden bir depo kullanmasına izin vermek için##################################
    echo -e "##### docker Install #####"
    sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y

    ### Docker’ın resmi GPG anahtarını ekleyiniz. curl aracı ile GPG anahtarını komut içerisine aktarınız
    echo -e "##### docker GPG Anahtarı Ekle #####"
    sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo apt-key fingerprint 0EBFCD88

    ### curl aracı ile Docker apt deposunu eklemek
    echo -e "##### Docker apt deposunu #####"
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

    ###############DOCKER KURULUMU##########################################
    echo -e "##### Docker Update #####"
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io -y

    # sudo systemctl status docker
    # sleep 2
    # q
    sudo systemctl enable --now docker 
    echo -e "##### Docker Start #####"
    sudo systemctl start docker
    # sudo systemctl status docker

    echo -e "##### Docker Compose #####"
    sudo apt  install docker-compose

    ### kullanıcı adınızı docker grubuna ekle
    echo -e "##### Docker Usermod #####"
    sudo usermod -aG docker ${USER}

    # su - ${USER}
    # sudo  id -NG
    sudo apt-get install bash-completion 
    docker version
    docker run hello-world
    sleep 1
    echo -e "Bağımlılıklar Yükleniyor"
    sudo apt install –f 
else 
    echo -e "Docker Güncelleme Yapılmadı!!!\n "
fi 
}
dockerInstall

# Common Information
commonInformation

# Docker Login
function dockerLogin () {
sleep 2
echo -e "\n### ${LOGIN} ###"
read -p "\nDockerHub'a Giriş yapmak istiyor musunuz ? E/H? " updatedResult
if [[ $updatedResult == "E" || $updatedResult == "e"  ]]
then
    echo -e "Docker Login ... "  
    sudo docker login
else
     echo -e "apt-get Update List Güncelleme Yapılmadı!!!\n "   
fi
}
dockerLogin


# Docker Logout
function dockerLogout () {
sleep 2
echo -e "\n### ${LOGOUT} ###"
read -p "\nDockerHub'a Çıkış yapmak istiyor musunuz ? E/H? " updatedResult
if [[ $updatedResult == "E" || $updatedResult == "e"  ]]
then
    echo -e "Docker Login ... "  
    sudo docker logout
else
     echo -e "apt-get Update List Güncelleme Yapılmadı!!!\n "   
fi
}
dockerLogout


# Docker Pull
function dockerPull() {
sleep 2
echo -e "\n### ${DOCKER_PULL} ###"
read -p "\nDockerHub'a Pull  yapmak istiyor musunuz ? E/H? " updatedResult
if [[ $updatedResult == "E" || $updatedResult == "e"  ]]
then
    echo -e "Docker Pulling ... "  
    sudo docker pull nginx
    sudo docker pull tomcat
    #sudo docker pull httpd
    #sudo docker pull mysql
    #sudo docker pull mongo
    sudo docker pull ubuntu
    sudo docker pull centos
    #sudo docker container run -d --rm -p 8888:8080 tomcat:9.0
    #sudo curl http://localhost:8888
else
     echo -e "apt-get Update List Güncelleme Yapılmadı!!!\n "   
fi
}
dockerPull

#####################################################################
#####################################################################


# Apache Tomcat
sleep 2
echo -e "\n### ${TOMCAT}  ###"
read -p "Apache Tomcat 'i Yükleme istiyor musunuz  E/H ? " installingResult
if [[ $installingResult == "E" || $installingResult == "e"  ]]
then
echo -e "Yükleme Başlandı... "

sleep 2
sudo apt-get install wget unzip -y
sudo apt-get install wget zip -y
sudo apt install vim -y
sudo apt install net-tools

sleep 2
wget https://archive.apache.org/dist/tomcat/tomcat-10/v10.0.8/bin/apache-tomcat-10.0.8.tar.gz
sudo tar xzvf apache-tomcat-10.0.8.tar.gz
sudo mkdir /opt/tomcat/
sudo mv apache-tomcat-10.0.8/* /opt/tomcat/
sudo chown -R www-data:www-data /opt/tomcat/
sudo chmod -R 755 /opt/tomcat/
    
else
     echo -e "Yükleme Yapılmadı!!!\n "   
fi


#####################################################################
#####################################################################







sleep 2
echo -e "\n######  BİTTİ ######"
