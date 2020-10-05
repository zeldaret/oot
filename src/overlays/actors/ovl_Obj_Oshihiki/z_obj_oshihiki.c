/*
 * File: z_obj_oshihiki.c
 * Overlay: ovl_Obj_Oshihiki
 * Description: Movable Block
 */

#include "z_obj_oshihiki.h"
#include "overlays/actors/ovl_Obj_Switch/z_obj_switch.h"

#define FLAGS 0x00000010

#define THIS ((ObjOshihiki*)thisx)

#define BLOCK_TYPE this->dyna.actor.params & 0xF

void ObjOshihiki_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjOshihiki_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjOshihiki_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjOshihiki_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B9BFF8(ObjOshihiki* this, GlobalContext* globalCtx);
void func_80B9C02C(ObjOshihiki* this, GlobalContext* globalCtx);
void func_80B9C110(ObjOshihiki* this, GlobalContext* globalCtx);
void func_80B9C14C(ObjOshihiki* this, GlobalContext* globalCtx);
void func_80B9C340(ObjOshihiki* this, GlobalContext* globalCtx);
void func_80B9C368(ObjOshihiki* this, GlobalContext* globalCtx);
void func_80B9C584(ObjOshihiki* this, GlobalContext* globalCtx);
void func_80B9C5DC(ObjOshihiki* this, GlobalContext* globalCtx);

typedef enum {
    /* 0 */ SMALL_SWITCH_OFF,
    /* 1 */ MEDIUM_SWITCH_OFF,
    /* 2 */ LARGE_SWITCH_OFF,
    /* 3 */ HUGE_SWITCH_OFF,
    /* 4 */ SMALL_SWITCH_ON,
    /* 5 */ MEDIUM_SWITCH_ON,
    /* 6 */ LARGE_SWITCH_ON,
    /* 7 */ HUGE_SWITCH_ON
} BlockTypes;

const ActorInit Obj_Oshihiki_InitVars = {
    ACTOR_OBJ_OSHIHIKI,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_DANGEON_KEEP,
    sizeof(ObjOshihiki),
    (ActorFunc)ObjOshihiki_Init,
    (ActorFunc)ObjOshihiki_Destroy,
    (ActorFunc)ObjOshihiki_Update,
    (ActorFunc)ObjOshihiki_Draw,
};

f32 sScales[] = {
    (1 / 10.0f), (1 / 6.0f), (1 / 5.0f), (1 / 3.0f), (1 / 10.0f), (1 / 6.0f), (1 / 5.0f), (1 / 3.0f),
};

// sColors
Color_RGB8 D_80B9C9E0[][4] = {
    { { 110, 86, 40 }, { 110, 86, 40 }, { 110, 86, 40 }, { 110, 86, 40 } },         // deku tree
    { { 106, 120, 110 }, { 104, 80, 20 }, { 0, 0, 0 }, { 0, 0, 0 } },               // dodongos cavern
    { { 142, 99, 86 }, { 72, 118, 96 }, { 0, 0, 0 }, { 0, 0, 0 } },                 // forest temple
    { { 210, 150, 80 }, { 210, 170, 80 }, { 0, 0, 0 }, { 0, 0, 0 } },               // fire temple
    { { 102, 144, 182 }, { 176, 167, 100 }, { 100, 167, 100 }, { 117, 97, 96 } },   // water temple
    { { 232, 210, 176 }, { 232, 210, 176 }, { 232, 210, 176 }, { 232, 210, 176 } }, // spirit temple
    { { 135, 125, 95 }, { 135, 125, 95 }, { 135, 125, 95 }, { 135, 125, 95 } },     // shadow temple
    { { 255, 255, 255 }, { 255, 255, 255 }, { 255, 255, 255 }, { 255, 255, 255 } }, // ganons castle
    { { 232, 210, 176 }, { 232, 210, 176 }, { 232, 210, 176 }, { 232, 210, 176 } }, // gerudo training grounds
};

// sScenes
s16 D_80B9CA4C[] = {
    SCENE_YDAN,      // deku
    SCENE_DDAN,      // dodongos cavern
    SCENE_BMORI1,    // forest temple
    SCENE_HIDAN,     // fire
    SCENE_MIZUSIN,   // water
    SCENE_JYASINZOU, // spirit
    SCENE_HAKADAN,   // shadow
    SCENE_GANON,     // ganons tower
    SCENE_MEN,       // gerudo training grounds
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneForward, 1800, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1500, ICHAIN_STOP),
};

