#https://www.postgresqltutorial.com/postgresql-getting-started/install-postgresql-linux/


sudo apt update
sudo apt install gnupg2 wget


sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'


curl -fsSL https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/postgresql.gpg

sudo apt update

sudo apt install postgresql-16 postgresql-contrib-16

sudo systemctl start postgresql

sudo systemctl enable postgresql
