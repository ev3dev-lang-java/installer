ARG DIST=stretch
ARG HW_PLATFORM=ev3
FROM ev3dev/ev3dev-$DIST-$HW_PLATFORM-generic:latest
ENV DIST=$DIST

COPY installer.sh installer-jessie.sh test.sh /tmp

RUN mkdir -p /home/robot/java && \
    if [ "x$DIST" = "stretch" ]; then \
      install -o robot -g robot -m 0775 /tmp/installer.sh /home/robot/java/installer.sh; \
    else \
      install -o robot -g robot -m 0775 /tmp/installer-jessie.sh /home/robot/java/installer.sh; \
    fi &&
    install -o robot -g robot -m 775 /tmp/test.sh /home/robot/java/test.sh

USER robot
WORKDIR /home/robot/java
CMD ["/home/robot/java/test.sh"]
