#include "z_bg_mizu_movebg.h"

#define FLAGS 0x00000010

#define THIS ((BgMizuMovebg*)thisx)

void BgMizuMovebg_Init(Actor* thisx, GlobalContext* globalCtx);
void BgMizuMovebg_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgMizuMovebg_Update(Actor* thisx, GlobalContext* globalCtx);
void BgMizuMovebg_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8089E318(BgMizuMovebg* this, GlobalContext* globalCtx);
void func_8089E650(BgMizuMovebg* this, GlobalContext* globalCtx);
s32 func_8089E108(Path* pathList, Vec3f* pos, s32 pathId, s32 pointId);

void func_8089E198(BgMizuMovebg* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Mizu_Movebg_InitVars = {
    ACTOR_BG_MIZU_MOVEBG,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_MIZU_OBJECTS,
    sizeof(BgMizuMovebg),
    (ActorFunc)BgMizuMovebg_Init,
    (ActorFunc)BgMizuMovebg_Destroy,
    (ActorFunc)BgMizuMovebg_Update,
    (ActorFunc)BgMizuMovebg_Draw,
};
*/
extern f32 D_8089EB40[];
extern Gfx* D_8089EB50[];
extern CollisionHeader* D_8089EB70[];

extern u32 D_8089EB90[];
extern Vec3f D_8089EBA0; //Vec3f D_8089EBA0 = { 0.0f, 80.0f, 23.0f };
extern Vec3f D_8089EBAC;
extern u8 D_8089EE40;//[0x10];

#define GetType(params) (((u16)(params) >> 0xC) & 0xF)
#define GetFlags(params) ((u16)(params) & 0x3F)
#define GetPathId(params) (((u16)(params) >> 0x8) & 0xF)
#define GetPointId(params) ((u16)(params) & 0xF)
#define GetSpeed(params) (((u16)(params) >> 0x4) & 0xF)

s32 func_8089DC30(GlobalContext* globalCtx) {
    s32 result;

    if (Flags_GetSwitch(globalCtx, 0x1C)) {
        result = 1;
    }
    else if (Flags_GetSwitch(globalCtx, 0x1D)) {
        result = 2;
    }
    else if (Flags_GetSwitch(globalCtx, 0x1E)) {
        result = 3;
    }
    else
    {
        result = 1;
    }
    return result;
}

#ifdef NON_MATCHING
void BgMizuMovebg_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgMizuMovebg* this = THIS;
    WaterBox* waterBoxes; 
    CollisionHeader* colHeader;
    Vec3f sp48;

    waterBoxes = globalCtx->colCtx.colHeader->waterBoxes;
    colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, D_8089EB90);
    this->unk_168 = this->dyna.actor.world.pos.y;
    this->unk_180 = D_8089EB50[GetType(this->dyna.actor.params)];
    DynaPolyActor_Init(&this->dyna, 1);
    CollisionHeader_GetVirtual(D_8089EB70[GetType(this->dyna.actor.params)], &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);
    //type = GetType(this->dyna.actor.params);

    switch (GetType(this->dyna.actor.params))
    {
    case 0:
        if (waterBoxes[2].ySurface + 15.0f < this->unk_168 - 700.0f) {
            this->dyna.actor.world.pos.y = this->unk_168 - 700.0f;
        }
        else {
            this->dyna.actor.world.pos.y = waterBoxes[2].ySurface + 15.0f;
        }

        this->actionFunc = func_8089E318;
        //type = GetType(this->dyna.actor.params);
        break;

    case 1:
        if (waterBoxes[2].ySurface + 15.0f < this->unk_168 - 710.0f) {
            this->dyna.actor.world.pos.y = this->unk_168 - 710.0f;
        }
        else {
            this->dyna.actor.world.pos.y = waterBoxes[2].ySurface + 15.0f;
        }

        this->actionFunc = func_8089E318;
        //type = GetType(this->dyna.actor.params);
        break;

    case 2:
        if (waterBoxes[2].ySurface + 15.0f < this->unk_168 - 700.0f) {
            this->dyna.actor.world.pos.y = this->unk_168 - 700.0f;
        }
        else {
            this->dyna.actor.world.pos.y = waterBoxes[2].ySurface + 15.0f;
        }

        this->actionFunc = func_8089E318;
        //type = GetType(this->dyna.actor.params);
        break;

    case 3:
        this->dyna.actor.world.pos.y = this->unk_168 + D_8089EB40[func_8089DC30(globalCtx)];
        this->actionFunc = func_8089E318;
        //type = GetType(this->dyna.actor.params);
        break;
    case 4:
    case 5:
    case 6:
        if (Flags_GetSwitch(globalCtx, GetFlags(this->dyna.actor.params))) {
            this->dyna.actor.world.pos.y = this->unk_168 + 115.2;
        }
        else {
            this->dyna.actor.world.pos.y = this->unk_168;
        }

        this->actionFunc = func_8089E318;
        //type = GetType(this->dyna.actor.params);
        break;

    case 7:
        this->scrollAlpha1 = 160;
        this->scrollAlpha2 = 160;
        this->scrollAlpha3 = 160;
        this->scrollAlpha4 = 160;
        this->unk_184 = GetPointId(this->dyna.actor.params);
        func_8089E108(globalCtx->setupPathList, &this->dyna.actor.world.pos, GetPathId(this->dyna.actor.params), GetPointId(this->dyna.actor.params));
        this->actionFunc = func_8089E650;
        //type = GetType(this->dyna.actor.params);
        break;
    }

    switch (GetType(this->dyna.actor.params)) {
        case 3:
        case 4:
        case 5:
        case 6:
        Matrix_RotateY(this->dyna.actor.world.rot.y * (M_PI / 32768), MTXMODE_NEW);
        Matrix_MultVec3f(&D_8089EBA0, &sp48);

        if (Actor_SpawnAsChild(&globalCtx->actorCtx, &this->dyna.actor, globalCtx, ACTOR_OBJ_HSBLOCK, this->dyna.actor.world.pos.x + sp48.x,
            this->dyna.actor.world.pos.y + sp48.y, this->dyna.actor.world.pos.z + sp48.z, this->dyna.actor.world.rot.x,
            this->dyna.actor.world.rot.y, this->dyna.actor.world.rot.z, 2) == NULL) {
            Actor_Kill(&this->dyna.actor);
        }
    }
}

