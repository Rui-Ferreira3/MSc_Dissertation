import os
import sys
import platform
import shutil

def copy_file(src, dest, fileName, sep):
    if not os.path.exists(src):
        print("Could not find: " + src)
        exit()
    if not os.path.exists(dest + sep + fileName):
        shutil.copy(src + sep + fileName, dest)

def main():
    source = sys.argv[1]
    if not os.path.exists(source):
        print("Invalid source directory!")
        exit()
    destination = sys.argv[2]
    if not os.path.exists(destination):
        print("Invalid destination directory!")
        exit()

    if platform.system() == 'Linux':
        sep = '/'
    elif platform.system() == 'Windows':
        sep = '\\'
    
    print("\n\nCopying files from " + source + " to " + destination + "...\n\n")

    # LiteDRAM
    src = source + sep + 'LiteDRAM'
    dest = destination + sep + 'LiteDRAM'
    copy_file(src, dest, 'liteDRAM.xdc', sep)
    copy_file(src, dest, 'litedram_core.init', sep)
    copy_file(src, dest, 'mem_1.init', sep)

    # OtherSources/ConfigFiles
    src = source + sep + 'OtherSources' + sep + 'ConfigFiles'
    dest = destination + sep + 'OtherSources' + sep + 'ConfigFiles'
    if not os.path.exists(dest):
        os.mkdir(dest)
    copy_file(src, dest, 'swervolf_nexys_debug.cfg', sep)
    copy_file(src, dest, 'swervolf_nexys_program.cfg', sep)
    
    # OtherSources/jtag_vpi_0-r5
    src = source + sep + 'OtherSources' + sep + 'jtag_vpi_0-r5'
    dest = destination + sep + 'OtherSources' + sep + 'jtag_vpi_0-r5'
    copy_file(src, dest, 'jtagServer.cpp', sep)
    copy_file(src, dest, 'jtag_common.c', sep)
    copy_file(src, dest, 'jtag_vpi.c', sep)

    # SweRVolfSoC/BootROM/sw
    src = source + sep + 'SweRVolfSoC' + sep + 'BootROM' + sep + 'sw'
    dest = destination + sep + 'SweRVolfSoC' + sep + 'BootROM' + sep + 'sw'
    copy_file(src, dest, 'Makefile', sep)
    copy_file(src, dest, 'boot_main.S', sep)
    copy_file(src, dest, 'boot_main.bin', sep)
    copy_file(src, dest, 'boot_main.elf', sep)
    copy_file(src, dest, 'boot_main.mem', sep)
    copy_file(src, dest, 'link.ld', sep)
    copy_file(src, dest, 'makehex.py', sep)

    # SweRVolfSoC/Peripherals/matmul
    src = source + sep + 'SweRVolfSoC' + sep + 'Peripherals' + sep + 'matmul'
    dest = destination + sep + 'SweRVolfSoC' + sep + 'Peripherals' + sep + 'matmul'
    if not os.path.exists(dest):
        os.mkdir(dest)
    copy_file(src, dest, 'matmul_defines.v', sep)
    copy_file(src, dest, 'matmul_top.v', sep)
                
    # SweRVolfSoC/SweRVEh1CoreComplex/dec
    src = source + sep + 'SweRVolfSoC' + sep + 'SweRVEh1CoreComplex' + sep + 'dec'
    dest = destination + sep + 'SweRVolfSoC' + sep + 'SweRVEh1CoreComplex' + sep + 'dec'
    copy_file(src, dest, 'addassign', sep)
    copy_file(src, dest, 'coredecode', sep)
    copy_file(src, dest, 'decode', sep)
    copy_file(src, dest, 'espresso.exe', sep)
    copy_file(src, dest, 'espresso.linux', sep)

    # SweRVolfSoC/SweRVEh1CoreComplex/include
    src = source + sep + 'SweRVolfSoC' + sep + 'SweRVEh1CoreComplex' + sep + 'include'
    dest = destination + sep + 'SweRVolfSoC' + sep + 'SweRVEh1CoreComplex' + sep + 'include'
    copy_file(src, dest, 'swerv.config', sep)

    print("Files copied!\n\n")



if __name__ == "__main__":
    main()