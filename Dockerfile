FROM mariadb:10.0.17

RUN \
  ln -s /proc/self/fd/2 /var/log/mysql.symlink.stderr && \
  ln -s /proc/self/fd/1 /var/log/mysql.symlink.stdout

ADD files/etc/mysql/conf.d/ /etc/mysql/conf.d/