#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Movebg/BgMizuMovebg_Init.s")
#endif

void BgMizuMovebg_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgMizuMovebg* this = THIS;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
    switch (GetType(thisx->params)) {
    case 3:
    case 4:
    case 5:
    case 6:
        if (this->unk_17C & 2) {
            D_8089EE40 &= ~2;
        }
        break;
    case 7:
        if (this->unk_17C & 1) {
            D_8089EE40 &= ~1;
        }
    }
}

s32 func_8089E108(Path* pathList, Vec3f* pos, s32 pathId, s32 pointId) {
    Path* path = pathList;
    Vec3s* point;
    path += pathId;
    point = &((Vec3s*)SEGMENTED_TO_VIRTUAL(path->points))[pointId];

    pos->x = point->x;
    pos->y = point->y;
    pos->z = point->z;
    return 0;
}

#define BLEND_ASS(v1, v2, f1, f2, cv) (v1 - (s32)((f32)(cv - f1)/ (f2 - f1) * (v1 - v2)))

void func_8089E198(BgMizuMovebg* this, GlobalContext* globalCtx) {
    f32 waterLevel = globalCtx->colCtx.colHeader->waterBoxes[2].ySurface;

    if (waterLevel < -15) {
        this->scrollAlpha1 = 255;
    } else if (waterLevel < 445) {
        this->scrollAlpha1 = BLEND_ASS(255, 160, -15, 445, waterLevel);
    } else {
        this->scrollAlpha1 = 160;
    }
    if (waterLevel < 445) {
        this->scrollAlpha2 = 255;
    } else if (waterLevel < 765) {
        this->scrollAlpha2 = BLEND_ASS(255, 160, 445, 765, waterLevel);
    } else {
        this->scrollAlpha2 = 160;
    }
    if (waterLevel < -835) {
        this->scrollAlpha3 = 255;
    } else if (waterLevel < -15) {
        this->scrollAlpha3 = BLEND_ASS(255, 160, -835, -15, waterLevel);
    } else {
        this->scrollAlpha3 = 160;
    }
    this->scrollAlpha4 = this->scrollAlpha3;
}

