/*
 * File: z_en_weather_tag.c
 * Overlay: ovl_En_Weather_Tag
 * Description: Proximity Rain/Weather Effects
 */

#include "z_en_weather_tag.h"
#include "vt.h"

#define FLAGS 0x00000010

#define THIS ((EnWeatherTag*)thisx)

void EnWeatherTag_Init(Actor* thisx, GlobalContext* globalCtx);
void EnWeatherTag_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnWeatherTag_Update(Actor* thisx, GlobalContext* globalCtx);

void func_80B31658(EnWeatherTag* this, GlobalContext* globalCtx);
void func_80B31700(EnWeatherTag* this, GlobalContext* globalCtx);
void func_80B31850(EnWeatherTag* this, GlobalContext* globalCtx);
void func_80B31924(EnWeatherTag* this, GlobalContext* globalCtx);
void func_80B317A8(EnWeatherTag* this, GlobalContext* globalCtx);
void func_80B31A10(EnWeatherTag* this, GlobalContext* globalCtx);
void func_80B31B24(EnWeatherTag* this, GlobalContext* globalCtx);
void func_80B31C20(EnWeatherTag* this, GlobalContext* globalCtx);
void func_80B316B0(EnWeatherTag* this, GlobalContext* globalCtx);
void func_80B31758(EnWeatherTag* this, GlobalContext* globalCtx);
void func_80B31800(EnWeatherTag* this, GlobalContext* globalCtx);
void func_80B318C0(EnWeatherTag* this, GlobalContext* globalCtx);
void func_80B319A0(EnWeatherTag* this, GlobalContext* globalCtx);
void func_80B31AA0(EnWeatherTag* this, GlobalContext* globalCtx);
void func_80B31CC0(EnWeatherTag* this, GlobalContext* globalCtx);

const ActorInit En_Weather_Tag_InitVars = {
    ACTOR_EN_WEATHER_TAG,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnWeatherTag),
    (ActorFunc)EnWeatherTag_Init,
    (ActorFunc)EnWeatherTag_Destroy,
    (ActorFunc)EnWeatherTag_Update,
    NULL,
};

void EnWeatherTag_SetupAction(EnWeatherTag* this, EnWeatherTagActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnWeatherTag_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnWeatherTag_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnWeatherTag* this = THIS;
    u32 temp_v0;

    this->actor.flags &= ~1;

    switch (this->actor.params & 0xF) {
        case 0:
            osSyncPrintf("\n\n");
            //"☆☆☆☆☆ (;o;) About ☆☆☆☆☆☆"
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ （;o;) くらいよー ☆☆☆☆☆ \n" VT_RST);
            EnWeatherTag_SetupAction(this, func_80B31658);
            break;
        case 1:
            osSyncPrintf("\n\n");
            //"☆☆☆☆☆ Cloudy (._.) Ah Melancholy ☆☆☆☆☆"
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ くもり (._.) あーあ 憂鬱 ☆☆☆☆☆ \n" VT_RST);
            if (Flags_GetEventChkInf(0x18)) {
                Actor_Kill(&this->actor);
            }
            EnWeatherTag_SetupAction(this, func_80B31700);
            break;
        case 2:
            osSyncPrintf("\n\n");
            //"☆☆☆☆☆ Yukigafuru You won't come (._.) ☆☆☆☆☆"
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ ゆきがふるー あなたはこないー (._.) ☆☆☆☆☆ \n" VT_RST);

            if (gSaveContext.eventChkInf[4] & 0x400) {
                Actor_Kill(&this->actor);
            }
            EnWeatherTag_SetupAction(this, func_80B31850);
            break;
        case 3:
            osSyncPrintf("\n\n");
            //"☆☆☆☆☆ Wow wa wa na wa saa ki ha (^o^) ☆☆☆☆☆"
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ わわわわー なーがーさーきーはー (^o^) ☆☆☆☆☆ \n" VT_RST);

            if (gSaveContext.eventChkInf[4] & 0x400) {
                Actor_Kill(&this->actor);
            }
            EnWeatherTag_SetupAction(this, func_80B31924);
            break;
        case 4:
            osSyncPrintf("\n\n");
            //"☆☆☆☆☆ Cloudy (._.) Ah Melancholy ☆☆☆☆☆"
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ くもり (._.) あーあ 憂鬱 ☆☆☆☆☆ \n" VT_RST);
            if (gSaveContext.eventChkInf[4] & 0x200) {
                Actor_Kill(&this->actor);
            }
            EnWeatherTag_SetupAction(this, func_80B317A8);
            break;
        case 5:
            osSyncPrintf("\n\n");
            //"☆☆☆☆☆ Cloudy Rain Thunder (;O;) Uo Melancholy ☆☆☆☆☆"
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ くもり雨雷 (;O;) うおお 憂鬱 ☆☆☆☆☆ \n" VT_RST);

            temp_v0 = gSaveContext.eventChkInf[4];
            if ((((temp_v0 & 0x100) == 0) || ((temp_v0 & 0x200) == 0) || ((temp_v0 & 0x400) == 0)) ||
                CHECK_QUEST_ITEM(QUEST_MEDALLION_SHADOW)) {
                Actor_Kill(&this->actor);
            }
            EnWeatherTag_SetupAction(this, func_80B31A10);
            break;
        case 6:
            osSyncPrintf("\n\n");
            //"☆☆☆☆☆ The desert becomes thicker ☆☆☆☆☆"
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ 砂漠が濃くなります ☆☆☆☆☆ \n" VT_RST);
            EnWeatherTag_SetupAction(this, func_80B31B24);
            break;
        case 7:
            osSyncPrintf("\n\n");
            //"☆☆☆☆☆ Wow wa wa na wa saa ki ha (^o^) ☆☆☆☆☆"
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ わわわわー なーがーさーきーはー (^o^) ☆☆☆☆☆ \n" VT_RST);

            EnWeatherTag_SetupAction(this, func_80B31C20);
            break;
    }
}

