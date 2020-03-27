#include "z_en_floormas.h"

#define ROOM 0x00
#define FLAGS 0x00000405

void EnFloormas_Init(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_Destroy(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_Update(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_Draw(EnFloormas* this, GlobalContext* globalCtx);

/*
const ActorInit En_Floormas_InitVars = {
    ACTOR_EN_FLOORMAS,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_WALLMASTER,
    sizeof(EnFloormas),
    (ActorFunc)EnFloormas_Init,
    (ActorFunc)EnFloormas_Destroy,
    (ActorFunc)EnFloormas_Update,
    (ActorFunc)EnFloormas_Draw,
};

static ColliderCylinderInit colCylinderInit =
{
    {
        0x00, 0x11, 0x09, 0x39, 0x10, 0x01, 0x00, 0x00,
    },
    {
        0x00, { 0x00, 0x00, 0x00, }, 0xFFCFFFFF,
        0x04, 0x10, { 0x00, 0x00, }, 0xFFCFFFFF,
        { 0x00, 0x00, 0x00, 0x00, }, 0x09,
        0x05, 0x01, 0x00,
    },
    {
        0x0019, 0x0028, 0x0000,
        { 0x0000, 0x0000, 0x0000, },
    },
};

static SubActor98Init D_80A1A49C = {
    0x04, 0x001E, 0x0028, 0x96
};

static ActorDamageChart damageChart =
{
    {
        { 0x1, 0x0, },
        { 0x0, 0x2, },
        { 0x0, 0x1, },
        { 0x0, 0x2, },
        { 0x1, 0x0, },
        { 0x0, 0x2, },
        { 0x0, 0x2, },
        { 0x1, 0x0, },
        { 0x0, 0x1, },
        { 0x0, 0x2, },
        { 0x0, 0x4, },
        { 0x2, 0x4, },
        { 0x0, 0x2, },
        { 0x4, 0x4, },
        { 0x0, 0x4, },
        { 0x0, 0x2, },
        { 0x0, 0x2, },
        { 0x2, 0x4, },
        { 0x0, 0x0, },
        { 0x4, 0x4, },
        { 0x0, 0x0, },
        { 0x0, 0x0, },
        { 0x0, 0x1, },
        { 0x0, 0x4, },
        { 0x0, 0x2, },
        { 0x0, 0x2, },
        { 0x0, 0x8, },
        { 0x0, 0x4, },
        { 0x0, 0x0, },
        { 0x0, 0x0, },
        { 0x0, 0x4, },
        { 0x0, 0x0, },
    },
};

static InitChainEntry initChain[] =
{
    ICHAIN_S8(naviEnemyId, 0x31, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 0x157C, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 0xFC18, ICHAIN_STOP),
};

extern u32 D_06009DB0;

#define NON_MATCHING
#ifdef NON_MATCHING
extern void func_80024A14();
extern u32 D_06008FB0;
void func_80A1A350(EnFloormas* this, GlobalContext* globalCtx);
void func_80A19B9C(EnFloormas* this, GlobalContext* globalCtx);
void func_80A17780(EnFloormas* this);
void EnFloormas_Init(EnFloormas* this, GlobalContext* globalCtx)
{
    GlobalContext* gctx = globalCtx;
    s32 temp_v1;
    char pad[4];

    Actor_ProcessInitChain(&this->actor, initChain);
    ActorShape_Init(&this->actor.shape, 0.0f, (void*)&func_80024A14, 50.0f);
    func_800A46F8(globalCtx, &this->skelAnime, &D_06008FB0, &D_06009DB0, &this->unk_19C, &this->unk_232, 0x19);
    ActorCollider_AllocCylinder(globalCtx, &this->colCylinder);
    ActorCollider_InitCylinder(globalCtx, &this->colCylinder, &this->actor, &colCylinderInit);
    func_80061ED4(&this->actor.sub_98, &damageChart, &D_80A1A49C);
    this->unk_198 = -0x640;
    temp_v1 = this->actor.params & 0x8000;

    this->actor.params = this->actor.params & 0x7FFF;
    if (temp_v1 != 0)
    {
        this->actor.flags |= 0x80;
        this->actor.draw = (ActorFunc)&func_80A1A350;
    }

    if (this->actor.params == 0x10)
    {
        this->actor.draw = NULL;
        this->actor.flags &= ~1;
        this->actionFunc = (ActorFunc)&func_80A19B9C;
    }
    else
    {
        /*
        Actor* Actor_Spawn(ActorContext* actorCtx, GlobalContext* globalCtx, s16 actorId,
                   f32 posX, f32 posY, f32 posZ, s16 rotX, s16 rotY, s16 rotZ, s16 params);*/
        this->actor.attachedA = Actor_Spawn(&gctx->actorCtx, gctx, 0x8E, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, temp_v1 + 0x10);
        if (this->actor.attachedA == NULL)
        {
            Actor_Kill(&this->actor);
            return;
        }
        this->actor.attachedB = Actor_Spawn(&gctx->actorCtx, gctx, 0x8E, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, temp_v1 + 0x10);
        if (this->actor.attachedB == NULL)
        {
            Actor_Kill(this->actor.attachedA);
            Actor_Kill(&this->actor);
            return;
        }
        this->actor.attachedA->attachedB = &this->actor;
        this->actor.attachedA->attachedA = this->actor.attachedB;
        this->actor.attachedB->attachedA = &this->actor;
        this->actor.attachedB->attachedB = this->actor.attachedA;
        func_80A17780(this);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/EnFloormas_Init.s")
#endif

void EnFloormas_Destroy(EnFloormas* this, GlobalContext* globalCtx)
{
    ColliderCylinderMain *col = &this->colCylinder;
    ActorCollider_FreeCylinder(globalCtx, col);
}

void func_80A17748(EnFloormas* this)
{
    this->colCylinder.base.unk_14 = 0xC;
    this->colCylinder.base.collideFlags |= 4;
    this->unk_196 = 0x28;
}

void func_80A17768(EnFloormas* this)
{
    this->colCylinder.base.unk_14 = 0;
    this->unk_196 = 0;
    this->colCylinder.base.collideFlags &= ~(4);
}

void func_80A18500(EnFloormas* this, GlobalContext* globalCtx);
void func_80A17780(EnFloormas* this)
{
    func_800A51E8(&this->skelAnime, &D_06009DB0);
    this->actionFunc = (ActorFunc)&func_80A18500;
    this->actor.speedXZ = 0.0f;
}
void func_80A185C4(EnFloormas* this, GlobalContext* globalCtx);
extern u32 D_0600A054;
void func_80A177C8(EnFloormas* this)
{
    func_800A5240(&this->skelAnime, &D_0600A054, -3.0f);
    this->actionFunc = (ActorFunc)&func_80A185C4;
}

void func_80A187E4(EnFloormas* this, GlobalContext* globalCtx);
void func_80A18650(EnFloormas* this, GlobalContext* globalCtx);
extern u32 D_060041F4;
void func_80A17808(EnFloormas* this)
{
    if (this->actionFunc != (ActorFunc)&func_80A187E4)
    {
        func_800A5384(&this->skelAnime, &D_060041F4, 1.5f);
    }
    else
    {
        this->skelAnime.animPlaybackSpeed = 1.5f;
    }

    this->unk_194 = Math_Rand_S16Offset(2, 4);
    this->actionFunc = (ActorFunc)&func_80A18650;
    this->actor.speedXZ = 1.5f;
}
void func_80A187AC(EnFloormas* this, GlobalContext* globalCtx);
extern u32 D_06009244;
void func_80A17894(EnFloormas* this)
{
    func_800A51E8(&this->skelAnime, &D_06009244);
    this->actionFunc = (ActorFunc)&func_80A187AC;
    this->actor.speedXZ = 0.0f;
}

void func_80A187E4(EnFloormas* this, GlobalContext* globalCtx);
void func_80A178DC(EnFloormas* this)
{
    this->unk_194 = 0;
    this->actionFunc = (ActorFunc)&func_80A187E4;
    this->actor.speedXZ = 5.0f;
    this->skelAnime.animPlaybackSpeed = 3.0f;
}

#ifdef NON_MATCHING
// needs object fix
extern u32 D_06002158;
#define UNK_FLOAT1 0.0040000001899898052215576171875f
#define UNK_FLOAT2 0.066666670143604278564453125f
#define UNK_FLOAT3 0.13333334028720855712890625f

void func_80A188F0(EnFloormas* this, GlobalContext* globalCtx);
void func_80A17908(EnFloormas* this)
{
    s16 temp_v1;
    u32 skelAnimeFrameCount;
    u32 skelAnimeChange;

    temp_v1 = this->unk_196 - this->actor.shape.rot.y;
    this->actor.speedXZ = 0.0f;
    if (temp_v1 > 0)
    {
        func_800A5240(&this->skelAnime, &D_06002158, -3.0f);
    }
    else
    {
        SkelAnime_ChangeAnimation(&this->skelAnime, (u32)&D_06002158, -1.0f, (f32) SkelAnime_GetFrameCount((u32)&D_06002158), 0.0f, 2, -3.0f);
    }
    if (UNK_FLOAT1 < this->actor.scale.x)
    {
        this->unk_196 = ((f32) temp_v1 * UNK_FLOAT2);
    }
    else
    {
        this->skelAnime.animPlaybackSpeed = this->skelAnime.animPlaybackSpeed + this->skelAnime.animPlaybackSpeed;
        this->unk_196 = (s32) ((f32) temp_v1 * UNK_FLOAT3);
    }
    this->actionFunc = (ActorFunc)&func_80A188F0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A17908.s")
#endif

extern u32 D_06009520;
void func_80A18AB4(EnFloormas* this, GlobalContext* globalCtx);
void func_80A17A38(EnFloormas* this, GlobalContext* globalCtx)
{
    u32 *objSegFrameCount = &D_06009520;
    u32 *objSegChangeAnime = &D_06009520;

    SkelAnime_ChangeAnimation(&this->skelAnime, objSegChangeAnime, 3.0f, 0, (f32) SkelAnime_GetFrameCount(objSegFrameCount), 2, -3.0f);
    this->actor.speedXZ = 0.0f;
    this->actor.gravity = 0.0f;
    func_80A17748(this);
    func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 15.0f, 6, 20.0f, 0x12C, 0x64, 1);
    Audio_PlayActorSound2(&this->actor, 0x3930);
    this->actionFunc = (ActorFunc)&func_80A18AB4;
}

void func_80A18C78(EnFloormas* this, GlobalContext* globalCtx);
#define UNK_GRAVITY -0.1500000059604644775390625f
void func_80A17B10(EnFloormas* this)
{
    this->unk_194 = 0x19;
    this->actor.gravity = UNK_GRAVITY;
    this->actionFunc = (ActorFunc)&func_80A18C78;
    this->actor.speedXZ = 0.5f;
}

extern u32 D_060019CC;
void func_80A18D68(EnFloormas* this, GlobalContext* globalCtx);
void func_80A17B40(EnFloormas* this)
{
    SkelAnime_ChangeAnimation(&this->skelAnime, &D_060019CC, 1.0f, 41.0f, 42.0f, 2, 5.0f);
    if ((this->actor.speedXZ < 0.0f) || (this->actionFunc != (ActorFunc)&func_80A18C78))
    {
        this->unk_194 = 0x1E;
    }
    else
    {
        this->unk_194 = 0x2D;
    }
    this->actor.gravity = -1.0f;
    this->actionFunc = (ActorFunc)&func_80A18D68;
}

s16 D_80A1A470[22] =
{
    0x0011, 0x0939, 0x1001, 0x0000, 0x0000, 0x0000, 0xFFCF, 0xFFFF, 0x0410, 0x0000, 0xFFCF, 0xFFFF, 0x0000, 0x0000, 0x0905, 0x0100, 0x0019, 0x0028, 0x0000, 0x0000, 0x0000, 0x0000,
};

void func_80A1A350(EnFloormas* this, GlobalContext* globalCtx);
#define UNK_FLOATBEC1 0.60000002384185791015625f

void func_80A17BEC(EnFloormas* this)
{
    u32* objSkelAnimeFrameCount = &D_060019CC;
    u32* objSkelAnimeChangeAnimation = &D_060019CC;
    s32 temp_t7;

    Actor_SetScale(&this->actor, 0.004f);
    this->actor.flags |= 0x10;
    if ((this->actor.flags & 0x80) == 0x80)
    {
        this->actor.draw = (ActorFunc)&func_80A1A350;
    }
    else
    {
        this->actor.draw = &EnFloormas_Draw;
    }
    this->actor.shape.rot.y = this->actor.attachedA->shape.rot.y + 0x5555;
    this->actor.posRot.pos = this->actor.attachedA->posRot.pos;
    this->actor.params = 0x10;
    SkelAnime_ChangeAnimation(&this->skelAnime, objSkelAnimeChangeAnimation, 1.0f, 41.0f, (f32) SkelAnime_GetFrameCount(objSkelAnimeFrameCount), 2, 0.0f);
    this->colCylinder.dim.radius = (f32) D_80A1A470[16] * UNK_FLOATBEC1;
    this->colCylinder.dim.height = (f32)D_80A1A470[17] * UNK_FLOATBEC1;
    this->colCylinder.body.bumperFlags &= ~4;
    this->actor.speedXZ = 4.0f;
    this->actor.velocity.y = 7.0f;
    this->actor.sub_98.health = D_80A1A49C.health >> 1;
    this->actionFunc = (ActorFunc)&func_80A18F50;
}

void func_80A18FD8(EnFloormas* this, GlobalContext* globalCtx);
void func_80A17D4C(EnFloormas* this)
{
    func_800A5384(&this->skelAnime, &D_060041F4, 4.5f);
    this->actionFunc = (ActorFunc)&func_80A18FD8;
    this->actor.speedXZ = 5.0f;
}

void func_80A190C8(EnFloormas* this, GlobalContext* globalCtx);
void func_80A17D9C(EnFloormas* this)
{
    if (this->actionFunc != (ActorFunc)&func_80A18FD8)
    {
        func_800A5384(&this->skelAnime, &D_060041F4, 4.5f);
    }
    this->actionFunc = &func_80A190C8;
    this->actor.speedXZ = 5.0f;
}

Vec3f D_80A1A4D0 =
{
    0.0f, 0.0f, 0.0f,
};

Vec3f D_80A1A4DC =
{
    0.0f, 0.0f, 0.0f,
};
void func_80A19230(EnFloormas* this, GlobalContext* globalCtx);
void func_80A17DFC(EnFloormas* this, GlobalContext *globalCtx)
{
    Vec3f pos;

    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    pos.x = this->actor.posRot.pos.x;
    pos.y = this->actor.posRot.pos.y + 15.0f;
    pos.z = this->actor.posRot.pos.z;
    func_8002A6B8(globalCtx, &pos, &D_80A1A4D0, &D_80A1A4DC, 0x96, -0xA, 0xFF, 0xFF, 0xFF, 0xFF, 0, 0, 0xFF, 1, 9, 1);
    this->actionFunc = (ActorFunc)&func_80A19230;
}

void func_80A196DC(EnFloormas* this, GlobalContext* globalCtx);
void func_80A17ED4(EnFloormas* this)
{
    SkelAnime_ChangeAnimation(&this->skelAnime, &D_060019CC, 2.0f, 0.0f, 41.0f, 2, 0.0f);
    this->actionFunc = (ActorFunc)&func_80A196DC;
    this->actor.speedXZ = 0.0f;
}

void func_80A1928C(EnFloormas* this, GlobalContext* globalCtx);
void func_80A17F3C(EnFloormas* this)
{
    SkelAnime_ChangeAnimation(&this->skelAnime, &D_060019CC, 2.0f, 0.0f, 41.0f, 2, 0.0f);
    this->actionFunc = (ActorFunc)&func_80A1928C;
    this->actor.speedXZ = 0.0f;
}

#ifdef NON_MATCHING
#define FLOAT_0_1 0.1f
void func_80A17FA4(EnFloormas* this, Player* player)
{
    f32 temp_f0;
    f32 temp_f12;
    f32 phi_f0;
    f32 phi_f2;

    SkelAnime_ChangeAnimation(&this->skelAnime, &D_060019CC, 1.0f, 36.0f, 45.0f, 2, -3.0f);
    this->actor.flags &= ~1;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    func_80A17748(this);
    if (LINK_IS_CHILD)
    {
        temp_f0 = -this->actor.yDistanceFromLink;
        if (temp_f0 < 20.0f)
        {
            phi_f0 = 20.0f;
        }
        else
        {
            if (30.0f < temp_f0)
            {
                phi_f0 = 30.0f;
            }
            else
            {
                phi_f0 = temp_f0;
            }
        }
        phi_f2 = -10.0f;
    }
    else
    {
        temp_f0 = -this->actor.yDistanceFromLink;
        if (temp_f0 < 25.0f)
        {
            phi_f0 = 25.0f;
        }
        else
        {
            if (45.0f < temp_f0)
            {
                phi_f0 = 45.0f;
            }
            else
            {
                phi_f0 = temp_f0;
            }
        }
        phi_f2 = -70.0f;
    }
    this->actor.posRot.pos.y = player->actor.posRot.pos.y + phi_f0;
    temp_f12 = phi_f2 * 0.01f;
    this->actor.posRot.pos.x = Math_Sins(this->actor.shape.rot.y) * (phi_f2 * 0.01f) + player->actor.posRot.pos.x;
    this->actor.posRot.pos.z = Math_Coss(this->actor.shape.rot.y) * (phi_f2 * 0.01f) + player->actor.posRot.pos.z;
    this->actor.shape.rot.x = -0x4CE0;
    this->actionFunc = func_80A193C4;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A17FA4.s")
#endif

void func_80A198EC(EnFloormas* this, GlobalContext* globalCtx);
void func_80A1817C(EnFloormas* this)
{
    func_800A51E8(&this->skelAnime, &D_06009DB0);
    this->unk_194 = 0;
    this->unk_19A += 0x5DC;
    func_80A17748(this);
    this->actionFunc = (ActorFunc)&func_80A198EC;
}

void func_80A19B9C(EnFloormas* this, GlobalContext *globalCtx);
void func_80A181D4(EnFloormas* this)
{
    EnFloormas* attachedA = (EnFloormas*)this->actor.attachedA;
    EnFloormas* attachedB = (EnFloormas*)this->actor.attachedB;


    if ((attachedA->actionFunc == (ActorFunc)&func_80A19B9C) &&
        (attachedB->actionFunc == (ActorFunc)&func_80A19B9C))
    {
            Actor_Kill(&attachedA->actor);
            Actor_Kill(&attachedB->actor);
            Actor_Kill(&this->actor);
            return;
    }
    this->actor.draw = NULL;
    this->actionFunc = (ActorFunc)&func_80A19B9C;
    this->actor.flags &= ~0x11;
}

extern u32 D_06000590;
void func_80A19BA8(EnFloormas* this, GlobalContext* globalCtx);
void func_80A18254(EnFloormas* this)
{
    func_800A5240(&this->skelAnime, &D_06000590, -3.0f);
    if ((this->colCylinder.body.colliding->toucher.flags & 0x1F824) != 0)
    {
        this->actor.posRot.rot.y = this->colCylinder.base.ac->posRot.rot.y;
    }
    else
    {
        this->actor.posRot.rot.y = func_8002DA78(&this->actor,this->colCylinder.base.ac) + 0x8000;
    }
    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0x14);
    this->actionFunc = (ActorFunc)&func_80A19BA8;
    this->actor.speedXZ = 5.0f;
    this->actor.velocity.y = 5.5f;
}

#ifdef NON_MATCHING
// close, some regalloc
extern u32 D_06000EA4;
void func_80A19C6C(EnFloormas* this, GlobalContext* globalCtx);
void func_80A18310(EnFloormas* this)
{
    func_800A51E8(&this->skelAnime, &D_06000EA4);
    this->actionFunc = (ActorFunc)&func_80A19C6C;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A18310.s")
#endif

#define FLOAT_8364 0.0040000001899898052215576171875f
void func_80A19CA4(EnFloormas* this, GlobalContext* globalCtx);
void func_80A18364(EnFloormas* this)
{
    SkelAnime_ChangeAnimation(&this->skelAnime, &D_060019CC, 1.5f, 0, 20.0f, 2, -3.0f);
    this->actor.speedXZ = 0.0f;
    if (this->actor.sub_98.damageEffect == 4)
    {
        func_8003426C(&this->actor, -0x8000, 0xFF, 0, 0x50);
    }
    else
    {
        func_8003426C(&this->actor, 0, 0xFF, 0, 0x50);
        if (FLOAT_8364 < this->actor.scale.x)
        {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
        }
        else
        {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
        }
    }
    this->unk_194 = 0x50;
    this->actionFunc = (ActorFunc)&func_80A19CA4;
}

#define FLOAT_8464 0.0040000001899898052215576171875f
void func_80A18464(EnFloormas* this, GlobalContext* globalCtx)
{
    if (FLOAT_8464 < this->actor.scale.x)
    {
        this->actor.shape.rot.y = this->actor.rotTowardsLinkY + 0x8000;
        func_80A17BEC((EnFloormas*)this->actor.attachedB);
        func_80A17BEC((EnFloormas*)this->actor.attachedA);
        func_80A17BEC(this);
        Audio_PlayActorSound2(this, NA_SE_EN_FLOORMASTER_SPLIT);
        return;
    }
    Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0x90);
    func_80A17DFC(this, globalCtx);
}

void func_80A18500(EnFloormas* this, GlobalContext* globalCtx)
{
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0)
    {
        if (this->actor.xzDistanceFromLink < 400.0f)
        {
            if (func_8002E084(&this->actor, 0x4000) == 0)
            {
                this->unk_196 = this->actor.rotTowardsLinkY;
                func_80A17908(this);
                return;
            }
        }
        if (this->actor.xzDistanceFromLink < 280.0f)
        {
            if (func_8002E084(&this->actor, 0x2000) != 0)
            {
                func_80A17A38(this, globalCtx);
                return;
            }
        }
        func_80A177C8(this);
    }
}

#define FLOAT_85C4 0.0040000001899898052215576171875f
void func_80A185C4(EnFloormas* this, GlobalContext* globalCtx)
{
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0)
    {
        if (FLOAT_85C4 < this->actor.scale.x)
        {
            func_80A17808(this);
            return;
        }
        if (this->actor.params == 0x20)
        {
            func_80A17D9C(this);
            return;
        }
        func_80A17D4C(this);
    }
}

void func_80A18650(EnFloormas* this, GlobalContext* globalCtx)
{
    s32 temp_ret;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    temp_ret = func_800A56C8(&this->skelAnime, 0.0f);
    if (temp_ret != 0)
    {
        if (this->unk_194 != 0)
        {
            this->unk_194--;
        }
    }
    if ((((temp_ret != 0) || (func_800A56C8(&this->skelAnime, 12.0f) != 0)) || (func_800A56C8(&this->skelAnime, 24.0f) != 0)) || (func_800A56C8(&this->skelAnime, 36.0f) != 0))
    {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_WALK);
    }
    else
    {

    }
    if (this->actor.xzDistanceFromLink < 320.0f)
    {
        if (func_8002E084(&this->actor, 0x4000) != 0)
        {
            func_80A178DC(this);
            return;
        }
    }
    if ((this->actor.bgCheckFlags & 8) != 0)
    {
        this->unk_196 = this->actor.unk_7E;
        func_80A17908(this);
        return;
    }
    if (this->actor.xzDistanceFromLink < 400.0f)
    {
        if (func_8002E084(&this->actor, 0x4000) == 0)
        {
            this->unk_196 = this->actor.rotTowardsLinkY;
            func_80A17908(this);
            return;
        }
    }
    if (this->unk_194 == 0)
    {
        func_80A17894(this);
    }
}

