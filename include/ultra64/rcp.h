#ifndef ULTRA64_RCP_H
#define ULTRA64_RCP_H

#include "R4300.h"
#include "ultratypes.h"

/**
 * RCP memory map overview:
 *
 *      0x0000_0000 .. 0x03EF_FFFF  RDRAM memory
 *      0x03F0_0000 .. 0x03FF_FFFF  RDRAM registers
 *
 *      0x0400_0000 .. 0x0400_2000  SP memory
 *      0x0404_0000 .. 0x040F_FFFF  SP registers
 *      0x0410_0000 .. 0x041F_FFFF  DP command registers
 *      0x0420_0000 .. 0x042F_FFFF  DP span registers
 *      0x0430_0000 .. 0x043F_FFFF  MI registers
 *      0x0440_0000 .. 0x044F_FFFF  VI registers
 *      0x0450_0000 .. 0x045F_FFFF  AI registers
 *      0x0460_0000 .. 0x046F_FFFF  PI registers
 *      0x0470_0000 .. 0x047F_FFFF  RI registers
 *      0x0480_0000 .. 0x048F_FFFF  SI registers
 *      0x0490_0000 .. 0x04FF_FFFF  unused
 *
 *      0x0500_0000 .. 0x05FF_FFFF  cartridge domain 2
 *      0x0600_0000 .. 0x07FF_FFFF  cartridge domain 1
 *      0x0800_0000 .. 0x0FFF_FFFF  cartridge domain 2
 *      0x1000_0000 .. 0x1FBF_FFFF  cartridge domain 1
 *
 *      0x1FC0_0000 .. 0x1FC0_07BF  PIF Boot Rom (1984 bytes)
 *      0x1FC0_07C0 .. 0x1FC0_07FF  PIF (JoyChannel) RAM (64 bytes)
 *      0x1FC0_0800 .. 0x1FCF_FFFF  Reserved
 *      0x1FD0_0000 .. 0x7FFF_FFFF  cartridge domain 1
 *      0x8000_0000 .. 0xFFFF_FFFF  external SysAD device
 */


/**
 * RDRAM memory
 */

#define RDRAM_0_START   0x00000000
#define RDRAM_0_END     0x001FFFFF
#define RDRAM_1_START   0x00200000
#define RDRAM_1_END     0x003FFFFF

#define RDRAM_START     RDRAM_0_START
#define RDRAM_END       RDRAM_1_END


/**
 * RDRAM registers
 */
#define RDRAM_BASE_REG          0x03F00000

#define RDRAM_CONFIG_REG        (RDRAM_BASE_REG + 0x00)
#define RDRAM_DEVICE_TYPE_REG   (RDRAM_BASE_REG + 0x00)
#define RDRAM_DEVICE_ID_REG     (RDRAM_BASE_REG + 0x04)
#define RDRAM_DELAY_REG         (RDRAM_BASE_REG + 0x08)
#define RDRAM_MODE_REG          (RDRAM_BASE_REG + 0x0C)
#define RDRAM_REF_INTERVAL_REG  (RDRAM_BASE_REG + 0x10)
#define RDRAM_REF_ROW_REG       (RDRAM_BASE_REG + 0x14)
#define RDRAM_RAS_INTERVAL_REG  (RDRAM_BASE_REG + 0x18)
#define RDRAM_MIN_INTERVAL_REG  (RDRAM_BASE_REG + 0x1C)
#define RDRAM_ADDR_SELECT_REG   (RDRAM_BASE_REG + 0x20)
#define RDRAM_DEVICE_MANUF_REG  (RDRAM_BASE_REG + 0x24)

#define RDRAM_0_DEVICE_ID   0
#define RDRAM_1_DEVICE_ID   1

#define RDRAM_RESET_MODE    0
#define RDRAM_ACTIVE_MODE   1
#define RDRAM_STANDBY_MODE  2

#define RDRAM_LENGTH            (2 * 512 * 2048)
#define RDRAM_0_BASE_ADDRESS    (RDRAM_0_DEVICE_ID * RDRAM_LENGTH)
#define RDRAM_1_BASE_ADDRESS    (RDRAM_1_DEVICE_ID * RDRAM_LENGTH)

#define RDRAM_0_CONFIG      0x00000
#define RDRAM_1_CONFIG      0x00400
#define RDRAM_GLOBAL_CONFIG 0x80000


/**
 * PIF Physical memory map (total size = 2 KB)
 *
 *               Size    Description       Mode
 *  1FC007FF    +-------+-----------------+-----+
 *              |  64 B | JoyChannel RAM  | R/W |
 *  1FC007C0    +-------+-----------------+-----+
 *              |1984 B |    Boot ROM     |  *  |  * = Reserved
 *  1FC00000    +-------+-----------------+-----+
 */
#define PIF_ROM_START   0x1FC00000
#define PIF_ROM_END     0x1FC007BF
#define PIF_RAM_START   0x1FC007C0
#define PIF_RAM_END     0x1FC007FF


