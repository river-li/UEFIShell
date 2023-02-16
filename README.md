# UEFIShell

This is a pack of essential components used to analyze UEFI firmware images.

If you want to dynamically analyze a UEFI DXE driver (or application),
you can move your target file to hda-content and simply run `qemu.sh` to debug it.

Common workflow:
1. Move files to `hda-content`.
2. Run `qemu.sh` to launch a UEFI Shell.
3. Modify the `gdb.script` to add breakpoints.
4. Run `gdb.sh` in another terminal.
5. If all things work well, you can see the UEFIShell window is interrupted and you can debug it in qemu window.
6. Optional: Maybe you can write proof-of-concept script in `nsh` file and execute it in qemu to test your ideas.


```bash
./qemu.sh

# in another window
gdb -x gdb.script
# or ./gdb.sh

```
