#!/bin/sh
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
php wp-cli.phar --info
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp
wget https://github.com/wp-cli/wp-cli/raw/master/utils/wp-completion.bash
cat wp-completion.bash >> .bashrc
source .bashrc
