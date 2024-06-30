
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
-- git normalde 100MB yükleme kapasitesine sahiptir
Biz bu rakamı artıracağız.

##############################################################
##############################################################
-- INIT / REMOTE
echo "# senior-devops1" >> README.md
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/hamitmizrak/senior-devops1.git
git push -u origin main
# git push --set-upstream origin main

# Remote Addresi Göster
git remote -v

git remote ==> origin remote name
git remote set-url origin https://github.com/hamitmizrak/senior-devops44.git

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
-- STATUS

git status
git restore --staged 96772f9e7b5c89c40edb5a95e4e5b27726a128fa

##############################################################
##############################################################
-- ALIAS
git log --decorate --oneline --graph --all

git config --global alias.graph "log --decorate --oneline --graph --all"
git graph

##############################################################
##############################################################
--  LOG
git log
$ git log
commit 96772f9e7b5c89c40edb5a95e4e5b27726a128fa (HEAD -> main, origin/main)
Author: Hamit_Mizrak <hamitmizrak@gmail.com>
Date:   Sun Jun 30 15:19:32 2024 +0300
git graph

##############################################################
##############################################################
--  DIFF
git log 
git diff commitID1 commitID2
git diff 9bf800160ec 3754992d3a4

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

# Commit Message
git log
git commit --amend -m "Mesajı Değiştir"


##############################################################
##############################################################
-- STASH 
-- Yapılacak bir işin commit yapmadan saklaması durumudur.
-- Dikkat: Stash öncesinde mutlaka "git add ." yapmalıyız.

git stash --help
git stash list 

# Senaryo-1
git add .
git stash => stash@{0}
git stash list
git stash apply stash@{0}
git stash drop stash@{0}

# Senaryo-2
git add .
git stash save "malatya"
git stash list
git stash pop  => En üsten olan stash al ve sil

##############################################################
##############################################################
-- CONFLICT (Çalışma)
git reset HEAD~1
git add .
git commit -m "Çakışma sonrası"
git push --force

-- Conflict yememek için
git add .
git stash 
git checkout main
git pull
git rebase main 
git stash apply stash@{0}

##############################################################
##############################################################
-- Tag 
-- Tag Projeye version vermek için kullanıyoruz.
git tag --help 

# Senaryo-1
git add .
git tag v1.0.0
git tag
git show v1.0.0
git push <remoteAlias> v1.0.0
git push origin v1.0.0


# Senaryo-2
git add .
git tag v2.0.0
git tag
git push <remoteAlias> v2.0.0
git push origin v2.0.0

# switch /delete
git checkout v1.0.0
git checkout v2.0.0
git tag --delete v1.0.0
git tag --delete v2.0.0

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
-- 100 MB 

remote: error: GH001: Large files detected. You may want to try Git Large File Storage çözümü ?
git lfs install --force
git lfs track "*.exe"
git push origin master
git push origin --force --all 

git log
git commit --amend --reset-author 
git push origin --force --all 
git reset --hard CommitID
git log
git show commitID