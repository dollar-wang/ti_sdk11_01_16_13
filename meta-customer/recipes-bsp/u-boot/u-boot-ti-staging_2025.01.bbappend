FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

# Overwrite u-boot k3-am62p5-sk.dts
SRC_URI:append = " file://k3-am62p5-sk.dts"
do_configure:prepend(){
    # overwrite original k3-am62p5-sk.dts
    cp ${WORKDIR}/k3-am62p5-sk.dts ${S}/arch/arm/dts/k3-am62p5-sk.dts
} 

