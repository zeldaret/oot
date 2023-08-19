/**
 * Helper for extended GDB support.
 * Overlay docs: https://sourceware.org/gdb/onlinedocs/gdb/Automatic-Overlay-Debugging.html#Automatic-Overlay-Debugging
 */
#include "global.h"
#include "terminal.h"
#include "gdb.h"

#define GDB_MAX_OVERLAYS 64

struct GDB_Overlay
{
    u32 vma;
    u32 size;
    u32 lma;
    u32 mapped;
};

static struct GDB_Overlay _ovly_table[GDB_MAX_OVERLAYS];
static u32 _novlys = 0;

void GDB_OverlayLoad(u32 addressLoad, u32 addressMapped, u32 size)
{
    _novlys = GDB_MAX_OVERLAYS;

    for(u32 i = 0; i < GDB_MAX_OVERLAYS; ++i) {
        if(_ovly_table[i].mapped) {
            continue;
        }

        _ovly_table[i].vma = addressLoad;
        _ovly_table[i].size = size;
        _ovly_table[i].lma = addressMapped;
        _ovly_table[i].mapped = 1;
        osSyncPrintf("GDB: overlay loaded: %08X -> %08X (size: %X)\n", addressLoad, addressMapped, size);
        return;
    }
    osSyncPrintf(VT_COL(RED, WHITE) "GDB: overlay table full!\n" VT_RST);
}

void GDB_OverlayUnload(u32 addressLoad)
{
    for(u32 i = 0; i < GDB_MAX_OVERLAYS; ++i) {
        if(_ovly_table[i].vma == addressLoad) {
            _ovly_table[i].mapped = 0;
            osSyncPrintf("GDB: overlay unloaded: %08X\n", addressLoad);
            return;
        }
    }
}
