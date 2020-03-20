/*
 * File: z_en_ms.c
 * Overlay: ovl_En_Ms
 * Description: Magic Bean Salesman
*/

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ UNK_PTR unkSkelAnimeStruct;
    /* 0x0194 */ char unk_194[0x32];
    /* 0x01C6 */ s16 unk_1C6;
    /* 0x01C8 */ char unk_1C8[0x34];
    /* 0x01FC */ ActorFunc actionFunc;
    /* 0x0200 */ ColliderCylinderMain collider;
    /* 0x024C */ s16 activeTimer;
} EnMs; // size = 0x0250

#define ROOM  0x00
#define FLAGS 0x00000009

static void EnMs_SetOfferText(EnMs* this, GlobalContext* globalCtx);
static void EnMs_Init(EnMs* this, GlobalContext* globalCtx);
static void EnMs_Destroy(EnMs* this, GlobalContext* globalCtx);
static void EnMs_Wait(EnMs* this, GlobalContext* globalCtx);
static void EnMs_Talk(EnMs* this, GlobalContext* globalCtx);
static void EnMs_Sell(EnMs* this, GlobalContext* globalCtx);
static void EnMs_TalkAfterBuy(EnMs* this, GlobalContext* globalCtx);
static void EnMs_Update(EnMs* this, GlobalContext* globalCtx);
static void EnMs_Draw(EnMs* this, GlobalContext* globalCtx);

const ActorInit En_Ms_InitVars =
{
    ACTOR_EN_MS,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_MS,
    sizeof(EnMs),
    (ActorFunc)EnMs_Init,
    (ActorFunc)EnMs_Destroy,
    (ActorFunc)EnMs_Update,
    (ActorFunc)EnMs_Draw,
};

static s32 unk_col_80AB0320[] =
{
0x0A000939, 0x01000000,
0x00000000, 0x00000000,
0x00000000, 0xFFCFFFFF,
0x00000000, 0x00010100,
0x00160025, 0x00000000,
0x00000000
};

static s16 prices[] =
{
    10, 20, 30, 40, 50, 60, 70, 80, 90, 100
};

static u16 offerTextIds[] =
{
    0x405E, 0x405F, 0x4060, 0x4061, 0x4062,
    0x4063, 0x4064, 0x4065, 0x4066, 0x4067
};

static InitChainEntry initChain[] =
{
    ICHAIN_U8(unk_1F, 2, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 500, ICHAIN_STOP)
};

extern D_060005EC;
extern D_06003DC0;

static void EnMs_SetOfferText(EnMs* this, GlobalContext* globalCtx)
{
    this->actor.textId = func_8006C360(globalCtx, 0x1B);
    if (this->actor.textId == 0)
    {
        if (BEANS_BOUGHT >= 10)
        {
            this->actor.textId = 0x406B;
            return;
        }
        this->actor.textId = offerTextIds[BEANS_BOUGHT];
    }
}

static void EnMs_Init(EnMs* this, GlobalContext* globalCtx)
{
    s32 pad1;
    s32 pad2;

    if (LINK_AGE_IN_YEARS != YEARS_CHILD)
    {
        Actor_Kill(&this->actor);
        return;
    }
    Actor_ProcessInitChain(&this->actor, initChain);
    func_800A46F8(globalCtx, &this->skelAnime, &D_06003DC0, &D_060005EC,
                &this->unkSkelAnimeStruct, &this->unk_1C6, 9); //skelanime_mtx_init
    ActorCollider_AllocCylinder(globalCtx, &this->collider);
    func_8005C450(globalCtx, &this->collider, this, &unk_col_80AB0320);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 35.0f);
    Actor_SetScale(&this->actor, 0.015f);

    this->actor.sub_98.mass = 0xFF;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = -1.0f;

    EnMs_SetOfferText(&this->actor, globalCtx);

    this->actionFunc = EnMs_Wait;
}

