# How to build
1. ```
   sdk_checkout.sh
   ```
1. ```
   cd SDK11/build
   ```
1. ```
   . conf/setenv
   ```
1. Include customer layer
   ```
   bitbake-layers add-layer ../../meta-customer/
   ```
1. Starting the build
   ```
   MACHINE=am62pxx-evm bitbake -k tisdk-base-image
   ```

# Create a bootable SD card
```
$ mkdir sd_image && cd sd_image
$ cp deploy-ti/images/am62pxx-evm/tisdk-base-image-am62pxx-evm.rootfs.wic.xz .
$ xz -d tisdk-base-image-am62pxx-evm.rootfs.wic.xz
$ sudo dd if=tisdk-base-image-am62pxx-evm.rootfs.wic of=/dev/sdX bs=1M conv=fsync
```

# Reference
* [Building the SDK with Yocto](https://software-dl.ti.com/processor-sdk-linux/esd/AM62PX/11_01_16_13/exports/docs/linux/Overview_Building_the_SDK.html)
* [Yocto Layer Configuration](https://software-dl.ti.com/processor-sdk-linux/esd/AM62PX/11_01_16_13/exports/docs/devices/AM62PX/linux/Release_Specific_Yocto_layer_Configuration.html)