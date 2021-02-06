/*
 * File: z_obj_warp2block.c
 * Overlay: ovl_Obj_Warp2Block
 * Description: Navi Infospot (Green, Time Block)
 */

#include "z_obj_warp2block.h"

#define FLAGS 0x0A000011

#define THIS ((ObjWarp2block*)thisx)

void ObjWarp2block_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjWarp2block_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjWarp2block_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjWarp2block_Draw(Actor* thisx, GlobalContext* globalCtx);

void ObjWarp2block_Spawn(ObjWarp2block* this, GlobalContext* globalCtx);
s32 func_80BA1ECC(ObjWarp2block *this, GlobalContext *globalCtx);
void ObjWarp2block_SwapWithChild(ObjWarp2block* this, GlobalContext* globalCtx);
s32 func_80BA2218(ObjWarp2block* this, GlobalContext* globalCtx);
s32 func_80BA228C(ObjWarp2block* this, GlobalContext* globalCtx);
s32 func_80BA2304(ObjWarp2block* this, GlobalContext* globalCtx);
void ObjWarp2block_SetInactive(ObjWarp2block* this);
void ObjWarp2block_DoNothing(ObjWarp2block* this, GlobalContext* globalCtx);
void func_80BA24E8(ObjWarp2block* this);
void func_80BA24F8(ObjWarp2block* this, GlobalContext* globalCtx);
void func_80BA2600(ObjWarp2block* this);
void func_80BA2610(ObjWarp2block* this, GlobalContext* globalCtx);

extern UNK_TYPE D_06000980;
extern UNK_TYPE D_06000B30;

const ActorInit Obj_Warp2block_InitVars = {
    ACTOR_OBJ_WARP2BLOCK,
    ACTORCAT_ITEMACTION,
    FLAGS,
    OBJECT_TIMEBLOCK,
    sizeof(ObjWarp2block),
    (ActorFunc)ObjWarp2block_Init,
    (ActorFunc)ObjWarp2block_Destroy,
    (ActorFunc)ObjWarp2block_Update,
    (ActorFunc)ObjWarp2block_Draw,
};

typedef struct {
  f32 scale;
  f32 focus;
  s16 params;
} Warp2BlockSpawnData;

 Warp2BlockSpawnData sSpawnData[2] = {
	{ 1.0f, 60.0f, 0x0018 },
	{ 0.6f, 40.0f, 0x0019 },
};

f32 sDistances[] = {60.0f, 100.0f, 140.0f, 180.0f, 220.0f, 260.0f, 300.0f, 300.0f};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneForward, 1800, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 300, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1500, ICHAIN_STOP),
};

Color_RGB8 sColors[] = {
	{0x64, 0x78, 0x8C}, {0x50, 0x8C, 0xC8}, {0x64, 0x96, 0xC8}, {0x64, 0xC8, 0xF0},
	{0x50, 0x6E, 0x8C}, {0x46, 0xA0, 0xE1}, {0x50, 0x64, 0x82}, {0x64, 0x6E, 0xBE},
};

void ObjWarp2block_Spawn(ObjWarp2block *this, GlobalContext *globalCtx) {
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, (u16)0x8B, 
    	this->dyna.actor.world.pos.x, this->dyna.actor.world.pos.y, this->dyna.actor.world.pos.z, 
    	0, 0, 0, 
    	sSpawnData[(this->dyna.actor.params >> 8) & 1].params);

    Actor_Spawn(&globalCtx->actorCtx, globalCtx, (u16)0x8B, 
    	this->dyna.actor.child->world.pos.x, this->dyna.actor.child->world.pos.y, this->dyna.actor.child->world.pos.z, 
    	0, 0, 0, 
    	sSpawnData[(this->dyna.actor.child->params >> 8) & 1].params);
}

s32 func_80BA1ECC(ObjWarp2block *this, GlobalContext *globalCtx) {
    f32 temp_f0;
    Actor* temp_a3;
    Player* player;
    Vec3f sp20;
    f32 temp_f2;

    if (func_80043590(&this->dyna) != 0) {
        return 0;
    }

    temp_a3 = this->dyna.actor.child;
	player = PLAYER;
    if ((this->dyna.actor.xzDistToPlayer <= sDistances[(((this->dyna.actor.params >> 0xB) & 7))]) || 
    	(temp_a3->xzDistToPlayer <= sDistances[(((temp_a3->params >> 0xB) & 7))])) {

        func_8002DBD0(&this->dyna.actor, &sp20, &player->actor.world.pos);
        temp_f2 = (this->dyna.actor.scale.x * 50.0f) + 6.0f;

        if (!(temp_f2 < fabsf(sp20.x)) && !(temp_f2 < fabsf(sp20.z))) {
            return 0;
        }

        func_8002DBD0(temp_a3, &sp20, &player->actor.world.pos);
        temp_f2 = (temp_a3->scale.x * 50.0f) + 6.0f;

        if (!(temp_f2 < fabsf(sp20.x))) {
            temp_f0 = fabsf(sp20.z);
            if (!(temp_f2 < temp_f0)) {
                return 0;
            }
        }
    } else {
    	return 0;
    }

    return 1;
}



