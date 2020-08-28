#include "z_bg_jya_bombiwa.h"
#include <vt.h>

#define FLAGS 0x00000000

#define THIS ((BgJyaBombiwa*)thisx)

void BgJyaBombiwa_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJyaBombiwa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJyaBombiwa_Update(Actor* thisx, GlobalContext* globalCtx);
void BgJyaBombiwa_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Bg_Jya_Bombiwa_InitVars = {
    ACTOR_BG_JYA_BOMBIWA,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_JYA_OBJ,
    sizeof(BgJyaBombiwa),
    (ActorFunc)BgJyaBombiwa_Init,
    (ActorFunc)BgJyaBombiwa_Destroy,
    (ActorFunc)BgJyaBombiwa_Update,
    (ActorFunc)BgJyaBombiwa_Draw,
};

static ColliderJntSphItemInit sJntSphItemsInit[] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000008, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { 0, { { 0, 0, 0 }, 50 }, 100 },
    },
};
static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x00, COLSHAPE_JNTSPH },
    1,
    &sJntSphItemsInit,
};
static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

extern UNK_TYPE D_0600E710;
extern Gfx D_0600E490[];
extern Gfx D_0600EDC0[];

void BgJyaBombiwa_SetupDynaPoly(BgJyaBombiwa* this, GlobalContext* globalCtx, void* arg2, DynaPolyMoveFlag flag) {
    s16 pad1;
    s32 localConst = 0;
    s16 pad2;

    DynaPolyInfo_SetActorMove(&this->dyna, flag);
    DynaPolyInfo_Alloc(arg2, &localConst);
    this->dyna.dynaPolyId =
        DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, localConst);
    if (this->dyna.dynaPolyId == 0x32) {

        // Warning: move BG registration failed
        osSyncPrintf("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_jya_bombiwa.c", 174,
                     this->dyna.actor.id, this->dyna.actor.params);
    }
}

void BgJyaBombiwa_InitCollider(BgJyaBombiwa* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, thisx, &sJntSphInit, &this->colliderItems);
}

void BgJyaBombiwa_Init(Actor* thisx, GlobalContext* globalCtx) {
    if ((thisx->params & 0x3F) != 0x29) {
        osSyncPrintf(VT_COL(YELLOW, BLACK));

        // Warning: Switch Number changed (%s %d)(SW %d
        osSyncPrintf("Ｗａｒｎｉｎｇ : Switch Number が変更された(%s %d)(SW %d)\n", "../z_bg_jya_bombiwa.c", 218,
                     thisx->params & 0x3F);
        osSyncPrintf(VT_SGR());
    }
    BgJyaBombiwa_SetupDynaPoly(thisx, globalCtx, &D_0600E710, 0);
    BgJyaBombiwa_InitCollider(thisx, globalCtx);
    if (Flags_GetSwitch(globalCtx, thisx->params & 0x3F)) {
        Actor_Kill(thisx);
    } else {
        Actor_ProcessInitChain(thisx, sInitChain);

        // Rock destroyed by jya bomb
        osSyncPrintf("(jya 爆弾で破壊岩)(arg_data 0x%04x)\n", thisx->params);
    }
}

void BgJyaBombiwa_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaBombiwa* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    Collider_DestroyJntSph(globalCtx, &this->collider);
}

void BgJyaBombiwa_Break(BgJyaBombiwa* this, GlobalContext* globalCtx) {
    Vec3f temp;
    Vec3f temp2;
    s16 tempS;
    s8 rotationSpeed;
    s8 burstVelocity;
    s32 i;
    s16 tScale;

    for (i = 0; i < 16; i++) {
        temp.x = ((Math_Rand_ZeroOne() * 80.0f) + this->dyna.actor.posRot.pos.x) - 40.0f;
        temp.y = (Math_Rand_ZeroOne() * 140.0f) + this->dyna.actor.posRot.pos.y;
        temp.z = ((Math_Rand_ZeroOne() * 80.0f) + this->dyna.actor.posRot.pos.z) - 40.0f;
        temp2.x = (Math_Rand_ZeroOne() - 0.5f) * 10.0f;
        temp2.y = Math_Rand_ZeroOne() * 12.0f;
        temp2.z = (Math_Rand_ZeroOne() - 0.5f) * 10.0f;
        tScale = (s32)(i * 1.8f) + 3;
        if (tScale > 15) {
            tempS = 5;
        } else {
            tempS = 1;
        }
        if (Math_Rand_ZeroOne() < 0.4f) {
            tempS |= 0x40;
            rotationSpeed = 0xC;
            burstVelocity = 8;
        } else {
            tempS |= 0x20;
            rotationSpeed = 0xC;
            burstVelocity = 8;
            if (tScale < 10) {
                rotationSpeed = 0x50;
                burstVelocity = 80;
            }
        }
        func_80029E8C(globalCtx, &temp, &temp2, &temp, -400, tempS, rotationSpeed, burstVelocity, 0, tScale, 1, 20, 80,
                      -1, OBJECT_JYA_OBJ, D_0600EDC0);
    }
    temp.x = this->dyna.actor.posRot.pos.x;
    temp.y = this->dyna.actor.posRot.pos.y + 70.0f;
    temp.z = this->dyna.actor.posRot.pos.z;
    func_80033480(globalCtx, &temp, 100.0f, 0xA, 0x64, 0xA0, 1);
}

void BgJyaBombiwa_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaBombiwa* this = THIS;

    if (this->collider.base.acFlags & 2) {
        BgJyaBombiwa_Break(this, globalCtx);
        Flags_SetSwitch(globalCtx, this->dyna.actor.params & 0x3F);
        Audio_PlaySoundAtPosition(globalCtx, &this->dyna.actor.posRot, 40, NA_SE_EV_WALL_BROKEN);
        Actor_Kill(&this->dyna.actor);
    } else {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider);
    }
}

void BgJyaBombiwa_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaBombiwa* this = THIS;

    Gfx_DrawDListOpa(globalCtx, D_0600E490);
    func_800628A4(0, &this->collider);
}
