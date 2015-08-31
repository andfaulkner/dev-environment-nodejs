#!shell

sudo sh -c \
'echo "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main" > \
/etc/apt/sources.list.d/pgdg.list'
sudo apt-get install wget ca-certificates
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install postgresql-9.4 pgadmin3
sudo apt-get install postgresql postgresql-contrib


#********* configure db ***********#

#switch to default user
sudo su – postgres


createuser
