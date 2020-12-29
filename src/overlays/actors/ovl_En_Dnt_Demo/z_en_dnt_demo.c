/*
 * File: z_en_dnt_demo.c
 * Overlay: ovl_En_Dnt_Demo
 * Description: Forest Stage minigame
 */

#include "z_en_dnt_demo.h"

#include "overlays/actors/ovl_En_Dnt_Jiji/z_en_dnt_jiji.h"
#include "overlays/actors/ovl_En_Dnt_Nomal/z_en_dnt_nomal.h"
#include "vt.h"

#define FLAGS 0x00000000

#define THIS ((EnDntDemo*)thisx)

void EnDntDemo_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDntDemo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDntDemo_Update(Actor* this, GlobalContext* globalCtx);

void EnDntDemo_Judge(EnDntDemo* this, GlobalContext* globalCtx);
void EnDntDemo_Results(EnDntDemo* this, GlobalContext* globalCtx);
void EnDntDemo_Prize(EnDntDemo* this, GlobalContext* globalCtx);

const ActorInit En_Dnt_Demo_InitVars = {
    ACTOR_EN_DNT_DEMO,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnDntDemo),
    (ActorFunc)EnDntDemo_Init,
    (ActorFunc)EnDntDemo_Destroy,
    (ActorFunc)EnDntDemo_Update,
    NULL,
};

static s16 sResultTable[8][7] = {
    { 0, 1, 0, 1, 2, 0, 1 },
    { 1, 0, 1, 0, 1, 1, 2 },
    { 2, 1, 1, 1, 0, 0, 0 },
    { 1, 2, 1, 1, 1, 1, 0 },
    { 0, 0, 2, 0, 0, 0, 1 },
    { 0, 0, 0, 2, 1, 2, 0 },
    { 1, 1, 1, 1, 1, 1, 1 },
    { 2, 2, 2, 2, 2, 2, 2 },
};

static s16 sResultValues[3][2] = { { 4, 3 }, { 4, 2 }, { 3, 1 }, };

static Vec3f sScrubPos[] = {
    { 3810.0f, -20.0f, 1010.0f }, { 3890.0f, -20.0f, 990.0f }, { 3730.0f, -20.0f, 950.0f },
    { 3840.0f, -20.0f, 930.0f },  { 3910.0f, -20.0f, 870.0f }, { 3780.0f, -20.0f, 860.0f },
    { 3710.0f, -20.0f, 840.0f },  { 3860.0f, -20.0f, 790.0f }, { 3750.0f, -20.0f, 750.0f },
};

void EnDntDemo_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnDntDemo_Init(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    EnDntDemo* this = THIS;
    s32 i;
    s32 pad;

    osSyncPrintf("\n\n");
    // Deku Scrub mask show start
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ デグナッツお面品評会開始 ☆☆☆☆☆ \n" VT_RST);
    for (i = 0; i < 9; i++) {
        this->scrubPos[i] = sScrubPos[i];
        this->scrubs[i] =
            (EnDntNomal*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_DNT_NOMAL,
                                            this->scrubPos[i].x, this->scrubPos[i].y, this->scrubPos[i].z, 0, 0, 0, i + 1);
        if (this->scrubs[i] != NULL) {
            // zako zako [small fries]
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ ザコザコ ☆☆☆☆☆ %x\n" VT_RST, this->scrubs[i]);
        }
    }

    this->leaderPos.x = 4050.0f;
    this->leaderPos.y = -20.0f;
    this->leaderPos.z = 1000.0f;
    this->leader = (EnDntJiji*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_DNT_JIJI,
                                                   this->leaderPos.x, this->leaderPos.y, this->leaderPos.z, 0, 0, 0, 0);
    if (this->leader != NULL) {
        // jiji jiji jiji jiji jiji [onomatopoeia for the scrub sound?]
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ じじじじじじじじじじい ☆☆☆☆☆ %x\n" VT_RST, this->leader);
    }
    this->subCamera = 0;
    this->actor.flags &= ~1;
    this->actionFunc = EnDntDemo_Judge;
}

