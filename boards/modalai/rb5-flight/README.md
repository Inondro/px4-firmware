
## Needed environment variables

export ARM_CROSS_GCC_ROOT=/home/ekatzfey/Qualcomm/Hexagon_SDK/4.1.0.4/4.1.0.4/tools/linaro64
export HEXAGON_ARM_SYSROOT=$ARM_CROSS_GCC_ROOT/aarch64-linux-gnu/libc
export HEXAGON_TOOLS_ROOT=$DEFAULT_HEXAGON_TOOLS_ROOT/Tools

## ARM tools

The recommended toolchain doesn't support enough c++ for px4:
http://releases.linaro.org/archive/14.11/components/toolchain/binaries/aarch64-linux-gnu/gcc-linaro-4.9-2014.11-x86_64_aarch64-linux-gnu.tar.xz
Use this one instead:
https://releases.linaro.org/components/toolchain/binaries/5.1-2015.08/aarch64-linux-gnu/gcc-linaro-5.1-2015.08-x86_64_aarch64-linux-gnu.tar.xz

## Other

The first Qurt compile will fail. Update qurt_flags.cmake and save it. Then
cmake will be rerun and we'll get the correct flags and the compilation will succeed.
```bash
$ touch boards/modalai/cmake_hexagon/qurt_flags.cmake
```

The clean command seems to wipe out both apps and qurt builds
The clean command runs cmake then deletes all the cmake files???

Why does dspal have the cmake_hexagon directory and the boards/* ???

qurt_flags.cmake is used twice. In qurt.cmake and in platforms/qurt/CMakeLists.txt.