Vec3f D_80B9CA6C[5] = {
    {29.99f, 1.01f, -29.99f}, {-29.99f, 1.01f, -29.99f}, {-29.99f, 1.01f, 29.99f}, {29.99f, 1.01f, 29.99f}, {0.0f, 1.01f, 0.0f},
};

f32 D_80B9CAA8[][2] = {
    {-30.0f, 0.0f}, {30.0f, 0.0f}, {-30.0f, 60.0f}, {30.0f, 60.0f},
};

f32 D_80B9CAC8[][2] = {
    {1.0f, 1.0f}, {-1.0f, 1.0f}, {1.0f, -1.0f}, {-1.0f, -1.0f},
};

extern UNK_TYPE D_05004E98;
extern UNK_TYPE D_05003350;
extern UNK_TYPE D_05003B50;
extern UNK_TYPE D_05004350;
extern Gfx D_05004CD0[];

void func_80B9B180(ObjOshihiki* this, GlobalContext* globalCtx, UNK_TYPE arg2, DynaPolyMoveFlag moveFlag) {
    s32 pad;
    s32 temp = 0;
    s32 pad2;

    DynaPolyInfo_SetActorMove(&this->dyna, moveFlag);
    DynaPolyInfo_Alloc(arg2, &temp);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, temp);

    if (this->dyna.dynaPolyId == 0x32) {
        // Warning : move BG registration failure
        osSyncPrintf("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_obj_oshihiki.c", 280,
                     this->dyna.actor.id, this->dyna.actor.params);
    }
}

void func_80B9B208(Vec3f *out, Vec3f *in, f32 sn, f32 cs) {
    out->x = (in->z * sn) + (in->x * cs);
    out->y = in->y;
    out->z = (in->z * cs) - (in->x * sn);
}

s32 func_80B9B254(ObjOshihiki *this) {
    s32 strength;

    if (this->unk_1BE != 0) {
        return 0;
    }
    strength = Player_GetStrength();
    switch(BLOCK_TYPE) {
        case SMALL_SWITCH_OFF:
        case MEDIUM_SWITCH_OFF:
        case SMALL_SWITCH_ON:
        case MEDIUM_SWITCH_ON:
            return 1;
            break;
        case LARGE_SWITCH_OFF:
        case LARGE_SWITCH_ON:
            return strength > 0;
            break;
        case HUGE_SWITCH_OFF:
        case HUGE_SWITCH_ON:
            return strength >= 2;
            break;
        }
    return 0;
}

void func_80B9B2D8(ObjOshihiki* this) {
    s32 i;

    for (i = 0; i < ARRAY_COUNT(this->unk_180); i++) {
        this->unk_180[i] = 0x32;
    }
}

ObjOshihiki* func_80B9B300(ObjOshihiki *this, GlobalContext *globalCtx) {
    DynaPolyActor* dyna;

    if ((this->unk_180[this->unk_1BC] != 0x32) && (fabsf(this->dyna.actor.groundY - this->dyna.actor.posRot.pos.y) < 0.001f)) {
        dyna = DynaPolyInfo_GetActor(&globalCtx->colCtx, this->unk_180[this->unk_1BC]);
        if ((dyna != NULL) && (dyna->actor.id == ACTOR_OBJ_OSHIHIKI)) {
            return (ObjOshihiki*) dyna;
        }
    }
    return NULL;
}

void func_80B9B38C(ObjOshihiki *this) {
    if (this->dyna.actor.initPosRot.pos.x < this->dyna.actor.posRot.pos.x) {
        while((this->dyna.actor.posRot.pos.x - this->dyna.actor.initPosRot.pos.x) >= 20.0f) {
            this->dyna.actor.initPosRot.pos.x += 20.0f;
        }
    } else {
        while((this->dyna.actor.initPosRot.pos.x - this->dyna.actor.posRot.pos.x) >= 20.0f) {
            this->dyna.actor.initPosRot.pos.x -= 20.0f;
        }
    }
    if (this->dyna.actor.initPosRot.pos.z < this->dyna.actor.posRot.pos.z) {
        while((this->dyna.actor.posRot.pos.z - this->dyna.actor.initPosRot.pos.z) >= 20.0f) {
            this->dyna.actor.initPosRot.pos.z += 20.0f;
        }
    } else {
        while((this->dyna.actor.initPosRot.pos.z - this->dyna.actor.posRot.pos.z) >= 20.0f) {
            this->dyna.actor.initPosRot.pos.z -= 20.0f;
        }
    }
}

