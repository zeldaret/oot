#ifndef ULTRA64_RDB_H
#define ULTRA64_RDB_H

/* U64 side address */
#define RDB_BASE_REG            0xC0000000
#define RDB_WRITE_INTR_REG      (RDB_BASE_REG + 0x8)
#define RDB_READ_INTR_REG       (RDB_BASE_REG + 0xC)
#define RDB_BASE_VIRTUAL_ADDR   0x80000000

/* packet type  Have six bits, so can have up to 63 types */
#define RDB_TYPE_INVALID                0
#define RDB_TYPE_GtoH_PRINT             1
#define RDB_TYPE_GtoH_FAULT             2
#define RDB_TYPE_GtoH_LOG_CT            3
#define RDB_TYPE_GtoH_LOG               4
#define RDB_TYPE_GtoH_READY_FOR_DATA    5
#define RDB_TYPE_GtoH_DATA_CT           6
#define RDB_TYPE_GtoH_DATA              7
#define RDB_TYPE_GtoH_DEBUG             8
#define RDB_TYPE_GtoH_RAMROM            9
#define RDB_TYPE_GtoH_DEBUG_DONE        10
#define RDB_TYPE_GtoH_DEBUG_READY       11
#define RDB_TYPE_GtoH_KDEBUG            12
#define RDB_TYPE_GtoH_PROF_DATA         22


#define RDB_TYPE_HtoG_LOG_DONE          13
#define RDB_TYPE_HtoG_DEBUG             14
#define RDB_TYPE_HtoG_DEBUG_CT          15
#define RDB_TYPE_HtoG_DATA              16
#define RDB_TYPE_HtoG_DATA_DONE         17
#define RDB_TYPE_HtoG_REQ_RAMROM        18
#define RDB_TYPE_HtoG_FREE_RAMROM       19
#define RDB_TYPE_HtoG_KDEBUG            20
#define RDB_TYPE_HtoG_PROF_SIGNAL       21


#define RDB_PROF_ACK_SIG               1
#define RDB_PROF_FLUSH_SIG             2
#define PROF_BLOCK_SIZE             2048

#define RDB_LOG_MAX_BLOCK_SIZE      0x8000
#define RDB_DATA_MAX_BLOCK_SIZE     0x8000

/* GIO side address */
#define GIO_RDB_BASE_REG        0xBF480000
#define GIO_RDB_WRITE_INTR_REG  (GIO_RDB_BASE_REG + 0x8)
#define GIO_RDB_READ_INTR_REG   (GIO_RDB_BASE_REG + 0xC)

/* minor device number */
#define GIO_RDB_PRINT_MINOR     1
#define GIO_RDB_DEBUG_MINOR     2

/* interrupt bit */
#define GIO_RDB_WRITE_INTR_BIT  0x80000000
#define GIO_RDB_READ_INTR_BIT   0x40000000

/* debug command */
#define DEBUG_COMMAND_NULL      0
#define DEBUG_COMMAND_MEMORY    1
#define DEBUG_COMMAND_REGISTER  2
#define DEBUG_COMMAND_INVALID   255

/* debug state */
#define DEBUG_STATE_NULL        0
#define DEBUG_STATE_RECEIVE     1
#define DEBUG_STATE_INVALID     255

#if defined(_LANGUAGE_C) || defined(_LANGUAGE_C_PLUS_PLUS)

#include "ultratypes.h"

/* Structure for debug port */
typedef struct {
    u32 type   : 6;     /* 0: invalid, 1: print, 2: debug */
    u32 length : 2;     /* 1, 2, or 3 */
    char buf[3];        /* character buffer */
} rdbPacket;

#endif

#endif
