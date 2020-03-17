#include "z_en_dog.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void func_809FAFD0(EnDog* this, GlobalContext* globalCtx);
void func_809FB038(EnDog* this, GlobalContext* globalCtx);
void func_809FB0A0(EnDog* this, GlobalContext* globalCtx);
void func_809FB108(EnDog* this);
s8 func_809FB29C(EnDog* this, GlobalContext* globalCtx);
void func_809FB320(EnDog* this, GlobalContext* globalCtx);
void func_809FB3AC(EnDog* this, GlobalContext* globalCtx);
void EnDog_Init(EnDog* this, GlobalContext* globalCtx);
void EnDog_Destroy(EnDog* this, GlobalContext* globalCtx);
void func_809FB6C4(EnDog* this, GlobalContext* globalCtx);
void func_809FB858(EnDog* this, GlobalContext* globalCtx);
void func_809FB940(EnDog* this, GlobalContext* globalCtx);
void func_809FBABC(EnDog* this, GlobalContext* globalCtx);
void func_809FBB64(EnDog* this, GlobalContext* globalCtx);
void func_809FBC6C(EnDog* this, GlobalContext* globalCtx);
void EnDog_Update(EnDog* this, GlobalContext* globalCtx);
void func_809FBD8C(EnDog* this, GlobalContext* globalCtx);
void func_809FBDA4(EnDog* this, GlobalContext* globalCtx);
void EnDog_Draw(EnDog* this, GlobalContext* globalCtx);

/*
const ActorInit En_Dog_InitVars =
{
    ACTOR_EN_DOG,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_DOG,
    sizeof(EnDog),
    (ActorFunc)EnDog_Init,
    (ActorFunc)EnDog_Destroy,
    (ActorFunc)EnDog_Update,
    (ActorFunc)EnDog_Draw,
};
*/

static ColliderCylinderInit cylinderInit =
{
    0x06, 0x00, 0x09, 0x39, // ColliderBodyInfo
    0x10, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00000000,
    0x00, 0x00, 0x00, 0x00,
    0xFFCFFFFF,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x01, 0x01, 0x00,

    0x0010, // radius
    0x0014, // height
    0x0000, // yShift 
    0x0000, 0x0000, 0x0000 //Vec3s xyz
};

typedef struct
{
    /* 0x00 */ u8 health;
    /* 0x02 */ s16 unk_10;
    /* 0x04 */ s16 unk_12;
    /* 0x06 */ u16 unk_14;
    /* 0x08 */ u8 mass;
}sub98Init;

sub98Init sub98Data = 
{
    0x00,   //health
    0x0000, //unk_10
    0x0000, //unk_12
    0x0000, //unk_14
    0x32    //mass
};

struct_80034EC0_Entry skelanimeArr[]=
{
    {0x06001368, 1.0f, 0.0f, -1.0f, 0x00,  0.0f},
    {0x06001368, 1.0f, 0.0f, -1.0f, 0x00, -6.0f}, 
    {0x06000D78, 1.0f, 0.0f, -1.0f, 0x00, -6.0f}, 
    {0x06000278, 1.0f, 0.0f, -1.0f, 0x00, -6.0f}, 
    {0x06001150, 1.0f, 0.0f,  4.0f, 0x02, -6.0f}, 
    {0x06001150, 1.0f, 0.0f,  25.0f,0x04, -6.0f}, 
    {0x06000928, 1.0f, 0.0f,  6.0f, 0x02, -6.0f}, 
    {0x06000C28, 1.0f, 0.0f, -1.0f, 0x00, -6.0f}
};

extern D_06007290;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FAFD0.s")
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FB038.s")
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FB0A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FB108.s")
/*
void func_809FB108(EnDog* this)
{
    s32 animationIndex;

    if (this->unk_1F0 != this->unk_1F2)
    {
        if (this->unk_1F0 == 4)
        {
            this->unk_1F0 = 3;
        }
        if (this->unk_1F0 == 6)
        {
            this->unk_1F0 = 5;
        }

        this->unk_1F2 = this->unk_1F0;
        if (this->unk_1F0 < 6U)
        {
            switch(this->unk_1F0)
            {
                case 1: animationIndex = 2;
                case 2: animationIndex = 3;
                case 3: animationIndex = 4;
                case 5: animationIndex = 6;
                default: animationIndex = 1;
            }
        }
    }

    if (this->unk_1F2 < 6U)
    {

    }
}
*/

