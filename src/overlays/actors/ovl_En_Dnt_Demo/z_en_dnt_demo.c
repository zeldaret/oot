#include "z_en_dnt_demo.h"

#include "overlays/actors/ovl_En_Dnt_Jiji/z_en_dnt_jiji.h"
#include "overlays/actors/ovl_En_Dnt_Nomal/z_en_dnt_nomal.h"

#define FLAGS 0x00000000

#define THIS ((EnDntDemo*)thisx)

void EnDntDemo_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDntDemo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDntDemo_Update(Actor* this, GlobalContext* globalCtx);

void func_809F0AA4(EnDntDemo* this, GlobalContext* globalCtx);
void func_809F1100(EnDntDemo* this, GlobalContext* globalCtx);
void func_809F1374(EnDntDemo* this, GlobalContext* globalCtx);

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

s16 D_809F15C0[8][7] = {
    { 0, 1, 0, 1, 2, 0, 1 }, { 1, 0, 1, 0, 1, 1, 2 }, { 2, 1, 1, 1, 0, 0, 0 }, { 1, 2, 1, 1, 1, 1, 0 },
    { 0, 0, 2, 0, 0, 0, 1 }, { 0, 0, 0, 2, 1, 2, 0 }, { 1, 1, 1, 1, 1, 1, 1 }, { 2, 2, 2, 2, 2, 2, 2 },
};

s16 D_809F1630[3][2] = { { 4, 3 }, { 4, 2 }, { 3, 1 } };

static Vec3f D_809F163C[] = {
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
    osSyncPrintf("\x1b[32m☆☆☆☆☆ デグナッツお面品評会開始 ☆☆☆☆☆ \n\x1b[m");
    for (i = 0; i < 9; i++) {
        this->unk_160[i] = D_809F163C[i];
        this->unk_1D8[i] =
            (EnDntNomal*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_DNT_NOMAL,
                                            this->unk_160[i].x, this->unk_160[i].y, this->unk_160[i].z, 0, 0, 0, i + 1);
        if (this->unk_1D8[i] != NULL) {
            // zako zako [small fries]
            osSyncPrintf("\x1b[32m☆☆☆☆☆ ザコザコ ☆☆☆☆☆ %x\n\x1b[m", this->unk_1D8[i]);
        }
    }

    this->unk_1CC.x = 4050.0f;
    this->unk_1CC.y = -20.0f;
    this->unk_1CC.z = 1000.0f;
    this->unk_1FC = (EnDntJiji*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_DNT_JIJI,
                                                   this->unk_1CC.x, this->unk_1CC.y, this->unk_1CC.z, 0, 0, 0, 0);
    if (this->unk_1FC != NULL) {
        // jiji jiji jiji jiji jiji [onomatopoeia for the scrub sound?]
        osSyncPrintf("\x1b[32m☆☆☆☆☆ じじじじじじじじじじい ☆☆☆☆☆ %x\n\x1b[m", this->unk_1FC);
    }
    this->unk_15E = 0;
    this->actor.flags &= ~1;
    this->actionFunc = func_809F0AA4;
}

