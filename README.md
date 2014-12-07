rotator-control
===============

Control M-squared azimuth rotators on a linux computer by double-clicking on
a map.  It includes a default map centered on southern Michigan.  Other maps
can be used, see the help menu or run the program with --help option.

This works but you'll have to install a bunch of CPAN modules, there's no
binary packaged quite yet.  It also has a lib path hardcoded in that you'd
need to change.

Allow your user ID to access the serial port
sudo usermod -a -G dialout $USER

Download rotator-control to a directory of your choosing and run
`chmod 555 rotator-control` to make it executable.
