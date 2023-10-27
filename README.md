# FreeRTOS + CMake

Template project for FreeRTOS build with CMake.

Based on https://www.freertos.org/freertos-on-qemu-mps2-an385-model.html

# Dependencies

```bash
sudo apt install gcc-arm-none-eabi
```

# Build

```bash
make build-arm
```

# Clean 

```bash 
make clean-arm
```

# Run

```bash
qemu-system-arm -machine mps2-an385 -cpu cortex-m3 -kernel ${workspaceFolder}/cmake-debug-arm/application/core0.elf -monitor none -nographic -serial stdio -s -S
```
