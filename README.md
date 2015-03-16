# Flash VPAID Player Tester

This project builds a VPAID 1.0 compliant SWF binary that logs all interaction with the player to the JavaScript console. This can be used to test VPAID compliance with video players as well as containers provided by DSP/SSP intermediaries.

## Try it out

A precompiled binary, VAST XML, and configured crossdomain file are in the directory `sample-site`. Copy these to the root of any web server and point your ad player to the `vast.xml` ad tag.

## How to build

You must have the following installed:

* `make`
* `mxmlc` (Apache Flex)

Check out this repository, `cd` into its directory, and simply call

	make

Output will be created as `build/vpaid.swf`
