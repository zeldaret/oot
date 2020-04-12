/*
 * File: z_en_ru2.c
 * Overlay: En_Ru2
 * Description:
 */

#include "z_en_ru2.h"

#include <vt.h>

#define ROOM 0x00
#define FLAGS 0x00000010

static void EnRu2_Init(EnRu2* this, GlobalContext* globalCtx);
static void EnRu2_Destroy(EnRu2* this, GlobalContext* globalCtx);
static void EnRu2_Update(EnRu2* this, GlobalContext* globalCtx);
static void EnRu2_Draw(EnRu2* this, GlobalContext* globalCtx);

static void func_80AF2CB4(EnRu2* this, GlobalContext* globalCtx);
static void func_80AF2CD4(EnRu2* this, GlobalContext* globalCtx);
static void func_80AF2CF4(EnRu2* this, GlobalContext* globalCtx);
static void func_80AF2D2C(EnRu2* this, GlobalContext* globalCtx);
static void func_80AF2D6C(EnRu2* this, GlobalContext* globalCtx);
static void func_80AF2DAC(EnRu2* this, GlobalContext* globalCtx);
static void func_80AF2DEC(EnRu2* this, GlobalContext* globalCtx);
static void func_80AF3144(EnRu2* this, GlobalContext* globalCtx);
static void func_80AF3174(EnRu2* this, GlobalContext* globalCtx);
static void func_80AF31C8(EnRu2* this, GlobalContext* globalCtx);
static void func_80AF3604(EnRu2* this, GlobalContext* globalCtx);
static void func_80AF3624(EnRu2* this, GlobalContext* globalCtx);
static void func_80AF366C(EnRu2* this, GlobalContext* globalCtx);
static void func_80AF36AC(EnRu2* this, GlobalContext* globalCtx);
static void func_80AF3BC8(EnRu2* this, GlobalContext* globalCtx);
static void func_80AF3C04(EnRu2* this, GlobalContext* globalCtx);
static void func_80AF3C64(EnRu2* this, GlobalContext* globalCtx);
static void func_80AF3CB8(EnRu2* this, GlobalContext* globalCtx);
static void func_80AF3D0C(EnRu2* this, GlobalContext* globalCtx);
static void func_80AF3D60(EnRu2* this, GlobalContext* globalCtx);

static void func_80AF3F14(EnRu2* this, GlobalContext* globalCtx);
static void func_80AF3F20(EnRu2* this, GlobalContext* globalCtx);
static void func_80AF321C(EnRu2* this, GlobalContext* globalCtx);

static void func_80AF2AB4(EnRu2* this, GlobalContext* globalCtx);

static ColliderCylinderInit D_80AF40E0 = {
    0x0A, 0x00,       0x09, 0x00, 0x01,   0x00,   0x00,       0x00,   0x00,   0x00,   0x00,
    0x00, 0x00000000, 0x00, 0x00, 0x00,   0x00,   0x00000080, 0x00,   0x00,   0x00,   0x00,
    0x00, 0x01,       0x00, 0x00, 0x001E, 0x0064, 0x0000,     0x0000, 0x0000, 0x0000,
};

static u32 D_80AF410C[] = {
    0x06000F20,
    0x060022E0,
    0x06002AE0,
};

static u32 D_80AF4118 = 0;

#include "z_en_ru2_cutscene_data.c"

static ActorFunc D_80AF50BC[] = {
    (ActorFunc)func_80AF2CB4, (ActorFunc)func_80AF2CD4, (ActorFunc)func_80AF2CF4, (ActorFunc)func_80AF2D2C,
    (ActorFunc)func_80AF2D6C, (ActorFunc)func_80AF2DAC, (ActorFunc)func_80AF2DEC, (ActorFunc)func_80AF3144,
    (ActorFunc)func_80AF3174, (ActorFunc)func_80AF31C8, (ActorFunc)func_80AF3604, (ActorFunc)func_80AF3624,
    (ActorFunc)func_80AF366C, (ActorFunc)func_80AF36AC, (ActorFunc)func_80AF3BC8, (ActorFunc)func_80AF3C04,
    (ActorFunc)func_80AF3C64, (ActorFunc)func_80AF3CB8, (ActorFunc)func_80AF3D0C, (ActorFunc)func_80AF3D60,
};

