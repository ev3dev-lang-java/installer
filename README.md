# installer
A Bash script to install everything related with [EV3Dev-lang-java](http://ev3dev-lang-java.github.io/)

## Motivation

[EV3Dev](http://www.ev3dev.org/) is a fantastic Complete Linux environment
to build software for robots with Java. But as any technology, the installation
require some configuration to run in the right way.

This project tries to save time in this process.

The installer will install the following libraries by default:

+ OpenJDK 11 JRI for EV3, OpenJDK 11 JRE for the rest of the bricks

It is possible to install the following libraries if your project requires them.

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

### Running the installer

```
cd /home/robot
wget -N https://raw.githubusercontent.com/ev3dev-lang-java/installer/master/installer.sh
chmod +x installer.sh
sudo ./installer.sh help
sudo ./installer.sh
```
