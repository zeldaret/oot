/*
 * File: z_en_anubice_tag.c
 * Overlay: ovl_En_Anubice_Tag
 * Description: Spawns and manages the Anubis enemy
*/

#include <ultra64.h>
#include <global.h>

//temp struct until we can reference other actors outside of their file
typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x10E];
    /* 0x025A */ s16 unk_25A;
    /* 0x025C */ char unk_25C[0x2];
    /* 0x025E */ s16 unk_25E;
    /* 0x0260 */ s16 unk_260;
    /* 0x0262 */ s16 unk_262;
    /* 0x0264 */ char unk_264[0xB0];
} EnAnubice; // size = 0x0314

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ActorFunc actionFunc;
    /* 0x0150 */ EnAnubice* anubis;
    /* 0x0154 */ f32 triggerRange;
} EnAnubiceTag; // size = 0x0158

#define ROOM  0x00
#define FLAGS 0x00000010

static void EnAnubiceTag_Init(EnAnubiceTag* this, GlobalContext* globalCtx);
static void EnAnubiceTag_Destroy(EnAnubiceTag* this, GlobalContext* globalCtx);
static void EnAnubiceTag_SpawnAnubis(EnAnubiceTag* this, GlobalContext* globalCtx);
static void EnAnubiceTag_ManageAnubis(EnAnubiceTag* this, GlobalContext* globalCtx);
static void EnAnubiceTag_Update(EnAnubiceTag* this, GlobalContext* globalCtx);
static void EnAnubiceTag_Draw(EnAnubiceTag* this, GlobalContext* globalCtx);

const ActorInit En_Anubice_Tag_InitVars =
{
    ACTOR_EN_ANUBICE_TAG,
    ACTORTYPE_SWITCH,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnAnubiceTag),
    (ActorFunc)EnAnubiceTag_Init,
    (ActorFunc)EnAnubiceTag_Destroy,
    (ActorFunc)EnAnubiceTag_Update,
    (ActorFunc)EnAnubiceTag_Draw,
};

static void EnAnubiceTag_Init(EnAnubiceTag* this, GlobalContext* globalCtx)
{
    osSyncPrintf("\n\n");
    //"Anubis control tag generated"
    osSyncPrintf("[32m☆☆☆☆☆ アヌビス制御タグ発生 ☆☆☆☆☆ %d\n[m", this->actor.params);

    if (this->actor.params < (s16)0xFFFF)
    {
        this->actor.params = 0;
    }
    if (this->actor.params != 0)
    {
        this->triggerRange = this->actor.params * 40.0f;
    }
    this->actionFunc = &EnAnubiceTag_SpawnAnubis;
}

static void EnAnubiceTag_Destroy(EnAnubiceTag* this, GlobalContext* globalCtx)
{

}

static void EnAnubiceTag_SpawnAnubis(EnAnubiceTag* this, GlobalContext* globalCtx)
{
    this->anubis = Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_ANUBICE, 
                this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 
                0, this->actor.rotTowardsLinkY, 0, 0);

    if (this->anubis != NULL)
    {
        this->actionFunc = &EnAnubiceTag_ManageAnubis;
    }
}

static void EnAnubiceTag_ManageAnubis(EnAnubiceTag* this, GlobalContext* globalCtx)
{
    EnAnubice* anubis;
    Vec3f offset;
    
    if (this->anubis != NULL)
    {
        anubis = this->anubis;

        if (anubis->actor.update == NULL)
        {
            return;
        }
    }
    else
    {
        Actor_Kill(this);
        return;
    }

    if (anubis->unk_25A != 0)
    {
        Actor_Kill(this);
        return;
    }

    if (this->actor.xzDistanceFromLink < (200.0f + this->triggerRange))
    {
        if (anubis->unk_260 == 0)
        {
            if (anubis->unk_262 == 0)
            {
                anubis->unk_25E = 1;
                offset.x = -Math_Sins(this->actor.rotTowardsLinkY) * this->actor.xzDistanceFromLink;
                offset.z = -Math_Coss(this->actor.rotTowardsLinkY) * this->actor.xzDistanceFromLink;
                Math_SmoothScaleMaxF(&anubis->actor.posRot.pos.x, 
                                    (this->actor.posRot.pos.x + offset.x), 0.3f, 10.0f);
                Math_SmoothScaleMaxF(&anubis->actor.posRot.pos.z,
                                    (this->actor.posRot.pos.z + offset.z), 0.3f, 10.0f);
                return;
            }
        }
    }
    else
    {
        if (anubis->unk_25E != 0)
        {
            anubis->unk_260 = 1;
        }
    }
}

static void EnAnubiceTag_Update(EnAnubiceTag* this, GlobalContext* globalCtx)
{
    this->actionFunc(this, globalCtx);
}

static void EnAnubiceTag_Draw(EnAnubiceTag* this, GlobalContext* globalCtx)
{
    if (BREG(0) != 0)
    {
        DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                                this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z,
                                1.0f, 1.0f, 1.0f, 0xFF, 0, 0, 0xFF, 4, globalCtx->state.gfxCtx);
    }
}