void func_80A187AC(EnFloormas* this, GlobalContext* globalCtx)
{
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0)
    {
        func_80A17780(this);
    }
}

void func_80A187E4(EnFloormas* this, GlobalContext* globalCtx)
{
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((((func_800A56C8(&this->skelAnime, 0.0f) != 0) || (func_800A56C8(&this->skelAnime, 12.0f) != 0)) || (func_800A56C8(&this->skelAnime, 24.0f) != 0)) || (func_800A56C8(&this->skelAnime, 36.0f) != 0))
    {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_WALK);
    }
    else
    {

    }
    Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.rotTowardsLinkY, 3, 0x71C);
    if (this->actor.xzDistanceFromLink < 280.0f)
    {
        if (func_8002E084(&this->actor, 0x2000) != 0)
        {
            if ((this->actor.bgCheckFlags & 8) == 0)
            {
                func_80A17A38(this, globalCtx);
                return;
            }
        }
    }
    if (400.0f < this->actor.xzDistanceFromLink)
    {
        func_80A17808(this);
    }
}

#ifdef NON_MATCHING
#define FLOAT_88F0 0.0040000001899898052215576171875f
#define FLOAT_88F09_2 2700.0f
#define FLOAT_88F09_3 2700.0f
// close some stack and two transposed instructions
void func_80A188F0(EnFloormas* this, GlobalContext* globalCtx)
{
    f32 sp30;
    f32 sp2C;
    f32 phi_return;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0)
    {
        func_80A177C8(this);
    }
    if (((0.0f < this->skelAnime.animPlaybackSpeed) && (func_800A56C8(&this->skelAnime, 21.0f) != 0)) ||
        ((0.0f > this->skelAnime.animPlaybackSpeed) && (func_800A56C8(&this->skelAnime, 6.0f) != 0)))
    {
        if (FLOAT_88F0 < this->actor.scale.x)
        {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_WALK);
        }
        else
        {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLOORMASTER_SM_WALK);
        }
    }
    if (this->skelAnime.animCurrentFrame >= 7.0f && this->skelAnime.animCurrentFrame < 22.0f)
    {
        sp30 = Math_Sins(this->actor.shape.rot.y + 0x4268);
        sp2C = Math_Coss(this->actor.shape.rot.y + 0x4268);
        this->actor.shape.rot.y += this->unk_196;
        this->actor.posRot.pos.x -= (this->actor.scale.x * FLOAT_88F09_2) *
                                    (Math_Sins(this->actor.shape.rot.y + 0x4268) - sp30);
        this->actor.posRot.pos.z -= (this->actor.scale.x * FLOAT_88F09_2) *
                                    (Math_Coss(this->actor.shape.rot.y + 0x4268) - sp2C);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A188F0.s")
#endif

void func_80A18AB4(EnFloormas* this, GlobalContext* globalCtx)
{
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0)
    {
        func_80A17B10(this);
    }
    this->actor.shape.rot.y += 0x140;
    this->actor.posRot.pos.y += 10.0f;
    Math_SmoothScaleMaxS(&this->actor.posRot.pos.y, this->actor.rotTowardsLinkY, 3, 0xAAA);
    Math_ApproxS(&this->unk_198, 0x4B0, 0x64);
}

