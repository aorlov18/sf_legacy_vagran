sudo apt update &&  sudo apt -y upgrade
sudo apt install -y curl ca-certificates gnupg rsync
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/apt.postgresql.org.gpg >/dev/null
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
sudo apt clean && sudo apt update
echo "Installing postgres"
sudo DEBIAN_FRONTEND=noninteractive apt install -y postgresql-8.4 postgresql-server-dev-8.4 postgresql-client-8.4 