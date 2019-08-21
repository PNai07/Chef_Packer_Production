
sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt-get update -y && sudo apt-get upgrade -y

# install nginx
sudo apt-get install ruby2.4 ruby2.4-dev ruby-build -y
sudo apt-get install build-essential libgmp-dev libxml2 -y
sudo apt-get install nginx -y
sudo rm -rf /etc/nginx/sites-enabled/default  # removes default from sites-enabled
sudo ln -s /home/ubuntu/app/default /etc/nginx/sites-enabled/default
#source --destination
# creates a symbolic link

sudo systemctl restart nginx


# automating the steps
#using to install nodejs, nmp,

cd /home/ubuntu/app/
curl -sL https://deb.nodesource.com/setup_12.x | sudo bash - #install latest version of nodejs
sudo apt-get install nodejs -y
sudo npm install -y
# automating the installation for nodejs and npm

#node app.js

# Install gems - Ruby
sudo gem install bundler
sudo gem install rake
sudo gem install rails