void ObjWarp2block_SwapWithChild(ObjWarp2block *this, GlobalContext *globalCtx) {
    Vec3f tempVec;
    Vec3s tempRot;
    s32 temp;

    Math_Vec3f_Copy(&tempVec, &this->dyna.actor.world.pos);
    Math_Vec3f_Copy(&this->dyna.actor.world.pos, &this->dyna.actor.child->world.pos);
    Math_Vec3f_Copy(&this->dyna.actor.child->world.pos, &tempVec);

    temp = this->dyna.actor.world.rot.y;
    this->dyna.actor.world.rot.y = this->dyna.actor.child->world.rot.y;
    this->dyna.actor.child->world.rot.y = temp;

    temp = this->dyna.actor.shape.rot.y;
    this->dyna.actor.shape.rot.y = this->dyna.actor.child->shape.rot.y;
    this->dyna.actor.child->shape.rot.y = temp;

    temp = this->dyna.actor.home.rot.z;
    this->dyna.actor.home.rot.z = this->dyna.actor.child->home.rot.z;
    this->dyna.actor.child->home.rot.z = temp;

    Math_Vec3f_Copy(&tempVec, &this->dyna.actor.scale);
    Math_Vec3f_Copy(&this->dyna.actor.scale, &this->dyna.actor.child->scale);
    Math_Vec3f_Copy(&this->dyna.actor.child->scale, &tempVec);

    Math_Vec3f_Copy(&tempVec, &this->dyna.actor.focus.pos);
    Math_Vec3f_Copy(&this->dyna.actor.focus.pos, &this->dyna.actor.child->focus.pos);
    Math_Vec3f_Copy(&this->dyna.actor.child->focus.pos, &tempVec);

    tempRot = this->dyna.actor.focus.rot;
    this->dyna.actor.focus.rot = this->dyna.actor.child->focus.rot;
    this->dyna.actor.child->focus.rot = tempRot;

    temp = this->dyna.actor.params & 0x7FFF;
    this->dyna.actor.params = (this->dyna.actor.params & 0x8000) | (this->dyna.actor.child->params & 0x7FFF);
    this->dyna.actor.child->params = (this->dyna.actor.child->params & 0x8000) | (temp  & 0x7FFF);

    if (Math3D_Vec3fDistSq(&this->dyna.actor.world.pos, &this->dyna.actor.home.pos) < 0.01f) {
        Flags_UnsetSwitch(globalCtx, this->dyna.actor.params & 0x3F);
    } else {
    	Flags_SetSwitch(globalCtx, this->dyna.actor.params & 0x3F);
    }
}

s32 func_80BA2218(ObjWarp2block *this, GlobalContext *globalCtx) {
	Player* player = PLAYER;

    if (func_80BA1ECC(this, globalCtx)) {

        if (player->stateFlags2 & 0x1000000) {
            func_8010BD58(globalCtx, 1);
            this->actionFunc_168 = func_80BA228C;
        } else {
            player->stateFlags2 |= 0x800000;
        }
    }

    return 0;
}


s32 func_80BA228C(ObjWarp2block *this, GlobalContext *globalCtx) {
    if (globalCtx->msgCtx.unk_E3EE == 4) {
        this->actionFunc_168 = func_80BA2218;
    }

    if (globalCtx->msgCtx.unk_E3EC == 0xA) {
        if (this->unk_172 == 0xFE) {
            this->unk_16E = 0x6E;
        } else {
	        this->unk_16E = this->unk_16E - 1;
	        if (this->unk_16E == 0) {
	            return 1;
	        }
	    }
    }
    return 0;
}


s32 func_80BA2304(ObjWarp2block *this, GlobalContext *globalCtx) {
    s32 ret;

    ret = this->actionFunc_168(this, globalCtx);
    this->unk_172 = globalCtx->msgCtx.unk_E3EC;

    return ret;
}


