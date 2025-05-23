/*
 * File: z_obj_makeoshihiki.c
 * Overlay: ovl_Obj_Makeoshihiki
 * Description: Push Block puzzle (Hardcoded)
 */

#include "z_obj_makeoshihiki.h"
#include "overlays/actors/ovl_Obj_Oshihiki/z_obj_oshihiki.h"
#include "terminal.h"

#define FLAGS ACTOR_FLAG_DRAW_CULLING_DISABLED

void ObjMakeoshihiki_Init(Actor* thisx, PlayState* play);
void ObjMakeoshihiki_Draw(Actor* thisx, PlayState* play);

ActorProfile Obj_Makeoshihiki_Profile = {
    /**/ ACTOR_OBJ_MAKEOSHIHIKI,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_DANGEON_KEEP,
    /**/ sizeof(ObjMakeoshihiki),
    /**/ ObjMakeoshihiki_Init,
    /**/ Actor_Noop,
    /**/ Actor_Noop,
    /**/ ObjMakeoshihiki_Draw,
};

typedef struct BlockConfig {
    /* 0x00 */ Vec3f posVecs[3];
    /* 0x24 */ u8 unk_24[3];
    /* 0x27 */ u8 color;
    /* 0x28 */ u8 type;
    /* 0x2A */ s16 rotY;
} BlockConfig; // size = 0x2C

static BlockConfig sBlocks[] = {
    { { { 660.0f, 460.0f, 660.0f }, { 660.0f, 457.0f, 540.0f }, { 780.0f, 454.0f, 540.0f } },
      0x00,
      0x00,
      0x03,
      0xFF,
      PUSHBLOCK_LARGE_START_ON,
      0x0000 },
    { { { -605.0f, -820.0f, -290.0f }, { -365.0f, -905.0f, -290.0f }, { -365.0f, -905.0f, -290.0f } },
      0x00,
      0x03,
      0x00,
      0xFF,
      PUSHBLOCK_SMALL_START_ON,
      0x0000 }
};

static u32 sFlags[3][2] = { { 0, 0 }, { 1, 0 }, { 0, 1 } };

static void (*sFlagSwitchFuncs[])(PlayState* play, s32 flag) = { Flags_UnsetSwitch, Flags_SetSwitch };

void ObjMakeoshihiki_Init(Actor* thisx, PlayState* play) {
    BlockConfig* block = &sBlocks[thisx->home.rot.z & 1];
    s32 typeIdx;
    Vec3f* spawnPos;

    if (!PARAMS_GET_U(thisx->params, 6, 1) && Flags_GetSwitch(play, PARAMS_GET_U(thisx->params, 0, 6))) {
        typeIdx = 1;
    } else if (!PARAMS_GET_U(thisx->params, 14, 1) && Flags_GetSwitch(play, PARAMS_GET_U(thisx->params, 8, 6))) {
        typeIdx = 2;
    } else {
        typeIdx = 0;
    }

    spawnPos = &block->posVecs[typeIdx];

    if (Actor_SpawnAsChild(&play->actorCtx, thisx, play, ACTOR_OBJ_OSHIHIKI, spawnPos->x, spawnPos->y, spawnPos->z, 0,
                           block->rotY, 0, ((block->color << 6) & 0xC0) | (block->type & 0xF) | 0xFF00) == NULL) {
        // "Push-pull block failure"
        PRINTF_COLOR_ERROR();
        PRINTF("Ｅｒｒｏｒ : 押し引きブロック発生失敗(%s %d)\n", "../z_obj_makeoshihiki.c", 194);
        PRINTF_RST();
        Actor_Kill(thisx);
        return;
    }
    if (block->unk_24[typeIdx] & 2) {
        ((ObjOshihiki*)thisx->child)->cantMove = true;
    }
    thisx->world.rot.z = thisx->shape.rot.z = 0;
    PRINTF("(%s)(arg_data %04xF)(angleZ %d)\n", "../z_obj_makeoshihiki.c", thisx->params, thisx->home.rot.z);
}

void ObjMakeoshihiki_Draw(Actor* thisx, PlayState* play) {
    BlockConfig* block = &sBlocks[thisx->home.rot.z & 1];
    s32 i;
    s32 sfxCond1;
    s32 sfxCond2;
    s32 cond;
    s32 cond2;

    for (i = 0; i < 3; i++) {
        if (Math3D_Vec3fDistSq(&thisx->child->world.pos, &block->posVecs[i]) < 0.001f) {
            if (block->unk_24[i] & 1) {
                if (PARAMS_GET_U(thisx->params, 6, 1)) {
                    sfxCond1 = false;
                } else {
                    if (Flags_GetSwitch(play, PARAMS_GET_U(thisx->params, 0, 6))) {
                        cond = true;
                    } else {
                        cond = false;
                    }
                    sfxCond1 = sFlags[i][0] ^ cond;
                }

                if (PARAMS_GET_U(thisx->params, 14, 1)) {
                    sfxCond2 = false;
                } else {
                    if (Flags_GetSwitch(play, PARAMS_GET_U(thisx->params, 8, 6))) {
                        cond2 = true;
                    } else {
                        cond2 = false;
                    }
                    sfxCond2 = sFlags[i][1] ^ cond2;
                }

                if (sfxCond1 || sfxCond2) {
                    Sfx_PlaySfxCentered(NA_SE_SY_TRE_BOX_APPEAR);
                }
            }

            sFlagSwitchFuncs[sFlags[i][0]](play, PARAMS_GET_U(thisx->params, 0, 6));
            sFlagSwitchFuncs[sFlags[i][1]](play, PARAMS_GET_U(thisx->params, 8, 6));

            if (block->unk_24[i] & 2) {
                ((ObjOshihiki*)thisx->child)->cantMove = true;
            }

            break;
        }
    }
}
