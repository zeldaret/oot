#ifndef MACROS_H
#define MACROS_H

#define ARRAY_COUNT(arr) (s32)(sizeof(arr) / sizeof(arr[0]))
#define ARRAY_COUNTU(arr) (u32)(sizeof(arr) / sizeof(arr[0]))
#define ARRAY_COUNT_2D(arr) (s32)(sizeof(arr) / sizeof(arr[0][0]))

#define PHYSICAL_TO_VIRTUAL(addr) (void*)((uintptr_t)(addr) + 0x80000000)
#define VIRTUAL_TO_PHYSICAL(addr) (uintptr_t)((u8*)(addr) - 0x80000000)

#define CHECK_FLAG_ALL(flags, mask) (((flags) & (mask)) == (mask))

#endif
