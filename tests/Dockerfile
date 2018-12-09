ARG DIST=stretch
ARG HW_PLATFORM=ev3
FROM ev3dev/ev3dev-$DIST-$HW_PLATFORM-generic:latest

ARG DIST=stretch
ARG HW_PLATFORM=ev3
ENV dist=$DIST
ENV hw=$HW_PLATFORM

COPY installer.sh installer-jessie.sh tests/test.sh /tmp/
COPY tests/qemu-arm-static /usr/bin/

RUN mkdir -p /home/robot/java && \
    if [ "x$dist" = "xstretch" ]; then \
      echo "Testing Stretch"; install -o robot -g robot -m 0775 /tmp/installer.sh /home/robot/java/installer.sh; \
    else \
      echo "Testing Jessie"; install -o robot -g robot -m 0775 /tmp/installer-jessie.sh /home/robot/java/installer.sh; \
    fi && \
    install -o robot -g robot -m 775 /tmp/test.sh /home/robot/java/test.sh && \
    chown robot:robot -R /home/robot

USER root
WORKDIR /home/robot/java
CMD ["/home/robot/java/test.sh"]
