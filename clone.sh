#!/bin/bash
autoreconf -vis
./configure
make
src/mfoc-hardnested -O myfile
#tell user to switch cards and press enter
echo "Press enter to continue"
read
#run mfoc
nfc-mfclassic W b src/china src/myfile1k