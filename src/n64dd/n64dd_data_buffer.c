#include "n64dd.h"

// Buffer used during the process of reading from the disk
// Used to directly read individual LBAs/blocks from the disk before copying to the final destination
// As blocks/LBAs are read directly into this buffer from the disk, it has to be 16-byte aligned
ALIGNED(16) u8 gN64DDDiskReadTemporaryBuffer[MAX_BLK_SIZE];
