FROM mosaiksoftware/debian
#
# PHP Farm Docker image
#

MAINTAINER Christian Holzberger, ch@mosaiksoftware.de

COPY config /etc
COPY selections /selections

# run it
COPY run.sh /run.sh

ENTRYPOINT [ "/bin/dinit","-r","/bin/docker-entrypoint" ]
CMD ["bash","/run.sh"]
