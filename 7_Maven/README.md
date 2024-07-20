# Senior Devops

## Devops GitHUB URL
[Devops GitHub URL](https://github.com/hamitmizrak/senior-devops1)

## Backend - Frontend GitHUB URL
[Backend-Frontend GitHub URL](https://github.com/hamitmizrak/senior-fullstack-developer1)

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

### POM:Xml
```sh

    <!--properties-->
    <properties>
        <encoding>UTF-8</encoding>
        <java.version>17</java.version>

        <!--for maven-->
        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
        <project.reporting.outputEncoding>UTF-8</project.reporting.outputEncoding>

        <!--SonarQube Ve Maven İçin Gerekli-->
        <maven.compiler.release>17</maven.compiler.release>
        <maven.compiler.source>17</maven.compiler.source>
        <maven.compiler.target>17</maven.compiler.target>
    </properties>
```

```sh
    <!--build-->
    <build>
        <!--apache tomcat manuel deployment için-->
        <defaultGoal>spring-boot:run</defaultGoal>
        <finalName>${project.artifactId}</finalName>

        <plugins>
            <!-- for maven target 17: SonarQube 11 veya 17 yapmalısınız -->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>3.5.1</version>
                <configuration>
                    <source>17</source>
                    <target>17</target>
                </configuration>
            </plugin>

            <!--Yeni ekledim-->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-resources-plugin</artifactId>
                <version>3.0.2</version>
            </plugin>

        </plugins>
    </build>
</project>
```