/**
 * Controller channel
 * Each game controller channel has 4 error bits that are defined in bit 6-7 of
 * the Rx and Tx data size area bytes. Programmers need to clear these bits
 * when setting the Tx/Rx size area values for a channel
 */
#define CHNL_ERR_NORESP     0x80    /* Bit 7 (Rx): No response error */
#define CHNL_ERR_OVERRUN    0x40    /* Bit 6 (Rx): Overrun error */
#define CHNL_ERR_FRAME      0x80    /* Bit 7 (Tx): Frame error */
#define CHNL_ERR_COLLISION  0x40    /* Bit 6 (Tx): Collision error */

#define CHNL_ERR_MASK       0xC0    /* Bit 6-7: channel errors */


/**
 * External device info
 */
#define DEVICE_TYPE_CART    0   // ROM cartridge
#define DEVICE_TYPE_BULK    1   // ROM bulk
#define DEVICE_TYPE_64DD    2   // 64 Disk Drive
#define DEVICE_TYPE_SRAM    3   // SRAM
// 4-6 are reserved
#define DEVICE_TYPE_INIT    7   // initial value
// 8-14 are reserved


/**
 * Signal Processor (SP) Memory
 */
#define SP_DMEM_START   0x04000000
#define SP_DMEM_END     0x04000FFF
#define SP_IMEM_START   0x04001000
#define SP_IMEM_END     0x04001FFF


/**
 * Signal Processor (SP) CP0 Registers
 */

#define SP_BASE_REG         0x04040000

// SP memory address (R/W): [12] 0=DMEM,1=IMEM, [11:0] DMEM/IMEM address
#define SP_MEM_ADDR_REG     (SP_BASE_REG + 0x00)

// SP DRAM DMA address (R/W): [23:0] RDRAM address
#define SP_DRAM_ADDR_REG    (SP_BASE_REG + 0x04)

// SP read DMA length (R/W): [31:20] skip, [19:12] count, [11:0] length; RDRAM -> I/DMEM
#define SP_RD_LEN_REG       (SP_BASE_REG + 0x08)

// SP write DMA length (R/W): [31:20] skip, [19:12] count, [11:0] length; I/DMEM -> RDRAM
#define SP_WR_LEN_REG       (SP_BASE_REG + 0x0C)

// SP status (R/W): [14:0] valid bits; see below for write/read mode
#define SP_STATUS_REG       (SP_BASE_REG + 0x10)

// SP DMA full (R): [0] dma full
#define SP_DMA_FULL_REG     (SP_BASE_REG + 0x14)

// SP DMA busy (R): [0] dma busy
#define SP_DMA_BUSY_REG     (SP_BASE_REG + 0x18)

// SP semaphore (R/W): Read: [0] acquire semaphore; Write: [] release semaphore
#define SP_SEMAPHORE_REG    (SP_BASE_REG + 0x1C)

// SP PC (R/W): [11:0] program counter
#define SP_PC_REG       0x04080000

/*
 * SP_MEM_ADDR_REG: bit 12
 */
#define SP_DMA_DMEM     (0 << 12)
#define SP_DMA_IMEM     (1 << 12)

/*
 * SP_STATUS_REG: write bits
 */
#define SP_CLR_HALT         (1 <<  0)   // clear halt
#define SP_SET_HALT         (1 <<  1)   //   set halt
#define SP_CLR_BROKE        (1 <<  2)   // clear broke
#define SP_CLR_INTR         (1 <<  3)   // clear interrupt
#define SP_SET_INTR         (1 <<  4)   //   set interrupt
#define SP_CLR_SSTEP        (1 <<  5)   // clear sstep
#define SP_SET_SSTEP        (1 <<  6)   //   set sstep
#define SP_CLR_INTR_BREAK   (1 <<  7)   // clear interrupt on break
#define SP_SET_INTR_BREAK   (1 <<  8)   //   set interrupt on break
#define SP_CLR_SIG0         (1 <<  9)   // clear signal 0
#define SP_SET_SIG0         (1 << 10)   //   set signal 0
#define SP_CLR_SIG1         (1 << 11)   // clear signal 1
#define SP_SET_SIG1         (1 << 12)   //   set signal 1
#define SP_CLR_SIG2         (1 << 13)   // clear signal 2
#define SP_SET_SIG2         (1 << 14)   //   set signal 2
#define SP_CLR_SIG3         (1 << 15)   // clear signal 3
#define SP_SET_SIG3         (1 << 16)   //   set signal 3
#define SP_CLR_SIG4         (1 << 17)   // clear signal 4
#define SP_SET_SIG4         (1 << 18)   //   set signal 4
#define SP_CLR_SIG5         (1 << 19)   // clear signal 5
#define SP_SET_SIG5         (1 << 20)   //   set signal 5
#define SP_CLR_SIG6         (1 << 21)   // clear signal 6
#define SP_SET_SIG6         (1 << 22)   //   set signal 6
#define SP_CLR_SIG7         (1 << 23)   // clear signal 7
#define SP_SET_SIG7         (1 << 24)   //   set signal 7