static void EnMs_Destroy(EnMs* this, GlobalContext* globalCtx)
{
    ColliderCylinderMain* collider = &this->collider;
    ActorCollider_FreeCylinder(globalCtx, collider);
}

static void EnMs_Wait(EnMs* this, GlobalContext* globalCtx)
{
    s16 unkAngle;

    unkAngle = this->actor.rotTowardsLinkY - this->actor.shape.rot.y;
    EnMs_SetOfferText(&this->actor, globalCtx);
    if (func_8002F194(&this->actor, globalCtx) != 0) //if talk is initiated
    {
        this->actionFunc = &EnMs_Talk;
        return;
    }

    if ((this->actor.xzDistanceFromLink < 90.0f) && (ABS(unkAngle) < 0x2000)) //talk range
    {
        func_8002F2CC(&this->actor, globalCtx, 90.0f);
    }
}

static void EnMs_Talk(EnMs* this, GlobalContext* globalCtx)
{
    u8 dialogState;

    dialogState = func_8010BDBC(&globalCtx->msgCtx);
    if (dialogState != 4)
    {
        if ((dialogState == 6) && (func_80106BC8(globalCtx) != 0)) //advanced final textbox
        {
            this->actionFunc = &EnMs_Wait;
        }
    }
    else
    {
        if(func_80106BC8(globalCtx) != 0)
        {
            switch (globalCtx->msgCtx.choiceIndex)
            {
                case 0: //yes
                    if (gSaveContext.rupees < prices[BEANS_BOUGHT])
                    {
                        func_8010B720(globalCtx, 0x4069); //not enough rupees text
                        return;
                    }
                    func_8002F434(&this->actor, globalCtx, GI_BEAN, 90.0f, 10.0f);
                    this->actionFunc = &EnMs_Sell;
                    return;
                case 1: //no
                    func_8010B720(globalCtx, 0x4068);
                default: return;
            }
        }
    }
}

static void EnMs_Sell(EnMs* this, GlobalContext* globalCtx)
{
    if (func_8002F410(&this->actor, globalCtx) != 0) //if attached is set
    {
        Rupees_ChangeBy(-prices[BEANS_BOUGHT]); //decrease ruppees
        this->actor.attachedA = NULL;
        this->actionFunc = &EnMs_TalkAfterBuy;
        return;
    }
    func_8002F434(&this->actor, globalCtx, GI_BEAN, 90.0f, 10.0f);
}

static void EnMs_TalkAfterBuy(EnMs* this, GlobalContext* globalCtx)
{
    //if dialog state is 6 and player responded to textbox
    if ((func_8010BDBC(&globalCtx->msgCtx)) == 6 && (func_80106BC8(globalCtx) != 0))
    {
        func_8010B720(globalCtx, 0x406C);
        this->actionFunc = &EnMs_Talk;
    }
}

static void EnMs_Update(EnMs* this, GlobalContext* globalCtx)
{
    s32 pad1;
    s32 pad2;

    this->activeTimer += 1;
    Actor_SetHeight(&this->actor, 20.0f);
    this->actor.unk_4C = 500.0f;
    Actor_SetScale(&this->actor, 0.015f);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->actionFunc(this, globalCtx);

    if (gSaveContext.entrance_index == 0x157 && gSaveContext.scene_setup_index  == 8) //ride carpet if in credits
    {
        Actor_MoveForward(&this->actor);
        osSyncPrintf("OOOHHHHHH %f\n", this->actor.velocity.y);
        func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    }
    ActorCollider_Cylinder_Update(&this->actor, &this->collider);
    Actor_CollisionCheck_SetOT(globalCtx, &globalCtx->sub_11E60, &this->collider);
}

void EnMs_Draw(EnMs* this, GlobalContext* globalCtx)
{
    func_80093D18(globalCtx->state.gfxCtx);
    func_800A1AC8(globalCtx, this->skelAnime.limbIndex, this->skelAnime.actorDrawTbl,
                    this->skelAnime.dListCount, 0, 0, &this->actor);
}
