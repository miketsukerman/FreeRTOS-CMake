all: build-arm

build-arm:
	cmake -DCMAKE_TOOLCHAIN_FILE=./cmake/arm-none-eabi.cmake -B cmake-debug-arm .
	cmake --build cmake-debug-arm

run: 
	qemu-system-arm -machine mps2-an385 -cpu cortex-m3 -kernel cmake-debug-arm/application/core0.elf -monitor none -nographic -serial stdio -s -S

clean-arm:
	rm -rf cmake-debug-arm

.PHONY: build-arm clean-arm all
