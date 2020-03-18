/*
 * File: z_door_ana.c
 * Overlay: ovl_Door_Ana
 * Description: Grottos Entrances/Exits
*/

#include "z_door_ana.h"

#define ROOM  0x00
#define FLAGS 0x02000000

static void DoorAna_Init(DoorAna* this, GlobalContext* globalCtx);
static void DoorAna_Destroy(DoorAna* this, GlobalContext* globalCtx);
static void DoorAna_Update(DoorAna* this, GlobalContext* globalCtx);
static void DoorAna_Draw(DoorAna* this, GlobalContext* globalCtx);

static void func_80993EF0(DoorAna* this, ActorFunc func);

static void func_80993FEC(DoorAna* this, GlobalContext* globalCtx);
static void func_80994124(DoorAna* this, GlobalContext* globalCtx);
static void func_809942D8(DoorAna* this, GlobalContext* globalCtx);

const ActorInit Door_Ana_InitVars =
{
    ACTOR_DOOR_ANA,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_FIELD_KEEP,
    sizeof(DoorAna),
    (ActorFunc)DoorAna_Init,
    (ActorFunc)DoorAna_Destroy,
    (ActorFunc)DoorAna_Update,
    (ActorFunc)DoorAna_Draw,
};

// initial collision data
static ColliderCylinderInit colliderInit =
{
    0x0A, 0x00, 0x09, 0x00, 
    0x00, 0x01, 0x00, 0x00,
    0x02, 0x00, 0x00, 0x00,
    0x00000000, 0x00, 0x00, 
    0x00, 0x00, 0x00000048, 
    0x00, 0x00, 0x00, 0x00, 
    0x00, 0x01, 0x00, 0x00, 
    0x0032, 0x000A, 0x0000, 
    0x0000, 0x0000, 0x0000
};

// array of entrance table entries to grotto destinations
static s16 entrances[] = {
    0x036D, 0x003F, 0x0598, 0x059C, 
    0x05A0, 0x05A4, 0x05A8, 0x05AC, 
    0x05B0, 0x05B4, 0x05B8, 0x05BC, 
    0x05C0, 0x05C4, 0x05FC
};

// display list
extern Gfx* D_05001390;

// sets current actionFunc to be ran on next update call
static void func_80993EF0(DoorAna* this, ActorFunc func)
{
    this->actionFunc = func;
}

static void DoorAna_Init(DoorAna* this, GlobalContext* globalCtx)
{
    ColliderCylinderMain* collider;

    this->actor.shape.rot.z = 0;
    this->actor.shape.rot.y = this->actor.shape.rot.z;
    // init block for grottos that are initially "hidden" (require explosives/hammer/song of storms to open)
    if ((this->actor.params & 0x300) != 0)
    {
        // only allocate collider for grottos that need bombing/hammering open
        if ((this->actor.params & 0x200) != 0)
        {
            collider = &this->collider;
            ActorCollider_AllocCylinder(globalCtx, collider);
            ActorCollider_InitCylinder(globalCtx, collider, &this->actor, &colliderInit);
        }
        else
        {
            this->actor.flags |= 0x10;
        }
        Actor_SetScale(&this->actor, 0);
        func_80993EF0(this, (ActorFunc)&func_80993FEC);
        this->actor.unk_1F = 0;
        return;
    }
    func_80993EF0(this, (ActorFunc)&func_80994124);
    this->actor.unk_1F = 0;
}

static void DoorAna_Destroy(DoorAna* this, GlobalContext* globalCtx)
{
    // free collider if it has one
    if ((this->actor.params & 0x200) != 0)
    {
        ActorCollider_FreeCylinder(globalCtx, &this->collider);
    }
}

