#!/bin/bash

adb push ../../../build/modalai_rb5-flight_qurt/platforms/qurt/libpx4.so /usr/lib/rfsa/adsp
adb push ../../../build/modalai_rb5-flight_qurt/platforms/qurt/libpx4muorb_skel.so /usr/lib/rfsa/adsp

adb shell sync