static ActorFunc D_80AF510C[] = {
    (ActorFunc)func_80AF3F14,
    (ActorFunc)func_80AF3F20,
    (ActorFunc)func_80AF321C,
};

const ActorInit En_Ru2_InitVars = {
    ACTOR_EN_RU2,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_RU2,
    sizeof(EnRu2),
    (ActorFunc)EnRu2_Init,
    (ActorFunc)EnRu2_Destroy,
    (ActorFunc)EnRu2_Update,
    (ActorFunc)EnRu2_Draw,
};

extern AnimationHeader* D_060004CC;
extern SkeletonHeader* D_0600C700;
extern AnimationHeader* D_0600D3DC;
extern AnimationHeader* D_0600DCAC;
extern AnimationHeader* D_06000DE8;
extern AnimationHeader* D_0600E630;
extern AnimationHeader* D_0600F03C;
extern AnimationHeader* D_0600F8B8;

static void func_80AF2550(EnRu2* this, GlobalContext* globalCtx) {
    EnRu2* thisLocal = this;
    ActorCollider_AllocCylinder(globalCtx, &thisLocal->collider);
    func_8005C450(globalCtx, &thisLocal->collider, &this->actor, &D_80AF40E0);
}

static void func_80AF259C(EnRu2* this, GlobalContext* globalCtx) {
    s32 pad;
    ColliderCylinderMain* collider = &this->collider;
    Actor* thisx = &this->actor;
    s32 pad2[2];

    ActorCollider_Cylinder_Update(thisx, collider);
    Actor_CollisionCheck_SetAC(globalCtx, &globalCtx->sub_11E60, collider);
}

static void EnRu2_Destroy(EnRu2* this, GlobalContext* globalCtx) {
    ColliderCylinderMain* collider = &this->collider;
    ActorCollider_FreeCylinder(globalCtx, collider);
}

static void func_80AF2608(EnRu2* this) {
    s32 pad[3];
    s16* unk_2A6 = &this->unk_2A6;
    s16* unk_2A4 = &this->unk_2A4;

    if (!DECR(*unk_2A6)) {
        *unk_2A6 = Math_Rand_S16Offset(0x3C, 0x3C);
    }

    *unk_2A4 = *unk_2A6;
    if (*unk_2A4 >= 3) {
        *unk_2A4 = 0;
    }
}

s32 func_80AF2690(EnRu2* this) {
    s32 params_shift = this->actor.params >> 8;
    return params_shift & 0xFF;
}

s32 func_80AF26A0(EnRu2* this) {
    s16 params = this->actor.params;
    return params & 0xFF;
}

static void func_80AF26AC(EnRu2* this) {
    this->action = 7;
    this->drawConfig = 0;
    this->unk_2B4 = 0;
    this->unk_2B8 = 0;
    this->actor.shape.unk_14 = 0;
    this->unk_2B0 = 0.0f;
}

static void func_80AF26D0(EnRu2* this, GlobalContext* globalCtx) {
    s32 one; // Needed to match
    if (globalCtx->csCtx.state == 0) {
        if (D_80AF4118 != 0) {
            if (this->actor.params == 2) {
                func_80AF26AC(this);
            }
            D_80AF4118 = 0;
            return;
        }
    } else {
        one = 1;
        if (D_80AF4118 == 0) {
            D_80AF4118 = one;
        }
    }
}

static void func_80AF2744(EnRu2* this, GlobalContext* globalCtx) {
    func_8002E4B4(globalCtx, &this->actor, 75.0f, 30.0f, 30.0f, 4);
}