void EnDntDemo_Judge(EnDntDemo* this, GlobalContext* globalCtx) {
    s16 delay;
    s16 reaction;
    s16 rand9;
    s16 maskIdx;
    s16 resultIdx;
    u8 ignore;
    s32 i;

    if (this->unk_158 != 0) {
        for (i = 0; i < 9; i++) {
            this->scrubs[i]->demoSignal = this->unk_158;
            this->scrubs[i]->demoAction = this->action;
            this->scrubs[i]->demoPrize = 0;
        }
        if (this->leader->isSolid) {
            this->leader->unk_24E = 2;
        }
        this->unk_158 = 0;
        this->actionFunc = EnDntDemo_Results;
    } else if ((this->actor.xzDistFromLink > 30.0f) || (Player_GetMask(globalCtx) == 0)) {
        this->debugArrowTimer++;
        if (this->subCamera != 0) {
            this->subCamera = 0;
        }
        if (this->judgeTimer != 0) {
            for (i = 0; i < 9; i++) {
                this->scrubs[i]->demoSignal = 4;
            }
            this->judgeTimer = 0;
        }
    } else {
        if ((Player_GetMask(globalCtx) != 0) && (this->subCamera == 0)) {
            this->subCamera = func_800800F8(globalCtx, 0x8AC, -0x63, &this->scrubs[3]->actor, 0);
        }
        this->debugArrowTimer = 0;
        if (this->judgeTimer == 40) {
            for (i = 0; i < 9; i++) {
                this->scrubs[i]->demoSignal = 1;
            }
        }
        if (this->judgeTimer > 40) {
            // gera gera [onomatopoeia for loud giggling]
            osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ げらげら ☆☆☆☆☆ \n" VT_RST);
            func_800F436C(&this->actor.projectedPos, NA_SE_EV_CROWD - SFX_FLAG, 2.0f);
        }
        if (this->judgeTimer < 120) {
            this->judgeTimer++;
        } else {
            ignore = false;
            reaction = 0;
            delay = 0;
            switch (Player_GetMask(globalCtx)) {
                case PLAYER_MASK_SKULL:
                    if (!(gSaveContext.itemGetInf[1] & 0x4000)) {
                        reaction = 2;
                        this->prize = 2;
                        Audio_SetBGM(0x3E);
                        break;
                    }
                case PLAYER_MASK_TRUTH:
                    if (!(gSaveContext.itemGetInf[1] & 0x8000) && (Player_GetMask(globalCtx) != PLAYER_MASK_SKULL)) {
                        Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                               &D_801333E8);
                        this->prize = 1;
                        this->leader->unk_24E = 1;
                        reaction = 1;
                        if (this->subCamera != 0) {
                            this->subCamera = 0;
                            reaction = 1;
                            func_800800F8(globalCtx, 0x924, -0x63, &this->leader->actor, 0);
                        }
                        break;
                    }
                case PLAYER_MASK_KEATON:
                case PLAYER_MASK_SPOOKY:
                case PLAYER_MASK_BUNNY:
                case PLAYER_MASK_GORON:
                case PLAYER_MASK_ZORA:
                case PLAYER_MASK_GERUDO:
                    rand9 = Rand_ZeroFloat(8.99f);
                    maskIdx = Player_GetMask(globalCtx);
                    maskIdx--;
                    if (rand9 == 8) {
                        ignore = true;
                        delay = 8;
                        reaction = 4;
                        // Special!
                        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 特別！ ☆☆☆☆☆ \n" VT_RST);
                    } else {
                        if (maskIdx >= PLAYER_MASK_MAX - 1) {
                            // This is dangerous!
                            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ ヤバいよこれ！ ☆☆☆☆☆ \n" VT_RST);
                            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ ヤバいよこれ！ ☆☆☆☆☆ \n" VT_RST);
                            osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆☆☆ ヤバいよこれ！ ☆☆☆☆☆ \n" VT_RST);
                            osSyncPrintf(VT_FGCOL(CYAN) "☆☆☆☆☆ ヤバいよこれ！ ☆☆☆☆☆ \n" VT_RST);
                            maskIdx = Rand_ZeroFloat(7.99f);
                        }

                        resultIdx = sResultTable[rand9][maskIdx];
                        reaction = sResultValues[resultIdx][0];
                        this->action = sResultValues[resultIdx][1];
                        switch (this->action) {
                            case 3:
                                Audio_SetBGM(0x2D);
                                break;
                            case 2:
                                if (this->subCamera != 0) {
                                    this->subCamera = 0;
                                    func_800800F8(globalCtx, 0x92E, -0x63, &this->scrubs[3]->actor, 0);
                                }
                                Audio_SetBGM(0x81A);
                                break;
                            case 1:
                                Audio_SetBGM(0x55);
                                break;
                        }
                        osSyncPrintf("\n\n");
                        // Each index 1
                        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 各インデックス１ ☆☆☆☆☆ %d\n" VT_RST, rand9);
                        // Each index 2
                        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 各インデックス２ ☆☆☆☆☆ %d\n" VT_RST, maskIdx);
                        // Each index 3
                        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 各インデックス３ ☆☆☆☆☆ %d\n" VT_RST, resultIdx);
                        osSyncPrintf("\n");
                        // What kind of evaluation?
                        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ どういう評価？  ☆☆☆☆☆☆ %d\n" VT_RST, reaction);
                        // What kind of action?
                        osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆☆☆ どういうアクション？  ☆☆☆ %d\n" VT_RST, this->action);
                        osSyncPrintf("\n\n");
                        break;
                    }
            }
            if (reaction != 0) {
                for (i = 0; i < 9; i++) {
                    if (delay != 0) {
                        this->scrubs[i]->timer3 = delay * i;
                    }
                    this->scrubs[i]->demoAction = this->action;
                    this->scrubs[i]->demoSignal = reaction;
                    this->scrubs[i]->ignore = ignore;
                    if (this->prize != 0) {
                        this->scrubs[i]->timer1 = 300;
                        this->scrubs[i]->demoPrize = this->prize;
                        this->scrubs[i]->unk_288 = this->leader->actor.posRot.pos;
                        if (this->prize == 1) {
                            this->leader->unk_24E = 1;
                        }
                        if (this->prize == 2) {
                            this->leader->unk_240 = 300;
                        }
                    }
                }
                this->actionFunc = EnDntDemo_Results;
            }
        }
    }
}