s8 func_809FB29C(EnDog* this, GlobalContext* globalCtx)
{
    if ((this->collider.base.collideFlags & 2) != 0)
    {
        this->collider.base.collideFlags &= 0xFFFD;
        return 2;
    }
    if (globalCtx->sceneNum == SCENE_MARKET_DAY)
    {
        return 0;
    }
    if ((this->collider.base.maskB & 1) != 0)
    {
        this->collider.base.maskB &= 0xFFFE;
        if (gSaveContext.dogParams != 0)
        {
            return 0;
        }
        gSaveContext.dogParams = (this->actor.params & 0x7FFF);
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FB320.s")
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FB3AC.s")

void EnDog_Init(EnDog* this, GlobalContext* globalCtx)
{
    SkelAnime* skelAnime;
    s16 followingDog;
    ColliderCylinderMain* collider;

    collider = &this->collider;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 24.0f);
    skelAnime = &this->skelAnime;
    func_800A46F8(globalCtx, skelAnime, &D_06007290, 0, &this->unk_1F4, &this->unk_242, 13);
    func_80034EC0(skelAnime, skelanimeArr, 0);
    
    if ((this->actor.params & 0x8000) == 0)
    {
        this->actor.params = (this->actor.params & 0xF0FF) | ((((this->actor.params & 0xF00) >> 8) + 1) << 8);
    }

    followingDog = ((gSaveContext.dogParams & 0x0F00) >> 8);
    if (followingDog == ((this->actor.params & 0x0F00) >> 8) && ((this->actor.params & 0x8000) == 0))
    {
        Actor_Kill(&this->actor);
        return;
    }

    ActorCollider_AllocCylinder(globalCtx, collider);
    ActorCollider_InitCylinder(globalCtx, collider, &this->actor, &cylinderInit);
    func_80061EFC(&this->actor.sub_98, 0, &sub98Data);
    Actor_SetScale(&this->actor, 0.0075f);
    this->unk_1E6 = 0;
    this->actor.gravity = -1.0f;
    this->movementPath = func_8008E4E0(globalCtx, ((((this->actor.params & 0x00F0) >> 4) << 0x10) >> 0x10), 0xF);

    switch (globalCtx->sceneNum)
    {
        case SCENE_MARKET_NIGHT:
            if ((gSaveContext.richardIsLost == 0) && (((this->actor.params & 0x0F00) >> 8) == 1))
            {
                Actor_Kill(&this->actor);
            }
            break;

        case SCENE_BACK_ALLEY:
            if ((u32)(this->actor.params & 0x8000) == 0)
            {
                if (gSaveContext.richardIsLost == 0)
                {
                    this->unk_1F0 = 3;
                    this->actionFunc = &func_809FBC6C;
                    this->actor.speedXZ = 0.0f;
                    return;
                }
                else
                {
                    Actor_Kill(&this->actor);
                    return;
                }
            }
            break;

        default: break;
    }

    if ((u32)(this->actor.params & 0x8000) != 0)
    {
        this->unk_1F0 = 0;
        this->actionFunc = &func_809FB940;
    }
    else
    {
        this->unk_1F0 = 3;
        this->actionFunc = &func_809FB858;
    }
}

void EnDog_Destroy(EnDog* this, GlobalContext* globalCtx)
{
    ColliderCylinderMain* collider = &this->collider; 
    ActorCollider_FreeCylinder(globalCtx, collider);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FB6C4.s")

void func_809FB858(EnDog* this, GlobalContext* globalCtx)
{
    s32 temp1EC;

    if (func_809FB29C(this, globalCtx) == 1) //if this dog is the one thats following
    {
        this->actionFunc = &func_809FB940; //follow function?
    }

    if (this->unk_1EC == 0)
    {
        temp1EC = 0;
    }
    else
    {
        this->unk_1EC -= 1;
        temp1EC = this->unk_1EC;
    }

    if(temp1EC == 0)
    {
        this->unk_1EC = Math_Rand_S16Offset(200, 100);
        if ((globalCtx->state.frames & 1) != 0) //odd frame
        {
            this->unk_1F0 = 0;
        }
        else
        {
            this->unk_1F0 = 1;
        }

        if (this->unk_1F0 == 1)
        {
            this->unk_1EC = (this->unk_1EC / 2);
        }
        this->actionFunc = &func_809FB6C4;
    }
    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 0.4f, 1.0f, 0.0f);
}

//EnDog_Follow
void func_809FB940(EnDog* this, GlobalContext* globalCtx)
{
    f32 speed;

    if (gSaveContext.dogParams == 0)
    {
        this->unk_1F0 = 3;
        this->actionFunc = &func_809FBC6C;
        this->actor.speedXZ = 0.0f;
        return;    
    }
    
    if (this->actor.xzDistanceFromLink > 400.0f)
    {
        if (this->unk_1F0 != 3 && this->unk_1F0 != 4)
        {
            this->unk_1F0 = 5;
        }
        gSaveContext.dogParams = 0;
        speed = 0.0f;
    }
    else if (this->actor.xzDistanceFromLink > 100.0f)
    {
        this->unk_1F0 = 1;
        speed = 4.0f;
    }
    else if (this->actor.xzDistanceFromLink < 40.0f)
    {
        if (this->unk_1F0 != 5 && this->unk_1F0 != 6)
        {
            this->unk_1F0 = 5;
        }
        speed = 0.0f;
    }
    else
    {
        this->unk_1F0 = 0;
        speed = 1.0f;
    }
        
    Math_SmoothScaleMaxF(&this->actor.speedXZ, speed, 0.6f, 1.0f);

    if (!(this->actor.xzDistanceFromLink > 400.0f))
    {
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.rotTowardsLinkY, 10, 1000, 1);
        this->actor.shape.rot = this->actor.posRot.rot;
    }
}

