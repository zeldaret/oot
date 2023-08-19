#ifndef GDB_H
#define GDB_H

void GDB_OverlayLoad(u32 addressLoad, u32 addressMapped, u32 size);
void GDB_OverlayUnload(u32 addressLoad);

#endif