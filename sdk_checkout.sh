#!/bin/bash
WORKDIR="SDK11"
git clone https://git.ti.com/git/arago-project/oe-layersetup.git ${WORKDIR} && cd ${WORKDIR}
./oe-layertool-setup.sh -f configs/processor-sdk/processor-sdk-scarthgap-chromium-11.01.16.13-config.txt


