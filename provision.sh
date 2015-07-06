#!/bin/sh

if [ ! -f /etc/apt/sources.list.d/mysql.list ]; then
  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 5072E1F5

  cat <<EOF > /etc/apt/sources.list.d/mysql.list
deb http://repo.mysql.com/apt/ubuntu/ trusty mysql-apt-config
deb http://repo.mysql.com/apt/ubuntu/ trusty mysql-5.6
deb-src http://repo.mysql.com/apt/ubuntu/ trusty mysql-5.6
EOF

  apt-get update
fi

