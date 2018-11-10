# installer
A Bash script to install everything related with [EV3Dev-lang-java](http://ev3dev-lang-java.github.io/)

## Motivation

[EV3Dev](http://www.ev3dev.org/) is a fantastic Complete Linux environment
to build software for robots with Java. But as any technology, the installation
require some configuration to run in the right way.

This project tries to save time in this process.

The installer will install the following libraries by default:

+ Java OpenJDK 10 (Java Runtime Image) for EV3 Brick
+ Java JDK 8 (Only for BrickPi/PiStorms) (It is necessary to upgrade to OpenJDK 10)

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
mkdir installer
cd installer
wget -N https://raw.githubusercontent.com/ev3dev-lang-java/installer/develop/installer.sh
chmod +x installer.sh
sudo ./installer.sh help
sudo ./installer.sh
```
