# glabel

.macro glabel label
    .global \label
    \label:
.endm

# cop0 register aliases

.set Index,         $0
.set Random,        $1
.set EntryLo0,      $2
.set EntryLo1,      $3
.set Context,       $4
.set PageMask,      $5
.set Wired,         $6
.set Reserved07,    $7
.set BadVaddr,      $8
.set Count,         $9
.set EntryHi,       $10
.set Compare,       $11
.set Status,        $12
.set Cause,         $13
.set EPC,           $14
.set PRevID,        $15
.set Config,        $16
.set LLAddr,        $17
.set WatchLo,       $18
.set WatchHi,       $19
.set XContext,      $20
.set Reserved21,    $21
.set Reserved22,    $22
.set Reserved23,    $23
.set Reserved24,    $24
.set Reserved25,    $25
.set PErr,          $26
.set CacheErr,      $27
.set TagLo,         $28
.set TagHi,         $29
.set ErrorEPC,      $30
.set Reserved31,    $31

# cop1 register aliases

.set FpCsr, $31

# rdram constants

.set KUBASE,    0x00000000
.set KUSIZE,    0x80000000
.set K0BASE,    0x80000000
.set K0SIZE,    0x20000000
.set K1BASE,    0xA0000000
.set K1SIZE,    0x20000000
.set K2BASE,    0xC0000000
.set K2SIZE,    0x20000000

# cache constants

.set CACH_PI,       0x0    /* specifies primary inst. cache */
.set CACH_PD,       0x1    /* primary data cache */
.set CACH_SI,       0x2    /* secondary instruction cache */
.set CACH_SD,       0x3    /* secondary data cache */

.set C_IINV,        0x0     /* index invalidate (inst, 2nd inst) */
.set C_IWBINV,      0x0     /* index writeback inval (d, sd) */
.set C_ILT,         0x4     /* index load tag (all) */
.set C_IST,         0x8     /* index store tag (all) */
.set C_CDX,         0xc     /* create dirty exclusive (d, sd) */
.set C_HINV,        0x10    /* hit invalidate (all) */
.set C_HWBINV,      0x14    /* hit writeback inv. (d, sd) */
.set C_FILL,        0x14    /* fill (i) */
.set C_HWB,         0x18    /* hit writeback (i, d, sd) */
.set C_HSV,         0x1c    /* hit set virt. (si, sd) */

.set ICACHE_SIZE,       0x4000
.set ICACHE_LINESIZE,   0x20
.set ICACHE_LINEMASK,   ICACHE_LINESIZE-1

.set DCACHE_SIZE,       0x2000
.set DCACHE_LINESIZE,   0x10
.set DCACHE_LINEMASK,   DCACHE_LINESIZE-1

# tlb constants

.set NTLBENTRIES,       31

.set TLBHI_VPN2MASK,    ~0x1FFF
.set TLBHI_VPN2SHIFT,   13
.set TLBHI_PIDMASK,     0xff
.set TLBHI_PIDSHIFT,    0
.set TLBHI_NPID,        255

.set TLBLO_PFNMASK,     0x3fffffc0
.set TLBLO_PFNSHIFT,    6
.set TLBLO_CACHMASK,    0x38
.set TLBLO_CACHSHIFT,   3
.set TLBLO_UNCACHED,    0x10
.set TLBLO_NONCOHRNT,   0x18
.set TLBLO_EXLWR,       0x28
.set TLBLO_D,           0x4
.set TLBLO_V,           0x2
.set TLBLO_G,           0x1

.set TLBINX_PROBE,      0x80000000
.set TLBINX_INXMASK,    0x3f
.set TLBINX_INXSHIFT,   0

.set TLBRAND_RANDMASK,  0x3f
.set TLBRAND_RANDSHIFT, 0

.set TLBWIRED_WIREDMASK, 0x3f

.set TLBCTXT_BASEMASK,  0xff800000
.set TLBCTXT_BASESHIFT, 23
.set TLBCTXT_BASEBITS,  9

.set TLBCTXT_VPNMASK,   0x7ffff0
.set TLBCTXT_VPNSHIFT,  4

.set TLBPGMASK_4K,      0x0
.set TLBPGMASK_16K,     0x6000
.set TLBPGMASK_64K,     0x1e000

# hardware registers addresses and constants

# COP0 Interrupt Mask
.set SR_IMASK, 0x0000ff00