/*
 * SP_STATUS_REG: read bits
 */
#define SP_STATUS_HALT          (1 <<  0)
#define SP_STATUS_BROKE         (1 <<  1)
#define SP_STATUS_DMA_BUSY      (1 <<  2)
#define SP_STATUS_DMA_FULL      (1 <<  3)
#define SP_STATUS_IO_FULL       (1 <<  4)
#define SP_STATUS_SSTEP         (1 <<  5)
#define SP_STATUS_INTR_BREAK    (1 <<  6)
#define SP_STATUS_SIG0          (1 <<  7)
#define SP_STATUS_SIG1          (1 <<  8)
#define SP_STATUS_SIG2          (1 <<  9)
#define SP_STATUS_SIG3          (1 << 10)
#define SP_STATUS_SIG4          (1 << 11)
#define SP_STATUS_SIG5          (1 << 12)
#define SP_STATUS_SIG6          (1 << 13)
#define SP_STATUS_SIG7          (1 << 14)

/*
 * SP_STATUS_REG: use of SIG bits
 */
#define SP_CLR_YIELD            SP_CLR_SIG0
#define SP_SET_YIELD            SP_SET_SIG0
#define SP_STATUS_YIELD         SP_STATUS_SIG0
#define SP_CLR_YIELDED          SP_CLR_SIG1
#define SP_SET_YIELDED          SP_SET_SIG1
#define SP_STATUS_YIELDED       SP_STATUS_SIG1
#define SP_CLR_TASKDONE         SP_CLR_SIG2
#define SP_SET_TASKDONE         SP_SET_SIG2
#define SP_STATUS_TASKDONE      SP_STATUS_SIG2
#define SP_CLR_RSPSIGNAL        SP_CLR_SIG3
#define SP_SET_RSPSIGNAL        SP_SET_SIG3
#define SP_STATUS_RSPSIGNAL     SP_STATUS_SIG3
#define SP_CLR_CPUSIGNAL        SP_CLR_SIG4
#define SP_SET_CPUSIGNAL        SP_SET_SIG4
#define SP_STATUS_CPUSIGNAL     SP_STATUS_SIG4

// SP IMEM BIST REG (R/W): [6:0] BIST status bits; see below for detail
#define SP_IBIST_REG        0x04080004

/*
 * SP_IBIST_REG: write bits
 */
#define SP_IBIST_CHECK      (1 << 0)    // BIST check
#define SP_IBIST_GO         (1 << 1)    // BIST go
#define SP_IBIST_CLEAR      (1 << 2)    // BIST clear

/*
 * SP_BIST_REG: read bits
 * First 2 bits are same as in write mode
 */
#define SP_IBIST_DONE       (1 << 2)
#define SP_IBIST_FAILED     0x78        // bits [6:3], BIST fail


/**
 * Display Processor Command (DPC) Registers
 */
#define DPC_BASE_REG        0x04100000

// DP CMD DMA start (R/W): [23:0] DMEM/RDRAM start address
#define DPC_START_REG       (DPC_BASE_REG + 0x00)

// DP CMD DMA end (R/W): [23:0] DMEM/RDRAM end address
#define DPC_END_REG         (DPC_BASE_REG + 0x04)

// DP CMD DMA end (R): [23:0] DMEM/RDRAM current address
#define DPC_CURRENT_REG     (DPC_BASE_REG + 0x08)

// DP CMD status (R/W): [9:0] valid bits - see below for definitions
#define DPC_STATUS_REG      (DPC_BASE_REG + 0x0C)

// DP clock counter (R): [23:0] clock counter
#define DPC_CLOCK_REG       (DPC_BASE_REG + 0x10)

// DP buffer busy counter (R): [23:0] clock counter
#define DPC_BUFBUSY_REG     (DPC_BASE_REG + 0x14)

// DP pipe busy counter (R): [23:0] clock counter
#define DPC_PIPEBUSY_REG    (DPC_BASE_REG + 0x18)

// DP TMEM load counter (R): [23:0] clock counter
#define DPC_TMEM_REG        (DPC_BASE_REG + 0x1C)

/*
 * DPC_STATUS_REG: write bits
 */
#define DPC_CLR_XBUS_DMEM_DMA       (1 << 0)
#define DPC_SET_XBUS_DMEM_DMA       (1 << 1)
#define DPC_CLR_FREEZE              (1 << 2)
#define DPC_SET_FREEZE              (1 << 3)
#define DPC_CLR_FLUSH               (1 << 4)
#define DPC_SET_FLUSH               (1 << 5)
#define DPC_CLR_TMEM_CTR            (1 << 6)
#define DPC_CLR_PIPE_CTR            (1 << 7)
#define DPC_CLR_CMD_CTR             (1 << 8)
#define DPC_CLR_CLOCK_CTR           (1 << 9)

/*
 * DPC_STATUS_REG: read bits
 */
