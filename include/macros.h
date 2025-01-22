#ifndef MACROS_H
#define MACROS_H

#include "terminal.h"
#include "versions.h"

#ifndef AVOID_UB
#define BAD_RETURN(type) type
#else
#define BAD_RETURN(type) void
#endif

/**
 * The T macro holds translations in English for original debug strings written in Japanese.
 * The translated strings match the original debug strings, they are only direct translations.
 * For example, any original name is left as is rather than being replaced with the name in the codebase.
 */
#define T(jp, en) jp

#define ARRAY_COUNT(arr) (s32)(sizeof(arr) / sizeof(arr[0]))
#define ARRAY_COUNTU(arr) (u32)(sizeof(arr) / sizeof(arr[0]))
#define ARRAY_COUNT_2D(arr) (s32)(sizeof(arr) / sizeof(arr[0][0]))

#define PHYSICAL_TO_VIRTUAL(addr) (void*)((uintptr_t)(addr) + 0x80000000)
#define VIRTUAL_TO_PHYSICAL(addr) (uintptr_t)((u8*)(addr) - 0x80000000)

#define ABS(x) ((x) >= 0 ? (x) : -(x))
#define DECR(x) ((x) == 0 ? 0 : --(x))
#define CLAMP(x, min, max) ((x) < (min) ? (min) : (x) > (max) ? (max) : (x))
#define CLAMP_MAX(x, max) ((x) > (max) ? (max) : (x))
#define CLAMP_MIN(x, min) ((x) < (min) ? (min) : (x))

#define SWAP(type, a, b)    \
    {                       \
        type _temp = (a);   \
        (a) = (b);          \
        (b) = _temp;        \
    }                       \
    (void)0

#define RGBA8(r, g, b, a) ((((r) & 0xFF) << 24) | (((g) & 0xFF) << 16) | (((b) & 0xFF) << 8) | (((a) & 0xFF) << 0))

#define CHECK_FLAG_ALL(flags, mask) (((flags) & (mask)) == (mask))

// IDO doesn't support variadic macros, but it merely throws a warning for the
// number of arguments not matching the definition (warning 609) instead of
// throwing an error. We suppress this warning and rely on GCC to catch macro
// argument errors instead.
// Note some tools define __sgi but preprocess with a modern cpp implementation,
// ensure that these do not use the IDO workaround to avoid errors.
#define IDO_PRINTF_WORKAROUND (__sgi && !__GNUC__ && !M2CTX)

#if DEBUG_FEATURES
#define PRINTF osSyncPrintf
#elif defined(EGCS)
#define PRINTF(format, args...) while (0) osSyncPrintf(format, ##args)
#elif IDO_PRINTF_WORKAROUND
#define PRINTF(args) (void)0
#else
#define PRINTF(format, ...) (void)0
#endif

#if DEBUG_FEATURES
#define PRINTF_COLOR_BLACK()    PRINTF(VT_FGCOL(BLACK))
#define PRINTF_COLOR_RED()      PRINTF(VT_FGCOL(RED))
#define PRINTF_COLOR_GREEN()    PRINTF(VT_FGCOL(GREEN))
#define PRINTF_COLOR_YELLOW()   PRINTF(VT_FGCOL(YELLOW))
#define PRINTF_COLOR_BLUE()     PRINTF(VT_FGCOL(BLUE))
#define PRINTF_COLOR_MAGENTA()  PRINTF(VT_FGCOL(MAGENTA))
#define PRINTF_COLOR_CYAN()     PRINTF(VT_FGCOL(CYAN))
#define PRINTF_COLOR_WHITE()    PRINTF(VT_FGCOL(WHITE))
#define PRINTF_COLOR_WARNING()  PRINTF(VT_COL(YELLOW, BLACK))
#define PRINTF_COLOR_ERROR()    PRINTF(VT_COL(RED, WHITE))
#define PRINTF_RST()            PRINTF(VT_RST)
#else
#define PRINTF_COLOR_BLACK()    (void)0
#define PRINTF_COLOR_RED()      (void)0
#define PRINTF_COLOR_GREEN()    (void)0
#define PRINTF_COLOR_YELLOW()   (void)0
#define PRINTF_COLOR_BLUE()     (void)0
#define PRINTF_COLOR_MAGENTA()  (void)0
#define PRINTF_COLOR_CYAN()     (void)0
#define PRINTF_COLOR_WHITE()    (void)0
#define PRINTF_COLOR_WARNING()  (void)0
#define PRINTF_COLOR_ERROR()    (void)0
#define PRINTF_RST()            (void)0
#endif

#if DEBUG_FEATURES
#define LOG(exp, value, format, file, line)         \
    do {                                            \
        LogUtils_LogThreadId(file, line);           \
        osSyncPrintf(exp " = " format "\n", value); \
    } while (0)
#else
#define LOG(exp, value, format, file, line) (void)(value)
#endif

#define LOG_STRING(string, file, line) LOG(#string, string, "%s", file, line)
#define LOG_ADDRESS(exp, value, file, line) LOG(exp, value, "%08x", file, line)
#define LOG_TIME(exp, value, file, line) LOG(exp, value, "%lld", file, line)
#define LOG_NUM(exp, value, file, line) LOG(exp, value, "%d", file, line)
#define LOG_HEX(exp, value, file, line) LOG(exp, value, "%x", file, line)
#define LOG_HEX32(exp, value, file, line) LOG(exp, value, "%08x", file, line)
#define LOG_FLOAT(exp, value, file, line) LOG(exp, value, "%f", file, line)

#define SET_NEXT_GAMESTATE(curState, newInit, newStruct) \
    if (1) {                                             \
        GameState* state = curState;                     \
                                                         \
        (state)->init = newInit;                         \
        (state)->size = sizeof(newStruct);               \
    } (void)0