// update routine for grottos that are currently "hidden"/unopened
static void func_80993FEC(DoorAna* this, GlobalContext* globalCtx)
{
    bool openGrotto = false;
    if ((this->actor.params & 0x200) == 0)
    {
        // opening with song of storms
        if (this->actor.waterSurfaceDist < 40000.0f && func_8006C4A4(globalCtx, 5) != 0)
        {
            openGrotto = true;
            this->actor.flags &= -0x11;
        }
    }
    else
    {
        // bombing/hammering open a grotto
        if ((this->collider.base.collideFlags & 2) != 0)
        {
            openGrotto = true;
            ActorCollider_FreeCylinder(globalCtx, &this->collider);
        }
        else
        {
            ActorCollider_Cylinder_Update(&this->actor, &this->collider);
            Actor_CollisionCheck_SetAC(globalCtx, &globalCtx->sub_11E60, &this->collider);
        }
    }
    // open the grotto
    if (openGrotto)
    {
        this->actor.params &= 0xFCFF;
        func_80993EF0(this, (ActorFunc)&func_80994124);
        Audio_PlaySoundGeneral(0x4802, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
    func_8002F5F0(&this->actor, globalCtx);
}

// update routine for grottos that are open
static void func_80994124(DoorAna* this, GlobalContext* globalCtx)
{
    Player* player;
    s32 destinationIdx;

    player = PLAYER;
    if (Math_ApproxF(&this->actor.scale.x, 0.01f, 0.001f) != 0)
    {
        if ((this->actor.unk_1F != 0) && (globalCtx->sceneLoadFlag == 0) && 
            (player->stateFlags1 & 0x80000000) && (player->unk_84F == 0))
        {
            destinationIdx = ((this->actor.params >> 0xC) & 7) - 1;
            func_800C0AF4(globalCtx, 1, 0x4FF);
            gSaveContext.respawn[RESPAWN_MODE_RETURN].pos.y = this->actor.posRot.pos.y;
            gSaveContext.respawn[RESPAWN_MODE_RETURN].yaw = this->actor.initPosRot.rot.y;
            gSaveContext.respawn[RESPAWN_MODE_RETURN].data = this->actor.params & 0xFFFF;
            if (destinationIdx < 0)
            {
                destinationIdx = this->actor.initPosRot.rot.z + 1;
            }
            globalCtx->nextEntranceIndex = entrances[destinationIdx];
            func_80993EF0(this, (ActorFunc)&func_809942D8);
        }
        else
        {
            if (func_8008E988(globalCtx) == 0 && !(player->stateFlags1 & 0x8800000) && 
                this->actor.xzDistanceFromLink <= 15.0f && -50.0f <= this->actor.yDistanceFromLink && 
                this->actor.yDistanceFromLink <= 15.0f)
            {
                player->stateFlags1 |= 0x80000000;
                this->actor.unk_1F = 1;
            }
            else
            {
                this->actor.unk_1F = 0;
            }
        }
    }
    Actor_SetScale(&this->actor, this->actor.scale.x);
}

// update function for after the player has triggered the grotto
static void func_809942D8(DoorAna* this, GlobalContext* globalCtx)
{
    Player* player;

    if (this->actor.yDistanceFromLink <= 0.0f && 15.0f < this->actor.xzDistanceFromLink)
    {
        player = PLAYER;
        player->actor.posRot.pos.x = Math_Sins(this->actor.rotTowardsLinkY) * 15.0f + this->actor.posRot.pos.x;
        player->actor.posRot.pos.z = Math_Coss(this->actor.rotTowardsLinkY) * 15.0f + this->actor.posRot.pos.z;
    }
}

static void DoorAna_Update(DoorAna* this, GlobalContext* globalCtx)
{
    this->actionFunc(this, globalCtx);
    // changes the grottos facing angle based on camera angle
    this->actor.shape.rot.y = func_8005A9F4(globalCtx->cameraCtx.activeCameraPtrs[globalCtx->cameraCtx.unk_5C0]) + 0x8000;
}

static void DoorAna_Draw(DoorAna* this, GlobalContext* globalCtx)
{
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx** dList = &D_05001390; // required for stack placement?
    Gfx* gfxArr[3];

    func_800C6AC4(gfxArr, globalCtx->state.gfxCtx, "../z_door_ana.c", 0x1B8);
    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_door_ana.c", 0x1BE), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyXlu.p++, dList);
    func_800C6B54(gfxArr, globalCtx->state.gfxCtx, "../z_door_ana.c", 0x1C1);
}