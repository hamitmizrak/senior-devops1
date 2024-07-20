# Senior Devops

## Devops GitHUB URL
[Devops GitHub URL](https://github.com/hamitmizrak/senior-devops1)

## Backend - Frontend GitHUB URL
[Backend-Frontend GitHub URL](https://github.com/hamitmizrak/senior-fullstack-developer1)

## Tech
> Git
- GitHub
- GitLab
- **Docker**
---
````sh
ssh-keygen -t rsa -b 4096 -C "hamitmizrak@gmail.com"

Windows =>
cat /c/Users/Hamit_Mizrak/.ssh/id_rsa.pub

Linux =>
cat ~/.ssh/id_rsa.pub

ssh -T git@github.com


GITHUB
https://github.com/settings/keys
```
---

### Version
```sh
mvn -v
java --version
javac --version
node -v 
npm -v
docker-compose --version
```


---

### NPM CODES
```sh
npm -g list
```

### MVN CODES
```sh
mvn -v
mvn archetype:generate => Maven Projesini oluşturmak
mvn clean              => Target dizinini temizleyecek
mvn test               => Projede birim testlerini(JUnit) çalıştırır.
mvn compile            => Proje kodlarını derlemek
mvn package            => Derlenmiş kodu paket halinde yani (JAR veya WAR dosyasına çevirir)
mvn install            => Derlenmiş paketleri maven yerel deposuna gönderir.
mvn deploy             => Projenin paketini uzaktaki repoya gönderecek
mvn help:effective-pom => POM(Project Object Model) dosyasında bilgiler almak

mvn clean install
mvn clean package -DskipTests => target sil, JAR çevir, ve test(Unit Test) yapma
```