s32 EnRu2_FrameUpdateMatrix(EnRu2* this) {
    return SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

CsCmdActorAction* func_80AF27AC(GlobalContext* globalCtx, s32 actorActionIdx) {
    if (globalCtx->csCtx.state != 0) {
        return globalCtx->csCtx.actorActions[actorActionIdx];
    }
    return NULL;
}

s32 func_80AF27D0(EnRu2* this, GlobalContext* globalCtx, u16 arg2, s32 actorActionIdx) {
    CsCmdActorAction* csCmdActorAction = func_80AF27AC(globalCtx, actorActionIdx);

    if (csCmdActorAction != NULL && csCmdActorAction->action == arg2) {
        return 1;
    }
    return 0;
}

s32 func_80AF281C(EnRu2* this, GlobalContext* globalCtx, u16 arg2, s32 actorActionIdx) {
    CsCmdActorAction* csCmdActorAction = func_80AF27AC(globalCtx, actorActionIdx);

    if (csCmdActorAction != NULL && csCmdActorAction->action != arg2) {
        return 1;
    }
    return 0;
}

static void func_80AF2868(EnRu2* this, GlobalContext* globalCtx, u32 actorActionIdx) {
    CsCmdActorAction* csCmdActorAction = func_80AF27AC(globalCtx, actorActionIdx);
    s16 newRotY;
    Actor* thisx = &this->actor;

    if (csCmdActorAction != NULL) {
        thisx->posRot.pos.x = csCmdActorAction->startPos.x;
        thisx->posRot.pos.y = csCmdActorAction->startPos.y;
        thisx->posRot.pos.z = csCmdActorAction->startPos.z;
        newRotY = csCmdActorAction->rot.y;
        thisx->shape.rot.y = newRotY;
        thisx->posRot.rot.y = newRotY;
    }
}

static void func_80AF28E8(EnRu2* this, AnimationHeader* animation, u8 arg2, f32 transitionRate, s32 arg4) {
    f32 frameCount = SkelAnime_GetFrameCount(&animation->genericHeader);
    f32 playbackSpeed;
    f32 unk0;
    f32 fc;

    if (arg4 == 0) {
        unk0 = 0.0f;
        fc = frameCount;
        playbackSpeed = 1.0f;
    } else {
        unk0 = frameCount;
        fc = 0.0f;
        playbackSpeed = -1.0f;
    }

    SkelAnime_ChangeAnim(&this->skelAnime, animation, playbackSpeed, unk0, fc, arg2, transitionRate);
}

static void func_80AF2978(EnRu2* this, GlobalContext* globalCtx) {
    this->actor.shape.unk_08 += 83.333336f;
}

static void func_80AF2994(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF28E8(this, &D_06000DE8, 0, 0.0f, 0);
    this->actor.shape.unk_08 = -10000.0f;
}

static void func_80AF29DC(EnRu2* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;
    f32 posX = thisx->posRot.pos.x;
    f32 posY = thisx->posRot.pos.y;
    f32 posZ = thisx->posRot.pos.z;
    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, posX, posY, posZ, 0, 0, 0, 2);
}

static void func_80AF2A38(EnRu2* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 posX = player->actor.posRot.pos.x;
    f32 posY = player->actor.posRot.pos.y + 50.0f;
    f32 posZ = player->actor.posRot.pos.z;

    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_EFFECT, posX, posY, posZ, 0, 0, 0,
                        10);
    Item_Give(globalCtx, ITEM_MEDALLION_WATER);
}

static void func_80AF2AB4(EnRu2* this, GlobalContext* globalCtx) {
    s32 pad[2];
    Player* player;
    s16 temp;

    if (gSaveContext.chamber_cutscene_num == 2 && gSaveContext.scene_setup_index < 4) {
        player = PLAYER;
        this->action = 1;
        globalCtx->csCtx.segment = &D_80AF411C;
        gSaveContext.cutscene_trigger = 2;
        Item_Give(globalCtx, ITEM_MEDALLION_WATER);
        temp = this->actor.posRot.rot.y + 0x8000;
        player->actor.shape.rot.y = temp;
        player->actor.posRot.rot.y = temp;
    }
}

