#! /bin/sh

if [ -d /var/www/htdocs/orcas.lan.gadallah.net/blog ]; then
  rm -fr /var/www/htdocs/orcas.lan.gadallah.net/blog
fi

if [ -d /home/larry/techn0mad.github.io ]; then
  cd /home/larry/techn0mad.github.io

  if [ -d /home/larry/techn0mad.github.io/_site ]; then
    cp -a _site /var/www/htdocs/orcas.lan.gadallah.net/blog
  fi
fi
