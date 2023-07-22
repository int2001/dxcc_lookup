# gearman-version of DXCC
## Install:
* perl of cause
* gearman (`apt install gearman`)
* perl-modules (install via cpan or apt):
 * JSON
 * Gearman-perl (`apt install libgearman-client-perl`)

## Run
* start dxcc within pm2 (`pm2 start ./dxcc --interpreter=perl`) or tmux or supervisor -> http://supervisord.org/
* Lean back

## Usage
* Call dxcc_lookup function via gearman (See testclient.pl) and add call to check as parameter. It will return DXCC-Informations about the Call as a JSON-Object

------------------------------------


# Based up on:
dxcc VERSION by Fabian Kurz, DJ1YFK.  http://fkurz.net/ham/dxcc/
------------------------------------------------------------------------

dxcc determines the ARRL DXCC entity of a ham radio callsign, based on the
cty.dat country file by Jim Reisert, AD1C (http://country-files.com/). 

Usage:  dxcc [-g] <callsign>

Example output:

$ dxcc DJ1YFK
Callsign: DJ1YFK

Main Prefix:    DL
Country Name:   Fed. Rep. of Germany
WAZ Zone:       14
ITU Zone:       28
Continent:      EU
Latitude:       51.00
Longitude:      -10.00
UTC shift:      -1.0

When invoked with the -g flag, a Perl/Tk GUI with the same basic
functionality, plus a worldmap showing the location of the DXCC is shown.

When invoked with the -m [Prefix] command line option, the beam heading and
direction to between the two countries is calculated. 

INSTALL
-------
dxcc is a self contained Perl script and can run without any external files.
It includes the cty.dat file (provided by Jim Reisert, AD1C, web site:
http://country-files.com/), but also checks /usr/(local/)share/dxcc/cty.dat
for possible updates of this file.
For the GUI, a world map file (earth.gif) is included in the package.

A Makefile which installs 'dxcc' to $DESTDIR/bin (by default: /usr/bin) 
and earth.gif to $DESTDIR/share/dxcc/ is included. 

At your option, put an up-to-date version of the country-file to
/usr/(local/)/share/dxcc/.