void func_809F0AA4(EnDntDemo* this, GlobalContext* globalCtx) {
    s16 sp3E;
    s16 sp3C;
    s16 sp3A;
    s16 sp38;
    s16 sp36;
    u8 sp35;
    s32 i;

    if (this->unk_158 != 0) {
        for (i = 0; i < 9; i++) {
            this->unk_1D8[i]->unk_270 = this->unk_158;
            this->unk_1D8[i]->unk_274 = this->unk_15A;
            this->unk_1D8[i]->unk_278 = 0;
        }
        if (this->unk_1FC->unk_23C != 0) {
            this->unk_1FC->unk_24E = 2;
        }
        this->unk_158 = 0;
        this->actionFunc = func_809F1100;
    } else if ((this->actor.xzDistFromLink > 30.0f) || (Player_GetMask(globalCtx) == 0)) {
        this->unk_156++;
        if (this->unk_15E != 0) {
            this->unk_15E = 0;
        }
        if (this->unk_150 != 0) {
            for (i = 0; i < 9; i++) {
                this->unk_1D8[i]->unk_270 = 4;
            }
            this->unk_150 = 0;
        }
    } else {
        if ((Player_GetMask(globalCtx) != 0) && (this->unk_15E == 0)) {
            this->unk_15E = func_800800F8(globalCtx, 0x8AC, -0x63, &this->unk_1D8[3]->actor, 0);
        }
        this->unk_156 = 0;
        if (this->unk_150 == 40) {
            for (i = 0; i < 9; i++) {
                this->unk_1D8[i]->unk_270 = 1;
            }
        }
        if (this->unk_150 > 40) {
            // gera gera [onomatopoeia for loud giggling]
            osSyncPrintf("\x1b[31m☆☆☆☆☆ げらげら ☆☆☆☆☆ \n\x1b[m");
            func_800F436C(&this->actor.projectedPos, 0x205D, 2.0f);
        }
        if (this->unk_150 < 0x78) {
            this->unk_150++;
        } else {
            sp35 = 0;
            sp3C = 0;
            sp3E = 0;
            switch (Player_GetMask(globalCtx)) {
                case PLAYER_MASK_SKULL:
                    if (!(gSaveContext.itemGetInf[1] & 0x4000)) {
                        sp3C = 2;
                        this->unk_15C = 2;
                        Audio_SetBGM(0x3E);
                        break;
                    }
                case PLAYER_MASK_TRUTH:
                    if (!(gSaveContext.itemGetInf[1] & 0x8000) && (Player_GetMask(globalCtx) != 2)) {
                        Audio_PlaySoundGeneral(0x4807, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                        this->unk_15C = 1;
                        this->unk_1FC->unk_24E = 1;
                        sp3C = 1;
                        if (this->unk_15E != 0) {
                            this->unk_15E = 0;
                            sp3C = 1;
                            func_800800F8(globalCtx, 0x924, -0x63, &this->unk_1FC->actor, 0);
                        }
                        break;
                    }
                case PLAYER_MASK_KEATON:
                case PLAYER_MASK_SPOOKY:
                case PLAYER_MASK_BUNNY:
                case PLAYER_MASK_GORON:
                case PLAYER_MASK_ZORA:
                case PLAYER_MASK_GERUDO:
                    sp3A = Math_Rand_ZeroFloat(8.99f);
                    sp38 = Player_GetMask(globalCtx);
                    sp38--;
                    if (sp3A == 8) {
                        sp35 = 1;
                        sp3E = 8;
                        sp3C = 4;
                        // Special!
                        osSyncPrintf("\x1b[32m☆☆☆☆☆ 特別！ ☆☆☆☆☆ \n\x1b[m");
                    } else {
                        if (sp38 >= PLAYER_MASK_MAX - 1) {
                            // This is dangerous!
                            osSyncPrintf("\x1b[32m☆☆☆☆☆ ヤバいよこれ！ ☆☆☆☆☆ \n\x1b[m");
                            osSyncPrintf("\x1b[33m☆☆☆☆☆ ヤバいよこれ！ ☆☆☆☆☆ \n\x1b[m");
                            osSyncPrintf("\x1b[35m☆☆☆☆☆ ヤバいよこれ！ ☆☆☆☆☆ \n\x1b[m");
                            osSyncPrintf("\x1b[36m☆☆☆☆☆ ヤバいよこれ！ ☆☆☆☆☆ \n\x1b[m");
                            sp38 = Math_Rand_ZeroFloat(7.99f);
                        }

                        sp36 = D_809F15C0[sp3A][sp38];
                        sp3C = D_809F1630[sp36][0];
                        this->unk_15A = D_809F1630[sp36][1];
                        switch (this->unk_15A) {
                            case 3:
                                Audio_SetBGM(0x2D);
                                break;
                            case 2:
                                if (this->unk_15E != 0) {
                                    this->unk_15E = 0;
                                    func_800800F8(globalCtx, 0x92E, -0x63, &this->unk_1D8[3]->actor, 0);
                                }
                                Audio_SetBGM(0x81A);
                                break;
                            case 1:
                                Audio_SetBGM(0x55);
                                break;
                        }
                        osSyncPrintf("\n\n");
                        // Each index 1
                        osSyncPrintf("\x1b[32m☆☆☆☆☆ 各インデックス１ ☆☆☆☆☆ %d\n\x1b[m", sp3A);
                        // Each index 2
                        osSyncPrintf("\x1b[32m☆☆☆☆☆ 各インデックス２ ☆☆☆☆☆ %d\n\x1b[m", sp38);
                        // Each index 3
                        osSyncPrintf("\x1b[32m☆☆☆☆☆ 各インデックス３ ☆☆☆☆☆ %d\n\x1b[m", sp36);
                        osSyncPrintf("\n");
                        // What kind of evaluation?
                        osSyncPrintf("\x1b[33m☆☆☆☆☆ どういう評価？  ☆☆☆☆☆☆ %d\n\x1b[m", sp3C);
                        // What kind of action?
                        osSyncPrintf("\x1b[35m☆☆☆☆☆ どういうアクション？  ☆☆☆ %d\n\x1b[m", this->unk_15A);
                        osSyncPrintf("\n\n");
                        break;
                    }
            }
            if (sp3C != 0) {
                for (i = 0; i < 9; i++) {
                    if (sp3E != 0) {
                        this->unk_1D8[i]->unk_264 = sp3E * i;
                    }
                    this->unk_1D8[i]->unk_274 = this->unk_15A;
                    this->unk_1D8[i]->unk_270 = sp3C;
                    this->unk_1D8[i]->unk_276 = sp35;
                    if (this->unk_15C != 0) {
                        this->unk_1D8[i]->unk_258 = 0x12C;
                        this->unk_1D8[i]->unk_278 = this->unk_15C;
                        this->unk_1D8[i]->unk_288 = this->unk_1FC->actor.posRot.pos;
                        if (this->unk_15C == 1) {
                            this->unk_1FC->unk_24E = 1;
                        }
                        if (this->unk_15C == 2) {
                            this->unk_1FC->unk_240 = 0x12C;
                        }
                    }
                }
                this->actionFunc = func_809F1100;
            }
        }
    }
}

void func_809F1100(EnDntDemo* this, GlobalContext* globalCtx) {
    s32 i;

    if (this->unk_158 != 0) {
        for (i = 0; i < 9; i++) {
            this->unk_1D8[i]->unk_274 = this->unk_15A;
            this->unk_1D8[i]->unk_270 = this->unk_158;
            this->unk_1D8[i]->unk_278 = 0;
        }
        if (this->unk_1FC->unk_23E == 1) {
            this->unk_1FC->unk_24E = 2;
        } else if (this->unk_1FC->unk_25A) {
            this->unk_1FC->unk_24E = 3;
        } else {
            this->unk_1FC->unk_23E = 3;
        }
        this->unk_1FC->unk_240 = 0;
        this->unk_158 = this->unk_15A = 0;
        this->actionFunc = func_809F1374;
    } else if (this->unk_15C == 2) {
        for (i = 0; i < 9; i++) {
            s16 phi_s1 = -this->unk_1FC->actor.shape.rot.y;
            Vec3f sp64 = this->unk_1FC->actor.posRot.pos;
            f32 temp_f20;

            if (!(i & 1)) {
                phi_s1 -= 0x59D8;
            }
            temp_f20 = ((i + 1) * 20.0f) + 20.0f;
            this->unk_1D8[i]->unk_25A = 10;
            this->unk_1D8[i]->unk_288.x = sp64.x + Math_Sins(phi_s1) * temp_f20;
            this->unk_1D8[i]->unk_288.y = sp64.y;
            this->unk_1D8[i]->unk_288.z = sp64.z + Math_Coss(phi_s1) * temp_f20;
        }
    }
}

void func_809F1374(EnDntDemo* this, GlobalContext* globalCtx) {
    s32 i;

    if (this->unk_158 != 0) {
        for (i = 0; i < 9; i++) {
            this->unk_1D8[i]->unk_274 = this->unk_15A;
            this->unk_1D8[i]->unk_270 = this->unk_158;
            this->unk_1D8[i]->unk_278 = 0;
        }
        this->unk_158 = this->unk_15A = 0;
    }
}

void EnDntDemo_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnDntDemo* this = THIS;

    if (this->unk_154 != 0) {
        this->unk_154--;
    }
    if (this->unk_152 != 0) {
        this->unk_152--;
    }
    this->actionFunc(this, globalCtx);
    if (BREG(0)) {
        if (this->unk_156 != 0) {
            if (!(this->unk_156 & 1)) {
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