Vec3f D_80A1A4E8 =
{
    0.0f, 0.0f, 0.0f
};

void func_80A18B38(EnFloormas*this, GlobalContext* globalCtx)
{
    Vec3f pos;
    Vec3f pos2;

    pos.x = this->actor.posRot.pos.x;
    pos.z = this->actor.posRot.pos.z;
    pos.y = this->actor.unk_80;

    pos2.y = 2.0f;
    pos2.x = Math_Sins(this->actor.shape.rot.y + 0x6000) * 7.0f;
    pos2.z = Math_Coss(this->actor.shape.rot.y + 0x6000) * 7.0f;

    func_800286CC(globalCtx, &pos, &pos2, &D_80A1A4E8, 0x1C2, 0x64);

    pos2.x = Math_Sins(this->actor.shape.rot.y - 0x6000) * 7.0f;
    pos2.z = Math_Coss(this->actor.shape.rot.y - 0x6000) * 7.0f;

    func_800286CC(globalCtx, &pos, &pos2, &D_80A1A4E8, 0x1C2, 0x64);

    func_8002F974(this, 0x3034);
}

#define FLOAT_8C78 0.3333333432674407958984375f
void func_80A18C78(EnFloormas* this, GlobalContext* globalCtx)
{
    f32 distFromGround;

    if (this->unk_194 != 0)
    {
        this->unk_194--;
    }

    Math_ApproxF(&this->actor.speedXZ, 15.0f, SQ(this->actor.speedXZ) * FLOAT_8C78);
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, -0x1680, 0x140);

    distFromGround = this->actor.posRot.pos.y - this->actor.unk_80;
    if (distFromGround < 10.0f)
    {
        this->actor.posRot.pos.y = this->actor.unk_80 + 10.0f;
        this->actor.speedXZ = 0.0f;
        this->actor.velocity.y = 0.0f;
    }

    if (distFromGround < 12.0f)
    {
        func_80A18B38(this, globalCtx);
    }

    if (((this->actor.bgCheckFlags & 8) != 0) || (this->unk_194 == 0))
    {
        func_80A17B40(this);
    }
}

