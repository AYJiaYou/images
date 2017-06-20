Simple Run
===
`docker run -d -p 80:80 --name dokuwiki ayjiayou/dokuwiki`

Access `http://localhost/install.php` then to setup the web.


Run With Data Persistant
===

Create A Data Container
---
`docker create -v /var/dokuwiki-storage --name dokudata ayjiayou/dokuwiki /bin/true`

Create The Executable Container With Volume Mounted From The Data Container
---
`docker run -d -p 80:80 --volumes-from dokudata:z --name dokuwiki ayjiayou/dokuwiki`


Backup Contents Of `dokudata` Container To Host File
===
`docker run --rm --volumes-from dokudata:z -v $(pwd):/backup ayjiayou/dokuwiki tar -cvf /backup/backup.tar /var/dokuwiki-storage`


Restore Contents Of `dokudata` Container From Host File
===
'docker run --rm --volumes-from dokudata:z -v $(pwd):/backup  ayjiayou/dokuwiki bash -c "cd /var/dokuwiki-storage && tar -xvf /backup/backup.tar --strip 1"'

