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

#https://linuxaria.com/howto/how-to-install-a-single-package-from-debian-sid-or-debian-testing
#    https://packages.debian.org/jessie/all/ca-certificates-java/download

#root@ev3dev:/home/robot/installer-packages/java# dpkg -i openjdk-7-jre-headless_7u121-2.6.8-2~deb8u1_armel.deb
#(Reading database ... 28715 files and directories currently installed.)
#Preparing to unpack openjdk-7-jre-headless_7u121-2.6.8-2~deb8u1_armel.deb ...
#Unpacking openjdk-7-jre-headless:armel (7u121-2.6.8-2~deb8u1) over (7u121-2.6.8-2~deb8u1) ...
#dpkg: dependency problems prevent configuration of openjdk-7-jre-headless:armel:
# openjdk-7-jre-headless:armel depends on ca-certificates-java; however:
#  Package ca-certificates-java is not installed.

#dpkg: error processing package openjdk-7-jre-headless:armel (--install):
# dependency problems - leaving unconfigured
#Errors were encountered while processing:
# openjdk-7-jre-headless:armel

#root@ev3dev:/home/robot/installer-packages/java# sudo apt-get install openjdk-6-jre-headless
#Reading package lists... Done
#Building dependency tree
#Reading state information... Done
#Package openjdk-6-jre-headless is not available, but is referred to by another package.
#This may mean that the package is missing, has been obsoleted, or
#is only available from another source
#However the following packages replace it:
#  default-jre-headless icedtea-netx-common icedtea-netx

#strace -tt -T -fo strace.log apt-get update

root@ev3dev:/home/robot/installer-packages/java# sudo apt-get install default-jre-headless
Reading package lists... Done
Building dependency tree
Reading state information... Done
You might want to run 'apt-get -f install' to correct these:
The following packages have unmet dependencies:
 default-jre-headless : Depends: openjdk-8-jre-headless but it is not going to be installed
 libbluetooth-dev : Depends: libbluetooth3 (= 5.23-2+b1) but 5.23-2ev3dev2 is to be installed
 libjasper-runtime : Depends: freeglut3 but it is not going to be installed
                     Depends: libglu1-mesa but it is not going to be installed or
                              libglu1
 openjdk-7-jre-headless : Depends: ca-certificates-java but it is not going to be installed
                          Recommends: icedtea-7-jre-jamvm (= 7u121-2.6.8-2~deb8u1) but it is not going to be installed
 systemd : Depends: libsystemd0 (= 215-17+deb8u6) but 230-7~bpo8+2 is to be installed
E: Unmet dependencies. Try 'apt-get -f install' with no packages (or specify a solution).

root@ev3dev:/home/robot/installer-packages/java# sudo apt-get -f install
Reading package lists... Done
Building dependency tree
Reading state information... Done
Correcting dependencies... Done
The following extra packages will be installed:
  ca-certificates-java console-setup console-setup-linux dmsetup freeglut3 ifupdown init-system-helpers kbd keyboard-configuration
  keyutils libapparmor1 libc-bin libc-dev-bin libc-l10n libc6 libc6-dev libdevmapper1.02.1 libfdisk1 libgcrypt20 libglu1-mesa
  libgssapi-krb5-2 libip4tc0 libk5crypto3 libkrb5-3 libkrb5support0 liblz4-1 libmount1 libncurses5 libncursesw5 libpam-systemd
  libseccomp2 libselinux1 libsmartcols1 libsystemd0 libtinfo5 libudev1 linux-libc-dev locales manpages mount nfs-common rpcbind
  screen systemd systemd-sysv sysvinit-utils udev util-linux
Suggested packages:
  ppp rdnssd glibc-doc rng-tools krb5-doc krb5-user man-browser open-iscsi watchdog byobu screenie iselect ncurses-term systemd-ui
  systemd-container policykit-1 util-linux-locales
Recommended packages:
  manpages-dev krb5-locales
The following packages will be REMOVED:
  libbluetooth-dev
The following NEW packages will be installed:
  ca-certificates-java freeglut3 keyutils libapparmor1 libc-l10n libfdisk1 libglu1-mesa libip4tc0 liblz4-1 libseccomp2 manpages