#define FLOAT_8D68 0.0040000001899898052215576171875f
void func_80A18D68(EnFloormas* this, GlobalContext* globalCtx)
{
    s32 sp24;
    s32 phi_a0;

    sp24 = this->actor.bgCheckFlags & 1;
    if ((this->actor.bgCheckFlags & 2) != 0)
    {
        if (this->actor.params != 0x40)
        {
            func_80A17768(this);
        }

        if (this->actor.velocity.y < -4.0f)
        {
            if (FLOAT_8D68 < this->actor.scale.x)
            {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_LAND);
            }
            else
            {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLOORMASTER_SM_LAND);
            }
        }
    }
    if ((this->actor.bgCheckFlags & 8) != 0)
    {
        this->actor.speedXZ = 0.0f;
    }

    if (sp24 != 0)
    {
        Math_ApproxF(&this->actor.speedXZ, 0.0f, 2.0f);
    }

    if (0.0f < this->actor.speedXZ)
    {
        if ((this->actor.posRot.pos.y - this->actor.unk_80) < 12.0f)
        {
            func_80A18B38(this, globalCtx);
        }
    }

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0)
    {
        if (this->unk_194 != 0)
        {
            this->unk_194--;
        }

        if (this->unk_194 == 0 && sp24 != 0)
        {
            if (this->skelAnime.animFrameCount < 45.0f)
            {
                this->skelAnime.animFrameCount = (f32) SkelAnime_GetFrameCount(&D_060019CC);
            }
            else
            {
                if (this->actor.params == 0x40)
                {
                    func_80A1817C(this);
                }
                else
                {
                    func_80A177C8(this);
                    this->unk_19A = 0x32;
                }
            }
        }
    }

    Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0, 0x140);
    Math_ApproxS(&this->unk_198, -0x640, 0x64);
}

