# gt4gemstone
The Glamorous Toolkit for remote work with Gemstone/S

## Installation

After installing [GsDevKit](https://github.com/GsDevKit/GsDevKit_home#installation), do the following from the $GS_HOME folder:

    createStone -u http://ws.stfx.eu/4TIV0I28KZ6O?format=text -i Gt4Gemstone -l Gt4Gemstone Gt4Gemstone33 3.3.0
    createClient -t pharo Gt4Gemstone -l -v Pharo5.0 -z $GS_HOME/shared/repos/gt4gemstone/.smalltalk.ston
    startClient Gt4Gemstone -s Gt4Gemstone33