# COP0 Status Bits
.set SR_KSU_KER,    0x00000000
.set SR_IE,         0x00000001
.set SR_EXL,        0x00000002
.set SR_ERL,        0x00000004
.set SR_KSU_SUP,    0x00000008
.set SR_KSU_USR,    0x00000010
.set SR_KSU_MASK,   0x00000018
.set SR_UX,         0x00000020
.set SR_SX,         0x00000040
.set SR_KX,         0x00000080
.set SR_DE,         0x00010000
.set SR_CE,         0x00020000
.set SR_CH,         0x00040000
.set SR_SR,         0x00100000
.set SR_TS,         0x00200000
.set SR_BEV,        0x00400000
.set SR_ITS,        0x01000000
.set SR_RE,         0x02000000
.set SR_FR,         0x04000000
.set SR_RP,         0x08000000
.set SR_CU0,        0x10000000
.set SR_CU1,        0x20000000
.set SR_CU2,        0x40000000
.set SR_CU3,        0x80000000

# COP0 Cause
.set CAUSE_BD,      0x80000000
.set CAUSE_CEMASK,  0x30000000
.set CAUSE_CESHIFT, 28

.set CAUSE_IP8,     0x00008000
.set CAUSE_IP7,     0x00004000
.set CAUSE_IP6,     0x00002000
.set CAUSE_IP5,     0x00001000
.set CAUSE_IP4,     0x00000800
.set CAUSE_IP3,     0x00000400
.set CAUSE_SW2,     0x00000200
.set CAUSE_SW1,     0x00000100

.set CAUSE_IPMASK,      0x0000FF00
.set CAUSE_IPSHIFT,     8

.set CAUSE_EXCMASK,     0x0000007C
.set CAUSE_EXCSHIFT,    2

.set EXC_INT,       ( 0 << 2)
.set EXC_MOD,       ( 1 << 2)
.set EXC_RMISS,     ( 2 << 2)
.set EXC_WMISS,     ( 3 << 2)
.set EXC_RADE,      ( 4 << 2)
.set EXC_WADE,      ( 5 << 2)
.set EXC_IBE,       ( 6 << 2)
.set EXC_DBE,       ( 7 << 2)
.set EXC_SYSCALL,   ( 8 << 2)
.set EXC_BREAK,     ( 9 << 2)
.set EXC_II,        (10 << 2)
.set EXC_CPU,       (11 << 2)
.set EXC_OV,        (12 << 2)
.set EXC_TRAP,      (13 << 2)
.set EXC_VCEI,      (14 << 2)
.set EXC_FPE,       (15 << 2)
.set EXC_WATCH,     (23 << 2)
.set EXC_VCED,      (31 << 2)

# Audio Interface Registers
.set AI_DRAM_ADDR_REG,      0xA4500000
.set AI_LEN_REG,            0xA4500004
.set AI_CONTROL_REG,        0xA4500008
.set AI_STATUS_REG,         0xA450000C
.set AI_DACRATE_REG,        0xA4500010
.set AI_BITRATE_REG,        0xA4500014

# AI_STATUS_REG bits
.set AI_STATUS_AI_BUSY,         (1 << 30)
.set AI_STATUS_AI_FULL,         (1 << 31)

# Video Interface Registers
.set VI_STATUS_REG,         0xA4400000
.set VI_ORIGIN_REG,         0xA4400004
.set VI_WIDTH_REG,          0xA4400008
.set VI_INTR_REG,           0xA440000C
.set VI_CURRENT_REG,        0xA4400010
.set VI_BURST_REG,          0xA4400014
.set VI_V_SYNC_REG,         0xA4400018
.set VI_H_SYNC_REG,         0xA440001C
.set VI_LEAP_REG,           0xA4400020
.set VI_H_START_REG,        0xA4400024
.set VI_V_START_REG,        0xA4400028
.set VI_V_BURST_REG,        0xA440002C
.set VI_X_SCALE_REG,        0xA4400030
.set VI_Y_SCALE_REG,        0xA4400034

# Signal Processor Registers
.set SP_MEM_ADDR_REG,       0xA4040000
.set SP_DRAM_ADDR_REG,      0xA4040004
.set SP_RD_LEN_REG,         0xA4040008
.set SP_WR_LEN_REG,         0xA404000C
.set SP_STATUS_REG,         0xA4040010
.set SP_PC_REG,             0xA4080000

