# Clone/Fetch Upstream Device Dependencies

# Vendor tree Unified
echo "Cloning Vendor Tree"
git clone https://github.com/isaquetp/android_vendor_lenovo_misaka vendor/lenovo/misaka
echo ""

# Dependencies
#echo "Cloning Dependencies Lenovo"
#rm -rf hardware/lenovo;
#git clone https://github.com/PixelExperience/hardware_samsung hardware/samsung;
#git clone https://github.com/LineageOS/android_hardware_samsung_slsi_libbt hardware/samsung_slsi/libbt;
#git clone https://github.com/LineageOS/android_hardware_samsung_slsi_scsc_wifibt_wifi_hal hardware/samsung_slsi/scsc_wifibt/#wifi_hal;
#git clone https://github.com/LineageOS/android_hardware_samsung_slsi_scsc_wifibt_wpa_supplicant_lib hardware/samsung_slsi/#scsc_wifibt/wpa_supplicant_lib;
#git clone https://github.com/LineageOS/android_device_samsung_slsi_sepolicy device/samsung_slsi/sepolicy
#echo ""

# Framework
echo "Patching Framework"
rm frameworks/base/core/java/android/os/Build.java && cp device/lenovo/misaka/patch/Build.java frameworks/base/core/java/android/os
echo ""

# Kernel
echo "Cloning Clang + Kernel"
git clone https://gitlab.com/ThankYouMario/android_prebuilts_clang-standalone -b 13 prebuilts/clang/host/linux-x86/clang-r433403b;
git clone https://github.com/isaquetp/android_kernel_lenovo_misaka kernel/lenovo/misaka
echo ""
