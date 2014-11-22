rotator-control
===============

Control M-squared azimuth rotators on a linux computer by double-clicking on
a map.  It includes a default map centered on southern Michigan.  Other maps
can be used, see the help menu or run the program with --help option.

Required Ubuntu packages beyond stock distribution
perl-tk
libgtk2-imageview-perl
libdevice-serialport-perl
libtk-filedialog-perl
libfile-homedir-perl
libfile-slurp-perl
libtk-pod-perl

Allow your user ID to access the serial port
sudo usermod -a -G dialout $USER

Download rotator-control to a directory of your choosing and run
`chmod 555 rotator-control` to make it executable.