# SP_STATUS_REG bits (write)
.set SP_CLR_HALT,               (1 <<  0)
.set SP_SET_HALT,               (1 <<  1)
.set SP_CLR_BROKE,              (1 <<  2)
.set SP_CLR_INTR,               (1 <<  3)
.set SP_SET_INTR,               (1 <<  4)
.set SP_CLR_SSTEP,              (1 <<  5)
.set SP_SET_SSTEP,              (1 <<  6)
.set SP_CLR_INTR_BREAK,         (1 <<  7)
.set SP_SET_INTR_BREAK,         (1 <<  8)
.set SP_CLR_SIG0,               (1 <<  9)
.set SP_SET_SIG0,               (1 << 10)
.set SP_CLR_SIG1,               (1 << 11)
.set SP_SET_SIG1,               (1 << 12)
.set SP_CLR_SIG2,               (1 << 13)
.set SP_SET_SIG2,               (1 << 14)
.set SP_CLR_SIG3,               (1 << 15)
.set SP_SET_SIG3,               (1 << 16)
.set SP_CLR_SIG4,               (1 << 17)
.set SP_SET_SIG4,               (1 << 18)
.set SP_CLR_SIG5,               (1 << 19)
.set SP_SET_SIG5,               (1 << 20)
.set SP_CLR_SIG6,               (1 << 21)
.set SP_SET_SIG6,               (1 << 22)
.set SP_CLR_SIG7,               (1 << 23)
.set SP_SET_SIG7,               (1 << 24)

# SP_STATUS_REG bits (read)
.set SP_STATUS_HALT,            (1 <<  0)
.set SP_STATUS_BROKE,           (1 <<  1)
.set SP_STATUS_DMA_BUSY,        (1 <<  2)
.set SP_STATUS_DMA_FULL,        (1 <<  3)
.set SP_STATUS_IO_FULL,         (1 <<  4)
.set SP_STATUS_SSTEP,           (1 <<  5)
.set SP_STATUS_INTR_BREAK,      (1 <<  6)
.set SP_STATUS_YIELD,           (1 <<  7)
.set SP_STATUS_YIELDED,         (1 <<  8)
.set SP_STATUS_TASKDONE,        (1 <<  9)
.set SP_STATUS_SIG3,            (1 << 10)
.set SP_STATUS_SIG4,            (1 << 11)
.set SP_STATUS_SIG5,            (1 << 12)
.set SP_STATUS_SIG6,            (1 << 13)
.set SP_STATUS_SIG7,            (1 << 14)

# Parallel Interface Registers
.set PI_DRAM_ADDR_REG,      0xA4600000
.set PI_CART_ADDR_REG,      0xA4600004
.set PI_RD_LEN_REG,         0xA4600008
.set PI_WR_LEN_REG,         0xA460000C
.set PI_STATUS_REG,         0xA4600010
.set PI_BSD_DOM1_LAT_REG,   0xA4600014
.set PI_DOMAIN1_REG,        0xA4600014
.set PI_BSD_DOM1_PWD_REG,   0xA4600018
.set PI_BSD_DOM1_PGS_REG,   0xA460001C
.set PI_BSD_DOM1_RLS_REG,   0xA4600020
.set PI_BSD_DOM2_LAT_REG,   0xA4600024
.set PI_DOMAIN2_REG,        0xA4600024
.set PI_BSD_DOM2_PWD_REG,   0xA4600028
.set PI_BSD_DOM2_PGS_REG,   0xA460002C
.set PI_BSD_DOM2_RLS_REG,   0xA4600030

# PI_STATUS_REG bits (read)
.set PI_STATUS_BUSY,            (1 << 1)
.set PI_STATUS_IOBUSY,          (1 << 2)
.set PI_STATUS_ERROR,           (1 << 3)

# PI_STATUS_REG bits (write)
.set PI_STATUS_RESET,           (1 << 0)
.set PI_STATUS_CLR_INTR,        (1 << 1)

# Serial Interface Registers
.set SI_DRAM_ADDR_REG,      0xA4800000
.set SI_PIF_ADDR_RD64B_REG, 0xA4800004
.set SI_PIF_ADDR_WR64B_REG, 0xA4800010
.set SI_STATUS_REG,         0xA4800018

# SI_STATUS_REG bits
.set SI_STATUS_DMA_BUSY,        (1 <<  0)
.set SI_STATUS_IO_READ_BUSY,    (1 <<  1)
.set SI_STATUS_DMA_ERROR,       (1 <<  3)
.set SI_STATUS_INTERRUPT,       (1 << 12)

# MIPS Interface Registers
.set MI_INIT_MODE_REG,      0xA4300000
.set MI_VERSION_REG,        0xA4300004
.set MI_INTR_REG,           0xA4300008
.set MI_INTR_MASK_REG,      0xA430000C

# MI_INIT_MODE_REG bits (write)
.set MI_CLR_INIT,               (1 <<  7)
.set MI_SET_INIT,               (1 <<  8)
.set MI_CLR_EBUS,               (1 <<  9)
.set MI_SET_EBUS,               (1 << 10)
.set MI_CLR_DP_INTR,            (1 << 11)
.set MI_CLR_RDRAM,              (1 << 12)
.set MI_SET_RDRAM,              (1 << 13)

