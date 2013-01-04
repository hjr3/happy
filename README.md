Happy App
=================================

Installation
------------

Download Virtualbox and Vagrant.

Run the following commands inside the VM to setup the environment:

    sudo apt-get update
    sudo apt-get -y install build-essential zlib1g-dev curl git-core sqlite3 libsqlite3-dev python-software-properties
    sudo add-apt-repository ppa:chris-lea/node.js
    sudo apt-get update
    sudo apt-get -y install nodejs npm
    git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
    echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
    . ~/.bash_profile 
    git clone git://github.com/sstephenson/ruby-build.git
    cd ruby-build/
    sudo ./install.sh 
    rbenv install 1.9.2-p290
    rbenv global 1.9.2-p290
    rbenv rehash
    cd /vagrant
    gem install bundler
    rbenv rehash
    bundle
    bundle exec rails s -d
