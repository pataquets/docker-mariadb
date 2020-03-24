FROM mariadb:10.0.31

RUN \
  mkdir -vp /var/log/symlinks/dev/ && \
  mkdir -vp /var/log/symlinks/proc/self/fd && \
  ln -vs /dev/stdout /var/log/symlinks/dev/stdout && \
  ln -vs /dev/stderr /var/log/symlinks/dev/stderr && \
  ln -vs /proc/self/fd/1 /var/log/symlinks/proc/self/fd/1 && \
  ln -vs /proc/self/fd/2 /var/log/symlinks/proc/self/fd/2

ADD files/etc/mysql/conf.d/ /etc/mysql/conf.d/