#if DEBUG_FEATURES

#define DMA_REQUEST_SYNC(ram, vrom, size, file, line) DmaMgr_RequestSyncDebug(ram, vrom, size, file, line)
#define DMA_REQUEST_ASYNC(req, ram, vrom, size, unk5, queue, msg, file, line) DmaMgr_RequestAsyncDebug(req, ram, vrom, size, unk5, queue, msg, file, line)
#define GAME_STATE_ALLOC(gameState, size, file, line) GameState_Alloc(gameState, size, file, line)
#define DEBUG_ARENA_MALLOC(size, file, line) DebugArena_MallocDebug(size, file, line)
#define DEBUG_ARENA_MALLOC_R(size, file, line) DebugArena_MallocRDebug(size, file, line)
#define DEBUG_ARENA_FREE(size, file, line) DebugArena_FreeDebug(size, file, line)
#define SYSTEM_ARENA_MALLOC(size, file, line) SystemArena_MallocDebug(size, file, line)
#define SYSTEM_ARENA_MALLOC_R(size, file, line) SystemArena_MallocRDebug(size, file, line)
#define SYSTEM_ARENA_FREE(size, file, line) SystemArena_FreeDebug(size, file, line)
#define LOG_UTILS_CHECK_NULL_POINTER(exp, ptr, file, line) LogUtils_CheckNullPointer(exp, ptr, file, line)
#define LOG_UTILS_CHECK_VALID_POINTER(exp, ptr, file, line) LogUtils_CheckValidPointer(exp, ptr, file, line)
#define GAME_ALLOC_MALLOC(alloc, size, file, line) GameAlloc_MallocDebug(alloc, size, file, line)

#else

#define DMA_REQUEST_SYNC(ram, vrom, size, file, line) DmaMgr_RequestSync(ram, vrom, size)
#define DMA_REQUEST_ASYNC(req, ram, vrom, size, unk5, queue, msg, file, line) DmaMgr_RequestAsync(req, ram, vrom, size, unk5, queue, msg)
#define GAME_STATE_ALLOC(gameState, size, file, line) THA_AllocTailAlign16(&(gameState)->tha, size)
#define DEBUG_ARENA_MALLOC(size, file, line) DebugArena_Malloc(size)
#define DEBUG_ARENA_MALLOC_R(size, file, line) DebugArena_MallocR(size)
#define DEBUG_ARENA_FREE(size, file, line) DebugArena_Free(size)
#define SYSTEM_ARENA_MALLOC(size, file, line) SystemArena_Malloc(size)
#define SYSTEM_ARENA_MALLOC_R(size, file, line) SystemArena_MallocR(size)
#define SYSTEM_ARENA_FREE(size, file, line) SystemArena_Free(size)
#define LOG_UTILS_CHECK_NULL_POINTER(exp, ptr, file, line) (void)0
#define LOG_UTILS_CHECK_VALID_POINTER(exp, ptr, file, line) (void)0
#define GAME_ALLOC_MALLOC(alloc, size, file, line) GameAlloc_Malloc(alloc, size)

#endif

#if PLATFORM_N64 || DEBUG_FEATURES
#define HUNGUP_AND_CRASH(file, line) Fault_AddHungupAndCrash(file, line)
#else
#define HUNGUP_AND_CRASH(file, line) LogUtils_HungupThread(file, line)
#endif

#define MATRIX_FINALIZE_AND_LOAD(pkt, gfxCtx, file, line) \
    gSPMatrix(pkt, MATRIX_FINALIZE(gfxCtx, file, line), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW)

#if OOT_NTSC
#define LANGUAGE_ARRAY(jpn, eng, ger, fra) { jpn, eng }
#else
#define LANGUAGE_ARRAY(jpn, eng, ger, fra) { eng, ger, fra }
#endif

/**
 * `x` vertex x
 * `y` vertex y
 * `z` vertex z
 * `s` texture s coordinate
 * `t` texture t coordinate
 * `crnx` red component of color vertex, or x component of normal vertex
 * `cgny` green component of color vertex, or y component of normal vertex
 * `cbnz` blue component of color vertex, or z component of normal vertex
 * `a` alpha
 */
#define VTX(x,y,z,s,t,crnx,cgny,cbnz,a) { { { x, y, z }, 0, { s, t }, { crnx, cgny, cbnz, a } } }

#define VTX_T(x,y,z,s,t,cr,cg,cb,a) { { x, y, z }, 0, { s, t }, { cr, cg, cb, a } }

#define gDPSetTileCustom(pkt, fmt, siz, uls, ult, lrs, lrt, pal,        \
                         cms, cmt, masks, maskt, shifts, shiftt)        \
_DW({                                                                   \
    gDPPipeSync(pkt);                                                   \
    gDPTileSync(pkt);                                                   \
    gDPSetTile(pkt, fmt, siz,                                           \
        (((((lrs) - (uls) + 1) * siz##_TILE_BYTES) + 7) >> 3), 0,       \
        G_TX_LOADTILE, 0, cmt, maskt, shiftt, cms, masks,               \
        shifts);                                                        \
    gDPTileSync(pkt);                                                   \
    gDPSetTile(pkt, fmt, siz,                                           \
        (((((lrs) - (uls) + 1) * siz##_LINE_BYTES) + 7) >> 3), 0,       \
        G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts);  \
    gDPSetTileSize(pkt, G_TX_RENDERTILE,                                \
        (uls) << G_TEXTURE_IMAGE_FRAC,                                  \
        (ult) << G_TEXTURE_IMAGE_FRAC,                                  \
        (lrs) << G_TEXTURE_IMAGE_FRAC,                                  \
        (lrt) << G_TEXTURE_IMAGE_FRAC);                                 \
})

#endif
