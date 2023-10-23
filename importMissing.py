import os
import sys
import platform
import shutil

def main():
    source = sys.argv[1]
    destination = sys.argv[2]

    if platform.system() == 'Linux':
        sep = '/'
    elif platform.system() == 'Windows':
        sep = '\\'
    
    # LiteDRAM
    src = source + sep + 'LiteDRAM'
    dest = destination + sep + 'LiteDRAM'
    shutil.copy(src + sep + 'liteDRAM.xdc', dest)
    shutil.copy(src + sep + 'litedram_core.init', dest)
    shutil.copy(src + sep + 'mem_1.init', dest)

    # OtherSources/ConfigFiles
    src = source + sep + 'OtherSources' + sep + 'ConfigFiles'
    dest = destination + sep + 'OtherSources' + sep + 'ConfigFiles'
    os.mkdir(dest)
    shutil.copy(src + sep + 'swervolf_nexys_debug.cfg', dest)
    shutil.copy(src + sep + 'swervolf_nexys_program.cfg', dest)
    
    # OtherSources/jtag_vpi_0-r5
    src = source + sep + 'OtherSources' + sep + 'jtag_vpi_0-r5'
    dest = destination + sep + 'OtherSources' + sep + 'jtag_vpi_0-r5'
    shutil.copy(src + sep + 'jtagServer.cpp', dest)
    shutil.copy(src + sep + 'jtag_common.c', dest)
    shutil.copy(src + sep + 'jtag_vpi.c', dest)

    # SweRVolfSoC/BootROM/sw
    src = source + sep + 'SweRVolfSoC' + sep + 'BootROM' + sep + 'sw'
    dest = destination + sep + 'SweRVolfSoC' + sep + 'BootROM' + sep + 'sw'
    shutil.copy(src + sep + 'Makefile', dest)
    shutil.copy(src + sep + 'boot_main.S', dest)
    shutil.copy(src + sep + 'boot_main.bin', dest)
    shutil.copy(src + sep + 'boot_main.elf', dest)
    shutil.copy(src + sep + 'boot_main.mem', dest)
    shutil.copy(src + sep + 'link.ld', dest)
    shutil.copy(src + sep + 'makehex.py', dest)

    # SweRVolfSoC/Peripherals/matmul
    src = source + sep + 'SweRVolfSoC' + sep + 'Peripherals' + sep + 'matmul'
    dest = destination + sep + 'SweRVolfSoC' + sep + 'Peripherals' + sep + 'matmul'
    os.mkdir(dest)
    shutil.copy(src + sep + 'matmul_defines.v', dest)
    shutil.copy(src + sep + 'matmul_top.v', dest)
                
    # SweRVolfSoC/SweRVEh1CoreComplex/dec
    src = source + sep + 'SweRVolfSoC' + sep + 'SweRVEh1CoreComplex' + sep + 'dec'
    dest = destination + sep + 'SweRVolfSoC' + sep + 'SweRVEh1CoreComplex' + sep + 'dec'
    shutil.copy(src + sep + 'addassign', dest)
    shutil.copy(src + sep + 'coredecode', dest)
    shutil.copy(src + sep + 'decode', dest)
    shutil.copy(src + sep + 'espresso.exe', dest)
    shutil.copy(src + sep + 'espresso.linux', dest)

    # SweRVolfSoC/SweRVEh1CoreComplex/include
    src = source + sep + 'SweRVolfSoC' + sep + 'SweRVEh1CoreComplex' + sep + 'include'
    dest = destination + sep + 'SweRVolfSoC' + sep + 'SweRVEh1CoreComplex' + sep + 'include'
    shutil.copy(src + sep + 'swerv.config', dest)



if __name__ == "__main__":
    main()