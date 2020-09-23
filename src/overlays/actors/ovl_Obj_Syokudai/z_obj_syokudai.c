/*
 * File: z_obj_syokudai.c
 * Overlay: ovl_Obj_Syokudai
 * Description: Torch
 */

#include "z_obj_syokudai.h"
#include "../ovl_En_Arrow/z_en_arrow.h"

#define FLAGS 0x00000410

#define THIS ((ObjSyokudai*)thisx)

void ObjSyokudai_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjSyokudai_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjSyokudai_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjSyokudai_Draw(Actor* thisx, GlobalContext* globalCtx);

extern Gfx D_0404D4E0[];

const ActorInit Obj_Syokudai_InitVars = {
    ACTOR_OBJ_SYOKUDAI,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_SYOKUDAI,
    sizeof(ObjSyokudai),
    (ActorFunc)ObjSyokudai_Init,
    (ActorFunc)ObjSyokudai_Destroy,
    (ActorFunc)ObjSyokudai_Update,
    (ActorFunc)ObjSyokudai_Draw,
};

static ColliderCylinderInit sCylInitStand = {
    { COLTYPE_METAL_SHIELD, 0x00, 0x0D, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x02, { 0x00100000, 0x00, 0x00 }, { 0xEE01FFFF, 0x00, 0x00 }, 0x00, 0x05, 0x01 },
    { 12, 45, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit sCylInitFlame = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x00, COLSHAPE_CYLINDER },
    { 0x02, { 0x00000000, 0x00, 0x00 }, { 0x00020820, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 15, 45, 45, { 0, 0, 0 } },
};

static s32 sLitTorchCount;

void ObjSyokudai_Init(Actor* thisx, GlobalContext *globalCtx) {
    static InitChainEntry sInitChain[] = {
        ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_CONTINUE),
        ICHAIN_F32(uncullZoneForward, 4000, ICHAIN_CONTINUE),
        ICHAIN_F32(uncullZoneScale, 800, ICHAIN_CONTINUE),
        ICHAIN_F32(uncullZoneDownward, 800, ICHAIN_STOP),
    };
    static u8 sColTypesStand[] = {0x09, 0x0B, 0x0B};
    s32 pad;
    ObjSyokudai* this = THIS;
    s32 torchType = this->actor.params & 0xF000;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
    
    Collider_InitCylinder(globalCtx, &this->collider1);
    Collider_SetCylinder(globalCtx, &this->collider1, &this->actor, &sCylInitStand);
    this->collider1.base.type = sColTypesStand[this->actor.params >> 0xC];
    
    Collider_InitCylinder(globalCtx, &this->collider2);
    Collider_SetCylinder(globalCtx, &this->collider2, &this->actor, &sCylInitFlame);
    
    this->actor.colChkInfo.mass = 0xFF;
    
    Lights_PointGlowSetInfo(&this->lightInfo, this->actor.posRot.pos.x, this->actor.posRot.pos.y + 70.0f, this->actor.posRot.pos.z, 0xFF, 0xFF, 0xB4, -1);
    this->lightNode = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &this->lightInfo);
    
    if ((this->actor.params & 0x400) || ((torchType != 2) && Flags_GetSwitch(globalCtx, this->actor.params & 0x3F))) {
        this->timer = -1;
    }
    
    this->flameTexScroll = (s32)(Math_Rand_ZeroOne() * 20.0f);
    sLitTorchCount = 0;
    Actor_SetHeight(&this->actor, 60.0f);
}

void ObjSyokudai_Destroy(Actor* thisx, GlobalContext *globalCtx) {
    s32 pad;
    ObjSyokudai* this = THIS;
    
    Collider_DestroyCylinder(globalCtx, &this->collider1);
    Collider_DestroyCylinder(globalCtx, &this->collider2);
    LightContext_RemoveLight(globalCtx, &globalCtx->lightCtx, this->lightNode);
}

