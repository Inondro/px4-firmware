#!/bin/bash

adb push /home/ekatzfey/development/px4/px4-firmware/build/modalai_rb5-flight_qurt/platforms/qurt/libpx4.so /usr/lib/rfsa/adsp
adb push /home/ekatzfey/development/px4/px4-firmware/build/modalai_rb5-flight_qurt/platforms/qurt/libpx4muorb_skel.so /usr/lib/rfsa/adsp
adb push /home/ekatzfey/development/px4/px4-firmware/posix-configs/excelsior/px4.config /usr/lib/rfsa/adsp

adb push /home/ekatzfey/development/px4/px4-firmware/build/modalai_rb5-flight_default/bin/px4 /usr/bin
adb push /home/ekatzfey/development/px4/px4-firmware/build/modalai_rb5-flight_default/bin/px4-alias.sh /usr/bin
adb shell chmod a+x /usr/bin/px4-alias.sh
adb shell mkdir -p /etc/modalai
adb push mainapp.config /etc/modalai
# adb push px4-start.service /etc/systemd/system

adb shell sync
