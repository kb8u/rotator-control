rotator-control
===============

Control M-squared or DCU-1 compatible azimuth rotators on a linux computer

This is a work-in-progress and not yet ready for public use.  It does work
with M-2 Antenna Systems model RC2800 controllers but the background maps
are hard-coded and there is no facility to change the serial port used
at this time.

Required Ubuntu packages beyond stock distribution
perl-tk
libdevice-serialport-perl
libtk-filedialog-perl
libfile-homedir-perl
libfile-slurp-perl

Allow your user ID to access the serial port
sudo usermod -a -G dialout $USER