The following packages will be upgraded:
  console-setup console-setup-linux dmsetup ifupdown init-system-helpers kbd keyboard-configuration libc-bin libc-dev-bin libc6
  libc6-dev libdevmapper1.02.1 libgcrypt20 libgssapi-krb5-2 libk5crypto3 libkrb5-3 libkrb5support0 libmount1 libncurses5
  libncursesw5 libpam-systemd libselinux1 libsmartcols1 libsystemd0 libtinfo5 libudev1 linux-libc-dev locales mount nfs-common
  rpcbind screen systemd systemd-sysv sysvinit-utils udev util-linux
37 upgraded, 11 newly installed, 1 to remove and 371 not upgraded.
3 not fully installed or removed.
Need to get 22.8 MB of archives.
After this operation, 4183 kB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://http.debian.net/debian/ sid/main ca-certificates-java all 20161107 [14.5 kB]
Get:2 http://http.debian.net/debian/ sid/main libgcrypt20 armel 1.7.6-1 [444 kB]
Get:3 http://http.debian.net/debian/ sid/main liblz4-1 armel 0.0~r131-2+b1 [32.9 kB]
Get:4 http://http.debian.net/debian/ sid/main libapparmor1 armel 2.11.0-3 [75.6 kB]
Get:5 http://http.debian.net/debian/ sid/main libip4tc0 armel 1.6.0+snapshot20161117-6 [66.1 kB]
Get:6 http://http.debian.net/debian/ sid/main libselinux1 armel 2.6-3+b1 [94.8 kB]
Get:7 http://http.debian.net/debian/ sid/main libmount1 armel 2.29.2-1 [163 kB]
Get:8 http://http.debian.net/debian/ sid/main libseccomp2 armel 2.3.1-2.1 [32.5 kB]
Get:9 http://http.debian.net/debian/ sid/main libfdisk1 armel 2.29.2-1 [193 kB]
Get:10 http://http.debian.net/debian/ sid/main libtinfo5 armel 6.0+20161126-1 [288 kB]
Get:11 http://http.debian.net/debian/ sid/main libncursesw5 armel 6.0+20161126-1 [94.9 kB]
Get:12 http://http.debian.net/debian/ sid/main libncurses5 armel 6.0+20161126-1 [75.7 kB]
Get:13 http://http.debian.net/debian/ sid/main libsmartcols1 armel 2.29.2-1 [117 kB]
Get:14 http://http.debian.net/debian/ sid/main init-system-helpers all 1.47 [43.9 kB]
Get:15 http://http.debian.net/debian/ sid/main util-linux armel 2.29.2-1 [909 kB]
Get:16 http://http.debian.net/debian/ sid/main sysvinit-utils armel 2.88dsf-59.9 [67.3 kB]
Get:17 http://http.debian.net/debian/ sid/main mount armel 2.29.2-1 [181 kB]
Get:18 http://http.debian.net/debian/ sid/main libsystemd0 armel 232-22 [257 kB]
Get:19 http://http.debian.net/debian/ sid/main kbd armel 2.0.3-2+b1 [320 kB]
Get:20 http://http.debian.net/debian/ sid/main console-setup-linux all 1.164 [983 kB]
Get:21 http://http.debian.net/debian/ sid/main console-setup all 1.164 [117 kB]
Get:22 http://http.debian.net/debian/ sid/main keyboard-configuration all 1.164 [644 kB]
Err http://http.debian.net/debian/ sid/main rpcbind armel 0.2.3-0.5+b1
  404  Not Found