s32 func_80B9B4BC(ObjOshihiki *this, DynaPolyActor *dyna, GlobalContext *globalCtx) {
    s16 dynaSwitchFlag;

    if (dyna == NULL) {
        return 1;
    } else if (dyna->actor.id == ACTOR_OBJ_SWITCH) {
        dynaSwitchFlag = (dyna->actor.params >> 8) & 0x3F;
        switch(dyna->actor.params & 0x33) {
            case 0x20: // (OBJSWITCH_SUBTYPE_FLOOR_2 << 4) | OBJSWITCH_TYPE_FLOOR
                if ((dynaSwitchFlag == ((this->dyna.actor.params >> 8) & 0x3F)) && Flags_GetSwitch(globalCtx, dynaSwitchFlag)) {
                    return 0;
                }
                break;
            case 0x30: // (OBJSWITCH_SUBTYPE_FLOOR_3 << 4) | OBJSWITCH_TYPE_FLOOR
                if ((dynaSwitchFlag == ((this->dyna.actor.params >> 8) & 0x3F)) && !Flags_GetSwitch(globalCtx, dynaSwitchFlag)) {
                    return 0;
                }
                break;
        }
    }
    return 1;
}

void ObjOshihiki_SetupDynaPoly(ObjOshihiki* this, GlobalContext* globalCtx) {
    switch (BLOCK_TYPE) {
        case SMALL_SWITCH_OFF:
        case MEDIUM_SWITCH_OFF:
        case LARGE_SWITCH_OFF:
        case HUGE_SWITCH_OFF:
        case SMALL_SWITCH_ON:
        case MEDIUM_SWITCH_ON:
        case LARGE_SWITCH_ON:
        case HUGE_SWITCH_ON:
            func_80B9B180(this, globalCtx, &D_05004E98, 1);
            return;
    }
    // Error : type cannot be determined
    osSyncPrintf("Error : タイプが判別できない(%s %d)(arg_data 0x%04x)\n", "../z_obj_oshihiki.c", 444,
                 this->dyna.actor.params);
}

void ObjOshihiki_SetScale(ObjOshihiki* this, GlobalContext* globalCtx) {
    Actor_SetScale(&this->dyna.actor, sScales[BLOCK_TYPE]);
}

void ObjOshihiki_SetTexture(ObjOshihiki* this, GlobalContext* globalCtx) {
    switch (BLOCK_TYPE) {
        case SMALL_SWITCH_OFF:
        case MEDIUM_SWITCH_OFF:
        case SMALL_SWITCH_ON:
        case MEDIUM_SWITCH_ON:
            this->texture = &D_05003350;
            break;
        case LARGE_SWITCH_OFF:
        case LARGE_SWITCH_ON:
            this->texture = &D_05003B50;
            break;
        case HUGE_SWITCH_OFF:
        case HUGE_SWITCH_ON:
            this->texture = &D_05004350;
            break;
    }
}

void ObjOshihiki_SetColor(ObjOshihiki* this, GlobalContext* globalCtx) {
    Color_RGB8* src;
    Color_RGB8* color = &this->color;
    s16 paramsColorIdx;
    s32 i;

    paramsColorIdx = (this->dyna.actor.params >> 6) & 3;

    for (i = 0; i < ARRAY_COUNT(D_80B9CA4C); i++) {
        if (D_80B9CA4C[i] == globalCtx->sceneNum) {
            break;
        }
    }

    if (i >= 9) {
        // "Error : scene_data_ID cannot be determined"
        osSyncPrintf("Error : scene_data_ID が判別できない。(%s %d)\n", "../z_obj_oshihiki.c", 579);
        color->r = color->g = color->b = 0xFF;
    } else {
        src = &D_80B9C9E0[i][paramsColorIdx];
        color->r = src->r;
        color->g = src->g;
        color->b = src->b;
    }
}

