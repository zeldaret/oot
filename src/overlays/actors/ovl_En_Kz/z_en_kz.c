#include "z_en_kz.h"

#define ROOM 0x00
#define FLAGS 0x00000009

void EnKz_Init(EnKz* this, GlobalContext* globalCtx);
void EnKz_Destroy(EnKz* this, GlobalContext* globalCtx);
void EnKz_Update(EnKz* this, GlobalContext* globalCtx);
void EnKz_Draw(EnKz* this, GlobalContext* globalCtx);

void func_80A9D42C(EnKz* this, GlobalContext* globalCtx);
void func_80A9D0C0(EnKz* this, GlobalContext* globalCtx);
void func_80A9D130(EnKz* this, GlobalContext* globalCtx);
void func_80A9D25C(EnKz* this, GlobalContext* globalCtx);
void func_80A9D3C8(EnKz* this, GlobalContext* globalCtx);

/*
const ActorInit En_Kz_InitVars = {
    ACTOR_EN_KZ,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_KZ,
    sizeof(EnKz),
    (ActorFunc)EnKz_Init,
    (ActorFunc)EnKz_Destroy,
    (ActorFunc)EnKz_Update,
    (ActorFunc)EnKz_Draw,
};
*/

static ColliderCylinderInit cylinderInit = {
    0x0A, 0x00, 0x00, 0x39, 0x20, 0x01, 0x0000, 
    0x00, 0x00, 0x00, 0x00, 
    0x00000000, 0x00, 0x00, 0x00, 0x00, 
    0x00000000, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x01, 0x00, 

    0x0050, 0x0078, 0x0000,
    0x0000, 0x00000000,
};

typedef struct {
    /* 0x00 */ u8 health;
    /* 0x02 */ s16 unk_10;
    /* 0x04 */ s16 unk_12;
    /* 0x06 */ u16 unk_14;
    /* 0x08 */ u8 mass;
} sub98Init;

static sub98Init sub98Data = {
    0x00,   // health
    0x0000, // unk_10
    0x0000, // unk_12
    0x0000, // unk_14
    0xFF,   // mass
};

static struct_80034EC0_Entry animations[] = {
    { 0x0600075C, 1.0f, 0.0f, -1.0f, 0x00,   0.0f }, 
    { 0x0600075C, 1.0f, 0.0f, -1.0f, 0x00, -10.0f },
    { 0x0600046C, 1.0f, 0.0f, -1.0f, 0x00, -10.0f },
};

typedef enum {
    /* 0x00 */ KZ_WAIT,
    /* 0x01 */ KZ_TALK,
    /* 0x02 */ KZ_MWEEP,
} KingZoraBehavior;

extern SkeletonHeader D_060186D0;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9C550.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9C5AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9C658.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9C6C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9C8E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9C95C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9CB18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9CCD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9CE44.s")

void EnKz_Init(EnKz* this, GlobalContext* globalCtx){
    s32 pad;
    s32 pad1;
    
    SkelAnime_InitSV(globalCtx, &this->skelanime, &D_060186D0, NULL, &this->actorDrawTable, &this->skelanimeArg5, 12);
    ActorShape_Init(&this->actor.shape, 0.0, NULL, 0.0);
    ActorCollider_AllocCylinder(globalCtx, &this->collider);
    ActorCollider_InitCylinder(globalCtx, &this->collider, &this->actor, &cylinderInit);
    func_80061EFC(&this->actor.sub_98, NULL, &sub98Data);
    Actor_SetScale(&this->actor, 0.01);
    this->actor.unk_1F = 3;
    this->nextBehavior = KZ_WAIT;
    func_80034EC0(&this->skelanime, animations, 0);
    if (gSaveContext.event_chk_inf[3] & 8) {
        func_80A9CE44(this, globalCtx);
    }

    if (LINK_IS_ADULT) {
        if (!(gSaveContext.inf_table[19] & 0x100)) {
            Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BG_ICE_SHELTER, 
                                this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 
                                0, 0, 0, 0x04FF);
        }
        this->actionFunc = func_80A9D42C;
    } else {
        this->actionFunc = func_80A9D0C0;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/EnKz_Destroy.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9D0C0.s")
void func_80A9D0C0(EnKz* this, GlobalContext* globalCtx){
    if (this->nextBehavior == KZ_MWEEP) {
        func_80034EC0(&this->skelanime, animations, 2); //use enum?
        this->nextBehavior = KZ_WAIT;
        this->actionFunc = func_80A9D130;
    } else {
        func_80034F54(globalCtx, &this->unk_2A6, &this->unk_2BE, 12);
    }
}

//EnKz_SetupMweep
void func_80A9D130(EnKz* this, GlobalContext* globalCtx) {
    s32 unused[] = {0, 0, 0};
    Vec3f pos;
    Vec3f initPos;

    this->unk_212 = func_800C0230(globalCtx);
    this->unk_214 = globalCtx->cameraCtx.unk_5C0;
    func_800C0314(globalCtx, this->unk_214, 1);
    func_800C0314(globalCtx, this->unk_212, 7);
    pos = this->actor.posRot.pos;
    initPos = this->actor.initPosRot.pos;
    pos.y += 60.0f;
    initPos.y += -100.0f;
    initPos.z += 260.0f;
    func_800C04D8(globalCtx, this->unk_212, &pos, &initPos);
    func_8002DF54(globalCtx, &this->actor, 8); // freeze link and make him look at kz (I think)
    this->actor.speedXZ = 0.1f; // mweep speed
    this->actionFunc = func_80A9D25C;
}

//EnKz_Mweep
void func_80A9D25C(EnKz* this, GlobalContext* globalCtx) {
    s32 unused[] = {0, 0, 0};
    Vec3f pos;
    Vec3f initPos;

    pos = this->actor.posRot.pos;
    initPos = this->actor.initPosRot.pos;
    pos.y += 60.0f;
    initPos.y += -100.0f;
    initPos.z += 260.0f;
    func_800C04D8(globalCtx, this->unk_212, &pos, &initPos);
    if (func_80A9CCD8(this, globalCtx) == 1) {
        if (this->unk_20A == 0) {
            func_80034EC0(&this->skelanime, animations, 1);
            Inventory_ReplaceItem(globalCtx, ITEM_LETTER_RUTO, ITEM_BOTTLE);
            func_80A9CE44(this, globalCtx);
            gSaveContext.event_chk_inf[3] |= 8;
            this->actor.speedXZ = 0.0;
            this->actionFunc = &func_80A9D3C8;
        }
    }
    if (this->skelanime.animCurrentFrame == 13.0f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_VO_KZ_MOVE);
    }
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9D3C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9D42C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9D490.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9D520.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/EnKz_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9D670.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9D744.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/EnKz_Draw.s")