#ifdef NON_MATCHING
// close regalloc
void func_80A18F50(EnFloormas* this, GlobalContext* globalCtx)
{
    if ((this->actor.bgCheckFlags & 1) != 0)
    {
        if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0)
        {
            this->unk_19A = 0x32;
            this->actor.flags |= 1;
            func_80A177C8(this);
        }
        Math_ApproxF(&this->actor.speedXZ, 0.0f, 1.0f);
    }
    if ((this->actor.bgCheckFlags & 2) != 0)
    {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLOORMASTER_SM_LAND);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A18F50.s")
#endif

void func_80A18FD8(EnFloormas* this, GlobalContext* globalCtx)
{
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_19A != 0)
    {
        this->unk_19A--;
    }
    if ((func_800A56C8(&this->skelAnime, 0.0f) != 0) || (func_800A56C8(&this->skelAnime, 18.0f) != 0))
    {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLOORMASTER_SM_WALK);
    }

    if (this->unk_19A == 0)
    {
        func_80A17D9C(this);
        return;
    }
    if ((this->actor.bgCheckFlags & 8) != 0)
    {
        this->unk_196 = this->actor.unk_7E;
        func_80A17908(this);
        return;
    }
    if (this->actor.xzDistanceFromLink < 120.0f)
    {
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.rotTowardsLinkY + 0x8000, 0x38E);
    }
}

void func_80A190C8(EnFloormas* this, GlobalContext* globalCtx)
{
    Actor* phi_a3;
    s32 bgCheck;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_800A56C8(&this->skelAnime, 0.0f) != 0) || (func_800A56C8(&this->skelAnime, 18.0f) != 0))
    {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLOORMASTER_SM_WALK);
    }
    bgCheck = this->actor.bgCheckFlags & 8;
    if (bgCheck != 0)
    {
        this->unk_196 = this->actor.unk_7E;
        func_80A17908(this);
        return;
    }

    if (this->actor.params == 0x20)
    {
        if (0x40 == this->actor.attachedA->params)
        {
            phi_a3 = this->actor.attachedA;
        }
        else if(0x40 == this->actor.attachedB->params)
        {
            phi_a3 = this->actor.attachedB;
        }
        else
        {
            this->actor.params = 0x10;
            return;
        }

        Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, func_8002DA78(&this->actor, phi_a3), 0x38E);
        if (func_8002DB8C(&this->actor, phi_a3) < 80.0f)
        {
            func_80A17ED4(this);
            return;
        }
    }
    else
    {
        Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.rotTowardsLinkY, 3, 0x71C);
        if (this->actor.xzDistanceFromLink < 80.0f)
        {
            func_80A17F3C(this);
        }
    }
}

