#include "z_bg_spot15_rrbox.h"

#define FLAGS 0x00000000

#define THIS ((BgSpot15Rrbox*)thisx)

void BgSpot15Rrbox_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot15Rrbox_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot15Rrbox_Update(BgSpot15Rrbox* thisx, GlobalContext* globalCtx);
void BgSpot15Rrbox_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_808B3A34(BgSpot15Rrbox* this);
void func_808B44B8(BgSpot15Rrbox* this, GlobalContext* globalCtx);
void func_808B4084(BgSpot15Rrbox* this, GlobalContext* globalCtx);
void func_808B44CC(BgSpot15Rrbox *this, GlobalContext *globalCtx);
void func_808B43D0(BgSpot15Rrbox* this, GlobalContext *globalCtx);
void func_808B40AC(void *arg0, void *arg1);

s16 D_808B4590 = 0;

extern s32 D_06000348;
extern Gfx D_06000180;

const ActorInit Bg_Spot15_Rrbox_InitVars = {
    ACTOR_BG_SPOT15_RRBOX,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT15_OBJ,
    sizeof(BgSpot15Rrbox),
    (ActorFunc)BgSpot15Rrbox_Init,
    (ActorFunc)BgSpot15Rrbox_Destroy,
    (ActorFunc)BgSpot15Rrbox_Update,
    (ActorFunc)BgSpot15Rrbox_Draw,
};

InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

Vec3f D_808B45C4[] = {
    { 770.0f, 1490.0f, -299.0f },
    { 770.0f, 1550.0f, -299.0f },
};

Vec3f D_808B45DC[] = { 
    { 29.99f, 0.01f, -29.99f },
    { -29.99f, 0.01f, -29.99f }, 
    { -29.99f, 0.01f, 29.99f }, 
    { 29.99f, 0.01f, 29.99f }, 
    { 0, 0.01f, 0 }
};

s32 D_808B4618[] = { 0, 0 };

void func_808B3960(BgSpot15Rrbox* this, GlobalContext* globalCtx, s32* arg2, s32 flags) {
    s32 pad1 = 0;
    s32 sp30 = 0;
    s32 pad2 = 0;

    DynaPolyInfo_SetActorMove(&this->dyna, flags);
    DynaPolyInfo_Alloc(arg2, &sp30);

    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp30);

    if (this->dyna.dynaPolyId == 0x32) {
        osSyncPrintf("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_spot15_rrbox.c", 0xAB,
                     this->dyna.actor.id, this->dyna.actor.params);
    }
}

void func_808B39E8(Vec3f *arg0, Vec3f *arg1, f32 arg2, f32 arg3) {
    arg0->x = ((arg1->z * arg2) + (arg1->x * arg3));
    arg0->y = arg1->y;
    arg0->z = ((arg1->z * arg3) - (arg1->x * arg2));
}

void func_808B3A34(BgSpot15Rrbox* this) {
    this->unk_180 = 50;
}

bool func_808B3A40(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot15Rrbox* this = THIS;
    DynaPolyActor* temp_v0;

    temp_v0 = DynaPolyInfo_GetActor(&globalCtx->colCtx, this->unk_180);

    if (temp_v0 != 0) {
        if (Math3D_Dist2DSq(temp_v0->actor.posRot.pos.x, temp_v0->actor.posRot.pos.z, this->dyna.actor.posRot.pos.x,
                            this->dyna.actor.posRot.pos.z) < 0.01f) {
            return true;
        }
    }
    return false;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B3AAC.s")

void BgSpot15Rrbox_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot15Rrbox* this = THIS;

    func_808B3960(this, globalCtx, &D_06000348, 0);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    func_808B3A34(this);
    if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params & 0x3F)) != 0) {
        func_808B44B8(this, globalCtx);
        this->dyna.actor.posRot.pos = D_808B45C4[D_808B4590];
        D_808B4590++;
    } else {
        func_808B4084(this, globalCtx);
    }
    osSyncPrintf("(spot15 ロンロン木箱)(arg_data 0x%04x)\n", this->dyna.actor.params);
}

void BgSpot15Rrbox_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    BgSpot15Rrbox* this = THIS;
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    D_808B4590 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B3CA0.s")

// void func_808B3DDC(BgSpot15Rrbox *this, GlobalContext *globalCtx) {
//     Vec3f sp74;
//     Vec3f sp80;
//     s32 sp64;
//     f32 temp_f0;
//     f32 phi_f22 = -32000.0f;
//     Actor *actor = &this->dyna.actor;
//     int i;

//     func_808B3A34(this);

//     for (i = 0; i < ARRAY_COUNT(D_808B45DC); i++) {

//         sp74.x = D_808B45DC[i].x * (actor->scale.x * 10.0f);
//         sp74.y = D_808B45DC[i].y * (actor->scale.y * 10.0f);
//         sp74.z = D_808B45DC[i].z * (actor->scale.z * 10.0f);

