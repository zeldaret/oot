/*
 * File: z_obj_makeoshihiki.c
 * Overlay: ovl_Obj_Makeoshihiki
 * Description: Push Block (Hardcoded)
 */

#include "z_obj_makeoshihiki.h"

#include "overlays/actors/ovl_Obj_Oshihiki/z_obj_oshihiki.h"

#include <vt.h>

#define FLAGS 0x00000020

#define THIS ((ObjMakeoshihiki*)thisx)

void ObjMakeoshihiki_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjMakeoshihiki_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Obj_Makeoshihiki_InitVars = {
    ACTOR_OBJ_MAKEOSHIHIKI,       ACTORTYPE_PROP,          FLAGS,
    OBJECT_GAMEPLAY_DANGEON_KEEP, sizeof(ObjMakeoshihiki), (ActorFunc)ObjMakeoshihiki_Init,
    (ActorFunc)Actor_Noop,        (ActorFunc)Actor_Noop,   (ActorFunc)ObjMakeoshihiki_Draw,
};

static BlockConfig sBlocks[] = {
    {
        {
            { 660.0f, 460.0f, 660.0f },
            { 660.0f, 457.0f, 540.0f },
            { 780.0f, 454.0f, 540.0f },
        },
        0x00,
        0x00,
        0x03,
        0xFF,
        0x02,
        0x00,
        0x0000,
    },
    {
        {
            { -605.0f, -820.0f, -290.0f },
            { -365.0f, -905.0f, -290.0f },
            { -365.0f, -905.0f, -290.0f },
        },
        0x00,
        0x03,
        0x00,
        0xFF,
        0x00,
        0x00,
        0x0000,
    },
};

u32 sFlags[3][2] = { 0, 0, 1, 0, 0, 1 };

static void (*sFlagSwitchFuncs[])(GlobalContext* globalCtx, s32 flag) = { Flags_UnsetSwitch, Flags_SetSwitch };

void ObjMakeoshihiki_Init(Actor* thisx, GlobalContext* globalCtx) {
    BlockConfig* block = &sBlocks[thisx->initPosRot.rot.z & 1];
    s32 typeIdx;
    Vec3f* spawnPos;

    if ((!((thisx->params >> 6) & 1)) && (Flags_GetSwitch(globalCtx, thisx->params & 0x3F))) {
        typeIdx = 1;
    } else if ((!((thisx->params >> 0xE) & 1)) && (Flags_GetSwitch(globalCtx, (thisx->params >> 8) & 0x3F))) {
        typeIdx = 2;
    } else {
        typeIdx = 0;
    }

    spawnPos = &block->posVecs[typeIdx];

    if (Actor_SpawnAttached(&globalCtx->actorCtx, thisx, globalCtx, ACTOR_OBJ_OSHIHIKI, spawnPos->x, spawnPos->y,
                            spawnPos->z, 0, block->rotY, 0,
                            (((block->paramVal1 << 6) & 0xC0) | (block->paramVal2 & 0xF)) | 0xFF00) == NULL) {
        // Push-pull BlockConfig failure
        osSyncPrintf(VT_COL(RED, WHITE));
        osSyncPrintf("Ｅｒｒｏｒ : 押し引きブロック発生失敗(%s %d)\n", "../z_obj_makeoshihiki.c", 194);
        osSyncPrintf(VT_RST);
        Actor_Kill(thisx);
        return;
    }
    if (block->unk_24[typeIdx] & 2) {
        ((ObjOshihiki*)thisx->attachedB)->unk_1BE = 1;
    }
    thisx->shape.rot.z = 0;
    thisx->posRot.rot.z = thisx->shape.rot.z;
    osSyncPrintf("(%s)(arg_data %04xF)(angleZ %d)\n", "../z_obj_makeoshihiki.c", thisx->params,
                 thisx->initPosRot.rot.z);
}

void ObjMakeoshihiki_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BlockConfig* block = &sBlocks[thisx->initPosRot.rot.z & 1];
    s32 i;
    s32 sfxCond1;
    s32 sfxCond2;
    s32 cond;
    s32 cond2;

    for (i = 0; i < 3; i++) {
        if (func_800CB650(&thisx->attachedB->posRot.pos, &block->posVecs[i]) < 0.001f) {
            if (block->unk_24[i] & 1) {
                if ((thisx->params >> 6) & 1) {
                    sfxCond1 = false;
                } else {
                    if (Flags_GetSwitch(globalCtx, thisx->params & 0x3F)) {
                        cond = true;
                    } else {
                        cond = false;
                    }
                    sfxCond1 = sFlags[i][0] ^ cond;
                }

                if ((thisx->params >> 0xE) & 1) {
                    sfxCond2 = false;
                } else {
                    if (Flags_GetSwitch(globalCtx, (thisx->params >> 8) & 0x3F)) {
                        cond2 = true;
                    } else {
                        cond2 = false;
                    }
                    sfxCond2 = sFlags[i][1] ^ cond2;
                }

                if (sfxCond1 || sfxCond2) {
                    func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
                }
            }

            sFlagSwitchFuncs[sFlags[i][0]](globalCtx, thisx->params & 0x3F);
            sFlagSwitchFuncs[sFlags[i][1]](globalCtx, (thisx->params >> 8) & 0x3F);

            if (block->unk_24[i] & 2) {
                ((ObjOshihiki*)thisx->attachedB)->unk_1BE = 1;
            }

            break;
        }
    }
}