void ObjSyokudai_Update(Actor* thisx, GlobalContext *globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    ObjSyokudai* this = THIS;
    s32 torchCount = (this->actor.params >> 6) & 0xF;
    s32 switchFlag = this->actor.params & 0x3F;
    s32 torchType = this->actor.params & 0xF000;
    s32 litTimeScale;
    WaterBox* dummy;
    f32 waterSurface;
    s32 lightRadius = -1;
    u8 lightColorY = 0;
    Player* player;
    EnArrow* arrow;
    s32 itemType;
    u32 toucherFlags;
    Vec3f tipToFlame;
    ColliderCylinder* collider1;
    ColliderCylinder* collider2;

    litTimeScale = torchCount;
    if(torchCount == 10) {
        torchCount = 24;
    }
    if (func_80042244(globalCtx, &globalCtx->colCtx, this->actor.posRot.pos.x, this->actor.posRot.pos.z, &waterSurface, &dummy) && ((waterSurface - this->actor.posRot.pos.y) > 52.0f )) {
        this->timer = 0;
        if (torchType == 1) {
            Flags_UnsetSwitch(globalCtx, switchFlag);
            if (torchCount != 0) {
                this->timer = 1;
            }
        }
    } else {
        player = PLAYER;
        itemType = 0;
        if (this->actor.params & 0x400) {
            this->timer = -1;
        }
        if (torchCount != 0) {
            if (Flags_GetSwitch(globalCtx, switchFlag)) {
                if (this->timer == 0) {
                    this->timer = -1;
                    if (torchType == 0) {
                        func_80080480(globalCtx, &this->actor);
                    }
                } else if (this->timer > 0) {
                    this->timer = -1;
                }
            } else if (this->timer < 0) {
                this->timer = 20;
            }
        }
        if (this->collider2.base.acFlags & 2) {
            toucherFlags = this->collider2.body.acHitItem->toucher.flags;
            if (toucherFlags & 0x20820) {
                itemType = 1;
            }
        } else if (player->heldItemActionParam == 6) {
            Math_Vec3f_Diff(&player->swordInfo[0].tip, &this->actor.posRot.pos, &tipToFlame);
            tipToFlame.y -= 67.0f;
            if ((SQ(tipToFlame.x) + SQ(tipToFlame.y) + SQ(tipToFlame.z)) < 400.0f) {
                itemType = -1;
            }
        }
        if (itemType != 0) {
            if (this->timer != 0) {
                if (itemType < 0) {
                    if (player->unk_860 == 0) {
                        player->unk_860 = 210;
                        Audio_PlaySoundGeneral(NA_SE_EV_FLAME_IGNITION, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    } else if (player->unk_860 < 200) {
                        player->unk_860 = 200;
                    }
                } else if (toucherFlags & 0x20) {
                    arrow = (EnArrow*) this->collider2.base.ac;
                    if(arrow->actor.update && (arrow->actor.id == 0x16)) {
                        arrow->actor.params = 0;
                        arrow->unk_1A8 = 0x800;
                    }
                }
                if ((0 <= this->timer) && (this->timer < (50 * litTimeScale + 100)) && (torchType != 0)) {
                    this->timer = 50 * litTimeScale + 100;
                }
            } else if ((torchType != 0) && (((itemType > 0) && (toucherFlags & 0x20800))
                                            || ((itemType < 0) && (player->unk_860 != 0)))) {
                
                if ((itemType < 0) && ( player->unk_860 < 200)){
                    player->unk_860 = 200;
                }
                if (torchCount == 0) {
                    this->timer = -1;
                    if (torchType != 2) {
                        Flags_SetSwitch(globalCtx, switchFlag);
                        func_80080480(globalCtx, &this->actor);
                    }
                } else {
                    sLitTorchCount++;
                    if (sLitTorchCount >= torchCount) {
                        Flags_SetSwitch(globalCtx, switchFlag);
                        func_80080480(globalCtx, &this->actor);
                        this->timer = -1;
                    } else {
                        this->timer = (litTimeScale * 50) + 110;
                    }
                }
                Audio_PlaySoundGeneral(NA_SE_EV_FLAME_IGNITION, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
        }
    }
    collider1 = &this->collider1;
    Collider_CylinderUpdate(&this->actor, collider1);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &collider1->base);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &collider1->base);
    
    collider2 = &this->collider2;
    Collider_CylinderUpdate(&this->actor, collider2);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &collider2->base);

    if (this->timer > 0) {
        this->timer--;
        if ((this->timer == 0) && (torchType != 0)) {
            sLitTorchCount--;
        }
    }
    if (this->timer != 0) {
        if ((this->timer < 0) || (this->timer >= 20)) {
            lightRadius = 200;
        } else {
            lightRadius = (this->timer * 200.0f) / 20.0f;
        }
        lightColorY = (u8)(Math_Rand_ZeroOne() * 127.0f) + 128;
        func_8002F974(&this->actor, NA_SE_EV_TORCH - SFX_FLAG);
    }
    Lights_PointSetColorAndRadius(&this->lightInfo, lightColorY, lightColorY, 0, lightRadius);
    this->flameTexScroll++;
}

void ObjSyokudai_Draw(Actor* thisx, GlobalContext *globalCtx) {
    static Gfx* sDisplayLists[] = {0x060003A0, 0x06000B90, 0x06000870};
    s32 pad;
    ObjSyokudai* this = THIS;
    s32 timerMax;

    timerMax = (((this->actor.params >> 6) & 0xF) * 50) + 100;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_obj_syokudai.c", 707);
    func_80093D18(globalCtx->state.gfxCtx);
    
    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_syokudai.c", 714), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    
    gSPDisplayList(oGfxCtx->polyOpa.p++, sDisplayLists[(u16)this->actor.params >> 0xC]);
    
    if (this->timer != 0) {
        f32 flameScale = 1.0f;
        
        if (this->timer > timerMax) {
            flameScale = (timerMax - this->timer + 10) / 10.0f;
        } else if ((this->timer > 0) && (this->timer < 20)) {
            flameScale = this->timer / 20.0f;
        }
        flameScale *= 0.0027f;
        
        func_80093D84(globalCtx->state.gfxCtx);
        
        gSPSegment(oGfxCtx->polyXlu.p++, 0x08, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, 0, (this->flameTexScroll * -20) & 0x1FF, 0x20, 0x80));
        
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 255, 255, 0, 255);
        
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, 255, 0, 0, 0);
        
        Matrix_Translate(0.0f, 52.0f, 0.0f, 1);
        Matrix_RotateY((s16)(func_8005A9F4(globalCtx->cameraPtrs[globalCtx->activeCamera]) - this->actor.shape.rot.y + 0x8000) * (M_PI/0x8000), 1);
        Matrix_Scale(flameScale, flameScale, flameScale, 1);
        
        gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_syokudai.c", 745), 
        G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        
        gSPDisplayList(oGfxCtx->polyXlu.p++, D_0404D4E0);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_obj_syokudai.c", 749);
}
