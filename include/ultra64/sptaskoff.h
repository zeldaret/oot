#ifndef ULTRA64_SPTASKOFF_H
#define ULTRA64_SPTASKOFF_H

#define OS_TASK_SIZE            0x40 /* sizeof(OSTask) */

#define OS_TASK_OFF_TYPE        0x00
#define OS_TASK_OFF_FLAGS       0x04
#define OS_TASK_OFF_UBOOT       0x08
#define OS_TASK_OFF_UBOOT_SZ    0x0C
#define OS_TASK_OFF_UCODE       0x10
#define OS_TASK_OFF_UCODE_SZ    0x14
#define OS_TASK_OFF_UDATA       0x18
#define OS_TASK_OFF_UDATA_SZ    0x1C
#define OS_TASK_OFF_STACK       0x20
#define OS_TASK_OFF_STACK_SZ    0x24
#define OS_TASK_OFF_OUTBUFF     0x28
#define OS_TASK_OFF_OUTBUFF_SZ  0x2C
#define OS_TASK_OFF_DATA        0x30
#define OS_TASK_OFF_DATA_SZ     0x34
#define OS_TASK_OFF_YIELD       0x38
#define OS_TASK_OFF_YIELD_SZ    0x3C

#endif
