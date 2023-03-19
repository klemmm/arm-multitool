This is arm-multitool, a small free-standing daemon to use on Linux/ARM embedded devices.

It listens on a port, and allows file transfer, tty, and tcp proxy.

To compile it, you will need an ARM cross-compiler (arm-linux-gnueabi-gcc)

To test it without an embedded Linux/ARM device, you will need qemu-arm.

Example client programs are in client/
