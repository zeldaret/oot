#include "z_efc_erupc.h"

#define FLAGS 0x00000030

#define THIS ((EfcErupc*)thisx)

void EfcErupc_Init(Actor* thisx, GlobalContext* globalCtx);
void EfcErupc_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EfcErupc_Update(Actor* thisx, GlobalContext* globalCtx);
void EfcErupc_Draw(Actor* thisx, GlobalContext* globalCtx);


void func_8099CD2C(EfcErupc* this, GlobalContext* globalCtx);
void func_8099D334(Unk_3C* arg0, GlobalContext* globalCtx);
void func_8099D650(Unk_3C* arg0, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, f32 arg4);
s16 func_8099D71C(Unk_3C* arg0);

extern Gfx D_06001720[];
extern Gfx D_06002570[];
extern UNK_TYPE D_06002760;
extern UNK_TYPE D_060027D8;

/*
const ActorInit Efc_Erupc_InitVars = {
    ACTOR_EFC_ERUPC,
    ACTORCAT_ITEMACTION,
    FLAGS,
    OBJECT_EFC_ERUPC,
    sizeof(EfcErupc),
    (ActorFunc)EfcErupc_Init,
    (ActorFunc)EfcErupc_Destroy,
    (ActorFunc)EfcErupc_Update,
    (ActorFunc)EfcErupc_Draw,
};
*/