static void func_80AF2B44(EnRu2* this, GlobalContext* globalCtx) {
    CutsceneContext* csCtx = &globalCtx->csCtx;
    CsCmdActorAction* csCmdActorAction;
    if (csCtx->state != 0) {
        csCmdActorAction = csCtx->actorActions[3];
        if (csCmdActorAction != NULL && csCmdActorAction->action == 2) {
            this->action = 2;
            this->drawConfig = 1;
            func_80AF29DC(this, globalCtx);
        }
    }
}

static void func_80AF2B94(EnRu2* this) {
    if (this->actor.shape.unk_08 >= 0.0f) {
        this->action = 3;
        this->actor.shape.unk_08 = 0.0f;
    }
}

static void func_80AF2BC0(EnRu2* this, GlobalContext* globalCtx) {
    AnimationHeader* animation = &D_0600D3DC;
    CsCmdActorAction* csCmdActorAction;
    if (globalCtx->csCtx.state != 0) {
        csCmdActorAction = globalCtx->csCtx.actorActions[3];
        if (csCmdActorAction != NULL && csCmdActorAction->action == 3) {
            SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f, SkelAnime_GetFrameCount(animation), 2, 0.0f);
            this->action = 4;
        }
    }
}

static void func_80AF2C54(EnRu2* this, UNK_TYPE arg1) {
    if (arg1 != 0) {
        this->action = 5;
    }
}

static void func_80AF2C68(EnRu2* this, GlobalContext* globalCtx) {
    CsCmdActorAction* csCmdActorAction;
    if (globalCtx->csCtx.state != 0) {
        csCmdActorAction = globalCtx->csCtx.actorActions[6];
        if (csCmdActorAction != NULL && csCmdActorAction->action == 2) {
            this->action = 6;
            func_80AF2A38(this, globalCtx);
        }
    }
}

static void func_80AF2CB4(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2AB4(this, globalCtx);
}

static void func_80AF2CD4(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2B44(this, globalCtx);
}

