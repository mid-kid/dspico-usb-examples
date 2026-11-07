# DSpico USB Gamepad: use your DS as a PC controller

A DS homebrew app that allows the device to enumerate over the DSpico's USB port as a standard HID gamepad. No driver is required on the PC side.

Button states are sent every VBlank to the host as a HID gamepad report through tinyusb, and button states are read via the ARM7. The D-pad becomes a hat switch, with face and shoulder buttons mapped by physical position instead of their label. X and Y aren't wired to `KEYINPUT`, so they're read separately from the ARM7-only `EXTKEYIN` register. 

The touchscreen simulates the right stick input, with pen position being scaled to a deflection from the centre of the screen. The stick re-centres when the user is no longer touching the display.

Written for [an XDA article](https://www.xda-developers.com/put-raspberry-pi-in-nintendo-3ds-pc-gamepad-webcam-microphone/).