void func_80A19230(EnFloormas* this, GlobalContext* globalCtx)
{
    if (Math_ApproxF(&this->actor.scale.x, 0.0f, 0.0015f) != 0)
    {
        func_80A181D4(this);
    }
    this->actor.scale.z = this->actor.scale.x;
    this->actor.scale.y = this->actor.scale.x;
}

void func_80A1928C(EnFloormas* this, GlobalContext* globalCtx)
{
    Player *player = PLAYER;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->skelAnime.animCurrentFrame < 20.0f)
    {
        Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.rotTowardsLinkY, 2, 0xE38);
        return;
    }

    if (func_800A56C8(&this->skelAnime, 20.0f) != 0)
    {
        this->actor.speedXZ = 5.0f;
        this->actor.velocity.y = 7.0f;
    }
    else
    {
        if ((this->actor.bgCheckFlags & 2) != 0)
        {
            this->unk_194 = 0x32;
            this->actor.speedXZ = 0.0f;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLOORMASTER_SM_LAND);
            func_80A17B40(this);
            return;
        }

        if (this->actor.yDistanceFromLink < -10.0f)
        {
            if ((this->colCylinder.base.maskA & 2) != 0)
            {
                if (&player->actor == this->colCylinder.base.ot)
                {
                    globalCtx->unk_11D4C(globalCtx, player);
                    func_80A17FA4(this, player);
                }
            }
        }
    }
}

#ifdef NON_MATCHING
void func_80A193C4(EnFloormas* this, GlobalContext* globalCtx)
{
    Player* player = PLAYER;
    f32 temp_f12;
    f32 phi_f0;
    f32 phi_f2;
    f32 phi_f12;
    f32 phi_f2_2;
    f32 phi_f2_3;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0)
    {
        if (0.0f < this->skelAnime.animPlaybackSpeed)
        {
            this->skelAnime.animPlaybackSpeed = -1.0f;
            this->skelAnime.animFrameCount = 36.0f;
            this->skelAnime.unk_0C = 45.0f;
        }
        else
        {
            this->skelAnime.animPlaybackSpeed = 1.0f;
            this->skelAnime.animFrameCount = 36.0f;
            this->skelAnime.unk_0C = 45.0f;
        }
    }

    if (LINK_IS_CHILD)
    {
        if (-this->actor.yDistanceFromLink < 20.0f)
        {
            phi_f0 = 20.0f;
            phi_f2 = -10.0f;
            phi_f12 = 45.0f;
        }
        else
        {
            if (30.0f < -this->actor.yDistanceFromLink)
            {
                phi_f2_2 = 30.0f;
            }
            else
            {
                phi_f2_2 = -this->actor.yDistanceFromLink;
            }
            phi_f0 = phi_f2_2;
            phi_f2 = -10.0f;
            phi_f12 = 30.0f;
        }
    }
    else
    {
        if (-this->actor.yDistanceFromLink < 25.0f)
        {
            phi_f0 = 25.0f;
        }
        else
        {
            if (45.0f < -this->actor.yDistanceFromLink)
            {
                phi_f2_3 = 45.0f;
            }
            else
            {
                phi_f2_3 = -this->actor.yDistanceFromLink;
            }
            phi_f0 = phi_f2_3;
        }
        phi_f2 = -30.0f;
        phi_f12 = 45.0f;
    }
    this->actor.posRot.pos.y = player->actor.posRot.pos.y + phi_f0;
    //arg0->unk28 = (f32) (arg1->unk1C44->unk28 + phi_f0);

    //sp34 = (void *) arg1->unk1C44;
    //sp38 = arg0;
    temp_f12 = phi_f2 * 0.1f;
    this->actor.posRot.pos.x = Math_Sins(this->actor.shape.rot.y) * temp_f12 + player->actor.posRot.pos.x;
    //arg0->unk24 = (f32) ((Math_Sins(phi_f12, arg0->unkB6, arg0, arg1->unk1C44) * temp_f12) + arg1->unk1C44->unk24);
    this->actor.posRot.pos.z = Math_Coss(this->actor.shape.rot.y) * temp_f12 + player->actor.posRot.pos.z;
    //arg0->unk2C = (f32) ((Math_Coss(temp_f12, arg0->unkB6, arg0, arg1->unk1C44) * temp_f12) + arg1->unk1C44->unk2C);
    if (((player->stateFlags2 & 0x80) == 0) || (player->unk_A78 < 0))
    {
        if ((((EnFloormas*)this->actor.attachedA)->actionFunc == (ActorFunc)&func_80A193C4) || ((EnFloormas*)this->actor.attachedA)->actionFunc == (ActorFunc)&func_80A19B9C)
        {
            if (((EnFloormas*)this->actor.attachedB)->actionFunc == (ActorFunc)&func_80A193C4 || ((EnFloormas*)this->actor.attachedB)->actionFunc == (ActorFunc)&func_80A19B9C)
            {
                this->actor.attachedA->params = 0x20;
                this->actor.attachedB->params = 0x20;
                this->actor.params = 0x40;
            }
        }

        this->actor.shape.rot.y = 0;
        this->actor.velocity.y = 6.0f;
        this->actor.flags |= 1;
        this->actor.speedXZ = -3.0f;
        func_80A17B40(this);
    }
    else
    {
        if ((this->unk_194 % 0x14) == 0)
        {
            if (LINK_IS_CHILD)
            {
                func_8002F7DC(&player->actor, NA_SE_VO_LI_DAMAGE_S_KID);
            }
            else
            {
                func_8002F7DC(&player->actor, NA_SE_VO_LI_DAMAGE_S);
            }
            globalCtx->unk_11D58(globalCtx, -8);
        }
    }

    Audio_PlayActorSound2(&this->actor, 0x3136);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A193C4.s")
#endif

