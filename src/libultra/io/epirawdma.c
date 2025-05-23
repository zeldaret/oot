#include "global.h"
#include "ultra64/bcp.h"

s32 __osEPiRawStartDma(OSPiHandle* handle, s32 direction, u32 cartAddr, void* dramAddr, size_t size) {
#ifdef BBPLAYER
    u64 dummybuf[2];
#endif
    u32 status;
    OSPiHandle* curHandle;
#ifdef BBPLAYER
    u32 buffer;
    u32 pgsize;
    u16* adr;
    u32 i;
#endif

    status = IO_READ(PI_STATUS_REG);
    while (status & (PI_STATUS_DMA_BUSY | PI_STATUS_IO_BUSY)) {
        status = IO_READ(PI_STATUS_REG);
    }

    if (__osCurrentHandle[handle->domain]->type != handle->type) {
        curHandle = __osCurrentHandle[handle->domain];

        if (handle->domain == 0) {
            if (curHandle->latency != handle->latency) {
                IO_WRITE(PI_BSD_DOM1_LAT_REG, handle->latency);
            }

            if (curHandle->pageSize != handle->pageSize) {
                IO_WRITE(PI_BSD_DOM1_PGS_REG, handle->pageSize);
            }

            if (curHandle->relDuration != handle->relDuration) {
                IO_WRITE(PI_BSD_DOM1_RLS_REG, handle->relDuration);
            }

            if (curHandle->pulse != handle->pulse) {
                IO_WRITE(PI_BSD_DOM1_PWD_REG, handle->pulse);
            }
        } else {
            if (curHandle->latency != handle->latency) {
                IO_WRITE(PI_BSD_DOM2_LAT_REG, handle->latency);
            }

            if (curHandle->pageSize != handle->pageSize) {
                IO_WRITE(PI_BSD_DOM2_PGS_REG, handle->pageSize);
            }

            if (curHandle->relDuration != handle->relDuration) {
                IO_WRITE(PI_BSD_DOM2_RLS_REG, handle->relDuration);
            }

            if (curHandle->pulse != handle->pulse) {
                IO_WRITE(PI_BSD_DOM2_PWD_REG, handle->pulse);
            }
        }

        curHandle->type = handle->type;
        curHandle->latency = handle->latency;
        curHandle->pageSize = handle->pageSize;
        curHandle->relDuration = handle->relDuration;
        curHandle->pulse = handle->pulse;
    }

#ifdef BBPLAYER
    if (direction == OS_READ) {
        // Device page size in bytes
        pgsize = 1;
        for (i = 1; i <= (u32)handle->pageSize + 2; i++) {
            pgsize *= 2;
        }

        // If the initial cart address mod pgsize is at the last u16 in the page,
        // need to do some manual DMAs?
        if ((cartAddr & (pgsize - 1)) == pgsize - sizeof(u16)) {
            // Read 32 bits starting 2 bytes before the target DMA address,
            // so that the lower 16 bits of the result are the first 2 bytes
            // of the requested data.
            __osEPiRawReadIo(handle, cartAddr - sizeof(u16), &buffer);

            // Poke the lower 16 bits into the destination address
            adr = (u16*)PHYS_TO_K1(dramAddr);
            *(adr++) = (u16)buffer;

            // Update DMA parameters
            cartAddr += sizeof(u16);
            dramAddr = adr;
            size -= sizeof(u16);

            // If the remaining size is >= 4
            if (size >= sizeof(u32)) {
                // Read another 32 bits at the cart addr
                __osEPiRawReadIo(handle, cartAddr, &buffer);

                // Store all 32 bits to RAM
                adr = (u16*)dramAddr;
                *(adr++) = buffer >> 16;
                *(adr++) = (u16)buffer;

                // Update DMA parameters again
                cartAddr += sizeof(u32);
                dramAddr = adr;
                size -= sizeof(u32);

                // If we're not at the end of the DMA
                if (size != 0) {
                    // Read 32 bits again
                    __osEPiRawReadIo(handle, cartAddr, &buffer);

                    // Store just the upper 16 bits
                    adr = (u16*)PHYS_TO_K1(dramAddr);
                    *(adr++) = buffer >> 16;

                    // Update DMA parameters once more
                    cartAddr += sizeof(u16);
                    dramAddr = adr;
                    size -= sizeof(u16);
                }
            }
        }

        // If the end cart address mod pgsize is just 2 bytes into a page or the remaining data size is just 1x u16
        if (((((cartAddr + size) & (pgsize - 1)) == sizeof(u16)) | (size == sizeof(u16))) != 0) {
            if ((cartAddr + size) & 2) {
                // Read 32 bits at end - 2, store the upper 16 bits
                __osEPiRawReadIo(handle, cartAddr + size - sizeof(u16), &buffer);
                adr = (u16*)PHYS_TO_K1(dramAddr) + (size - sizeof(u16)) / sizeof(u16);
                *adr = buffer >> 16;
            } else {
                // Read 32 bits at end - 4, store the lower 16 bits
                __osEPiRawReadIo(handle, cartAddr + size - sizeof(u32), &buffer);
                adr = (u16*)PHYS_TO_K1(dramAddr) + (size - sizeof(u16)) / sizeof(u16);
                *adr = (u16)buffer;
            }
            size -= sizeof(u16);
        }

        if (size == 0) {
            // If size ended up 0 following the adjustments, run an 8-byte dummy DMA anyway
            size = 8;
            dramAddr = (void*)dummybuf;
            cartAddr = 0;
        }
    }
#endif

    IO_WRITE(PI_DRAM_ADDR_REG, osVirtualToPhysical(dramAddr));
    IO_WRITE(PI_CART_ADDR_REG, K1_TO_PHYS(handle->baseAddress | cartAddr));

#ifdef BBPLAYER
    if (direction != OS_READ && direction != OS_WRITE) {
        return -1;
    }

    if ((handle->baseAddress | cartAddr) <= 0x400) {
        IO_WRITE((direction == OS_READ) ? PI_EX_WR_LEN_REG : PI_EX_RD_LEN_REG, size - 1);
    } else {
        IO_WRITE((direction == OS_READ) ? PI_WR_LEN_REG : PI_RD_LEN_REG, size - 1);
    }
#else
    switch (direction) {
        case OS_READ:
            IO_WRITE(PI_WR_LEN_REG, size - 1);
            break;
        case OS_WRITE:
            IO_WRITE(PI_RD_LEN_REG, size - 1);
            break;
        default:
            return -1;
    }
#endif
    return 0;
}
