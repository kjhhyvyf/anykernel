ui_print "    Chipset        : Snapdragon 870"
ui_print "    Author         : KaoKun"
ui_print ""
ui_print "  --------------------------------------------------"
ui_print "       Initializing flash environment..."
ui_print ""
ui_print "       Mounting partitions..."
ui_print "       Extracting kernel image..."
ui_print "       Flashing boot partition..."
ui_print ""
ui_print "       KaoKun Kernel installation in progress"
ui_print "  --------------------------------------------------"
ui_print ""

mv $home/kernels/Image $home/Image;
# mv $home/kernels/dtb $home/dtb;

## Boot Partition Flash
split_boot
flash_boot

# flash_dtbo;
## end boot install

# Vendor boot
#block=vendor_boot;
#is_slot_device=1;
#ramdisk_compression=auto;
#patch_vbmeta_flag=auto;

# reset for vendor_boot patching
#reset_ak;

## AnyKernel vendor_boot install
#split_boot;

#flash_boot;
## end vendor_boot install

ui_print ""
ui_print "  --------------------------------------------------"
ui_print "       KaoKun Kernel flashed successfully"
ui_print "            on Xiaomi Pad 6 (pipa)"
ui_print "  --------------------------------------------------"
ui_print ""
ui_print "     You may now reboot your device safely."
ui_print "     Thank you for choosing KaoKun"
ui_print ""
ui_print "  =================================================="
ui_print ""
