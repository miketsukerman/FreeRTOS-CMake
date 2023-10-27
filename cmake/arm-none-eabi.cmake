# Toolchain for gcc-arm-none-eabi-10.3-2021.10
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR ARM)

set(TOOLCHAIN arm-none-eabi)

# Compiler test with static library because of missing symbols for executable
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

set(CXX_FLAGS "-g3 -O0 -Wall -Wno-psabi -fno-asynchronous-unwind-tables -fno-builtin -fshort-enums -mcpu=cortex-m3 -funsigned-bitfields -fmessage-length=0 -fno-common -ffunction-sections -fdata-sections -mthumb -mfloat-abi=soft -mno-unaligned-access -femit-class-debug-always")

set(CMAKE_C_FLAGS   "${CXX_FLAGS} -std=c99 -ffreestanding -nostartfiles -ffreestanding -mthumb -mcpu=cortex-m3 -Wall -Wextra -g3 -O0 -ffunction-sections -fdata-sections -MMD -MP ")
set(CMAKE_CXX_FLAGS "${CXX_FLAGS} -std=c++14 -fno-rtti -fno-exceptions -fno-non-call-exceptions -fno-threadsafe-statics -fno-use-cxa-atexit ")
set(CMAKE_ASM_FLAGS "-g3 -mcpu=cortex-m3 ")
set(CMAKE_ASM_SOURCE_FILE_EXTENSIONS "s;S")

set(CMAKE_EXE_LINKER_FLAGS "-g3 -O0 -mcpu=cortex-m4 -Wall -static -mfloat-abi=hard -mfpu=fpv4-sp-d16 -fmessage-length=0 --specs=nano.specs -specs=nosys.specs -Wl,--gc-sections -Wl,-Map,application.map,--cref ")

set(CMAKE_C_COMPILER        arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER      arm-none-eabi-g++)
set(CMAKE_ASM_COMPILER      arm-none-eabi-as)
set(CMAKE_LINKER            arm-none-eabi-g++)
set(CMAKE_AR                arm-none-eabi-ar)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
