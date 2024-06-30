
Git: Global Information Tracked
VCS: Version Control System 
Dağıtık ( Distrubuted) olmasıdır.)
Locking ( Kilitlenme )
Conflict ( Çakışma )
Linus Torvalds(Linux Çekirdeğini yazan kişi) ve ekibiyle 2005 Yılında yazıyorlar.
GitHub(Microsoft) 2008 yılında 
Ücretsizdir
Açık kaynak kodly (Open source)

GUI: Graphics User Interface
CLI: Command Line Interface

Yedekleme yapmak
Proje Takibini sağlamak
Proje bitirmeyi hızlandırmak
Önceki versionlara hızlıca erişim sağlamak 

##############################################################
##############################################################
git --help
git --version  
git config --global -l 
git config --global user.name
git config --global user.name "Hamit Mizrak"
git config --global user.email 
git config --global user.email "hamitmizrak@gmail.com"

git config core.autocrlf true 

git config --system (Bütün kullanıcılar ve projeler)

##############################################################
##############################################################
-- ALIAS
git log --decorate --oneline --graph --all

git config --global alias.graph "log --decorate --oneline --graph --all"
git graph

##############################################################
##############################################################
-- git normalde 100MB yükleme kapasitesine sahiptir
Biz bu rakamı artıracağız.

##############################################################
##############################################################
echo "# senior-devops1" >> README.md
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/hamitmizrak/senior-devops1.git
git push -u origin main

##############################################################
##############################################################
-- CLONE
git clone https://github.com/hamitmizrak/senior-devops1.git



##############################################################
##############################################################
-- ADD (Staging Area Taşıma)

#.(Hepsi)
git add .

# README.md(Sadece bu dosyayı ekle)
git add README.md 

# jav*(jav ile başlayan dosyaları ekle anlamına geliyor)
git add jav*

# Git add önceki haline gelmek
git restore jav*

# aynı anda sadece benim istediğim dosyaları ekle
git add deneme1.txt deneme2.txt 


##############################################################
##############################################################
-- STATUS / LOG
 
git log
$ git log
commit 96772f9e7b5c89c40edb5a95e4e5b27726a128fa (HEAD -> main, origin/main)
Author: Hamit_Mizrak <hamitmizrak@gmail.com>
Date:   Sun Jun 30 15:19:32 2024 +0300   


git status
git restore --staged 96772f9e7b5c89c40edb5a95e4e5b27726a128fa



##############################################################
##############################################################
-- COMMIT 
git commit -m "JIRA_TASK database crud added"


-- Commit (aynı anda add ve commit)
-- 1.YOL
git add .
git commit -m "first commit"

-- 2.YOL  (dikkat önceden add olması şartıyla)
git commit -a -m "first commit"


##############################################################
##############################################################




##############################################################
##############################################################
-- 



##############################################################
##############################################################
-- 

remote: error: GH001: Large files detected. You may want to try Git Large File Storage çözümü ?
git lfs install --force
git lfs track "*.exe"
git push origin master
git push origin --force --all 


sudo apt-get install git-lfs
git lfs track "*.exe"
git push origin main




git log
git commit --amend --reset-author 
git push origin --force --all 
git reset --hard CommitID
git log
git show commitID



##############################################################
##############################################################
-- 





##############################################################
##############################################################
-- 





##############################################################
##############################################################
-- 





##############################################################
##############################################################
-- 





##############################################################
##############################################################
-- 





##############################################################
##############################################################
-- 





##############################################################
##############################################################
-- 