#define DPC_STATUS_XBUS_DMEM_DMA    (1 <<  0)
#define DPC_STATUS_FREEZE           (1 <<  1)
#define DPC_STATUS_FLUSH            (1 <<  2)
#define DPC_STATUS_START_GCLK       (1 <<  3)
#define DPC_STATUS_TMEM_BUSY        (1 <<  4)
#define DPC_STATUS_PIPE_BUSY        (1 <<  5)
#define DPC_STATUS_CMD_BUSY         (1 <<  6)
#define DPC_STATUS_CBUF_READY       (1 <<  7)
#define DPC_STATUS_DMA_BUSY         (1 <<  8)
#define DPC_STATUS_END_VALID        (1 <<  9)
#define DPC_STATUS_START_VALID      (1 << 10)


/**
 * Display Processor Span (DPS) Registers
 */
#define DPS_BASE_REG            0x04200000

// DP tmem built-in self-test (R/W): [10:0] BIST status bits
#define DPS_TBIST_REG           (DPS_BASE_REG + 0x00)

// DP span test mode (R/W): [0] Span buffer test access enable
#define DPS_TEST_MODE_REG       (DPS_BASE_REG + 0x04)

// DP span buffer test address (R/W): [6:0] bits
#define DPS_BUFTEST_ADDR_REG    (DPS_BASE_REG + 0x08)

// DP span buffer test data (R/W): [31:0] span buffer data
#define DPS_BUFTEST_DATA_REG    (DPS_BASE_REG + 0x0C)

/*
 * DPS_TMEM_BIST_REG: write bits
 */
#define DPS_TBIST_CHECK     (1 << 0)
#define DPS_TBIST_GO        (1 << 1)
#define DPS_TBIST_CLEAR     (1 << 2)

/*
 * DPS_TMEM_BIST_REG: read bits
 * First 2 bits are same as in write mode
 */
#define DPS_TBIST_DONE      (1 << 2)
#define DPS_TBIST_FAILED    0x7F8       // bits [10:3], BIST fail


/**
 * MIPS Interface (MI) Registers
 */
#define MI_BASE_REG     0x04300000

// MI init mode (W): [11] clear DP interrupt, [9/10] clear/set ebus test mode
//                   [8] set init mode, [7] clear init mode, [6:0] init length
//              (R): [8] ebus test mode, [7] init mode, [6:0] init length
#define MI_INIT_MODE_REG    (MI_BASE_REG + 0x00)
#define MI_MODE_REG         MI_INIT_MODE_REG

/*
 *  MI_MODE_REG: write bits
 */
#define MI_CLR_INIT     (1 <<  7)   // clear init mode
#define MI_SET_INIT     (1 <<  8)   //   set init mode
#define MI_CLR_EBUS     (1 <<  9)   // clear ebus test
#define MI_SET_EBUS     (1 << 10)   //   set ebus test mode
#define MI_CLR_DP_INTR  (1 << 11)   // clear dp interrupt
#define MI_CLR_RDRAM    (1 << 12)   // clear RDRAM reg
#define MI_SET_RDRAM    (1 << 13)   //   set RDRAM reg mode

/*
 *  MI_MODE_REG: read bits
 */
#define MI_MODE_INIT    (1 << 7)    /* init mode */
#define MI_MODE_EBUS    (1 << 8)    /* ebus test mode */
#define MI_MODE_RDRAM   (1 << 9)    /* RDRAM reg mode */

// MI version (R): [31:24] rsp, [23:16] rdp, [15:8] rac, [7:0] io
#define MI_VERSION_REG  (MI_BASE_REG + 0x04)
#define MI_NOOP_REG     MI_VERSION_REG

// MI interrupt (R): [5:0] valid bits - see below for bit patterns
#define MI_INTR_REG     (MI_BASE_REG + 0x08)

// MI interrupt mask (R): [5:0] valid bits - see below for bit patterns
//                   (W): [11:0] valid bits - see below for bit patterns
#define MI_INTR_MASK_REG    (MI_BASE_REG + 0x0C)

/*
 * MI_INTR_REG: read bits
 */
#define MI_INTR_SP  (1 << 0)    // SP intr
#define MI_INTR_SI  (1 << 1)    // SI intr
#define MI_INTR_AI  (1 << 2)    // AI intr
#define MI_INTR_VI  (1 << 3)    // VI intr
#define MI_INTR_PI  (1 << 4)    // PI intr
#define MI_INTR_DP  (1 << 5)    // DP intr

/*
 * MI_INTR_MASK_REG: write bits
 */
