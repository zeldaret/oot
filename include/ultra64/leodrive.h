#ifndef ULTRA64_LEODRIVE_H
#define ULTRA64_LEODRIVE_H

#include "rcp.h"

#define ASIC_BASE   PI_DOM2_ADDR1

#define ASIC_C2_BUFF        (ASIC_BASE + 0x000) // C2 Sector Buffer
#define ASIC_SECTOR_BUFF    (ASIC_BASE + 0x400) // Data Sector Buffer
#define ASIC_DATA           (ASIC_BASE + 0x500) // Data
#define ASIC_MISC_REG       (ASIC_BASE + 0x504) // Misc Register
#define ASIC_CMD            (ASIC_BASE + 0x508) // Command (write)
#define ASIC_STATUS         (ASIC_BASE + 0x508) // Status (read)
#define ASIC_CUR_TK         (ASIC_BASE + 0x50C) // Current Track
#define ASIC_BM_CTL         (ASIC_BASE + 0x510) // Buffer Manager Control (write)
#define ASIC_BM_STATUS      (ASIC_BASE + 0x510) // Buffer Manager Status (read)
#define ASIC_ERR_SECTOR     (ASIC_BASE + 0x514) // Sector Error Status
#define ASIC_SEQ_CTL        (ASIC_BASE + 0x518) // Sequencer Control (write)
#define ASIC_SEQ_STATUS     (ASIC_BASE + 0x518) // Sequencer Status (read)
#define ASIC_CUR_SECTOR     (ASIC_BASE + 0x51C) // Current Sector
#define ASIC_HARD_RESET     (ASIC_BASE + 0x520) // Hard Reset
#define ASIC_C1_S0          (ASIC_BASE + 0x524) // C1
#define ASIC_HOST_SECBYTE   (ASIC_BASE + 0x528) // Sector Size (in bytes)
#define ASIC_C1_S2          (ASIC_BASE + 0x52C) // C1
#define ASIC_SEC_BYTE       (ASIC_BASE + 0x530) // Sectors per Block, Full Size
#define ASIC_C1_S4          (ASIC_BASE + 0x534) // C1
#define ASIC_C1_S6          (ASIC_BASE + 0x538) // C1
#define ASIC_CUR_ADDR       (ASIC_BASE + 0x53C) // Current Address
#define ASIC_ID_REG         (ASIC_BASE + 0x540) // ID
#define ASIC_TEST_REG       (ASIC_BASE + 0x544) // Test Read
#define ASIC_TEST_PIN_SEL   (ASIC_BASE + 0x548) // Test Write
#define MSEQ_RAM_ADDR       (ASIC_BASE + 0x580) // Microsequencer RAM

// ASIC_BM_CTL write bits
#define LEO_BM_START                0x80000000  // Start Buffer Manager
#define LEO_BM_MODE                 0x40000000  // Buffer Manager Mode
#define LEO_BM_IMASK                0x20000000  // BM Interrupt Mask
#define LEO_BM_RESET                0x10000000  // Buffer Manager Reset
#define LEO_BM_DISABLE_OR_CHECK     0x08000000  // Disable OR Check
#define LEO_BM_DISABLE_C1           0x04000000  // Disable C1 Correction
#define LEO_BM_XFER_BLOCK           0x02000000  // Block Transfer
#define LEO_BM_CLR_MECHANIC_INTR    0x01000000  // Mechanic Interrupt Reset

// ASIC_STATUS read bits
#define LEO_STATUS_MECHANIC_INTR    0x02000000  // Mechanic Interrupt Raised

#endif