u8 func_80B312C8(EnWeatherTag* this, GlobalContext* globalCtx, u8 arg2, u8 arg3, u8 arg4, u8 arg5, u16 arg6, u8 arg7) {
    s32 pad;
    u8 ret = 0;
    Player* player = PLAYER;

    if (func_8002DB8C(&player->actor, &this->actor) < (this->actor.params >> 8) * 100.0f) {
        if ((globalCtx->envCtx.unk_1E != 0) ||
            (!D_8011FB3C || !(globalCtx->skyboxId == 1 || globalCtx->envCtx.unk_1F != globalCtx->envCtx.unk_20))) {
            D_8011FB38 = 1;
            if (globalCtx->envCtx.gloomySkyEvent == 0 &&
                ((globalCtx->envCtx.unk_1E != 0) ||
                 (!(globalCtx->envCtx.unk_1F == 1 || globalCtx->envCtx.unk_21 != 0)))) {
                D_8011FB38 = 0;
                if (D_8011FB30 != arg7) {
                    D_8011FB30 = arg7;
                    if (globalCtx->envCtx.gloomySkyEvent == 0) {
                        globalCtx->envCtx.unk_19 = 1;
                        globalCtx->envCtx.gloomySky = arg2;
                        globalCtx->envCtx.unk_18 = arg3;
                        globalCtx->envCtx.unk_1A = arg6;
                        globalCtx->envCtx.unk_21 = 1;
                        globalCtx->envCtx.unk_1F = arg4;
                        globalCtx->envCtx.unk_20 = arg5;
                        D_8011FB34 = arg5;
                        globalCtx->envCtx.unk_24 = arg6;
                        globalCtx->envCtx.unk_22 = globalCtx->envCtx.unk_24;
                    }
                }

                ret = 1;
            }
        } else {
            if (D_8011FB40 != 0) {
                gSaveContext.dayTime += 0x14;
            }
        }
    }

    return ret;
}

u8 func_80B3149C(EnWeatherTag* this, GlobalContext* globalCtx, u8 arg2, u8 arg3, u8 arg4, u8 arg5, u16 arg6) {
    s32 pad;
    u8 ret = 0;
    Player* player = PLAYER;

    if ((((this->actor.params >> 8) * 100.0f) + 100.0f) < func_8002DB8C(&player->actor, &this->actor)) {
        if ((globalCtx->envCtx.unk_1E != 0) ||
            (!D_8011FB3C || !(globalCtx->skyboxId == 1 || globalCtx->envCtx.unk_1F != globalCtx->envCtx.unk_20))) {
            D_8011FB38 = 1;
            if ((globalCtx->envCtx.gloomySkyEvent == 0) &&
                ((globalCtx->envCtx.unk_1E != 0) ||
                 (!(globalCtx->envCtx.unk_1F == 1 || globalCtx->envCtx.unk_21 != 0)))) {
                D_8011FB38 = 0;
                D_8011FB30 = 0;
                globalCtx->envCtx.unk_19 = 1;
                globalCtx->envCtx.gloomySky = arg2;
                globalCtx->envCtx.unk_18 = arg3;
                globalCtx->envCtx.unk_1A = arg6;
                globalCtx->envCtx.unk_21 = 1;
                globalCtx->envCtx.unk_1F = arg4;
                globalCtx->envCtx.unk_20 = arg5;
                D_8011FB34 = arg5;
                globalCtx->envCtx.unk_24 = arg6;
                globalCtx->envCtx.unk_22 = globalCtx->envCtx.unk_24;

                ret = 1;
            }
        } else {
            if (D_8011FB40 != 0) {
                gSaveContext.dayTime += 0x14;
            }
        }
    }
    return ret;
}

void func_80B31658(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (func_80B312C8(this, globalCtx, 0, 1, 0, 3, 0x3C, 1) != 0) {
        EnWeatherTag_SetupAction(this, func_80B316B0);
    }
}