static void func_80AF2CF4(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2978(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    func_80AF2B94(this);
}

static void func_80AF2D2C(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2744(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    func_80AF2BC0(this, globalCtx);
}

static void func_80AF2D6C(EnRu2* this, GlobalContext* globalCtx) {
    UNK_TYPE something;

    func_80AF2744(this, globalCtx);
    something = EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    func_80AF2C54(this, something);
}

static void func_80AF2DAC(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2744(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    func_80AF2C68(this, globalCtx);
}

static void func_80AF2DEC(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2744(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
}

static void func_80AF2E1C(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF28E8(this, &D_060004CC, 2, 0.0f, 0);
    this->action = 7;
    this->actor.shape.unk_14 = 0;
}

static void func_80AF2E64() {
    func_800788CC(NA_SE_SY_WHITE_OUT_T);
}

static void func_80AF2E84(EnRu2* this, GlobalContext* globalCtx) {
    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_6K, this->actor.posRot.pos.x,
                        kREG(19) + 24.0f + this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 8);
}

static void func_80AF2F04(EnRu2* this, GlobalContext* globalCtx) {
    if (func_80AF27D0(this, globalCtx, 4, 3)) {
        this->action = 8;
        this->drawConfig = 2;
        this->unk_2B4 = 0;
        this->actor.shape.unk_14 = 0;
        this->unk_2B0 = 0.0f;
        func_80AF2E64();
    }
}

static void func_80AF2F58(EnRu2* this, GlobalContext* globalCtx) {
    f32* unk_2B0 = &this->unk_2B0;
    s32 something;

    if (func_80AF27D0(this, globalCtx, 4, 3)) {
        *unk_2B0 += 1.0f;
        if (*unk_2B0 >= kREG(5) + 10.0f) {
            this->action = 9;
            this->drawConfig = 1;
            *unk_2B0 = kREG(5) + 10.0f;
            this->unk_2B4 = 0xFF;
            this->actor.shape.unk_14 = 0xFF;
            return;
        }
    } else {
        *unk_2B0 -= 1.0f;
        if (*unk_2B0 <= 0.0f) {
            this->action = 7;
            this->drawConfig = 0;
            *unk_2B0 = 0.0f;
            this->unk_2B4 = 0;
            this->actor.shape.unk_14 = 0;
            return;
        }
    }
    something = (*unk_2B0 / (kREG(5) + 10.0f)) * 255.0f;
    this->unk_2B4 = something;
    this->actor.shape.unk_14 = something;
}

static void func_80AF30AC(EnRu2* this, GlobalContext* globalCtx) {
    if (func_80AF281C(this, globalCtx, 4, 3)) {
        this->action = 8;
        this->drawConfig = 2;
        this->unk_2B0 = kREG(5) + 10.0f;
        this->unk_2B4 = 0xFF;
        if (this->unk_2B8 == 0) {
            func_80AF2E84(this, globalCtx);
            this->unk_2B8 = 1;
        }
        this->actor.shape.unk_14 = 0xFF;
    }
}

static void func_80AF3144(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2F04(this, globalCtx);
    func_80AF26D0(this, globalCtx);
}

static void func_80AF3174(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2744(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    func_80AF2F58(this, globalCtx);
    func_80AF26D0(this, globalCtx);
}

static void func_80AF31C8(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2744(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    func_80AF30AC(this, globalCtx);
    func_80AF26D0(this, globalCtx);
}

static void func_80AF321C(EnRu2* this, GlobalContext* globalCtx) {
    s32 pad[2];
    s16 temp = this->unk_2A4;
    UNK_PTR addr = D_80AF410C[temp];
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ru2_inKenjyanomaDemo02.c", 264);
    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(addr));
    gSPSegment(gfxCtx->polyXlu.p++, 0x09, SEGMENTED_TO_VIRTUAL(addr));
    gDPSetEnvColor(gfxCtx->polyXlu.p++, 0x00, 0x00, 0x00, this->unk_2B4);
    gSPSegment(gfxCtx->polyXlu.p++, 0x0C, &D_80116280[0]);

    gfxCtx->polyXlu.p = SkelAnime_DrawSV2(globalCtx, skelAnime->skeleton, skelAnime->actorDrawTbl,
                                          skelAnime->dListCount, NULL, NULL, NULL, gfxCtx->polyXlu.p);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ru2_inKenjyanomaDemo02.c", 291);
}

static void func_80AF3394(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF28E8(this, &D_0600E630, 0, 0.0f, 0);
    this->action = 10;
    this->drawConfig = 0;
    this->actor.shape.unk_14 = 0;
}

static void func_80AF33E0(EnRu2* this) {
    f32* unk_2B0 = &this->unk_2B0;
    f32 temp_f0;
    s32 temp_f18;

    *unk_2B0 += 1.0f;

    temp_f0 = kREG(17) + 10.0f;
    if (temp_f0 <= *unk_2B0) {
        this->unk_2B4 = 0xFF;
        this->actor.shape.unk_14 = 0xFF;
    } else {
        temp_f18 = (*unk_2B0 / temp_f0) * 255.0f;
        this->unk_2B4 = temp_f18;
        this->actor.shape.unk_14 = temp_f18;
    }
}

static void func_80AF346C(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2868(this, globalCtx, 3);
    this->action = 11;
    this->drawConfig = 2;
}

static void func_80AF34A4(EnRu2* this) {
    if (this->unk_2B0 >= kREG(17) + 10.0f) {
        this->action = 12;
        this->drawConfig = 1;
    }
}

static void func_80AF34F0(EnRu2* this) {
    func_80AF28E8(this, &D_0600DCAC, 2, 0.0f, 0);
    this->action = 13;
}

static void func_80AF3530(EnRu2* this, UNK_TYPE arg1) {
    if (arg1 != 0) {
        func_80AF28E8(this, &D_0600F03C, 0, 0.0f, 0);
    }
}

static void func_80AF3564(EnRu2* this, GlobalContext* globalCtx) {
    CsCmdActorAction* csCmdActorAction = func_80AF27AC(globalCtx, 3);
    s32 action;
    s32 unk_2BC;

    if (csCmdActorAction != NULL) {
        action = csCmdActorAction->action;
        unk_2BC = this->unk_2BC;
        if (action != unk_2BC) {
            switch (action) {
                case 7:
                    func_80AF346C(this, globalCtx);
                    break;
                case 8:
                    func_80AF34F0(this);
                    break;
                default:
                    osSyncPrintf("En_Ru2_inEnding_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
                    break;
            }
            this->unk_2BC = action;
        }
    }
}

static void func_80AF3604(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF3564(this, globalCtx);
}

static void func_80AF3624(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2744(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    func_80AF33E0(this);
    func_80AF34A4(this);
}

static void func_80AF366C(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2744(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    func_80AF3564(this, globalCtx);
}

static void func_80AF36AC(EnRu2* this, GlobalContext* globalCtx) {
    UNK_TYPE something;

    func_80AF2744(this, globalCtx);
    something = EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    func_80AF3530(this, something);
}

static void func_80AF36EC(EnRu2* this, GlobalContext* globalCtx) {
    Flags_SetSwitch(globalCtx, func_80AF2690(this));
}

s32 func_80AF3718(EnRu2* this, GlobalContext* globalCtx) {
    return Flags_GetSwitch(globalCtx, func_80AF2690(this));
}

static void func_80AF3744(EnRu2* this, GlobalContext* globalCtx) {
    if (func_80AF3718(this, globalCtx)) {
        Actor_Kill(&this->actor);
    } else {
        func_80AF28E8(this, &D_06000DE8, 0, 0.0f, 0);
        this->action = 14;
        this->drawConfig = 1;
    }
}

static void func_80AF37AC() {
    func_800F5C64(0x51);
}

static void func_80AF37CC(EnRu2* this) {
    f32 funcFloat;
    this->unk_2C0 += 1;
    funcFloat = func_8006F9BC((kREG(2) + 0x96) & 0xFFFF, 0, this->unk_2C0, 8, 0);
    this->actor.posRot.pos.y = this->actor.initPosRot.pos.y + (300.0f * funcFloat);
}

s32 func_80AF383C(EnRu2* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 thisPosX = this->actor.posRot.pos.x;
    f32 playerPosX = player->actor.posRot.pos.x;
    if (playerPosX - thisPosX >= -202.0f) {
        return 1;
    }
    return 0;
}

static void func_80AF3878(EnRu2* this, GlobalContext* globalCtx) {
    if (func_80AF383C(this, globalCtx) && !func_800BFC84(globalCtx)) {
        this->action = 16;
        func_800800F8(globalCtx, 0xC3A, -0x63, &this->actor, 0);
    }
}

static void func_80AF38D0(EnRu2* this, GlobalContext* globalCtx) {
    this->action = 16;
    func_800800F8(globalCtx, 0xC3A, -0x63, &this->actor, 0);
}

static void func_80AF390C(EnRu2* this, GlobalContext* globalCtx) {
    f32* unk_2C4 = &this->unk_2C4;
    *unk_2C4 += 1.0f;
    if (*unk_2C4 == kREG(6) + 40.0f) {
        func_80AF37AC();
    } else if (*unk_2C4 > kREG(4) + 50.0f) {
        this->actor.textId = 0x403E;
        func_8010B680(globalCtx, this->actor.textId, 0);
        this->action = 17;
    }
}

static void func_80AF39DC(EnRu2* this, GlobalContext* globalCtx) {
    s32 pad;
    MessageContext* msgCtx;
    s32 pad2;
    u8 dialogState;
    Player* player;
    s32 pad3;

    msgCtx = &globalCtx->msgCtx;
    dialogState = func_8010BDBC(msgCtx);

    if (dialogState == 3) {
        if (this->unk_2C3 != 3) {
            osSyncPrintf("おれが小松だ！ \n");
            this->unk_2C2++;
            if (this->unk_2C2 % 6 == 3) {
                player = PLAYER;
                osSyncPrintf("うおりゃー！ \n");
                func_8005B1A4(globalCtx->cameraCtx.activeCameraPtrs[globalCtx->cameraCtx.unk_5C0]);
                player->actor.posRot.pos.x = 820.0f;
                player->actor.posRot.pos.y = 0.0f;
                player->actor.posRot.pos.z = 180.0f;
            }
        }
    }

    this->unk_2C3 = dialogState;
    if (func_8010BDBC(msgCtx) == 2) {
        this->action = 18;
        func_8005B1A4(globalCtx->cameraCtx.activeCameraPtrs[globalCtx->cameraCtx.unk_5C0]);
    }
}

static void func_80AF3ADC(EnRu2* this, GlobalContext* globalCtx) {
    this->unk_2C4 += 1.0f;
    if (this->unk_2C4 > kREG(5) + 100.0f) {
        func_80AF28E8(this, &D_0600F8B8, 0, -12.0f, 0);
        this->action = 0x13;
        func_80AF36EC(this, globalCtx);
    }
}

static void func_80AF3B74(EnRu2* this, GlobalContext* globalCtx) {
    if (this->unk_2C0 > (((u16)(kREG(3) + 0x28)) + ((u16)(kREG(2) + 0x96)) & 0xFFFF)) {
        Actor_Kill(&this->actor);
    }
}

static void func_80AF3BC8(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF3878(this, globalCtx);
    Actor_SetHeight(&this->actor, 50.0f);
    func_80AF259C(this, globalCtx);
}

static void func_80AF3C04(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2744(this, globalCtx);
    func_80AF259C(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    Actor_SetHeight(&this->actor, 50.0f);
    func_80AF38D0(this, globalCtx);
}

static void func_80AF3C64(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2744(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    Actor_SetHeight(&this->actor, 50.0f);
    func_80AF390C(this, globalCtx);
}

static void func_80AF3CB8(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2744(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    Actor_SetHeight(&this->actor, 50.0f);
    func_80AF39DC(this, globalCtx);
}

static void func_80AF3D0C(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF2744(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    Actor_SetHeight(&this->actor, 50.0f);
    func_80AF3ADC(this, globalCtx);
}

static void func_80AF3D60(EnRu2* this, GlobalContext* globalCtx) {
    func_80AF37CC(this);
    func_80AF2744(this, globalCtx);
    EnRu2_FrameUpdateMatrix(this);
    func_80AF2608(this);
    Actor_SetHeight(&this->actor, 50.0f);
    func_80AF3B74(this, globalCtx);
}

static void EnRu2_Update(EnRu2* this, GlobalContext* globalCtx) {
    if (this->action < 0 || this->action >= 20 || D_80AF50BC[this->action] == 0) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    D_80AF50BC[this->action](this, globalCtx);
}

static void EnRu2_Init(EnRu2* this, GlobalContext* globalCtx) {
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    func_80AF2550(this, globalCtx);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_0600C700, NULL, &this->unk_190, &this->unk_21A, 0x17);

    switch (func_80AF26A0(this)) {
        case 2:
            func_80AF2E1C(this, globalCtx);
            break;
        case 3:
            func_80AF3394(this, globalCtx);
            break;
        case 4:
            func_80AF3744(this, globalCtx);
            break;
        default:
            func_80AF2994(this, globalCtx);
            break;
    }

    this->unk_2C2 = 0;
    this->unk_2C3 = 3;
}

static void func_80AF3F14(EnRu2* this, GlobalContext* globalCtx) {
}

static void func_80AF3F20(EnRu2* this, GlobalContext* globalCtx) {
    s32 pad[2];
    s16 temp = this->unk_2A4;
    UNK_PTR addr = D_80AF410C[temp];
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ru2.c", 642);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(addr));
    gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(addr));
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0xFF);
    gSPSegment(gfxCtx->polyOpa.p++, 0x0C, &D_80116280[2]);

    SkelAnime_DrawSV(globalCtx, skelAnime->skeleton, skelAnime->actorDrawTbl, skelAnime->dListCount, NULL, NULL,
                     &this->actor);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ru2.c", 663);
}

static void EnRu2_Draw(EnRu2* this, GlobalContext* globalCtx) {
    if (this->drawConfig < 0 || this->drawConfig >= 3 || D_80AF510C[this->drawConfig] == 0) {
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    D_80AF510C[this->drawConfig](this, globalCtx);
}