void ObjOshihiki_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    ObjOshihiki* this = THIS;
    s32 switchFlag;

    ObjOshihiki_SetupDynaPoly(this, globalCtx);

    switchFlag = this->dyna.actor.params >> 8;

    if (((u8)switchFlag >= 0) && ((u8)switchFlag <= 0x3F)) {
        if (Flags_GetSwitch(globalCtx, (switchFlag & 0x3F))) {
            switch (BLOCK_TYPE) {
                case SMALL_SWITCH_OFF:
                case MEDIUM_SWITCH_OFF:
                case LARGE_SWITCH_OFF:
                case HUGE_SWITCH_OFF:
                    Actor_Kill(&this->dyna.actor);
                    return;
            }
        } else {
            switch (BLOCK_TYPE) {
                case SMALL_SWITCH_ON:
                case MEDIUM_SWITCH_ON:
                case LARGE_SWITCH_ON:
                case HUGE_SWITCH_ON:
                    Actor_Kill(&this->dyna.actor);
                    return;
            }
        }
    }

    ObjOshihiki_SetScale(this, globalCtx);
    ObjOshihiki_SetTexture(this, globalCtx);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    thisx->colChkInfo.mass = 0xFF;
    ObjOshihiki_SetColor(this, globalCtx);
    func_80B9B2D8(this);
    func_80B9C110(this, globalCtx);
    // (dungeon keep push-pull block)
    osSyncPrintf("(dungeon keep 押し引きブロック)(arg_data 0x%04x)\n", this->dyna.actor.params);
}

void ObjOshihiki_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    s32 pad;
    ObjOshihiki* this = THIS;
    
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_80B9B8C8(ObjOshihiki *this, GlobalContext *globalCtx) {
    s32 i;
    Vec3f sp80;
    Vec3f sp74;
    s32 pad1;
    s32 pad2;

    for(i = 0; i < 5; i++) {
        sp74.x = D_80B9CA6C[i].x * (this->dyna.actor.scale.x * 10.0f);
        sp74.y = D_80B9CA6C[i].y * (this->dyna.actor.scale.y * 10.0f);
        sp74.z = D_80B9CA6C[i].z * (this->dyna.actor.scale.z * 10.0f);
        func_80B9B208(&sp80, &sp74, this->yawSin, this->yawCos);
        sp80.x += this->dyna.actor.posRot.pos.x;
        sp80.y += this->dyna.actor.pos4.y;
        sp80.z += this->dyna.actor.posRot.pos.z;
        this->unk_1A8[i] = func_8003CA64(&globalCtx->colCtx, &this->unk_194[i], &this->unk_180[i], &this->dyna.actor, &sp80, 0.0f);
    }
}

s16 func_80B9BA28(ObjOshihiki *this) {
    s16 phi_v1 = 0;
    s16 temp = 1;
    f32 phi_f0 = this->unk_1A8[temp];
   
    if (phi_f0 > this->unk_1A8[phi_v1]) {
        phi_v1 = temp;
    } else if ((this->unk_180[temp] == 0x32) && ((phi_f0 - this->unk_1A8[phi_v1]) > -0.001f)) {
        phi_v1 = temp;
    }
    if (this->unk_1A8[temp+1] > this->unk_1A8[phi_v1]) {
        phi_v1 = temp+1;
    } else if ((this->unk_180[temp+1] == 0x32) && ((this->unk_1A8[temp+1] - this->unk_1A8[phi_v1]) > -0.001f)) {
        phi_v1 = temp+1;
    } 
    if (this->unk_1A8[temp+2] > this->unk_1A8[phi_v1]) {
        phi_v1 = temp+2;
    } else if ((this->unk_180[temp+2] == 0x32) && ((this->unk_1A8[temp+2] - this->unk_1A8[phi_v1]) > -0.001f)) {
        phi_v1 = temp+2;
    }
    if (this->unk_1A8[temp+3] > this->unk_1A8[phi_v1]) {
        phi_v1 = temp+3;
    } else if ((this->unk_180[temp+3] == 0x32) && ((this->unk_1A8[temp+3] - this->unk_1A8[phi_v1]) > -0.001f)) {
        phi_v1 = temp+3;
    }
    return phi_v1;
}

void func_80B9BB70(ObjOshihiki *this, GlobalContext *globalCtx) {
    func_80B9B2D8(this);
    func_80B9B8C8(this, globalCtx);
    this->unk_1BC = func_80B9BA28(this);
    this->dyna.actor.groundY = this->unk_1A8[this->unk_1BC];
}