//         func_808B39E8(&sp80, &sp74, this->unk_16C, this->unk_170);

//         sp80.x = sp80.x + actor->posRot.pos.x;
//         sp80.y = sp80.y + actor->pos4.y;
//         sp80.z = sp80.z + actor->posRot.pos.z;

//         temp_f0 = func_8003CA64(&globalCtx->colCtx, actor->floorPoly, &sp64, &this, &sp80, 0);

//         if (phi_f22 < temp_f0) {
//             this->unk_180 = sp64;
//             phi_f22 = temp_f0;
//         }
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B3DDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B3F58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B4010.s")

void func_808B4084(BgSpot15Rrbox* this, GlobalContext *globalCtx) {
    this->actionFunc = &func_808B40AC;
    this->dyna.actor.gravity = 0.0f;
    this->dyna.actor.velocity.x = 0.0f;
    this->dyna.actor.velocity.y = 0.0f;
    this->dyna.actor.velocity.z = 0.0f;
}
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B4084.s")

/*
void func_808B40AC(void *arg0, void *arg1) {
    void *sp1C;
    void *temp_a0;
    void *temp_v1;
    void *phi_a0;

    temp_v1 = arg1->unk1C44;
    if ((s32) arg0->unk168 <= 0) {
        if (0.001f < fabsf(arg0->unk150)) {
            sp1C = temp_v1;
            temp_a0 = arg0;
            phi_a0 = temp_a0;
            if (func_808B3AAC() == 0) {
block_5:
                arg1->unk1C44->unk680 = (s32) (arg1->unk1C44->unk680 & -0x11);
                phi_a0->unk150 = 0.0f;
                return;
            }
            sp1C = temp_v1;
            arg0 = temp_a0;
            phi_a0 = arg0;
            if (func_808B4010(temp_a0, arg1) != 0) {
                goto block_5;
            }
            arg0->unk17C = (f32) arg0->unk150;
            func_808B4178(arg0, arg1);
            return;
        }
    }
    temp_v1->unk680 = (s32) (temp_v1->unk680 & -0x11);
    arg0->unk150 = 0.0f;

}*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B40AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B4178.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B4194.s")

// void func_808B4380(BgSpot15Rrbox* this, GlobalContext *globalCtx) {
//     this->dyna.actor.velocity.x = 0.0f;
//     this->dyna.actor.velocity.y = 0.0f;
//     this->dyna.actor.velocity.z = 0.0f;
//     this->dyna.actor.gravity = -1.0f;
//     this->dyna.actor.groundY = func_808B3DDC(this, globalCtx);
//     this->actionFunc = &func_808B43D0;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot15_Rrbox/func_808B4380.s")

void func_808B43D0(BgSpot15Rrbox* this, GlobalContext *globalCtx) {
    f32 groundY;
    Player *player = PLAYER;
    Actor *actor = &this->dyna.actor;

    if (0.001f < fabsf(this->dyna.unk_150)) {
        this->dyna.unk_150 = 0.0f;
        player->stateFlags2 = player->stateFlags2 & -0x11;
    }

    Actor_MoveForward(actor);

    if (actor->posRot.pos.y <= -31990.0f) {
        osSyncPrintf((const char *) "Warning : ロンロン木箱落ちすぎた(%s %d)(arg_data 0x%04x)\n", 
            "../z_bg_spot15_rrbox.c", 0x257, actor->params);

        Actor_Kill(actor);

        return;
    }

    groundY = actor->groundY;

    if (-0.001f <= (groundY - actor->posRot.pos.y)) {
        actor->posRot.pos.y = groundY;
        func_808B4084(this, globalCtx);
        Audio_PlayActorSound2(&this->dyna.actor, 0x28C9U);
    }
}

void func_808B44B8(BgSpot15Rrbox* this, GlobalContext *globalCtx) {
    this->actionFunc = &func_808B44CC;
}

void func_808B44CC(BgSpot15Rrbox *this, GlobalContext *globalCtx) {
    Player *temp_v0 = PLAYER;

    temp_v0->stateFlags2 = (s32) (temp_v0->stateFlags2 & -0x11);
    this->dyna.unk_150 = 0.0f;
}

void BgSpot15Rrbox_Update(BgSpot15Rrbox *this, GlobalContext *globalCtx) {

    if (this->unk_168 > 0) {
        this->unk_168--;
    }
    this->dyna.actor.posRot.rot.y = this->dyna.unk_158;
    this->unk_16C = Math_Sins(this->dyna.actor.posRot.rot.y);
    this->unk_170 = Math_Coss(this->dyna.actor.posRot.rot.y);
    this->actionFunc(this, globalCtx);
}

void BgSpot15Rrbox_Draw(Actor *thisx, GlobalContext *globalCtx) {
    Gfx_DrawDListOpa(globalCtx, &D_06000180);
}
