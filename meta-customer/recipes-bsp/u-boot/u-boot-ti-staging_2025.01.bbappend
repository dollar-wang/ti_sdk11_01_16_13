FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

# Overwrite u-boot k3-am62p5-sk.dts
SRC_URI:append = " file://k3-am62p5-sk.dts"

## Replace DTS here because do_create_srcipk runs before do_configure.
## If we modify DTS later, srcipk would still contain the original 8GB version.
do_create_srcipk:prepend(){
    # overwrite original k3-am62p5-sk.dts
    cp ${WORKDIR}/k3-am62p5-sk.dts ${S}/dts/upstream/src/arm64/ti/k3-am62p5-sk.dts
}