void func_8099CCB0(EfcErupc* this, EfcErupcActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EfcErupc_Init(Actor* thisx, GlobalContext* globalCtx) {
    EfcErupc* this = THIS;

    func_8099CCB0(this, &func_8099CD2C);
    Actor_SetScale(thisx, 1.0f);
    func_8099D71C(this->unk_158);
    this->unk14C = this->unk14E = this->unk150 = 0;
    this->unk152 = 5;
    this->unk154 = -100;
}

void EfcErupc_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void func_8099CD2C(EfcErupc* this, GlobalContext* globalCtx) {
    Vec3f sp74;
    Vec3f sp68;
    Vec3f sp5C;
    s32 i;

    if (globalCtx->csCtx.state != 0) {
        if (globalCtx->csCtx.npcActions[1] != NULL) {
            if (globalCtx->csCtx.npcActions[1]->action == 2) {
                if (this->unk150 == 0x1E) {
                    func_800788CC(NA_SE_IT_EARTHQUAKE);
                }
                if (this->unk150 <= 64) {
                    if (this->unk154 < 200) {
                        this->unk154 += 10;
                    }
                }
                else {
                    if (this->unk154 > -100) {
                        this->unk154 -= 10;
                    }
                }
                this->unk150++;
            }
            else {
                if (this->unk154 > -100) {
                    this->unk154 -= 10;
                }
            }
        }
    }
    if (globalCtx->csCtx.state != 0) {
        if (globalCtx->csCtx.npcActions[2] != NULL) {
            switch (globalCtx->csCtx.npcActions[2]->action)
            {
            case 2:
                if (this->unk14E == 0) {
                    func_800F3F3C(6);
                    gSaveContext.eventChkInf[2] |= 0x8000;
                }
                this->unk14E++;
                break;
            case 3:
                this->unk14E = 0x1E;
            }
            this->unk14C++;
        }
    }
    sp5C.z = 0.0f;
    sp5C.x = 0.0f;
    sp74.y = this->actor.world.pos.y + 300.0f;
    for (i = 0; i < this->unk152; i++)
    {
        sp74.x = Rand_CenteredFloat(100.0f) + this->actor.world.pos.x;
        sp74.z = Rand_CenteredFloat(100.0f) + this->actor.world.pos.z;
        sp68.x = Rand_CenteredFloat(100.0f);
        sp68.y = Rand_ZeroFloat(100.0f);
        sp68.z = Rand_CenteredFloat(100.0f);
        sp5C.y = this->unk154 * 0.1f;
        func_8099D650(this->unk_158, &sp74, &sp68, &sp5C, 80.0f);
    }
}

void func_8099D52C(EfcErupc* this, GlobalContext* globalCtx);
void EfcErupc_Update(Actor* thisx, GlobalContext* globalCtx) {
    EfcErupc* this = THIS;

    this->actionFunc(this, globalCtx);
    func_8099D52C(this, globalCtx);
}

void EfcErupc_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EfcErupc* this = THIS;
    u16 temp_v0_8;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_efc_erupc.c", 282);

    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(POLY_XLU_DISP++, 0x08, 
        Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, this->unk14C * 1, this->unk14E * -4, 32, 64, 1, this->unk14C * 4, this->unk14E * -20, 64, 64)
        );

    gSPSegment(POLY_XLU_DISP++, 0x09,
        Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0U, this->unk150 * -4, 16, 128, 1, 0, this->unk150 * 12, 32, 32)
    );

    gSPSegment(POLY_XLU_DISP++, 0x0A,
        Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0U, this->unk150 * -4, 16, 128, 1, 0, this->unk150 * 12, 32, 32)
    );

    Matrix_Push();
    Matrix_Scale(0.8f, 0.8f, 0.8f, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++,
        Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_efc_erupc.c", 321),
        G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    if (globalCtx->csCtx.state != 0) {
        if ((globalCtx->csCtx.npcActions[1] != 0) && (globalCtx->csCtx.npcActions[1]->action == 2)) {
            gSPDisplayList(POLY_XLU_DISP++, D_06002570);
        }
    }
    Matrix_Pop();
    Matrix_Scale(3.4f, 3.4f, 3.4f, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++,
        Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_efc_erupc.c", 333),
        G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    if (globalCtx->csCtx.state != 0) {
        CsCmdActorAction* temp_v1_4 = globalCtx->csCtx.npcActions[2];
        if (temp_v1_4 != 0) {
            temp_v0_8 = temp_v1_4->action;
            if ((temp_v0_8 == 2) || (temp_v0_8 == 3)) {
                gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 0xFF, 0xFF, 0xC8, 0xFF);
                gDPSetEnvColor(POLY_XLU_DISP++, 0x64, 0x00, 0x00, 0xFF);
                gSPDisplayList(POLY_XLU_DISP++, D_06001720);
            }
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_efc_erupc.c", 356);
    func_8099D334(this->unk_158, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Efc_Erupc/func_8099D334.s")


extern Unk_0C_1 D_8099D77C;

void func_8099D52C(EfcErupc* this, GlobalContext* globalCtx) {
    s16 phi_v1;
    s16 temp_a0;
    Unk_0C_1 sp8 = D_8099D77C;
    Unk_03_1* temp_a1;
    Unk_3C* phi_v0 = this->unk_158;

    for (phi_v1 = 0; phi_v1 < 100; phi_v1++, phi_v0++) {
        if (phi_v0->unk_24 != 0) {
            phi_v0->unk_00.x += phi_v0->unk_0C.x;
            phi_v0->unk_00.y += phi_v0->unk_0C.y;
            phi_v0->unk_00.z += phi_v0->unk_0C.z;
            phi_v0->unk_0C.x += phi_v0->unk_18.x;
            phi_v0->unk_0C.y += phi_v0->unk_18.y;
            phi_v0->unk_0C.z += phi_v0->unk_18.z;
            phi_v0->unk_25 += 1;
            temp_a0 = phi_v0->unk_25 % 4;
            temp_a1 = &sp8.unk0[temp_a0];
            phi_v0->unk_26 = temp_a1->unk0;
            phi_v0->unk_27 = temp_a1->unk1;
            phi_v0->unk_28 = temp_a1->unk2;
            phi_v0->unk_2A -= 0x14;
            if (phi_v0->unk_2A <= 0) {
                phi_v0->unk_2A = 0;
                phi_v0->unk_24 = 0;
            }
        }
    }
}
#ifdef NON_MATCHING
void func_8099D650(Unk_3C* arg0, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, f32 arg4) {
    s16 i; //v0

    for (i = 0; i < 100; i++, arg0++) {
        if (arg0->unk_24 == 0) {
            arg0->unk_24 = 1;
            arg0->unk_00 = *arg1;
            arg0->unk_0C = *arg2;
            arg0->unk_18 = *arg3;
            arg0->unk_30 = arg4 / 1000.0f;
            arg0->unk_2A = 0xFF;
            arg0->unk_25 = Rand_ZeroFloat(10);
            return;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Efc_Erupc/func_8099D650.s")
#endif

s16 func_8099D71C(Unk_3C* arg0) {
    s16 i;
    for (i = 0; i < 100; i++, arg0++)
    {
        arg0->unk_24 = 0;
    }
}
