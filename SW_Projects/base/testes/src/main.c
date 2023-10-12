#if defined(D_NEXYS_A7)
#include <bsp_printf.h>
#include <bsp_mem_map.h>
#include <bsp_version.h>
#else
PRE_COMPILED_MSG("no platform was defined")
#endif

#include <psp_api.h>

#define DELAY 10000000

int main(void)
{
    int i, j = 0;
    
    
}