Get:23 http://http.debian.net/debian/ sid/main libc-l10n all 2.24-10 [819 kB]
Get:24 http://http.debian.net/debian/ sid/main locales all 2.24-10 [3287 kB]
Get:25 http://http.debian.net/debian/ sid/main libc6 armel 2.24-10 [2358 kB]
Get:26 http://http.debian.net/debian/ sid/main libc-bin armel 2.24-10 [680 kB]
Get:27 http://http.debian.net/debian/ sid/main libc-dev-bin armel 2.24-10 [252 kB]
Get:28 http://http.debian.net/debian/ sid/main linux-libc-dev armel 4.9.18-1 [1210 kB]
Get:29 http://http.debian.net/debian/ sid/main libc6-dev armel 2.24-10 [2041 kB]
Get:30 http://http.debian.net/debian/ sid/main dmsetup armel 2:1.02.137-2 [107 kB]
Get:31 http://http.debian.net/debian/ sid/main libdevmapper1.02.1 armel 2:1.02.137-2 [161 kB]
Get:32 http://http.debian.net/debian/ sid/main libgssapi-krb5-2 armel 1.15-1 [131 kB]
Get:33 http://http.debian.net/debian/ sid/main libk5crypto3 armel 1.15-1 [115 kB]
Get:34 http://http.debian.net/debian/ sid/main libkrb5support0 armel 1.15-1 [57.9 kB]
Get:35 http://http.debian.net/debian/ sid/main libkrb5-3 armel 1.15-1 [263 kB]
Get:36 http://http.debian.net/debian/ sid/main keyutils armel 1.5.9-9 [50.4 kB]
Get:37 http://http.debian.net/debian/ sid/main nfs-common armel 1:1.3.4-2.1 [210 kB]
Get:38 http://http.debian.net/debian/ sid/main screen armel 4.5.0-5 [564 kB]
Get:39 http://http.debian.net/debian/ sid/main libudev1 armel 232-22 [118 kB]
Get:40 http://http.debian.net/debian/ sid/main systemd armel 232-22 [2216 kB]
Get:41 http://http.debian.net/debian/ sid/main ifupdown armel 0.8.19 [72.7 kB]
Get:42 http://http.debian.net/debian/ sid/main udev armel 232-22 [1068 kB]
Get:43 http://http.debian.net/debian/ sid/main systemd-sysv armel 232-22 [79.2 kB]
Get:44 http://http.debian.net/debian/ sid/main libpam-systemd armel 232-22 [172 kB]
Get:45 http://http.debian.net/debian/ sid/main freeglut3 armel 2.8.1-3 [116 kB]
Get:46 http://http.debian.net/debian/ sid/main libglu1-mesa armel 9.0.0-2.1 [141 kB]
Get:47 http://http.debian.net/debian/ sid/main manpages all 4.10-2 [1222 kB]
Fetched 22.7 MB in 1min 12s (315 kB/s)
E: Failed to fetch http://http.debian.net/debian/pool/main/r/rpcbind/rpcbind_0.2.3-0.5+b1_armel.deb  404  Not Found

E: Unable to fetch some archives, maybe run apt-get update or try with --fix-missing?
root@ev3dev:/home/robot/installer-packages/java#  apt-get update --fix-missing
Get:1 http://security.debian.org jessie/updates InRelease [63.1 kB]
Hit http://archive.ev3dev.org jessie InRelease
Get:2 http://http.debian.net jessie-backports InRelease [166 kB]
Ign http://httpredir.debian.org jessie InRelease
Get:3 http://http.debian.net sid InRelease [237 kB]
Get:4 http://httpredir.debian.org jessie Release.gpg [2373 B]
Get:5 http://httpredir.debian.org jessie Release [148 kB]
Get:6 http://security.debian.org jessie/updates/main armel Packages [501 kB]
Get:7 http://archive.ev3dev.org jessie/main armel Packages [47.1 kB]
Get:8 http://security.debian.org jessie/updates/contrib armel Packages [994 B]
Get:9 http://security.debian.org jessie/updates/non-free armel Packages [20 B]
Get:10 http://http.debian.net jessie-backports/main armel Packages [1099 kB]
Get:11 http://http.debian.net sid/main armel Packages [9760 kB]
Get:12 http://httpredir.debian.org jessie/main armel Packages [8868 kB]
Get:13 http://httpredir.debian.org jessie/contrib armel Packages [43.3 kB]
Get:14 http://httpredir.debian.org jessie/non-free armel Packages [71.1 kB]
Fetched 21.0 MB in 3min 37s (96.7 kB/s)
Reading package lists... Done
W: Size of file /var/lib/apt/lists/httpredir.debian.org_debian_dists_jessie_non-free_binary-armel_Packages.gz is not what the server reported 71054 71096

    cd ..
    cd ..