void func_809FBABC(EnDog* this, GlobalContext* globalCtx)
{
    if (this->actor.xzDistanceFromLink < 200.0f)
    {
        Math_SmoothScaleMaxF(&this->actor.speedXZ, 4.0f, 0.6f, 1.0f);
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, (this->actor.rotTowardsLinkY ^ 0x8000), 10, 1000, 1);
    }
    else
    {
        this->actionFunc = &func_809FBB64;
    }
    this->actor.shape.rot = this->actor.posRot.rot;
}

void func_809FBB64(EnDog* this, GlobalContext* globalCtx)
{
    s16 rotTowardLink;
    s16 prevRotY;
    f32 absAngleDiff;
    
    if (200.0f <= this->actor.xzDistanceFromLink)
    {
        this->unk_1F0 = 0;

        Math_SmoothScaleMaxF(&this->actor.speedXZ, 1.0f, 0.6f, 1.0f); 

        rotTowardLink = this->actor.rotTowardsLinkY;
        prevRotY = this->actor.posRot.rot.y;
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, rotTowardLink, 10, 1000, 1);

        //weird temp reuse needed for regalloc
        absAngleDiff = this->actor.posRot.rot.y;
        absAngleDiff -= prevRotY;
        absAngleDiff = fabsf(absAngleDiff);
        if (absAngleDiff < 200.0f)
        {
            this->unk_1F0 = 3;
            this->actionFunc = &func_809FBC6C;
            this->actor.speedXZ = 0.0f;
        }
    }
    else
    {
        this->unk_1F0 = 1;
        this->actionFunc = &func_809FBABC;
    }
    this->actor.shape.rot = this->actor.posRot.rot;
}

void func_809FBC6C(EnDog* this, GlobalContext* globalCtx)
{
    this->spawnAngle = (this->actor.rotTowardsLinkY - this->actor.shape.rot.y);
    if ((gSaveContext.richardIsLost != 0) && (this->actor.xzDistanceFromLink < 200.0f))
    {
        this->unk_1F0 = 1;
        this->actionFunc = &func_809FBABC;
    }
}

void EnDog_Update(EnDog* this, GlobalContext* globalCtx)
{
    s32 pad1;
    s32 pad2;

    func_809FB108(this);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    func_8002E4B4(globalCtx, &this->actor, (f32)this->collider.dim.radius, (f32)this->collider.dim.height * 0.5f, 0.0f, 5);
    Actor_MoveForward(&this->actor);
    this->actionFunc(this, globalCtx);
    ActorCollider_Cylinder_Update(&this->actor, &this->collider);
    Actor_CollisionCheck_SetOT(globalCtx, &globalCtx->sub_11E60, &this->collider);
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FBD8C.s")
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/func_809FBDA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dog/EnDog_Draw.s")