s32 ObjOshihiki_SnapToFloor(ObjOshihiki* this, GlobalContext* globalCtx) {
    func_80B9BB70(this, globalCtx);

    if ((this->dyna.actor.groundY - this->dyna.actor.posRot.pos.y) >= -0.001f) {
        this->dyna.actor.posRot.pos.y = this->dyna.actor.groundY;
        return 1;
    }

    return 0;
}

s32 func_80B9BC20(ObjOshihiki *this, GlobalContext *globalCtx) {
    if (this->dyna.actor.posRot.pos.y <= -31990.0f) {
        // Warning : Push-pull block fell too much
        osSyncPrintf("Warning : 押し引きブロック落ちすぎた(%s %d)(arg_data 0x%04x)\n", "../z_obj_oshihiki.c", 809, this->dyna.actor.params);
        Actor_Kill(&this->dyna.actor);
        return 0;
    }
    if ((this->dyna.actor.groundY - this->dyna.actor.posRot.pos.y) >= -0.001f) {
        this->dyna.actor.posRot.pos.y = this->dyna.actor.groundY;
        return 1;
    }
    return 0;
}

s32 func_80B9BCB8(GlobalContext *globalCtx, s16 angle, f32 direction, ObjOshihiki *this) {
    f32 mag = ((direction >= 0.0f) ? 1.0f : -1.0f) * (300.0f * this->dyna.actor.scale.x + 20.0f - 0.5f);
    f32 sn = Math_Sins(angle);
    f32 cs = Math_Coss(angle);
    s32 i;

    for(i = 0; i < 4; i++) {
        Vec3f spD4;
        Vec3f spC8;
        Vec3f spBC;
        Vec3f spB0;
        u32 spAC;
        CollisionPoly* spA8;
        
        spB0.x = (D_80B9CAA8[i][0] * this->dyna.actor.scale.x * 10.0f) + D_80B9CAC8[i][0];
        spB0.y = (D_80B9CAA8[i][1] * this->dyna.actor.scale.y * 10.0f) + D_80B9CAC8[i][1];
        spB0.z = 0.0f;
        func_80B9B208(&spD4, &spB0, sn, cs);
        spD4.x += this->dyna.actor.posRot.pos.x;
        spD4.y += this->dyna.actor.posRot.pos.y;
        spD4.z += this->dyna.actor.posRot.pos.z;
        spC8.x = spD4.x + mag * sn;
        spC8.y = spD4.y;
        spC8.z = spD4.z + mag * cs;
        if (func_8003DFA0(&globalCtx->colCtx, &spD4, &spC8, &spBC, &spA8, 1, 0, 0, 1, &spAC, &this->dyna.actor, 0.0f)) {
            return 1;
        }
    }
    return 0;
}

s32 func_80B9BF08(ObjOshihiki *this, GlobalContext *globalCtx) {
    s32 pad;
    ObjOshihiki* sp18 = func_80B9B300(this, globalCtx);

    if ((sp18 != NULL) && (sp18->unk_168 & 0x20) && !func_80B9BCB8(globalCtx, sp18->dyna.unk_158, sp18->unk_17C, this)) {
        this->unk_1C0 = sp18;
    }
    
    if ((this->unk_168 & 0x100) && (this->unk_1C0 != NULL)) {
        if (this->unk_1C0->unk_168 & 0x10) {
            this->unk_1C4 = this->unk_1C0->dyna.actor.posRot.pos.x - this->unk_1C0->dyna.actor.pos4.x;
            this->unk_1C8 = this->unk_1C0->dyna.actor.posRot.pos.z - this->unk_1C0->dyna.actor.pos4.z;
            this->dyna.actor.posRot.pos.x += this->unk_1C4;
            this->dyna.actor.posRot.pos.z += this->unk_1C8;
            func_80B9B38C(this);
            return 1;
        } else if (!(this->unk_1C0->unk_168 & 0x20)) {
            this->unk_1C0 = NULL;
        }
    }
    return 0;
}

void func_80B9BFF8(ObjOshihiki *this, GlobalContext *globalCtx) {
    this->unk_168 |= 2;
    this->actionFunc = func_80B9C02C;
    this->dyna.actor.gravity = 0.0f;
    this->dyna.actor.velocity.x = this->dyna.actor.velocity.y = this->dyna.actor.velocity.z = 0.0f;
}