#define MI_INTR_MASK_CLR_SP (1 <<  0)   // clear SP mask
#define MI_INTR_MASK_SET_SP (1 <<  1)   //   set SP mask
#define MI_INTR_MASK_CLR_SI (1 <<  2)   // clear SI mask
#define MI_INTR_MASK_SET_SI (1 <<  3)   //   set SI mask
#define MI_INTR_MASK_CLR_AI (1 <<  4)   // clear AI mask
#define MI_INTR_MASK_SET_AI (1 <<  5)   //   set AI mask
#define MI_INTR_MASK_CLR_VI (1 <<  6)   // clear VI mask
#define MI_INTR_MASK_SET_VI (1 <<  7)   //   set VI mask
#define MI_INTR_MASK_CLR_PI (1 <<  8)   // clear PI mask
#define MI_INTR_MASK_SET_PI (1 <<  9)   //   set PI mask
#define MI_INTR_MASK_CLR_DP (1 << 10)   // clear DP mask
#define MI_INTR_MASK_SET_DP (1 << 11)   //   set DP mask

/*
 * MI_INTR_MASK_REG: read bits
 */
#define MI_INTR_MASK_SP (1 << 0)    // SP intr mask
#define MI_INTR_MASK_SI (1 << 1)    // SI intr mask
#define MI_INTR_MASK_AI (1 << 2)    // AI intr mask
#define MI_INTR_MASK_VI (1 << 3)    // VI intr mask
#define MI_INTR_MASK_PI (1 << 4)    // PI intr mask
#define MI_INTR_MASK_DP (1 << 5)    // DP intr mask


/**
 *  Video Interface (VI) Registers
 */
#define VI_BASE_REG     0x04400000

/*
 * VI status/control (R/W): [15-0] valid bits:
 *  [1:0]   = type[1:0] (pixel size)
 *              0: blank (no data, no sync)
 *              1: reserved
 *              2: 5/5/5/3 ("16" bit)
 *              3: 8/8/8/8 (32 bit)
 *  [2]     = gamma_dither_enable (normally on, unless "special effect")
 *  [3]     = gamma_enable (normally on, unless MPEG/JPEG)
 *  [4]     = divot_enable (normally on if antialiased, unless decal lines)
 *  [5]     = vbus_clock_enable - always off
 *  [6]     = serrate (always on if interlaced, off if not)
 *  [7]     = test_mode - diagnostics only
 *  [9:8]   = anti-alias (aa) mode[1:0]
 *              0: aa & resamp (always fetch extra lines)
 *              1: aa & resamp (fetch extra lines if needed)
 *              2: resamp only (treat as all fully covered)
 *              3: neither (replicate pixels, no interpolate)
 *  [11]    = kill_we - diagnostics only
 *  [15:12] = pixel_advance
 *  [16]    = dither_filter_enable
 */
#define VI_CONTROL_REG      (VI_BASE_REG + 0x00)
#define VI_STATUS_REG       VI_CONTROL_REG

// VI origin (R/W): [23:0] frame buffer origin in bytes
#define VI_ORIGIN_REG       (VI_BASE_REG + 0x04)
#define VI_DRAM_ADDR_REG    VI_ORIGIN_REG

// VI width (R/W): [11:0] frame buffer line width in pixels
#define VI_WIDTH_REG        (VI_BASE_REG + 0x08)
#define VI_H_WIDTH_REG      VI_WIDTH_REG

// VI vertical intr (R/W): [9:0] interrupt when current half-line = V_INTR
#define VI_INTR_REG         (VI_BASE_REG + 0x0C)
#define VI_V_INTR_REG       VI_INTR_REG

// VI current vertical line (R/W): [9:0] current half line, sampled once per
//  line (the lsb of V_CURRENT is constant within a field, and in interlaced
//  modes gives the field number - which is constant for non-interlaced modes)
//  - Any write to this register will clear interrupt line
#define VI_CURRENT_REG          (VI_BASE_REG + 0x10)
#define VI_V_CURRENT_LINE_REG   VI_CURRENT_REG

// VI video timing (R/W): [29:20] start of color burst in pixels from h-sync
//                        [19:16] vertical sync width in half lines,
//                        [15: 8] color burst width in pixels,
//                        [ 7: 0] horizontal sync width in pixels,
#define VI_BURST_REG        (VI_BASE_REG + 0x14)
#define VI_TIMING_REG       VI_BURST_REG

// VI vertical sync (R/W): [9:0] number of half-lines per field
#define VI_V_SYNC_REG       (VI_BASE_REG + 0x18)

// VI horizontal sync (R/W): [20:16] a 5-bit leap pattern used for PAL only (h_sync_period)
//                           [11: 0] total duration of a line in 1/4 pixel
#define VI_H_SYNC_REG       (VI_BASE_REG + 0x1C)

// VI horizontal sync leap (R/W): [27:16] identical to h_sync_period
//                                [11: 0] identical to h_sync_period
#define VI_LEAP_REG         (VI_BASE_REG + 0x20)
#define VI_H_SYNC_LEAP_REG  VI_LEAP_REG

// VI horizontal video (R/W): [25:16] start of active video in screen pixels
//                            [ 9: 0] end of active video in screen pixels
#define VI_H_START_REG      (VI_BASE_REG + 0x24)
#define VI_H_VIDEO_REG      VI_H_START_REG

// VI vertical video (R/W): [25:16] start of active video in screen half-lines
//                          [ 9: 0] end of active video in screen half-lines
#define VI_V_START_REG      (VI_BASE_REG + 0x28)
#define VI_V_VIDEO_REG      VI_V_START_REG