void func_80B316B0(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (func_80B3149C(this, globalCtx, 1, 0, 3, 0, 0x3C) != 0) {
        EnWeatherTag_SetupAction(this, func_80B31658);
    }
}

void func_80B31700(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (func_80B312C8(this, globalCtx, 0, 1, 0, 2, 0x64, 2) != 0) {
        EnWeatherTag_SetupAction(this, func_80B31758);
    }
}

void func_80B31758(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (func_80B3149C(this, globalCtx, 1, 0, 2, 0, 0x64) != 0) {
        EnWeatherTag_SetupAction(this, func_80B31700);
    }
}

void func_80B317A8(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (func_80B312C8(this, globalCtx, 0, 1, 0, 2, 0x3C, 2) != 0) {
        EnWeatherTag_SetupAction(this, func_80B31800);
    }
}

void func_80B31800(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (func_80B3149C(this, globalCtx, 1, 0, 2, 0, 0x3C) != 0) {
        EnWeatherTag_SetupAction(this, func_80B31700);
    }
}

void func_80B31850(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (func_80B312C8(this, globalCtx, 0, 1, 0, 2, 0x3C, 3) != 0) {
        globalCtx->envCtx.unk_EE[3] = 0x40;
        EnWeatherTag_SetupAction(this, func_80B318C0);
    }
}

void func_80B318C0(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (func_80B3149C(this, globalCtx, 1, 0, 2, 0, 0x3C) != 0) {
        globalCtx->envCtx.unk_EE[3] = 0;
        EnWeatherTag_SetupAction(this, func_80B31850);
    }
}

void func_80B31924(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (func_80B312C8(this, globalCtx, 0, 1, 0, 2, 0x64, 4) != 0) {
        func_80077624(globalCtx);
        globalCtx->envCtx.unk_EE[0] = 0x19;
        EnWeatherTag_SetupAction(this, func_80B319A0);
    }
}

void func_80B319A0(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (func_80B3149C(this, globalCtx, 1, 0, 2, 0, 0x64) != 0) {
        func_80077684(globalCtx);
        globalCtx->envCtx.unk_EE[0] = 0;
        EnWeatherTag_SetupAction(this, func_80B31924);
    }
}

void func_80B31A10(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (func_80B312C8(this, globalCtx, 0, 1, 0, 4, 0x64, 5) != 0) {
        func_80077624(globalCtx);
        globalCtx->envCtx.lightning = 1;
        globalCtx->envCtx.unk_EE[0] = 0x1E;
        EnWeatherTag_SetupAction(this, func_80B31AA0);
    }
}

void func_80B31AA0(EnWeatherTag* this, GlobalContext* globalCtx) {
    if (func_80B3149C(this, globalCtx, 1, 0, 4, 0, 0x64) != 0) {
        func_80077684(globalCtx);
        globalCtx->envCtx.lightning = 2;
        globalCtx->envCtx.unk_EE[0] = 0;
        EnWeatherTag_SetupAction(this, func_80B31A10);
    }
}

void func_80B31B24(EnWeatherTag* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (func_8002DB8C(&player->actor, &this->actor) < ((this->actor.params >> 8) * 100.0f)) {
        Math_SmoothStepToS(&globalCtx->envCtx.unk_9E, -0x50, 1, 2, 1);
        Math_SmoothStepToS(&globalCtx->envCtx.unk_A0, -0x7D0, 1, 0x32, 1);
    } else {
        Math_SmoothStepToS(&globalCtx->envCtx.unk_9E, 0, 1, 1, 1);
        Math_SmoothStepToS(&globalCtx->envCtx.unk_A0, 0, 1, 0x19, 1);
    }
}

void func_80B31C20(EnWeatherTag* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (func_8002DB8C(&player->actor, &this->actor) < ((this->actor.params >> 8) * 100.0f)) {
        func_80077624(globalCtx);
        globalCtx->envCtx.lightning = 1;
        globalCtx->envCtx.unk_EE[0] = 0x19;
        EnWeatherTag_SetupAction(this, func_80B31CC0);
    }
}

void func_80B31CC0(EnWeatherTag* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if ((((this->actor.params >> 8) * 100.0f) + 10.0f) < func_8002DB8C(&player->actor, &this->actor)) {
        func_80077684(globalCtx);
        globalCtx->envCtx.lightning = 2;
        globalCtx->envCtx.unk_EE[0] = 0;
        globalCtx->envCtx.unk_EE[1] = 0xA;
        EnWeatherTag_SetupAction(this, func_80B31C20);
    }
}

void EnWeatherTag_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnWeatherTag* this = THIS;

    this->actionFunc(this, globalCtx);
    if (BREG(0) != 0) {
        DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                               this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z, 1.0f, 1.0f,
                               1.0f, 255, 0, 255, 255, 4, globalCtx->state.gfxCtx);
    }
}