void func_80B9C02C(ObjOshihiki *this, GlobalContext *globalCtx) {
    s32 pad;
    Player* player = PLAYER;

    this->unk_168 |= 1;
    if ((this->unk_16A <= 0) && (fabsf(this->dyna.unk_150) > 0.001f)) {
        if(func_80B9B254(this) && !func_80B9BCB8(globalCtx, this->dyna.unk_158, this->dyna.unk_150, this)) {
            this->unk_17C = this->dyna.unk_150;
            func_80B9C340(this, globalCtx);
        } else {
            player->stateFlags2 &= ~0x10;
            this->dyna.unk_150 = 0.0f;
        }
    } else {
        player->stateFlags2 &= ~0x10;
        this->dyna.unk_150 = 0.0f;
    }
}

void func_80B9C110(ObjOshihiki* this, GlobalContext* globalCtx) {
    this->unk_168 |= 8;
    this->actionFunc = func_80B9C14C;
    this->dyna.actor.velocity.z = 0.0f;
    this->dyna.actor.velocity.y = 0.0f;
    this->dyna.actor.velocity.x = 0.0f;
    this->dyna.actor.gravity = -1.0f;
}

void func_80B9C14C(ObjOshihiki* this, GlobalContext* globalCtx) {
    s32 bgId;
    Player* player = PLAYER;
    DynaPolyActor* dynaActor;

    this->unk_168 |= 4;
    Actor_MoveForward(&this->dyna.actor);

    if (ObjOshihiki_SnapToFloor(this, globalCtx)) {

        bgId = this->unk_180[this->unk_1BC];

        if (bgId == 0x32) {
            func_80B9BFF8(this, globalCtx);
            return;
        }

        dynaActor = DynaPolyInfo_GetActor(&globalCtx->colCtx, bgId);

        if (dynaActor != NULL) {
            func_800434A8(dynaActor);
            func_80043538(dynaActor);

            if ((this->unk_16A <= 0) && (fabsf(this->dyna.unk_150) > 0.001f)) {
                if (func_80B9B254(this) && func_80B9B4BC(this, dynaActor, globalCtx) &&
                    !func_80B9BCB8(globalCtx, this->dyna.unk_158, this->dyna.unk_150, this)) {

                    this->unk_17C = this->dyna.unk_150;
                    func_80B9C340(this, globalCtx);
                } else {
                    player->stateFlags2 &= ~0x10;
                    this->dyna.unk_150 = 0.0f;
                }
            } else {
                player->stateFlags2 &= ~0x10;
                this->dyna.unk_150 = 0.0f;
            }
        } else {
            func_80B9BFF8(this, globalCtx);
        }
    } else {
        bgId = this->unk_180[this->unk_1BC];

        if (bgId == 0x32) {
            func_80B9C584(this, globalCtx);
            return;
        }

        dynaActor = DynaPolyInfo_GetActor(&globalCtx->colCtx, bgId);

        if ((dynaActor != NULL) && (dynaActor->unk_15C & 1)) {
            func_800434A8(dynaActor);
            func_80043538(dynaActor);
            this->dyna.actor.posRot.pos.y = this->dyna.actor.groundY;
        } else {
            func_80B9C584(this, globalCtx);
        }
    }
}

void func_80B9C340(ObjOshihiki *this, GlobalContext *globalCtx) {
    this->unk_168 |= 0x20;
    this->actionFunc = func_80B9C368;
    this->dyna.actor.gravity = 0.0f;
}