#ifdef NON_MATCHING
void func_8089E318(BgMizuMovebg* this, GlobalContext* globalCtx) {
    WaterBox* waterBoxes; //sp3C
    f32 phi_f0;
    //Actor* child;
    Vec3f sp28;

    waterBoxes = globalCtx->colCtx.colHeader->waterBoxes;
    func_8089E198(this, globalCtx);
    switch (GetType(this->dyna.actor.params)) {
    case 0:
    case 2:
        if (waterBoxes[2].ySurface + 15.0f < this->unk_168 - 700.0f) {
            this->dyna.actor.world.pos.y = this->unk_168 - 700.0f;
        }
        else {
            this->dyna.actor.world.pos.y = waterBoxes[2].ySurface + 15.0f;
        }
        break;
    case 1:
        if (waterBoxes[2].ySurface + 15.0f < this->unk_168 - 710.0f) {
            this->dyna.actor.world.pos.y = this->unk_168 - 710.0f;
        }
        else {
            this->dyna.actor.world.pos.y = waterBoxes[2].ySurface + 15.0f;
        }
        break;
    case 3:
        phi_f0 = this->unk_168 + D_8089EB40[func_8089DC30(globalCtx)];
        if (!Math_StepToF(&this->dyna.actor.world.pos.y, phi_f0, 1.0f)) {
            if (!(D_8089EE40 & 2) && GetSpeed(this->dyna.actor.params) != 0) { 
                D_8089EE40 |= 2;
                this->unk_17C |= 2;
            }
            if (this->unk_17C & 2) {
                if (this->dyna.actor.room == 0) {
                    func_8002F974(&this->dyna.actor, (u16)0x2024U);
                }
                else {
                    func_8002F948(&this->dyna.actor, (u16)0x2024U);
                }
            }
        }
        break;
    case 4:
    case 5:
    case 6:
        if (Flags_GetSwitch(globalCtx, GetFlags(this->dyna.actor.params))) {
            phi_f0 = this->unk_168 + 115.200005f;
        }
        else {
            phi_f0 = this->unk_168;
        }
        if (!Math_StepToF(&this->dyna.actor.world.pos.y, phi_f0, 1.0f)) {
            if (!(D_8089EE40 & 2) && GetSpeed(this->dyna.actor.params) != 0) {
                D_8089EE40 |= 2;
                this->unk_17C |= 2;
            }
            if (this->unk_17C & 2) {
                func_8002F948(&this->dyna.actor, (u16)0x2024U);
            }
        }
        break;
    }
    switch (GetType(this->dyna.actor.params)) {
    case 3:
    case 4:
    case 5:
    case 6:
        if (globalCtx->roomCtx.curRoom.num == this->dyna.actor.room) {
            Matrix_RotateY(this->dyna.actor.world.rot.y * (M_PI / 32768), MTXMODE_NEW);
            Matrix_MultVec3f(&D_8089EBAC, &sp28);
            this->dyna.actor.child->world.pos.x = this->dyna.actor.world.pos.x + sp28.x;
            this->dyna.actor.child->world.pos.y = this->dyna.actor.world.pos.y + sp28.y;
            this->dyna.actor.child->world.pos.z = this->dyna.actor.world.pos.z + sp28.z;
            this->dyna.actor.child->flags &= ~1;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Movebg/func_8089E318.s")
#endif

void func_8089E650(BgMizuMovebg* this, GlobalContext* globalCtx) {
    Vec3f waypoint;
    f32 dist;
    f32 dx;
    f32 dy;
    f32 dz;

    this->dyna.actor.speedXZ = GetSpeed(this->dyna.actor.params) * 0.1f;
    func_8089E108(globalCtx->setupPathList, &waypoint, GetPathId(this->dyna.actor.params), this->unk_184);
    dist = Actor_WorldDistXYZToPoint(&this->dyna.actor, &waypoint);
    if (dist < this->dyna.actor.speedXZ) {
        this->dyna.actor.speedXZ = dist;
    }
    func_80035844(&this->dyna.actor.world.pos, &waypoint, &this->dyna.actor.world.rot, 1);
    func_8002D97C(&this->dyna.actor);
    dx = waypoint.x - this->dyna.actor.world.pos.x;
    dy = waypoint.y - this->dyna.actor.world.pos.y;
    dz = waypoint.z - this->dyna.actor.world.pos.z;
    if (fabsf(dx) < 2.0f && fabsf(dy) < 2.0f && fabsf(dz) < 2.0f) {
        this->unk_184++;
        if (this->unk_184 >= globalCtx->setupPathList[GetPathId(this->dyna.actor.params)].count) {
            this->unk_184 = 0;
            func_8089E108(globalCtx->setupPathList, &this->dyna.actor.world.pos, GetPathId(this->dyna.actor.params), 0);
        }
    }
    if (!(D_8089EE40 & 1) && GetSpeed(this->dyna.actor.params) != 0) {
        D_8089EE40 |= 1;
        this->unk_17C |= 1;
    }
    if (this->unk_17C & 1) {
        func_8002F948(&this->dyna.actor, NA_SE_EV_ROLL_STAND_2 - SFX_FLAG);
    }
}

void BgMizuMovebg_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgMizuMovebg* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgMizuMovebg_Draw(Actor* thisx, GlobalContext* globalCtx2) {
    BgMizuMovebg* this = THIS;
    GlobalContext* globalCtx = (GlobalContext*)globalCtx2;
    u32 frames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_mizu_movebg.c", 754);
    if (1) {}
    frames = globalCtx->gameplayFrames;
    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08,
        Gfx_TwoTexScrollEnvColor(globalCtx->state.gfxCtx, 0, frames * 1, 0 * 0, 32, 32, 1, 0, 0, 32, 32, 0, 0, 0, this->scrollAlpha1));

    gSPSegment(POLY_OPA_DISP++, 0x09,
        Gfx_TwoTexScrollEnvColor(globalCtx->state.gfxCtx, 0, frames * 1, 0 * 0, 32, 32, 1, 0, 0, 32, 32, 0, 0, 0, this->scrollAlpha2));

    gSPSegment(POLY_OPA_DISP++, 0x0A,
        Gfx_TwoTexScrollEnvColor(globalCtx->state.gfxCtx, 0, frames * 1, 0 * 0, 32, 32, 1, 0, 0, 32, 32, 0, 0, 0, this->scrollAlpha3));

    gSPSegment(POLY_OPA_DISP++, 0x0B,
        Gfx_TwoTexScrollEnvColor(globalCtx->state.gfxCtx, 0, frames * 3, 0 * 0, 32, 32, 1, 0, 0, 32, 32, 0, 0, 0, this->scrollAlpha4));

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_mizu_movebg.c", 788),
        G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    if (this->unk_180 != NULL) {
        gSPDisplayList(POLY_OPA_DISP++, this->unk_180);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_mizu_movebg.c", 795);
}

