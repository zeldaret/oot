#include "n64dd.h"

// Padding in .rodata suggests that this array is in a separate file

/**
 * Region-specific "error number" headers used in N64DD error handling.
 * The first one is used if the current region is Japan (gCurrentRegion == REGION_JP),
 * the second otherwise.
 */
const char* gN64DDLocalizedErrorNumberHeaders[2] = {
    "エラー番号　　　", // "Error Number"
    "Error Number    ",
};