void func_80B9C368(ObjOshihiki *this, GlobalContext *globalCtx) {
    s32 pad;
    Player *player = PLAYER;
    f32 temp_f0_2;
    s32 sp20;
    
    this->unk_174 += 0.5f;
    this->unk_168 |= 0x10;
    this->unk_174 = CLAMP_MAX(this->unk_174, 2.0f);
    sp20 = Math_ApproxF(&this->unk_178, 20.0f, this->unk_174);
    temp_f0_2 = ((this->unk_17C >= 0.0f) ? 1.0f : -1.0f) * this->unk_178;
    this->dyna.actor.posRot.pos.x = this->dyna.actor.initPosRot.pos.x + (temp_f0_2 * this->yawSin);
    this->dyna.actor.posRot.pos.z = this->dyna.actor.initPosRot.pos.z + (temp_f0_2 * this->yawCos);
    
    
    if (!ObjOshihiki_SnapToFloor(this, globalCtx)) {
        this->dyna.actor.initPosRot.pos.x = this->dyna.actor.posRot.pos.x;
        this->dyna.actor.initPosRot.pos.z = this->dyna.actor.posRot.pos.z;
        player->stateFlags2 &= ~0x10;
        this->dyna.unk_150 = 0.0f;
        this->unk_178 = 0.0f;
        this->unk_174 = 0.0f;
        func_80B9C584(this, globalCtx);
    } else if (sp20 != 0) {
        player = PLAYER;
        if (func_80B9BCB8(globalCtx, this->dyna.unk_158, this->dyna.unk_150, this)) {
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BLOCK_BOUND);
        }
        
        this->dyna.actor.initPosRot.pos.x = this->dyna.actor.posRot.pos.x;
        this->dyna.actor.initPosRot.pos.z = this->dyna.actor.posRot.pos.z;
        player->stateFlags2 &= ~0x10;
        this->dyna.unk_150 = 0.0f;
        this->unk_178 = 0.0f;
        this->unk_174 = 0.0f;
        this->unk_16A = 10;
        if (this->unk_180[this->unk_1BC] == 0x32) {
            func_80B9BFF8(this, globalCtx);
        } else {
            func_80B9C110(this, globalCtx);
        }
    }
    Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_ROCK_SLIDE - SFX_FLAG);
    
}

void func_80B9C584(ObjOshihiki* this, GlobalContext* globalCtx) {
    this->unk_168 |= 0x80;
    this->dyna.actor.velocity.x = this->dyna.actor.velocity.y = this->dyna.actor.velocity.z = 0.0f;
    this->dyna.actor.gravity = -1.0f;
    func_80B9BB70(this, globalCtx);
    this->actionFunc = func_80B9C5DC;
}

void func_80B9C5DC(ObjOshihiki *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    
    this->unk_168 |= 0x40;
    if (fabsf(this->dyna.unk_150) > 0.001f) {
        this->dyna.unk_150 = 0.0f;
        player->stateFlags2 &= ~0x10;
    }
    Actor_MoveForward(&this->dyna.actor);
    if (func_80B9BC20(this, globalCtx)) {
        if (this->unk_180[this->unk_1BC] == 0x32) {
            func_80B9BFF8(this, globalCtx);
        } else {
            func_80B9C110(this, globalCtx);
        }
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BLOCK_BOUND);
        Audio_PlayActorSound2(&this->dyna.actor, func_80041F34(&globalCtx->colCtx, this->unk_194[this->unk_1BC], this->unk_180[this->unk_1BC]) + SFX_FLAG);
    }
}

void ObjOshihiki_Update(Actor* thisx, GlobalContext* globalCtx) {
    ObjOshihiki* this = THIS;

    this->unk_168 &= 0xFF00;
    this->unk_168 |= 0x0100;

    if (this->unk_16A > 0) {
        this->unk_16A--;
    }

    this->dyna.actor.posRot.rot.y = this->dyna.unk_158;

    this->yawSin = Math_Sins(this->dyna.actor.posRot.rot.y);
    this->yawCos = Math_Coss(this->dyna.actor.posRot.rot.y);

    if (this->actionFunc != NULL) {
        this->actionFunc(this, globalCtx);
    }
}

void ObjOshihiki_Draw(Actor* thisx, GlobalContext *globalCtx) {
    s32 pad;
    ObjOshihiki* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_obj_oshihiki.c", 1289);
    if (func_80B9BF08(this, globalCtx)) {
        Matrix_Translate(this->unk_1C4 * 10.0f, 0.0f, this->unk_1C8 * 10.0f, 1);
    }
    this->unk_168 &= ~0x0100;
    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(this->texture));

    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_oshihiki.c", 1308),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    switch(globalCtx->sceneNum) {
        case SCENE_YDAN:
        case SCENE_DDAN:
        case SCENE_BMORI1:
        case SCENE_HIDAN:
        case SCENE_MIZUSIN:
        case SCENE_JYASINZOU:
        case SCENE_HAKADAN:
        case SCENE_MEN:
            gDPSetEnvColor(oGfxCtx->polyOpa.p++, this->color.r, this->color.g, this->color.b, 255);
            break;
        default:
            gDPSetEnvColor(oGfxCtx->polyOpa.p++, mREG(0xD), mREG(0xE), mREG(0xF), 255);
            break;
        }

    gSPDisplayList(oGfxCtx->polyOpa.p++, &D_05004CD0);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_obj_oshihiki.c", 1334);
}
