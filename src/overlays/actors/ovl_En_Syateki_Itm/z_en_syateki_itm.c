#include "z_en_syateki_itm.h"
#include "vt.h"
#include "overlays/actors/ovl_En_Syateki_Man/z_en_syateki_man.h"
#include "overlays/actors/ovl_En_Ex_Ruppy/z_en_ex_ruppy.h"
#include "overlays/actors/ovl_En_G_Switch/z_en_g_switch.h"

#define FLAGS 0x00000010

#define THIS ((EnSyatekiItm*)thisx)

void EnSyatekiItm_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSyatekiItm_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSyatekiItm_Update(Actor* thisx, GlobalContext* globalCtx);

void func_80B0F838(EnSyatekiItm* this, GlobalContext* globalCtx);
void func_80B0F944(EnSyatekiItm* this, GlobalContext* globalCtx);
void func_80B0FABC(EnSyatekiItm* this, GlobalContext* globalCtx);
void func_80B0FF44(EnSyatekiItm* this, GlobalContext* globalCtx);
void func_80B0FFE8(EnSyatekiItm* this, GlobalContext* globalCtx);
void func_80B10070(EnSyatekiItm* this, GlobalContext* globalCtx);

const ActorInit En_Syateki_Itm_InitVars = {
    ACTOR_EN_SYATEKI_ITM,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnSyatekiItm),
    (ActorFunc)EnSyatekiItm_Init,
    (ActorFunc)EnSyatekiItm_Destroy,
    (ActorFunc)EnSyatekiItm_Update,
    NULL,
};

Vec3f D_80B10240 = { 0.0f, -10.0f, -270.0f };
Vec3f D_80B1024C = { -220.0f, 66.0f, -320.0f };
Vec3f D_80B10258 = { 260.0f, 66.0f, -320.0f };
Vec3f D_80B10264 = { 0.0f, -10.0f, -270.0f };
Vec3f D_80B10270 = { -220.0f, 66.0f, -320.0f };
Vec3f D_80B1027C = { 260.0f, 66.0f, -320.0f };
Vec3f D_80B10288 = { 260.0f, 100.0f, -320.0f };
Vec3f D_80B10294 = { 360.0f, 100.0f, -320.0f };
Vec3f D_80B102A0 = { -230.0f, 94.0f, -360.0f };
Vec3f D_80B102AC = { -400.0f, 94.0f, -360.0f };
Vec3f D_80B102B8 = { 0.0f, 53.0f, -270.0f };
Vec3f D_80B102C4 = { -60.0f, 63.0f, -320.0f };
Vec3f D_80B102D0 = { 60.0f, 63.0f, -320.0f };
Vec3f D_80B102DC = { 0.0f, 0.0f, 0.0f };
Vec3f D_80B102E8 = { -60.0f, 63.0f, -320.0f };
Vec3f D_80B102F4 = { 60.0f, 63.0f, -320.0f };
Vec3f D_80B10300 = { -230.0f, 0.0f, 0.0f };
Vec3f D_80B1030C = { -230.0f, 0.0f, 0.0f };
Vec3f D_80B10318 = { 260.0f, 0.0f, 0.0f };
Vec3f D_80B10324 = { 260.0f, 0.0f, 0.0f };
s16 D_80B10330[] = { 0, 1, 0, 1, 2, 2 };
static s16 D_80B1033C[] = { 0, 1, 1, 0, 1, 1, 4, 4, 4, 4 };
static Vec3f D_80B10350[] = {
    { -40.0f, 0.0f, -90.0f }, { -20.0f, 0.0f, -90.0f }, { 0.0f, 0.0f, -90.0f },   { 20.0f, 0.0f, -90.0f },
    { 40.0f, 0.0f, -90.0f },  { -40.0f, 0.0f, -60.0f }, { -20.0f, 0.0f, -60.0f }, { 0.0f, 0.0f, -60.0f },
    { 20.0f, 0.0f, -60.0f },  { 40.0f, 0.0f, -60.0f },
};

void EnSyatekiItm_Init(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    EnSyatekiItm* this = THIS;
    s32 i;

    this->man = (EnSyatekiMan*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_SYATEKI_MAN,
                                                  140.0f, 0.0f, 255.0f, 0, -0x4000, 0, 0);
    if (this->man == NULL) {
        // Spawn error
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ エラー原 ☆☆☆☆ \n" VT_RST);
        Actor_Kill(&this->actor);
        return;
    }
    for (i = 0; i < 10; i++) {
        this->rupees[i] = (EnExRuppy*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, 0x131,
                                                         D_80B10350[i].x, D_80B10350[i].y, D_80B10350[i].z, 0, 0, 0, 4);
        if (this->rupees[i] == NULL) {
            // Second spawn error
            osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ エラー原セカンド ☆☆☆☆ \n" VT_RST);
            Actor_Kill(&this->actor);
            return;
        }
        this->rupees[i]->unk_150 = D_80B1033C[i];
    }
    this->actionFunc = func_80B0F838;
}