void func_80A196DC(EnFloormas* this, GlobalContext* globalCtx)
{
    Actor* phi_s1;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (0x40 == this->actor.attachedA->params)
    {
        phi_s1 = this->actor.attachedA;
    }
    else if(0x40 == this->actor.attachedB->params)
    {
        phi_s1 = this->actor.attachedB;
    }
    else
    {
        if ((this->actor.bgCheckFlags & 2) != 0)
        {
            this->actor.params = 0x10;
            func_80A17B40(this);
        }
        return;
    }
    if (func_800A56C8(&this->skelAnime, 20.0f) != 0)
    {
        this->actor.speedXZ = 5.0f;
        this->actor.velocity.y = 7.0f;
    }

    else
    {
        if (this->skelAnime.animCurrentFrame < 20.0f)
        {
            Math_SmoothScaleMaxS(&this->actor.shape.rot.y, func_8002DA78(&this->actor, phi_s1), 2, 0xE38);
        }
        else
        {
            if ((((phi_s1->posRot.pos.y - this->actor.posRot.pos.y) < -10.0f) &&
                    (fabsf(this->actor.posRot.pos.x - phi_s1->posRot.pos.x) < 10.0f)) &&
                    (fabsf(this->actor.posRot.pos.z - phi_s1->posRot.pos.z) < 10.0f))
            {
                func_80A181D4(this);
                this->colCylinder.base.maskA |= 1;
            }
            else
            {
                if ((this->actor.bgCheckFlags & 2) != 0)
                {
                    this->actor.speedXZ = 0.0f;
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLOORMASTER_SM_LAND);
                    func_80A17B40(this);
                }
            }
        }
    }

    if (fabsf(this->actor.posRot.pos.x - phi_s1->posRot.pos.x) < 5.0f &&
        fabsf(this->actor.posRot.pos.z - phi_s1->posRot.pos.z) < 5.0f)
    {
        Math_ApproxF(&this->actor.speedXZ, 0, 2.0f);
    }
}

#ifdef NON_MATCHING
#define FLOAT_98EC 0.007000000216066837310791015625f
#define FLOAT_98EC_2 0.0040000001899898052215576171875f
extern u32 D_060039B0;
// regalloc
void func_80A198EC(EnFloormas* this, GlobalContext* globalCtx)
{
    EnFloormas *attachedA;
    EnFloormas *attachedB;
    s32 phi_a2;
    f32 sp30;
    f32 idk;


    phi_a2 = 0;

    if (this->unk_19A != 0)
    {
        this->unk_19A--;
    }

    attachedA = this->actor.attachedA;
    attachedB = this->actor.attachedB;

    if (this->unk_19A == 0)
    {
        if (attachedA->actionFunc != (ActorFunc)&func_80A19B9C)
        {
            func_80A17DFC(attachedA, globalCtx);
        }

        if (attachedB->actionFunc != (ActorFunc)&func_80A19B9C)
        {
            func_80A17DFC(attachedB, globalCtx);
        }
    }
    else
    {
        if ((attachedA->actionFunc != (ActorFunc)&func_80A19B9C) &&
            (attachedA->actionFunc != (ActorFunc)&func_80A19230))
        {
            phi_a2 = 1;
        }

        if ((attachedB->actionFunc != (ActorFunc)&func_80A19B9C) &&
            (attachedB->actionFunc != (ActorFunc)&func_80A19230))
        {
            phi_a2++;
        }
    }

    sp30 = this->actor.scale.x;

    if (phi_a2 == 1)
    {
        Math_ApproxF(&this->actor.scale.x, 0.007f, 0.0005f);
    }
    else if (phi_a2 == 0)
    {
        Math_ApproxF(&this->actor.scale.x, 0.01f, 0.0005f);
    }

    this->actor.scale.z = this->actor.scale.x;
    this->actor.scale.y = this->actor.scale.x;

    if (((sp30 == FLOAT_98EC) || (sp30 == FLOAT_98EC_2)) &&
        (sp30 != this->actor.scale.x))
    {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLOORMASTER_EXPAND);
    }

    this->colCylinder.dim.radius = ((f32)D_80A1A470[16] * 100.0f) * this->actor.scale.x;
    this->colCylinder.dim.height = ((f32)D_80A1A470[17] * 100.0f) * this->actor.scale.x;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0)
    {
        if (0.01f <= this->actor.scale.x)
        {
            this->actor.flags &= ~0x10;
            func_80A17768(this);
            this->actor.params = 0;
            this->colCylinder.body.bumperFlags |= 4;
            this->actor.sub_98.health = D_80A1A49C.health;
            func_80A177C8(this);
        }
        else
        {
            if (this->unk_194 == 0)
            {
                func_800A51E8(&this->skelAnime, &D_060039B0);
                this->unk_194 = 1;
            }
            else
            {
                func_800A51E8(&this->skelAnime, &D_06009DB0);
                this->unk_194 = 0;
            }
        }
    }
    func_8002F974(&this->actor, 0x3133);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/func_80A198EC.s")
#endif

void func_80A19B9C(EnFloormas* this, GlobalContext* globalCtx)
{
}

void func_80A19BA8(EnFloormas* this, GlobalContext* globalCtx)
{
    if(SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0){
        if(this->actor.sub_98.health == 0)
        {
            func_80A18464(this, globalCtx);
        }
        else
        {
            func_80A18310(this);
        }
    }

    if(func_800A56C8(&this->skelAnime, 13.0f) != 0){
        if(0.004f < this->actor.scale.x)
        {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
        }
        else
        {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
        }
    }
    Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.2f);
}

void func_80A19C6C(EnFloormas* this, GlobalContext* globalCtx)
{
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0)
    {
        func_80A177C8(this);
    }
}

void func_80A19CA4(EnFloormas* this, GlobalContext* globalCtx)
{
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_194 != 0)
    {
        this->unk_194--;
    }
    if (this->unk_194 == 0)
    {
        if (this->actor.sub_98.health == 0)
        {
            func_80A18464(this, globalCtx);
            return;
        }
        func_80A177C8(this);
    }
}

void func_80A19D18(EnFloormas* this, GlobalContext* globalCtx)
{
    char pad[4];
    s32 phi_v1;

    if ((this->colCylinder.base.collideFlags & 2) != 0)
    {
        this->colCylinder.base.collideFlags &= ~2;
        func_80035650(&this->actor, &this->colCylinder.body, 1);
        if ((this->actor.sub_98.damageEffect != 0) || (this->actor.sub_98.damage != 0))
        {
            if (this->colCylinder.base.unk_14 != 0xC)
            {
                phi_v1 = 0;
                if (this->actor.scale.x < 0.01f)
                {
                    phi_v1 = 1;
                }
                if (phi_v1 != 0)
                {
                    if ((this->colCylinder.body.colliding->toucher.flags & 0x80) != 0)
                    {
                        this->actor.sub_98.damage = 2;
                        this->actor.sub_98.damageEffect = 0;
                    }
                }
                if (Actor_ApplyDamage(&this->actor) == 0)
                {
                    if (phi_v1 != 0)
                    {
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLOORMASTER_SM_DEAD);
                    }
                    else
                    {
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_DEAD);
                    }
                    func_80032C7C(globalCtx, &this->actor);
                    this->actor.flags &= ~1;
                }
                else if (this->actor.sub_98.damage != 0)
                {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_DAMAGE);
                }

                if ((this->actor.sub_98.damageEffect == 4) || (this->actor.sub_98.damageEffect == 1))
                {
                    if (this->actionFunc != (ActorFunc)&func_80A19CA4)
                    {
                        func_80A18364(this);
                        return;
                    }
                }
                else
                {
                    if (this->actor.sub_98.damageEffect == 2)
                    {
                        func_8002A65C(globalCtx, &this->actor, &this->actor.posRot.pos, (s16)(this->actor.scale.x * 4000.f), (s16)(this->actor.scale.x * 4000.f));
                    }
                    func_80A18254(this);
                }
            }
        }
    }
}

