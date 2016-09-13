# meta-monarc
Collection of OpenEmbedded layers for Monarc

Please see the respective READMEs in the layer subdirectories

## Setup

1. Follow [prerequisite](http://developer.toradex.com/knowledge-base/board-support-package/openembedded-(core)#Prerequisites) and
   [installation](http://developer.toradex.com/knowledge-base/board-support-package/openembedded-(core)#Installation) steps
   described on Toradex's developer site.

2. Clone this repository into the `/stuff` directory

3. Init submodules by running `git submodule update --init --recursive` in this directory.

4. Replace the `bblayers.conf` file in `/build/conf` with the `bblayers.conf` file included here.

## Building

Follow the [building](http://developer.toradex.com/knowledge-base/board-support-package/openembedded-(core)#Building) steps on
Toradex's developer site.

