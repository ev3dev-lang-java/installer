#!/bin/bash

echo "Java 8 Manual installer for EV3"

    mkdir -p installer-packages/java
    cd installer-packages/java
    wget http://ftp.us.debian.org/debian/pool/main/j/java-atk-wrapper/libatk-wrapper-java_0.30.5-1_all.deb
    sudo dpkg -i libatk-wrapper-java_0.30.5-1_all.deb
    wget http://ftp.us.debian.org/debian/pool/main/a/atk1.0/libatk1.0-data_2.14.0-1_all.deb
    sudo dpkg -i libatk1.0-data_2.14.0-1_all.deb
    wget http://ftp.us.debian.org/debian/pool/main/a/atk1.0/libatk1.0-0_2.14.0-1_armel.deb
    sudo dpkg -i libatk1.0-0_2.14.0-1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/f/fonts-dejavu/fonts-dejavu-core_2.34-1_all.deb
    sudo dpkg -i fonts-dejavu-core_2.34-1_all.deb
    wget http://ftp.us.debian.org/debian/pool/main/f/fontconfig/fontconfig-config_2.11.0-6.3+deb8u1_all.deb
    sudo dpkg -i fontconfig-config_2.11.0-6.3+deb8u1_all.deb
    wget http://ftp.us.debian.org/debian/pool/main/f/fontconfig/libfontconfig1_2.11.0-6.3+deb8u1_armel.deb
    sudo dpkg -i fontconfig-config_2.11.0-6.3+deb8u1_all.deb
    wget http://ftp.us.debian.org/debian/pool/main/p/pixman/libpixman-1-0_0.32.6-3_armel.deb
    sudo dpkg -i libpixman-1-0_0.32.6-3_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libx11/libx11-data_1.6.2-3_all.deb
    sudo dpkg -i libx11-data_1.6.2-3_all.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxau/libxau6_1.0.8-1_armel.deb
    sudo dpkg -i libxau6_1.0.8-1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp6_1.1.1-1+b1_armel.deb
    sudo dpkg -i libxdmcp6_1.1.1-1+b1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxcb/libxcb1_1.10-3+b1_armel.deb
    sudo dpkg -i libxcb1_1.10-3+b1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libx11/libx11-6_1.6.2-3_armel.deb
    sudo dpkg -i libx11-6_1.6.2-3_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxext/libxext6_1.3.3-1_armel.deb
    sudo dpkg -i libxext6_1.3.3-1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxrender/libxrender1_0.9.8-1+b1_armel.deb
    sudo dpkg -i libxrender1_0.9.8-1+b1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxcb/libxcb-render0_1.10-3+b1_armel.deb
    sudo dpkg -i libxcb-render0_1.10-3+b1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxcb/libxcb-shm0_1.10-3+b1_armel.deb
    sudo dpkg -i libxcb-shm0_1.10-3+b1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/c/cairo/libcairo2_1.14.0-2.1+deb8u2_armel.deb
    sudo dpkg -i libcairo2_1.14.0-2.1+deb8u2_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/g/gdk-pixbuf/libgdk-pixbuf2.0-common_2.31.1-2+deb8u5_all.deb
    sudo dpkg -i libgdk-pixbuf2.0-common_2.31.1-2+deb8u5_all.deb
    wget http://ftp.us.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg62-turbo_1.3.1-12_armel.deb
    sudo dpkg -i libjpeg62-turbo_1.3.1-12_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libd/libdrm/libdrm2_2.4.58-2_armel.deb
    dpkg -i libdrm2_2.4.58-2_armel.deb

    wget http://ftp.us.debian.org/debian/pool/main/m/mesa/libglapi-mesa_10.3.2-1+deb8u1_armel.deb
    dpkg -i libglapi-mesa_10.3.2-1+deb8u1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libx11/libx11-xcb1_1.6.2-3_armel.deb
    dpkg -i libx11-xcb1_1.6.2-3_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxcb/libxcb-dri2-0_1.10-3+b1_armel.deb
    dpkg -i libxcb-dri2-0_1.10-3+b1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxcb/libxcb-dri3-0_1.10-3+b1_armel.deb
    dpkg -i libxcb-dri3-0_1.10-3+b1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxcb/libxcb-glx0_1.10-3+b1_armel.deb
    dpkg -i libxcb-glx0_1.10-3+b1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxcb/libxcb-present0_1.10-3+b1_armel.deb
    dpkg -i libxcb-present0_1.10-3+b1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxcb/libxcb-sync1_1.10-3+b1_armel.deb
    dpkg -i libxcb-sync1_1.10-3+b1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxfixes/libxfixes3_5.0.1-2+b2_armel.deb
    dpkg -i libxfixes3_5.0.1-2+b2_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxdamage/libxdamage1_1.1.4-2+b1_armel.deb
    dpkg -i libxdamage1_1.1.4-2+b1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxshmfence/libxshmfence1_1.1-4_armel.deb
    dpkg -i libxshmfence1_1.1-4_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxxf86vm/libxxf86vm1_1.1.3-1+b1_armel.deb
    dpkg -i libxxf86vm1_1.1.3-1+b1_armel.deb

    wget http://ftp.us.debian.org/debian/pool/main/j/jasper/libjasper1_1.900.1-debian1-2.4+deb8u3_armel.deb
    dpkg -i libjasper1_1.900.1-debian1-2.4+deb8u3_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/x/xorg/x11-common_7.7+7_all.deb
    dpkg -i x11-common_7.7+7_all.deb
    wget http://ftp.us.debian.org/debian/pool/main/libi/libice/libice6_1.0.9-1+b1_armel.deb
    dpkg -i libice6_1.0.9-1+b1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libs/libsm/libsm6_1.2.2-1+b1_armel.deb
    dpkg -i libsm6_1.2.2-1+b1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxi/libxi6_1.7.4-1+b2_armel.deb
    dpkg -i libxi6_1.7.4-1+b2_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxt/libxt6_1.1.4-1+b1_armel.deb
    dpkg -i libxt6_1.1.4-1+b1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxmu/libxmu6_1.1.2-1_armel.deb
    dpkg -i libxmu6_1.1.2-1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/j/jasper/libjasper1_1.900.1-debian1-2.4+deb8u3_armel.deb
    dpkg -i libjasper1_1.900.1-debian1-2.4+deb8u3_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libp/libpng/libpng12-0_1.2.50-2+deb8u3_armel.deb
    dpkg -i libpng12-0_1.2.50-2+deb8u3_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/g/gdk-pixbuf/libgdk-pixbuf2.0-0_2.31.1-2+deb8u5_armel.deb
    dpkg -i libgdk-pixbuf2.0-0_2.31.1-2+deb8u5_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/g/gtk+2.0/libgtk2.0-common_2.24.25-3+deb8u1_all.deb
    dpkg -i libgtk2.0-common_2.24.25-3+deb8u1_all.deb
    wget http://ftp.us.debian.org/debian/pool/main/libd/libdatrie/libdatrie1_0.2.8-1_armel.deb
    dpkg -i libdatrie1_0.2.8-1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libt/libthai/libthai-data_0.1.21-1_all.deb
    dpkg -i libthai-data_0.1.21-1_all.deb
    wget http://ftp.us.debian.org/debian/pool/main/libt/libthai/libthai0_0.1.21-1_armel.deb
    dpkg -i libthai0_0.1.21-1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.11.0-6.3+deb8u1_armel.deb
    dpkg -i fontconfig_2.11.0-6.3+deb8u1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/p/pango1.0/libpango-1.0-0_1.36.8-3_armel.deb
    dpkg -i libpango-1.0-0_1.36.8-3_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/g/graphite2/libgraphite2-3_1.3.6-1~deb8u1_armel.deb
    dpkg -i libgraphite2-3_1.3.6-1~deb8u1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/h/harfbuzz/libharfbuzz0b_0.9.35-2_armel.deb
    dpkg -i libharfbuzz0b_0.9.35-2_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/p/pango1.0/libpangoft2-1.0-0_1.36.8-3_armel.deb
    dpkg -i libpangoft2-1.0-0_1.36.8-3_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/p/pango1.0/libpangocairo-1.0-0_1.36.8-3_armel.deb
    dpkg -i libpangocairo-1.0-0_1.36.8-3_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxcomposite/libxcomposite1_0.4.4-1_armel.deb
    dpkg -i libxcomposite1_0.4.4-1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxcursor/libxcursor1_1.1.14-1+b1_armel.deb
    dpkg -i libxcursor1_1.1.14-1+b1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxinerama/libxinerama1_1.1.3-1+b1_armel.deb
    dpkg -i libxinerama1_1.1.3-1+b1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/s/shared-mime-info/shared-mime-info_1.3-1_armel.deb
    dpkg -i shared-mime-info_1.3-1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxrandr/libxrandr2_1.4.2-1+b1_armel.deb
    dpkg -i libxrandr2_1.4.2-1+b1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/g/gtk+2.0/libgtk2.0-0_2.24.25-3+deb8u1_armel.deb
    dpkg -i libgtk2.0-0_2.24.25-3+deb8u1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/j/java-atk-wrapper/libatk-wrapper-java-jni_0.30.5-1_armel.deb
    dpkg -i libatk-wrapper-java-jni_0.30.5-1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/g/giflib/libgif4_4.1.6-11+deb8u1_armel.deb
    dpkg -i libgif4_4.1.6-11+deb8u1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libd/libdrm/libdrm2_2.4.74-1~bpo8+1_armel.deb
    dpkg -i libdrm2_2.4.74-1~bpo8+1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/m/mesa/libglapi-mesa_13.0.6-1~bpo8+1_armel.deb
    dpkg -i libglapi-mesa_13.0.6-1~bpo8+1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/m/mesa/libgl1-mesa-glx_13.0.6-1~bpo8+1_armel.deb
    dpkg -i libgl1-mesa-glx_13.0.6-1~bpo8+1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/liba/libasyncns/libasyncns0_0.8-5_armel.deb
    dpkg -i libasyncns0_0.8-5_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/j/json-c/libjson-c2_0.11-4_armel.deb
    dpkg -i libjson-c2_0.11-4_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libo/libogg/libogg0_1.3.2-1_armel.deb
    dpkg -i libogg0_1.3.2-1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/f/flac/libflac8_1.3.0-3_armel.deb
    dpkg -i libflac8_1.3.0-3_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libv/libvorbis/libvorbis0a_1.3.4-2_armel.deb
    dpkg -i libvorbis0a_1.3.4-2_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libv/libvorbis/libvorbisenc2_1.3.4-2_armel.deb
    dpkg -i libvorbisenc2_1.3.4-2_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libs/libsndfile/libsndfile1_1.0.25-9.1+deb8u1_armel.deb
    dpkg -i libsndfile1_1.0.25-9.1+deb8u1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/s/systemd/libsystemd0_230-7~bpo8+2_armel.deb
    dpkg -i libsystemd0_230-7~bpo8+2_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/libx/libxtst/libxtst6_1.2.2-1+b1_armel.deb
    dpkg -i libxtst6_1.2.2-1+b1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/p/pulseaudio/libpulse0_7.1-2~bpo8+1_armel.deb
    dpkg -i libpulse0_7.1-2~bpo8+1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20141019+deb8u3_all.deb
    dpkg -i ca-certificates_20141019+deb8u3_all.deb
    wget http://ftp.us.debian.org/debian/pool/main/n/nspr/libnspr4_4.12-1+debu8u1_armel.deb
    dpkg -i libnspr4_4.12-1+debu8u1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/s/sqlite3/libsqlite3-0_3.8.7.1-1+deb8u2_armel.deb
    dpkg -i libsqlite3-0_3.8.7.1-1+deb8u2_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/n/nss/libnss3_3.26-1+debu8u1_armel.deb
    dpkg -i libnss3_3.26-1+debu8u1_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/j/java-common/java-common_0.52_all.deb
    dpkg -i java-common_0.52_all.deb
    wget http://ftp.us.debian.org/debian/pool/main/l/lksctp-tools/libsctp1_1.0.16+dfsg-2_armel.deb
    dpkg libsctp1_1.0.16+dfsg-2_armel.deb
    wget http://ftp.us.debian.org/debian/pool/main/t/tzdata/tzdata_2017b-0+deb8u1_all.deb
    dpkg -i tzdata_2017b-0+deb8u1_all.deb
    wget http://ftp.us.debian.org/debian/pool/main/t/tzdata/tzdata-java_2017b-0+deb8u1_all.deb
    dpkg -i tzdata-java_2017b-0+deb8u1_all.deb
    wget http://ftp.us.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20141019+deb8u3_all.deb
    dpkg -i ca-certificates_20141019+deb8u3_all.deb

    wget http://ftp.us.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20141019+deb8u3_all.deb
    dpkg -i ca-certificates_20141019+deb8u3_all.deb
    wget http://ftp.us.debian.org/debian/pool/main/j/java-common/default-jre-headless_1.7-52_armel.deb
    dpkg -i default-jre-headless_1.7-52_armel.deb

    wget http://security.debian.org/debian-security/pool/updates/main/o/openjdk-7/openjdk-7-jre-headless_7u121-2.6.8-2~deb8u1_armel.deb
    dpkg -i openjdk-7-jre-headless_7u121-2.6.8-2~deb8u1_armel.deb

    cd ..
    cd ..