# MI_INTR_REG bits
.set MI_INTR_SP,                (1 << 0)
.set MI_INTR_SI,                (1 << 1)
.set MI_INTR_AI,                (1 << 2)
.set MI_INTR_VI,                (1 << 3)
.set MI_INTR_PI,                (1 << 4)
.set MI_INTR_DP,                (1 << 5)

# MI_INTR_MASK_REG masks (read)
.set MI_INTR_MASK_SP, 0x01
.set MI_INTR_MASK_SI, 0x02
.set MI_INTR_MASK_AI, 0x04
.set MI_INTR_MASK_VI, 0x08
.set MI_INTR_MASK_PI, 0x10
.set MI_INTR_MASK_DP, 0x20

# libultra OS constants

# os events
.set OS_EVENT_SW1,           0
.set OS_EVENT_SW2,           1
.set OS_EVENT_CART,          2
.set OS_EVENT_COUNTER,       3
.set OS_EVENT_SP,            4
.set OS_EVENT_SI,            5
.set OS_EVENT_AI,            6
.set OS_EVENT_VI,            7
.set OS_EVENT_PI,            8
.set OS_EVENT_DP,            9
.set OS_EVENT_CPU_BREAK,    10
.set OS_EVENT_SP_BREAK,     11
.set OS_EVENT_FAULT,        12
.set OS_EVENT_THREADSTATUS, 13
.set OS_EVENT_PRENMI,       14

# thread structure offsets
.set THREAD_NEXT,           0x0
.set THREAD_PRI,            0x4
.set THREAD_QUEUE,          0x8
.set THREAD_TLNEXT,         0xC
.set THREAD_STATE,          0x10
.set THREAD_FLAGS,          0x12
.set THREAD_ID,             0x14
.set THREAD_FP,             0x18
.set THREAD_AT,             0x20
.set THREAD_V0,             0x28
.set THREAD_V1,             0x30
.set THREAD_A0,             0x38
.set THREAD_A1,             0x40
.set THREAD_A2,             0x48
.set THREAD_A3,             0x50
.set THREAD_T0,             0x58
.set THREAD_T1,             0x60
.set THREAD_T2,             0x68
.set THREAD_T3,             0x70
.set THREAD_T4,             0x78
.set THREAD_T5,             0x80
.set THREAD_T6,             0x88
.set THREAD_T7,             0x90
.set THREAD_S0,             0x98
.set THREAD_S1,             0xA0
.set THREAD_S2,             0xA8
.set THREAD_S3,             0xB0
.set THREAD_S4,             0xB8
.set THREAD_S5,             0xC0
.set THREAD_S6,             0xC8
.set THREAD_S7,             0xD0
.set THREAD_T8,             0xD8
.set THREAD_T9,             0xE0
.set THREAD_GP,             0xE8
.set THREAD_SP,             0xF0
.set THREAD_S8,             0xF8
.set THREAD_RA,             0x100
.set THREAD_LO,             0x108
.set THREAD_HI,             0x110
.set THREAD_SR,             0x118
.set THREAD_PC,             0x11C
.set THREAD_CAUSE,          0x120
.set THREAD_BADVADDR,       0x124
.set THREAD_RCP,            0x128
.set THREAD_FPCSR,          0x12C
.set THREAD_FP0,            0x130
.set THREAD_FP2,            0x138
.set THREAD_FP4,            0x140
.set THREAD_FP6,            0x148
.set THREAD_FP8,            0x150
.set THREAD_FP10,           0x158
.set THREAD_FP12,           0x160
.set THREAD_FP14,           0x168
.set THREAD_FP16,           0x170
.set THREAD_FP18,           0x178
.set THREAD_FP20,           0x180
.set THREAD_FP22,           0x188
.set THREAD_FP24,           0x190
.set THREAD_FP26,           0x198
.set THREAD_FP28,           0x1A0
.set THREAD_FP30,           0x1A8

# thread state
.set OS_STATE_STOPPED,      1
.set OS_STATE_RUNNABLE,     2
.set OS_STATE_RUNNING,      4
.set OS_STATE_WAITING,      8

# thread flags
.set OS_FLAG_CPU_BREAK,     (1 << 0)
.set OS_FLAG_FAULT,         (1 << 1)

# __osHwIntTable layout & __osHwInt structure offsets
.set OS_INTR_CART, 1

.set HWINTR_SP, 0x4

# OSMesgQueue structure offsets
.set MQ_MTQUEUE,    0x0
.set MQ_FULLQUEUE,  0x4
.set MQ_VALIDCOUNT, 0x8
.set MQ_FIRST,      0xC
.set MQ_MSGCOUNT,   0x10
.set MQ_MSG,        0x14