// VI vertical burst (R/W): [25:16] start of color burst enable in half-lines
//                          [ 9: 0] end of color burst enable in half-lines
#define VI_V_BURST_REG      (VI_BASE_REG + 0x2C)

// VI x-scale (R/W): [27:16] horizontal subpixel offset (2.10 format)
//                   [11: 0] 1/horizontal scale up factor (2.10 format)
#define VI_X_SCALE_REG      (VI_BASE_REG + 0x30)

// VI y-scale (R/W): [27:16] vertical subpixel offset (2.10 format)
//                   [11: 0] 1/vertical scale up factor (2.10 format)
#define VI_Y_SCALE_REG      (VI_BASE_REG + 0x34)

/*
 * VI_CONTROL_REG: read bits
 */
#define VI_CTRL_TYPE_16             0x00002 // [1:0] pixel size: 16 bit
#define VI_CTRL_TYPE_32             0x00003 // [1:0] pixel size: 32 bit
#define VI_CTRL_GAMMA_DITHER_ON     0x00004 // 2: default = on
#define VI_CTRL_GAMMA_ON            0x00008 // 3: default = on
#define VI_CTRL_DIVOT_ON            0x00010 // 4: default = on
#define VI_CTRL_SERRATE_ON          0x00040 // 6: on if interlaced
#define VI_CTRL_ANTIALIAS_MASK      0x00300 // [9:8] anti-alias mode
#define VI_CTRL_ANTIALIAS_MODE_0    0x00000 // Bit [9:8] anti-alias mode: AA enabled, resampling enabled, always fetch extra lines
#define VI_CTRL_ANTIALIAS_MODE_1    0x00100 // Bit [9:8] anti-alias mode: AA enabled, resampling enabled, fetch extra lines as-needed
#define VI_CTRL_ANTIALIAS_MODE_2    0x00200 // Bit [9:8] anti-alias mode: AA disabled, resampling enabled, operate as if everything is covered
#define VI_CTRL_ANTIALIAS_MODE_3    0x00300 // Bit [9:8] anti-alias mode: AA disabled, resampling disabled, replicate pixels
#define VI_CTRL_PIXEL_ADV_MASK      0x0F000 // [15:12] pixel advance mode
#define VI_CTRL_PIXEL_ADV(n)        (((n) << 12) & VI_CTRL_PIXEL_ADV_MASK) // Bit [15:12] pixel advance mode: Always 3 on N64
#define VI_CTRL_DITHER_FILTER_ON    0x10000 // 16: dither-filter mode

/*
 * Possible video clocks (NTSC or PAL)
 */
#define VI_NTSC_CLOCK   48681812    // Hz = 48.681812 MHz
#define VI_PAL_CLOCK    49656530    // Hz = 49.656530 MHz
#define VI_MPAL_CLOCK   48628316    // Hz = 48.628316 MHz


/**
 * Audio Interface (AI) Registers
 *
 * The address and length registers are double buffered; that is, they
 * can be written twice before becoming full.
 * The address must be written before the length.
 */
#define AI_BASE_REG     0x04500000

// AI DRAM address (W): [23:0] starting RDRAM address (8B-aligned)
#define AI_DRAM_ADDR_REG    (AI_BASE_REG + 0x00)

// AI length (R/W): [14:0] transfer length (v1.0) - Bottom 3 bits are ignored
//                  [17:0] transfer length (v2.0) - Bottom 3 bits are ignored
#define AI_LEN_REG          (AI_BASE_REG + 0x04)

// AI control (W): [0] DMA enable - if LSB == 1, DMA is enabled
#define AI_CONTROL_REG      (AI_BASE_REG + 0x08)

/*
 * AI_CONTROL_REG: write bits
 */
#define AI_CONTROL_DMA_ON   1   // LSB = 1: DMA enable
#define AI_CONTROL_DMA_OFF  0   // LSB = 1: DMA enable

// AI status (R): [31]/[0] ai_full (addr & len buffer full), [30] ai_busy
//                Note that a 1->0 transition in ai_full will set interrupt
//           (W): clear audio interrupt
#define AI_STATUS_REG       (AI_BASE_REG + 0x0C)

/*
 * AI_STATUS_REG: read bits
 */
#define AI_STATUS_FIFO_FULL (1 << 31)
#define AI_STATUS_DMA_BUSY  (1 << 30)

// AI DAC sample period register (W): [13:0] dac rate
//   - vid_clock/(dperiod + 1) is the DAC sample rate
//   - (dperiod + 1) >= 66 * (aclockhp + 1) must be true
#define AI_DACRATE_REG      (AI_BASE_REG + 0x10)

// DAC rate = video clock / audio frequency
//   - DAC rate >= (66 * Bit rate) must be true
#define AI_MAX_DAC_RATE 16384   // 14-bit+1
#define AI_MIN_DAC_RATE 132

