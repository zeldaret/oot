#ifndef ULTRA64_RCP_H
#define ULTRA64_RCP_H

#ifdef _LANGUAGE_C
#define HW_REG(reg, type) *(volatile type*)((reg) | 0xA0000000)
#endif

#define AI_DRAM_ADDR_REG    0x04500000
#define AI_LEN_REG          0x04500004
#define AI_CONTROL_REG      0x04500008
#define AI_STATUS_REG       0x0450000C
#define AI_DACRATE_REG      0x04500010
#define AI_BITRATE_REG      0x04500014

#define AI_STATUS_AI_FULL   (1 << 31)
#define AI_STATUS_AI_BUSY   (1 << 30)

#define VI_STATUS_REG           0x04400000
#define VI_CONTROL_REG          VI_STATUS_REG
#define VI_ORIGIN_REG           0x04400004
#define VI_DRAM_ADDR_REG        VI_ORIGIN_REG
#define VI_WIDTH_REG            0x04400008
#define VI_H_WIDTH_REG          VI_WIDTH_REG
#define VI_INTR_REG             0x0440000C
#define VI_V_INTER_REG          VI_INTR_REG
#define VI_CURRENT_REG          0x04400010
#define VI_V_CURRENT_LINE_REG   VI_CURRENT_REG
#define VI_BURST_REG            0x04400014
#define VI_TIMING_REG           VI_BURST_REG
#define VI_V_SYNC_REG           0x04400018  //VI vertical sync
#define VI_H_SYNC_REG           0x0440001C  //VI horizontal sync
#define VI_LEAP_REG             0x04400020  //VI horizontal sync leap
#define VI_H_SYNC_LEAP_REG      VI_LEAP_REG
#define VI_H_START_REG          0x04400024  //VI horizontal video
#define VI_H_VIDEO_REG          VI_H_START_REG
#define VI_V_START_REG          0x04400028  //VI vertical video
#define VI_V_VIDEO_REG          VI_V_START_REG
#define VI_V_BURST_REG          0x0440002C  //VI vertical burst
#define VI_X_SCALE_REG          0x04400030  //VI x-scale
#define VI_Y_SCALE_REG          0x04400034  //VI y-scale

#define SP_IMEM_START           0x04001000
#define SP_DMEM_START           0x04000000

#define SP_MEM_ADDR_REG         0x04040000
#define SP_DRAM_ADDR_REG        0x04040004
#define SP_RD_LEN_REG           0x04040008
#define SP_WR_LEN_REG           0x0404000C
#define SP_STATUS_REG           0x04040010
#define SP_PC_REG               0x04080000

#define PI_DRAM_ADDR_REG        0x04600000  //PI DRAM address
#define PI_CART_ADDR_REG        0x04600004  //PI pbus (cartridge) address
#define PI_RD_LEN_REG           0x04600008  //PI read length
#define PI_WR_LEN_REG           0x0460000C  //PI write length
#define PI_STATUS_REG           0x04600010  //PI status
#define PI_BSD_DOM1_LAT_REG     0x04600014  //PI dom1 latency
#define PI_DOMAIN1_REG          0x04600014
#define PI_BSD_DOM1_PWD_REG     0x04600018  //PI dom1 pulse width
#define PI_BSD_DOM1_PGS_REG     0x0460001C  //PI dom1 page size
#define PI_BSD_DOM1_RLS_REG     0x04600020  //PI dom1 release
#define PI_BSD_DOM2_LAT_REG     0x04600024  //PI dom2 latency
#define PI_DOMAIN2_REG          0x04600024
#define PI_BSD_DOM2_PWD_REG     0x04600028  //PI dom2 pulse width
#define PI_BSD_DOM2_PGS_REG     0x0460002C  //PI dom2 page size
#define PI_BSD_DOM2_RLS_REG     0x04600030  //PI dom2 release

// PI_STATUS (read) bits
#define PI_STATUS_BUSY          (1 << 0)
#define PI_STATUS_IOBUSY        (1 << 1)
#define PI_STATUS_ERROR         (1 << 2)

// PI_STATUS (write) bits
#define PI_STATUS_RESET         (1 << 0)
#define PI_STATUS_CLR_INTR      (1 << 1)

#define SI_DRAM_ADDR_REG        0x04800000
#define SI_PIF_ADDR_RD64B_REG   0x04800004
#define SI_PIF_ADDR_WR64B_REG   0x04800010
#define SI_STATUS_REG           0x04800018

// SI_STATUS (read) bits
#define SI_STATUS_DMA_BUSY      (1 << 0)
#define SI_STATUS_IO_READ_BUSY  (1 << 1)
#define SI_STATUS_DMA_ERROR     (1 << 3)
#define SI_STATUS_INTERRUPT     (1 << 12)

#define PIF_RAM_START           0x1FC007C0

#define MI_INIT_MODE_REG        0x04300000
#define MI_MODE_REG             MI_INIT_MODE_REG
#define MI_VERSION_REG          0x04300004
#define MI_INTR_REG             0x04300008
#define MI_INTR_MASK_REG        0x0430000C

// MI_INIT_MODE_REG bits (write)
#define MI_CLR_INIT             (1 <<  7)
#define MI_SET_INIT             (1 <<  8)
#define MI_CLR_EBUS             (1 <<  9)
#define MI_SET_EBUS             (1 << 10)
#define MI_CLR_DP_INTR          (1 << 11)
#define MI_CLR_RDRAM            (1 << 12)
#define MI_SET_RDRAM            (1 << 13)

// MI_INTR_REG bits
#define MI_INTR_SP              (1 << 0)
#define MI_INTR_SI              (1 << 1)
#define MI_INTR_AI              (1 << 2)
#define MI_INTR_VI              (1 << 3)
#define MI_INTR_PI              (1 << 4)
#define MI_INTR_DP              (1 << 5)

// MI_INTR_MASK_REG masks (read)
#define MI_INTR_MASK_SP         0x01
#define MI_INTR_MASK_SI         0x02
#define MI_INTR_MASK_AI         0x04
#define MI_INTR_MASK_VI         0x08
#define MI_INTR_MASK_PI         0x10
#define MI_INTR_MASK_DP         0x20

// MI_INTR_MASK_REG masks (write)
#define MI_INTR_MASK_CLR_SP     0x0001
#define MI_INTR_MASK_SET_SP     0x0002
#define MI_INTR_MASK_CLR_SI     0x0004
#define MI_INTR_MASK_SET_SI     0x0008
#define MI_INTR_MASK_CLR_AI     0x0010
#define MI_INTR_MASK_SET_AI     0x0020
#define MI_INTR_MASK_CLR_VI     0x0040
#define MI_INTR_MASK_SET_VI     0x0080
#define MI_INTR_MASK_CLR_PI     0x0100
#define MI_INTR_MASK_SET_PI     0x0200
#define MI_INTR_MASK_CLR_DP     0x0400
#define MI_INTR_MASK_SET_DP     0x0800

#define VI_NTSC_CLOCK           48681812    /* Hz = 48.681812 MHz */
#define VI_PAL_CLOCK            49656530    /* Hz = 49.656530 MHz */
#define VI_MPAL_CLOCK           48628316    /* Hz = 48.628316 MHz */

#endif
