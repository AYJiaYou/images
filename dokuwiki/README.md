**This image is based on [istepanov/docker-dokuwiki](https://github.com/istepanov/docker-dokuwiki).**

## Simple Run
`docker run -d -p 80:80 --name dokuwiki ayjiayou/dokuwiki`

Access `http://localhost/install.php` to setup the web.

## Run With Data Persistant

### Data Volume

#### Create A Data Container
`docker create -v /var/dokuwiki-storage --name dokudata ayjiayou/dokuwiki /bin/true`

#### Create The Executable Container With Volume Mounted From The Data Container
`docker run -d -p 80:80 --volumes-from dokudata:z --name dokuwiki ayjiayou/dokuwiki`

#### Backup Contents Of `dokudata` Container To Host File
`docker run --rm --volumes-from dokudata:z -v $(pwd):/backup ayjiayou/dokuwiki tar -cvf /backup/backup.tar /var/dokuwiki-storage`

#### Restore Contents Of `dokudata` Container From Host File
'docker run --rm --volumes-from dokudata:z -v $(pwd):/backup  ayjiayou/dokuwiki bash -c "cd /var/dokuwiki-storage && tar -xvf /backup/backup.tar --strip 1"'

### Bind Mount
`docker run -d -p 80:80 -v /var/home/foo:/var/dokuwiki-storage:z --name dokuwiki ayjiayou/dokuwiki`