// AI bit rate (W): [3:0] bit rate (abus clock half period register - aclockhp)
//   - vid_clock/(2 * (aclockhp + 1)) is the DAC clock rate
//   - The abus clock stops if aclockhp is zero
#define AI_BITRATE_REG      (AI_BASE_REG + 0x14)

// Bit rate <= (DAC rate / 66)
#define AI_MAX_BIT_RATE 16      // 4-bit+1
#define AI_MIN_BIT_RATE 2

/*
 * Maximum and minimum values for audio frequency based on video clocks
 *   max frequency = (video clock / min dac rate)
 *   min frequency = (video clock / max dac rate)
 */
#define AI_NTSC_MAX_FREQ    368000      // 368 KHz
#define AI_NTSC_MIN_FREQ    3000        //   3 KHz ~ 2971 Hz

#define AI_PAL_MAX_FREQ     376000      // 376 KHz
#define AI_PAL_MIN_FREQ     3050        //   3 KHz ~ 3031 Hz

#define AI_MPAL_MAX_FREQ    368000      // 368 KHz
#define AI_MPAL_MIN_FREQ    3000        //   3 KHz ~ 2968 Hz


/**
 * Peripheral Interface (PI) Registers
 */
#define PI_BASE_REG         0x04600000

// PI DRAM address (R/W): [23:0] starting RDRAM address
#define PI_DRAM_ADDR_REG    (PI_BASE_REG + 0x00)

// PI pbus (cartridge) address (R/W): [31:0] starting AD16 address
#define PI_CART_ADDR_REG    (PI_BASE_REG + 0x04)

// PI read length (R/W): [23:0] read data length
#define PI_RD_LEN_REG       (PI_BASE_REG + 0x08)

// PI write length (R/W): [23:0] write data length
#define PI_WR_LEN_REG       (PI_BASE_REG + 0x0C)

// PI status (R): [3] interrupt flag, [2] error, [1] IO busy, [0] DMA busy
//           (W): [1] clear intr, [0] reset controller (and abort current op)
#define PI_STATUS_REG       (PI_BASE_REG + 0x10)

// PI dom1 latency (R/W): [7:0] domain 1 device latency
#define PI_BSD_DOM1_LAT_REG (PI_BASE_REG + 0x14)

// PI dom1 pulse width (R/W): [7:0] domain 1 device R/W strobe pulse width
#define PI_BSD_DOM1_PWD_REG (PI_BASE_REG + 0x18)

// PI dom1 page size (R/W): [3:0] domain 1 device page size
#define PI_BSD_DOM1_PGS_REG (PI_BASE_REG + 0x1C)

// PI dom1 release (R/W): [1:0] domain 1 device R/W release duration
#define PI_BSD_DOM1_RLS_REG (PI_BASE_REG + 0x20)

// PI dom2 latency (R/W): [7:0] domain 2 device latency
#define PI_BSD_DOM2_LAT_REG (PI_BASE_REG + 0x24)

// PI dom2 pulse width (R/W): [7:0] domain 2 device R/W strobe pulse width
#define PI_BSD_DOM2_PWD_REG (PI_BASE_REG + 0x28)

// PI dom2 page size (R/W): [3:0] domain 2 device page size
#define PI_BSD_DOM2_PGS_REG (PI_BASE_REG + 0x2C)

// PI dom2 release (R/W): [1:0] domain 2 device R/W release duration
#define PI_BSD_DOM2_RLS_REG (PI_BASE_REG + 0x30)

#define PI_DOMAIN1_REG      PI_BSD_DOM1_LAT_REG
#define PI_DOMAIN2_REG      PI_BSD_DOM2_LAT_REG

#define PI_DOM_LAT_OFS      0x00
#define PI_DOM_PWD_OFS      0x04
#define PI_DOM_PGS_OFS      0x08
#define PI_DOM_RLS_OFS      0x0C

/*
 * PI_STATUS_REG: read bits
 *  Bit 0: DMA busy - set when DMA is in progress
 *  Bit 1: IO busy  - set when IO is in progress
 *  Bit 2: Error    - set when CPU issues IO request while DMA is busy
 */
#define PI_STATUS_DMA_BUSY  (1 << 0)
#define PI_STATUS_IO_BUSY   (1 << 1)
#define PI_STATUS_ERROR     (1 << 2)

/*
 * PI status register has 2 bits active when written to:
 *  Bit 0: When set, reset PIC
 *  Bit 1: When set, clear interrupt flag
 * The values of the two bits can be ORed together to both reset PIC and
 * clear interrupt at the same time.
 *
 * Note:
 *  - The PIC does generate an interrupt at the end of each DMA. CPU
 *  needs to clear the interrupt flag explicitly (from an interrupt
 *  handler) by writing into the STATUS register with bit 1 set.
 *
 *  - When a DMA completes, the interrupt flag is set.  CPU can issue
 *  another request even while the interrupt flag is set (as long as
 *  PIC is idle).  However, it is the CPU's responsibility for
 *  maintaining accurate correspondence between DMA completions and
 *  interrupts.
 *
 *  - When PIC is reset, if PIC happens to be busy, an interrupt will
 *  be generated as PIC returns to idle.  Otherwise, no interrupt will
 *  be generated and PIC remains idle.
 */