void EnSyatekiItm_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void func_80B0F838(EnSyatekiItm* this, GlobalContext* globalCtx) {
    s32 i;
    Player* player = PLAYER;

    if (this->unk_154 == 1) {
        player->actor.posRot.pos.x = -12.0f;
        player->actor.posRot.pos.y = 20.0f;
        player->actor.posRot.pos.z = 182.0f;
        player->currentYaw = player->actor.posRot.rot.y = player->actor.shape.rot.y = 0x7F03;
        player->actor.posRot.rot.x = player->actor.shape.rot.x = player->actor.posRot.rot.z =
            player->actor.shape.rot.z = 0;
        func_8008EF44(globalCtx, 15);
        this->unk_158 = this->unk_156 = 0;
        for (i = 0; i < 6; i++) {
            this->unk_15A[i] = 0;
        }
        for (i = 0; i < 10; i++) {
            this->rupees[i]->unk_15C = 0;
        }
        this->actionFunc = func_80B0F944;
    }
}

#ifdef NON_MATCHING
// weirdness in the first block loops
void func_80B0F944(EnSyatekiItm* this, GlobalContext* globalCtx) {
    s32 temp_f4;
    s32 i;
    s32 j;
    Player* player = PLAYER;

    if (this->unk_152 == 0) {
        if (gSaveContext.linkAge == 0) {
            for (i = 0, j = 0; i < 6; i++) {
                if (this->unk_15A[i] != 0) {
                    j++;
                }
            }
            if (j >= 6) {
                player->actor.freezeTimer = 10;
                this->unk_154 = 2;
                this->actionFunc = func_80B0FFE8;
                return;
            }
            temp_f4 = Math_Rand_ZeroFloat(5.99f);
            while (this->unk_15A[temp_f4] != 0) {
                temp_f4 = Math_Rand_ZeroFloat(5.99f);
            }
            this->unk_158 = temp_f4 + 1;
            this->unk_15A[temp_f4] = 1;
        } else {
            this->unk_158++;
            if (this->unk_158 >= 7) {
                player->actor.freezeTimer = 10;
                this->unk_154 = 2;
                this->actionFunc = func_80B0FFE8;
                return;
            }
        }
        if (this->unk_158 == 1) {
            this->unk_150 = 50;
        } else {
            this->unk_150 = 30;
        }
        func_80078884(NA_SE_SY_FOUND);
        this->actionFunc = func_80B0FABC;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Itm/func_80B0F944.s")
#endif

#ifdef NON_MATCHING
// saved register weirdness
void func_80B0FABC(EnSyatekiItm* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Vec3f sp80 = {0.0f, 0.0f, 0.0f};
    s32 i;
    s32 temp;

    if (globalCtx->unk_11E5C == -1) {
        player->actor.freezeTimer = 10;
        this->unk_154 = 2;
        this->actionFunc = func_80B0FFE8;
    } else if (this->unk_150 == 0) {
        for (i = 0; i < 2; i++) {
            Math_Vec3f_Copy(&this->unk_16C[i], &sp80);
            Math_Vec3f_Copy(&this->unk_184[i], &sp80);
            this->gSwitch[i] = NULL;
        }
        this->unk_16A = 2;
        this->unk_1D0[0] = this->unk_1D0[1] = NULL;
        temp = this->unk_158 - 1;

        switch (temp) {
            case 0:
                Math_Vec3f_Copy(&this->unk_16C[0], &D_80B10240);
                Math_Vec3f_Copy(&this->unk_184[0], &D_80B102B8);
                this->unk_1D0[0] = this->rupees[0];
                this->unk_16A = 1;
                break;
            case 1:
                Math_Vec3f_Copy(&this->unk_16C[0], &D_80B1024C);
                Math_Vec3f_Copy(&this->unk_16C[1], &D_80B10258);
                Math_Vec3f_Copy(&this->unk_184[0], &D_80B102C4);
                Math_Vec3f_Copy(&this->unk_184[1], &D_80B102D0);
                this->unk_1D0[0] = this->rupees[1];
                this->unk_1D0[1] = this->rupees[2];
                break;
            case 2:
                Math_Vec3f_Copy(&this->unk_16C[0], &D_80B10264);
                Math_Vec3f_Copy(&this->unk_184[0], &D_80B102DC);
                this->unk_1D0[0] = this->rupees[3];
                this->unk_16A = 1;
                break;
            case 3:
                Math_Vec3f_Copy(&this->unk_16C[0], &D_80B10270);
                Math_Vec3f_Copy(&this->unk_16C[1], &D_80B1027C);
                Math_Vec3f_Copy(&this->unk_184[0], &D_80B102E8);
                Math_Vec3f_Copy(&this->unk_184[1], &D_80B102F4);
                this->unk_1D0[0] = this->rupees[4];
                this->unk_1D0[1] = this->rupees[5];
                break;
            case 4:
                Math_Vec3f_Copy(&this->unk_16C[0], &D_80B10288);
                Math_Vec3f_Copy(&this->unk_16C[1], &D_80B10294);
                Math_Vec3f_Copy(&this->unk_184[0], &D_80B10300);
                Math_Vec3f_Copy(&this->unk_184[1], &D_80B1030C);
                this->unk_1D0[0] = this->rupees[6];
                this->unk_1D0[1] = this->rupees[7];
                break;
            case 5:
                Math_Vec3f_Copy(&this->unk_16C[0], &D_80B102A0);
                Math_Vec3f_Copy(&this->unk_16C[1], &D_80B102AC);
                Math_Vec3f_Copy(&this->unk_184[0], &D_80B10318);
                Math_Vec3f_Copy(&this->unk_184[1], &D_80B10324);
                this->unk_1D0[0] = this->rupees[8];
                this->unk_1D0[1] = this->rupees[9];
                break;
        }
        for (i = 0; i < this->unk_16A; i++) {
            this->gSwitch[i] = (EnGSwitch*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx,
                                                              ACTOR_EN_G_SWITCH, this->unk_16C[i].x, this->unk_16C[i].y,
                                                              this->unk_16C[i].z, 0, 0, 0, 0x303F);
            if (this->gSwitch[i] == NULL) {
                // Rupee spawn error
                osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ ルピーでエラー原 ☆☆☆☆ \n" VT_RST);
                Actor_Kill(&this->actor);
                return;
            }
            this->gSwitch[i]->unk_160 = i;
            this->gSwitch[i]->colorIdx = D_80B10330[temp];
            Math_Vec3f_Copy(&this->gSwitch[i]->unk_16C, &this->unk_184[i]);
            switch (temp) {
                case 1:
                    if (i == 1) {
                        this->gSwitch[i]->unk_162 = 60;
                    }
                    break;
                case 2:
                    this->gSwitch[i]->actor.velocity.y = 15.0f;
                    this->gSwitch[i]->actor.gravity = -1.0f;
                    this->gSwitch[i]->unk_166 = 2;
                    break;
                case 4:
                    this->gSwitch[i]->actor.velocity.x = -5.0f;
                    this->gSwitch[i]->unk_166 = 4;
                    break;
                case 5:
                    this->gSwitch[i]->actor.velocity.x = 7.0f;
                    this->gSwitch[i]->unk_166 = 4;
                    break;
            }
        }
        this->unk_166[0] = this->unk_166[1] = 0;
        this->actionFunc = func_80B0FF44;
    }
}
#else
Vec3f D_80B103C8 = { 0.0f, 0.0f, 0.0f };
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Itm/func_80B0FABC.s")
#endif

void func_80B0FF44(EnSyatekiItm* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 i;
    s16 j;

    if (globalCtx->unk_11E5C == -1) {
        player->actor.freezeTimer = 10;
        this->unk_154 = 2;
        this->actionFunc = func_80B0FFE8;
    } else {
        for (i = 0, j = 0; i < 2; i++) {
            if (this->unk_166[i] != 0) {
                if (this->unk_166[i] == 2) {
                    this->unk_1D0[i]->unk_15C = 1;
                }
                j++;
            }
        }
        if (j == this->unk_16A) {
            this->actionFunc = func_80B0F944;
        }
    }
}

void func_80B0FFE8(EnSyatekiItm* this, GlobalContext* globalCtx) {
    s32 i;

    for (i = 0; i < 2; i++) {
        if ((this->unk_166[i] == 0) && (this->gSwitch[i] != NULL)) {
            Actor_Kill(&this->gSwitch[i]->actor);
        }
    }
    this->actionFunc = func_80B10070;
}

void func_80B10070(EnSyatekiItm* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    player->actor.freezeTimer = 10;
    if (this->unk_154 == 3) {
        this->unk_154 = 0;
        this->actionFunc = func_80B0F838;
    }
    if (this->unk_154 == 1) {
        // 1 frame attack and defense!
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n" VT_RST);
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n" VT_RST);
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n" VT_RST);
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n" VT_RST);
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n" VT_RST);
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n" VT_RST);
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n" VT_RST);
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n" VT_RST);
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n" VT_RST);
        osSyncPrintf(VT_FGCOL(RED) "☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n" VT_RST);
        this->unk_154 = 0;
        this->actionFunc = func_80B0F838;
    }
}

void EnSyatekiItm_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnSyatekiItm* this = THIS;

    this->actionFunc(this, globalCtx);

    if (this->unk_150 != 0) {
        this->unk_150--;
    }
    if (this->unk_152 != 0) {
        this->unk_152--;
    }
    if (BREG(0)) {
        DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                               this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z, 1.0f, 1.0f,
                               1.0f, 0xFF, 0, 0, 255, 4, globalCtx->state.gfxCtx);
    }
}
