# installer
A Bash script to install everything related with [EV3Dev-lang-java](http://ev3dev-lang-java.github.io/)

## Motivation

[EV3Dev](http://www.ev3dev.org/) is a fantastic Complete Linux environment
to build software for robots with Java. But as any technology, the installation
require some configuration to run in the right way.

This project tries to save time in this process.

The installer will install the following libraries by default:

+ Java JDK 8 (Only for BrickPi/PiStorms)

If you like, you can install a utility to monitor the battery. (Recommended)

+ [BatteryMonitor](https://github.com/ev3dev-lang-java/batteryMonitor) (A Java utility to monitor the Battery)

But it is possible to install the following libraries if your project requires them.

+ [OpenCV](http://docs.opencv.org/2.4/doc/tutorials/introduction/desktop_java/java_dev_intro.html)
+ [RXTX](https://github.com/rxtx/rxtx) (Serial port library used on [RPLIDAR4J](https://github.com/ev3dev-lang-java/RPLidar4J))

**Note** Play with the help in order to discover the different options.

## Getting Started

### Starting point:

The starting point to use this installer, is a Brick running
with EV3Dev and updated:

```
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo reboot
```

### EV3 Brick and Java

If you are using a EV3Brick, you will have to install Java JRE8 Manually.
Download the file: `ejdk-8-fcs-b132-linux-arm-sflt-03_mar_2014.tar.gz` from:
http://www.oracle.com/technetwork/java/embedded/downloads/javase/javaseemeddedev3-1982511.html
and copy the file to the following route: `/home/robot/`

**Example:**

```
scp "/home/robot/ejdk-8-fcs-b132-linux-arm-sflt-03_mar_2014.tar.gz" "robot@192.168.1.85:/home/robot"
```

Later, the Installer will manage the file in Java module.

### Running the installer

```
cd /home/robot
mkdir installer
cd installer
wget -N https://raw.githubusercontent.com/ev3dev-lang-java/installer/develop/installer.sh
chmod +x installer.sh
sudo ./installer.sh help
sudo ./installer.sh
```

## Advanced

It is nice to configure one brick but maybe you could discover that the installer could move the JDK one manual process to another brick and hte installer it is possible to replicate to another remote brick. Play with the help to discover the way.