/*
 * PI_STATUS_REG: write bits
 */
#define PI_STATUS_RESET     (1 << 0)
#define PI_SET_RESET        PI_STATUS_RESET

#define PI_STATUS_CLR_INTR  (1 << 1)
#define PI_CLR_INTR         PI_STATUS_CLR_INTR

#define PI_DMA_BUFFER_SIZE  128

#define PI_DOM1_ADDR1   0x06000000  /* to 0x07FFFFFF */
#define PI_DOM1_ADDR2   0x10000000  /* to 0x1FBFFFFF */
#define PI_DOM1_ADDR3   0x1FD00000  /* to 0x7FFFFFFF */
#define PI_DOM2_ADDR1   0x05000000  /* to 0x05FFFFFF */
#define PI_DOM2_ADDR2   0x08000000  /* to 0x0FFFFFFF */


/**
 * RDRAM Interface (RI) Registers
 */
#define RI_BASE_REG         0x04700000

// RI mode (R/W): [3] stop R active, [2] stop T active, [1:0] operating mode
#define RI_MODE_REG         (RI_BASE_REG + 0x00)

// RI config (R/W): [6] current control enable, [5:0] current control input
#define RI_CONFIG_REG       (RI_BASE_REG + 0x04)

// RI current load (W): [] any write updates current control register
#define RI_CURRENT_LOAD_REG (RI_BASE_REG + 0x08)

// RI select (R/W): [3:2] receive select, [1:0] transmit select
#define RI_SELECT_REG       (RI_BASE_REG + 0x0C)

// RI refresh (R/W): [16] refresh bank, [17] refresh enable, [18] refresh optimize
//                   [7:0] clean refresh delay, [15:8] dirty refresh dela
#define RI_REFRESH_REG      (RI_BASE_REG + 0x10)
#define RI_COUNT_REG        RI_REFRESH_REG

// RI latency (R/W): [3:0] DMA latency/overlap
#define RI_LATENCY_REG      (RI_BASE_REG + 0x14)

// RI error (R): [1] ack error, [0] nack error
#define RI_RERROR_REG       (RI_BASE_REG + 0x18)

// RI error (W): [] any write clears all error bits
#define RI_WERROR_REG       (RI_BASE_REG + 0x1C)


/**
 * Serial Interface (SI) Registers
 */
#define SI_BASE_REG             0x04800000

// SI DRAM address (R/W): [23:0] starting RDRAM address
#define SI_DRAM_ADDR_REG        (SI_BASE_REG + 0x00)

// SI address read 64B (W): [] write begins a 64B DMA write PIF RAM -> RDRAM
#define SI_PIF_ADDR_RD64B_REG   (SI_BASE_REG + 0x04)

// Address SI_BASE_REG + (0x08, 0x0C, 0x14) are reserved

// SI address write 64B (W): [] write begins a 64B DMA read RDRAM -> PIF RAM */
#define SI_PIF_ADDR_WR64B_REG   (SI_BASE_REG + 0x10)

// SI status (R/W): [] any write clears interrupt
#define SI_STATUS_REG           (SI_BASE_REG + 0x18)

/*
 * SI_STATUS_REG: read bits
 */
#define SI_STATUS_DMA_BUSY  (1 <<  0) // DMA in progress
#define SI_STATUS_RD_BUSY   (1 <<  1) // IO access in progress
#define SI_STATUS_DMA_ERROR (1 <<  3) // Overlapping DMA requests
#define SI_STATUS_INTERRUPT (1 << 12) // Interrupt is set


/**
 * Development Board GIO Control Registers
 */

#define GIO_BASE_REG        0x18000000

// Game to Host Interrupt
#define GIO_GIO_INTR_REG    (GIO_BASE_REG+0x000)

// Game to Host SYNC
#define GIO_GIO_SYNC_REG    (GIO_BASE_REG+0x400)

// Host to Game Interrupt
#define GIO_CART_INTR_REG   (GIO_BASE_REG+0x800)


/**
 * Common macros
 */
#if defined(_LANGUAGE_C) || defined(_LANGUAGE_C_PLUS_PLUS)

#define IO_READ(addr)       (*(vu32*)PHYS_TO_K1(addr))
#define IO_WRITE(addr,data) (*(vu32*)PHYS_TO_K1(addr)=(u32)(data))

#define RCP_STAT_PRINT                                              \
    rmonPrintf("current=%x start=%x end=%x dpstat=%x spstat=%x\n",  \
        IO_READ(DPC_CURRENT_REG),                                   \
        IO_READ(DPC_START_REG),                                     \
        IO_READ(DPC_END_REG),                                       \
        IO_READ(DPC_STATUS_REG),                                    \
        IO_READ(SP_STATUS_REG))

#endif

#endif