void ObjWarp2block_Init(Actor* thisx, GlobalContext *globalCtx2) {
	GlobalContext* globalCtx = globalCtx2;
    ObjWarp2block* this = THIS;
    CollisionHeader* collisionHeader;

    collisionHeader = NULL;
    this->dyna.actor.shape.rot.z = 0;
    this->dyna.actor.world.rot.z = this->dyna.actor.shape.rot.z;
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);

    Actor_SetScale(&this->dyna.actor, sSpawnData[(this->dyna.actor.params >> 8) & 1].scale);
    this->actionFunc_168 = func_80BA2218;
    Actor_SetFocus(&this->dyna.actor, sSpawnData[(this->dyna.actor.params >> 8) & 1].focus);

    if (((this->dyna.actor.params >> 0xF) & 1)) {
        func_80BA24E8(this);
        if (Flags_GetSwitch(globalCtx, this->dyna.actor.params & 0x3F) != 0) {
            this->dyna.actor.draw = NULL;
        }
        DynaPolyActor_Init(&this->dyna, 0);
        CollisionHeader_GetVirtual(&D_06000B30, &collisionHeader);
        this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, collisionHeader);
    } else {
        ObjWarp2block_SetInactive(this);
    }

    osSyncPrintf((const char *) "時のブロック(ワープ２) (<arg> %04xH <type> color:%d range:%d)\n",
    	this->dyna.actor.params & 0xFFFF,
    	this->dyna.actor.home.rot.z & 7,
    	((s32) this->dyna.actor.params >> 0xB) & 7);
}

void ObjWarp2block_Destroy(Actor* thisx, GlobalContext *globalCtx) {
    ObjWarp2block* this = THIS;
    if ((this->dyna.actor.params >> 0xF) & 1) {
        DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
    }
}

void ObjWarp2block_SetInactive(ObjWarp2block *this) {
    this->actionFunc_164 = ObjWarp2block_DoNothing;
    this->dyna.actor.draw = NULL;
}

void ObjWarp2block_DoNothing(ObjWarp2block *this, GlobalContext *globalCtx) {}

void func_80BA24E8(ObjWarp2block *this) {
    this->actionFunc_164 = func_80BA24F8;
}

void func_80BA24F8(ObjWarp2block *this, GlobalContext *globalCtx) {
    Actor *current;

    current = globalCtx->actorCtx.actorLists[7].head;

    while (current != NULL) {
        if (current->id == 0x1D6) {
            if (((current->params >> 0xF) & 1) == 0) {

                if ((this->dyna.actor.params & 0x3F) == (current->params & 0x3F)) {
                    this->dyna.actor.child = current;

                    if (Flags_GetSwitch(globalCtx, this->dyna.actor.params & 0x3F) != 0) {
                        ObjWarp2block_SwapWithChild(this, globalCtx);
                        this->dyna.actor.draw = ObjWarp2block_Draw;
                    }
                    func_80BA2600(this);
                    return;
                }
            }
        }

        current = current->next;
    }

    this->unk_174 = this->unk_174 + 1;
    if (this->unk_174 >= 0x3D) {
        osSyncPrintf("\x1b[41;37m");
        osSyncPrintf("Error : 時のブロック(ワープ２)が対でセットされていません(%s %d)\n", "../z_obj_warp2block.c", 0x1F9);
        osSyncPrintf("\x1b[m");
        Actor_Kill(&this->dyna.actor);
    }
}


void func_80BA2600(ObjWarp2block *this) {
    this->actionFunc_164 = func_80BA2610;
}

void func_80BA2610(ObjWarp2block *this, GlobalContext *globalCtx) {
    s16 temp;

    if ((func_80BA2304(this, globalCtx) != 0) && ((s32) this->unk_16C <= 0)) {
        ObjWarp2block_Spawn(this, globalCtx);
        this->unk_16C = 0xA0;
        func_80080480(globalCtx, (Actor *) this);
        this->unk_170 = 0xC;
    }
    temp = this->unk_170;
    if (temp > 0) {
        this->unk_170 = temp - 1;
        if (this->unk_170 == 0) {
            ObjWarp2block_SwapWithChild(this, globalCtx);
        }
    }
    if (this->unk_16C == 0x32) {
        func_80078884((u16)0x4807U);
    }
}


void ObjWarp2block_Update(Actor* thisx, GlobalContext *globalCtx) {
    ObjWarp2block* this = THIS;
    
    this->actionFunc_164(this, globalCtx);
    if (this->unk_16C > 0) {
        this->unk_16C = this->unk_16C - 1;
    }
}

void ObjWarp2block_Draw(Actor* thisx, GlobalContext *globalCtx) {
    Color_RGB8* sp44;

    sp44 = &sColors[thisx->home.rot.z & 7];

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_obj_warp2block.c", 0x248);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_warp2block.c", 0x24C), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, sp44->r, sp44->g, sp44->b, 0xFF);
    gSPDisplayList(POLY_OPA_DISP++, &D_06000980);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_obj_warp2block.c", 0x252);
}