void EnDntDemo_Results(EnDntDemo* this, GlobalContext* globalCtx) {
    s32 i;

    if (this->unk_158 != 0) {
        for (i = 0; i < 9; i++) {
            this->scrubs[i]->demoAction = this->action;
            this->scrubs[i]->demoSignal = this->unk_158;
            this->scrubs[i]->demoPrize = 0;
        }
        if (this->leader->unk_23E == 1) {
            this->leader->unk_24E = 2;
        } else if (this->leader->unk_25A) {
            this->leader->unk_24E = 3;
        } else {
            this->leader->unk_23E = 3;
        }
        this->leader->unk_240 = 0;
        this->unk_158 = this->action = 0;
        this->actionFunc = EnDntDemo_Prize;
    } else if (this->prize == 2) {
        for (i = 0; i < 9; i++) {
            s16 phi_s1 = -this->leader->actor.shape.rot.y;
            Vec3f sp64 = this->leader->actor.posRot.pos;
            f32 temp_f20;

            if (!(i & 1)) {
                phi_s1 -= 0x59D8;
            }
            temp_f20 = ((i + 1) * 20.0f) + 20.0f;
            this->scrubs[i]->timer2 = 10;
            this->scrubs[i]->unk_288.x = sp64.x + Math_SinS(phi_s1) * temp_f20;
            this->scrubs[i]->unk_288.y = sp64.y;
            this->scrubs[i]->unk_288.z = sp64.z + Math_CosS(phi_s1) * temp_f20;
        }
    }
}

void EnDntDemo_Prize(EnDntDemo* this, GlobalContext* globalCtx) {
    s32 i;

    if (this->unk_158 != 0) {
        for (i = 0; i < 9; i++) {
            this->scrubs[i]->demoAction = this->action;
            this->scrubs[i]->demoSignal = this->unk_158;
            this->scrubs[i]->demoPrize = 0;
        }
        this->unk_158 = this->action = 0;
    }
}

void EnDntDemo_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnDntDemo* this = THIS;

    if (this->unkTimer2 != 0) {
        this->unkTimer2--;
    }
    if (this->unkTimer1 != 0) {
        this->unkTimer1--;
    }
    this->actionFunc(this, globalCtx);
    if (BREG(0)) {
        if (this->debugArrowTimer != 0) {
            if (!(this->debugArrowTimer & 1)) {
                DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                                       this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z,
                                       1.0f, 1.0f, 1.0f, 120, 120, 0, 255, 4, globalCtx->state.gfxCtx);
            }
        } else {
            DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                                   this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z, 1.0f,
                                   1.0f, 1.0f, 255, 255, 255, 255, 4, globalCtx->state.gfxCtx);
        }
    }
}
