#include <ultra64.h>
#include <global.h>

Path* Path_GetByIndex(GlobalContext* globalCtx, s16 index, s16 max) {
    Path* path;

    if (index != max) {
        path = &globalCtx->setupPathList[index];
    } else {
        path = NULL;
    }

    return path;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_path/Path_OrientAndGetDistSq.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_path/Path_CopyLastPoint.s")