#ifdef NON_MATCHING
// stack
void EnFloormas_Update(EnFloormas* this, GlobalContext* globalCtx)
{
    char pad[4];

    if (this->actionFunc != (ActorFunc)&func_80A19B9C)
    {
        if ((this->colCylinder.base.colliderFlags & 2) != 0)
        {
            this->colCylinder.base.colliderFlags &= ~2;
            this->actor.speedXZ *= -0.5f;

            if (-5.0f < this->actor.speedXZ)
            {
                this->actor.speedXZ = -5.0f;
            }
            else
            {
                this->actor.speedXZ = this->actor.speedXZ;
            }

            this->actor.velocity.y = 5.0f;

            func_80A17B40(this);
        }
        func_80A19D18(this, globalCtx);
        this->actionFunc(this, globalCtx);

        if (this->actionFunc != (ActorFunc)&func_80A19BA8)
        {
            this->actor.posRot.rot.y = this->actor.shape.rot.y;
        }

        if (this->actionFunc != (ActorFunc)&func_80A193C4)
        {
            Actor_MoveForward(&this->actor);
        }

        func_8002E4B4(globalCtx, &this->actor, 20.0f, this->actor.scale.x * 3000.0f, 0.0f, 0x1D);
        ActorCollider_Cylinder_Update(&this->actor, &this->colCylinder);
        if (this->actionFunc == (ActorFunc)&func_80A18C78)
        {
            this->actor.flags |= 0x1000000;
            Actor_CollisionCheck_SetAT(globalCtx, &globalCtx->sub_11E60, &this->colCylinder);
        }
        if (this->actionFunc != (ActorFunc)&func_80A193C4)
        {
            if (this->actionFunc != (ActorFunc)&func_80A18F50)
            {
                if (this->actionFunc != (ActorFunc)&func_80A19BA8)
                {
                    if (this->actor.freeze == 0)
                    {
                        Actor_CollisionCheck_SetAC(globalCtx, &globalCtx->sub_11E60, &this->colCylinder);
                    }
                }
            }
            if ((this->actionFunc != (ActorFunc)&func_80A196DC) || (this->skelAnime.animCurrentFrame < 20.0f))
            {
                Actor_CollisionCheck_SetOT(globalCtx, &globalCtx->sub_11E60, &this->colCylinder);
            }
        }
        Actor_SetHeight(&this->actor, this->actor.scale.x * 2500.0f);

        if (this->colCylinder.base.unk_14 == 0xC)
        {
            if (this->unk_196 != 0)
            {
                this->unk_196--;
            }

            if (this->unk_196 == 0)
            {
                this->unk_196 = 0x28;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Floormas/EnFloormas_Update.s")
#endif

s32 func_80A1A128(GlobalContext* globalCtx, s32 arg1, s32 arg2, Actor* arg3, s32 arg4, EnFloormas *this)
{
    if (arg1 == 1)
    {
        arg3->initPosRot.pos.x += this->unk_198;
    }
    return 0;
}

extern u32 D_06008688;
void func_80A1A160(GlobalContext *globalCtx, s32 arg1, s32 arg2, s32 arg3, s32 arg4, Gfx **gfx)
{
    if (arg1 == 2)
    {
        Matrix_Push();
        Matrix_Translate(1600.0f, -700.0f, -1700.0f, MTXMODE_APPLY);
        Matrix_RotateY(1.0471976f, 1);
        Matrix_RotateZ(0.2617994f, 1);
        Matrix_Scale(2.0f, 2.0f, 2.0f, MTXMODE_APPLY);
        gSPMatrix((*gfx)++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_floormas.c", 2299), G_MTX_LOAD);
        gSPDisplayList((*gfx)++, &D_06008688);
        Matrix_Pull();
    }
}

Color_RGBA8 D_80A1A4F4 =
{
    0x00, 0xFF, 0x00, 0x00,
};

void EnFloormas_Draw(EnFloormas* this, GlobalContext* globalCtx)
{
    char pad[4];
    GraphicsContext *gfxCtx = globalCtx->state.gfxCtx;
    Gfx *gfx[4];

    func_800C6AC4(gfx, globalCtx->state.gfxCtx, "../z_en_floormas.c", 2318);
    func_80093D18(globalCtx->state.gfxCtx);
    if (this->colCylinder.base.unk_14 == 0xC)
    {
        func_80026230(globalCtx, &D_80A1A4F4, (s16)(this->unk_196 % 0x28), 0x28);
    }
    //Gfx* func_800A273C(GlobalContext* globalCtx, u32 limbIndex, u32 adt, u8 limbDListCnt, void* internal0, void* internal1, Actor* actor, Gfx* gfx);
    gfxCtx->polyOpa.p = func_800A273C(globalCtx, this->skelAnime.limbIndex, this->skelAnime.actorDrawTbl, this->skelAnime.dListCount, (void*)&func_80A1A128, (void*)&func_80A1A160, &this->actor, gfxCtx->polyOpa.p);
    //sp48->unk2C0 = func_800A273C(arg1, arg0->unk150, arg0->unk16C, arg0->unk14E, &func_80A1A128, &func_80A1A160, arg0, (s32) sp48->unk2C0);
    if (this->colCylinder.base.unk_14 == 0xC)
    {
        func_80026608(globalCtx);
    }
    func_800C6B54(gfx, globalCtx->state.gfxCtx, "../z_en_floormas.c", 2340);
}

void func_80A1A350(EnFloormas* this, GlobalContext* globalCtx)
{
    char pad[4];
    GraphicsContext *gfxCtx = globalCtx->state.gfxCtx;
    Gfx *gfx[4];

    func_800C6AC4(gfx, globalCtx->state.gfxCtx, "../z_en_floormas.c", 2352);
    func_80093D84(globalCtx->state.gfxCtx);
    if (this->colCylinder.base.unk_14 == 0xC)
    {
        func_80026690(globalCtx, &D_80A1A4F4, (s16)(this->unk_196 % 0x28), 0x28);
    }
    gfxCtx->polyXlu.p = func_800A273C(globalCtx, this->skelAnime.limbIndex, this->skelAnime.actorDrawTbl, this->skelAnime.dListCount, (void*)&func_80A1A128, (void*)&func_80A1A160, &this->actor, gfxCtx->polyXlu.p);
    if (this->colCylinder.base.unk_14 == 0xC)
    {
        func_80026A6C(globalCtx);
    }
    func_800C6B54(gfx, globalCtx->state.gfxCtx, "../z_en_floormas.c", 2374);
}