#include "z_demo_kankyo.h"
#include "z64cutscene_commands.h"
#include "objects/gameplay_keep/gameplay_keep.h"

#define FLAGS 0x00000030

#define THIS ((DemoKankyo*)thisx)

void DemoKankyo_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoKankyo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoKankyo_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoKankyo_Draw(Actor* thisx, GlobalContext* globalCtx);

void DemoKankyo_SetupType(DemoKankyo*, GlobalContext*);
void DemoKankyo_UpdateClouds(DemoKankyo*, GlobalContext*);
void DemoKankyo_UpdateRock(DemoKankyo*, GlobalContext*);
void DemoKankyo_DoNothing2(DemoKankyo*, GlobalContext*);
void DemoKankyo_UpdateDoorOfTime(DemoKankyo*, GlobalContext*);
void DemoKankyo_DoNothing(DemoKankyo*, GlobalContext*);
void DemoKankyo_KillDoorOfTimeCollision(DemoKankyo*, GlobalContext*);
void DemoKankyo_DrawRain(DemoKankyo*, GlobalContext*);
void DemoKankyo_DrawRock(DemoKankyo*, GlobalContext*);
void DemoKankyo_DrawClouds(DemoKankyo*, GlobalContext*);
void DemoKankyo_DrawDoorOfTime(DemoKankyo*, GlobalContext*);
void DemoKankyo_DrawLightPlane(DemoKankyo*, GlobalContext*);
void DemoKankyo_DrawWarpSparkles(DemoKankyo*, GlobalContext*);
void DemoKankyo_DrawSparkles(DemoKankyo*, GlobalContext*);

extern CutsceneData D_8098B910[];
extern CutsceneData D_8098BA20[];
extern CutsceneData D_8098BBA0[];
extern CutsceneData D_8098BCB0[];
extern CutsceneData D_8098BDD0[];
extern CutsceneData D_8098BF00[];
extern CutsceneData D_8098C080[];
extern CutsceneData D_8098C1B0[];

const ActorInit Demo_Kankyo_InitVars = {
    ACTOR_DEMO_KANKYO,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(DemoKankyo),
    (ActorFunc)DemoKankyo_Init,
    (ActorFunc)DemoKankyo_Destroy,
    (ActorFunc)DemoKankyo_Update,
    (ActorFunc)DemoKankyo_Draw,
};

static s16 sObjIds[] = {
    OBJECT_EFC_STAR_FIELD, 
    OBJECT_EFC_STAR_FIELD, 
    OBJECT_EFC_STAR_FIELD, 
    OBJECT_EFC_STAR_FIELD, 
    OBJECT_EFC_STAR_FIELD, 
    OBJECT_EFC_STAR_FIELD, 
    OBJECT_EFC_STAR_FIELD, 
    OBJECT_GAMEPLAY_KEEP, 
    OBJECT_GI_MELODY, 
    OBJECT_GI_MELODY, 
    OBJECT_GI_MELODY, 
    OBJECT_GI_MELODY, 
    OBJECT_GI_MELODY, 
    OBJECT_TOKI_OBJECTS, 
    OBJECT_TOKI_OBJECTS, 
    OBJECT_GAMEPLAY_KEEP, 
    OBJECT_GAMEPLAY_KEEP, 
    OBJECT_GAMEPLAY_KEEP, 
};

static f32 D_8098C314[] = {
    0.0f, 150.0f,
};

static Color_RGB8 D_8098C31C[] = {
    {  0, 200,   0},
    {255,  50,   0},
    {  0, 150, 255},
    {255, 150,   0}, 
    {200,  50, 255},
    {200, 255,   0},
};

static CutsceneCameraPoint D_8098C330[] = {
    { CS_CMD_CONTINUE, 0, 8, 45.0f, { 0x0000, 0x0000, 0xFFE5 } },
    { CS_CMD_CONTINUE, 0, 8, 45.0f, { 0x0000, 0x0000, 0xFFE5 } }, 
    { CS_CMD_CONTINUE, 0, 8, 45.0f, { 0xFFE6, 0x0000, 0x0000 } },
    { CS_CMD_CONTINUE, 0, 8, 45.0f, { 0x0000, 0x0017, 0x0024 } }, 
    { CS_CMD_CONTINUE, 0, 8, 45.0f, { 0x001C, 0x0032, 0xFFFF } },
    { CS_CMD_CONTINUE, 0, 8, 45.0f, { 0x0001, 0x0018, 0xFFD9 } }, 
    { CS_CMD_CONTINUE, 0, 8, 45.0f, { 0xFFE6, 0xFFFA, 0x0003 } },
    { CS_CMD_CONTINUE, 0, 8, 45.0f, { 0x0000, 0x0025, 0x0037 } }, 
    { CS_CMD_CONTINUE, 0, 8, 45.0f, { 0x004F, 0x0066, 0x0029 } },
    { CS_CMD_CONTINUE, 0, 8, 45.0f, { 0x00A6, 0x00AD, 0x0006 } }, 
    { CS_CMD_CONTINUE, 0, 5, 45.0f, { 0x010D, 0x015A, 0xFF4C } },
    { CS_CMD_CONTINUE, 0, 5, 45.0f, { 0x019F, 0x0245, 0xFE35 } }, 
    { CS_CMD_STOP,     0, 5, 45.0f, { 0x01CE, 0x036F, 0xFCC2 } },
    { CS_CMD_STOP,     0, 5, 45.0f, { 0x01CE, 0x036F, 0xFCC2 } },
};

static CutsceneCameraPoint D_8098C410[] = {
    { CS_CMD_CONTINUE, 0, 5, 45.0f, { 0x019F, 0x0245, 0xFE35 } }, 
    { CS_CMD_CONTINUE, 0, 5, 45.0f, { 0x010D, 0x015A, 0xFF4C } }, 
    { CS_CMD_CONTINUE, 0, 8, 45.0f, { 0x00A6, 0x00AD, 0x0006 } }, 
    { CS_CMD_CONTINUE, 0, 8, 45.0f, { 0x004F, 0x0066, 0x0029 } }, 
    { CS_CMD_CONTINUE, 0, 8, 45.0f, { 0x0000, 0x0025, 0x0037 } }, 
    { CS_CMD_CONTINUE, 0, 8, 45.0f, { 0xFFE6, 0xFFFA, 0x0003 } }, 
    { CS_CMD_CONTINUE, 0, 8, 45.0f, { 0x0001, 0x0018, 0xFFD9 } }, 
    { CS_CMD_CONTINUE, 0, 8, 45.0f, { 0x001C, 0x0032, 0xFFFF } }, 
    { CS_CMD_CONTINUE, 0, 8, 45.0f, { 0x0000, 0x0017, 0x0024 } }, 
    { CS_CMD_CONTINUE, 0, 8, 45.0f, { 0xFFE6, 0x0000, 0x0000 } }, 
    { CS_CMD_CONTINUE, 0, 8, 45.0f, { 0x0000, 0x0000, 0xFFE5 } }, 
    { CS_CMD_CONTINUE, 0, 8, 45.0f, { 0x0000, 0x0000, 0xFFE5 } }, 
    { CS_CMD_STOP,     0, 5, 45.0f, { 0x01CE, 0x036F, 0xFCC2 } }, 
    { CS_CMD_STOP,     0, 5, 45.0f, { 0x01CE, 0x036F, 0xFCC2 } },
};

static Color_RGB8 D_8098C4F0[] = {
    {   0, 200,   0 },
    { 255,  50,   0 },
    {   0, 150, 255 },
    { 255, 150,   0 },
    {   0, 255, 255 },
    { 200, 255,   0 },
};

static CutsceneCameraPoint D_8098C504[] = {
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFF7, 0x0000, 0xFFD0 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFF7, 0x0000, 0xFFD0 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFF7, 0x0000, 0xFFD0 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFF7, 0x0000, 0xFFD0 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFD7, 0x0000, 0xFFE9 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFD3, 0x0000, 0x000A } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFE8, 0x0001, 0x0027 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x0015, 0x0000, 0x002B } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x002F, 0x0005, 0x000E } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x0031, 0x0005, 0xFFF5 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x0020, 0x0005, 0xFFDA } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFF5, 0x0005, 0xFFD1 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFD7, 0x0006, 0xFFEA } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFD5, 0x0009, 0x000D } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFE9, 0x0009, 0x0027 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x0014, 0x000B, 0x0029 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x002D, 0x000B, 0x000F } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x002E, 0x000B, 0xFFF0 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x001E, 0x000B, 0xFFDA } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFFA, 0x000E, 0xFFD3 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFDA, 0x000E, 0xFFEB } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFD7, 0x0010, 0x0008 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFE9, 0x0010, 0x0024 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x0011, 0x0010, 0x0028 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x002C, 0x0010, 0x000D } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x002C, 0x0012, 0xFFF5 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x001F, 0x0011, 0xFFDE } },
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFFB, 0x0014, 0xFFD5 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFDD, 0x0014, 0xFFEC } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFDA, 0x0017, 0x0008 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFE8, 0x0014, 0x001F } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x000C, 0x0018, 0x0026 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x0027, 0x0018, 0x000D } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x0027, 0x001B, 0xFFF6 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x001C, 0x001A, 0xFFE2 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFFA, 0x000E, 0xFFD4 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFD9, 0x001B, 0xFFEF } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFD7, 0x001B, 0x000A } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFE6, 0x001B, 0x0022 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x000F, 0x001F, 0x002C } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x0032, 0x0020, 0x0009 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x0030, 0x0021, 0xFFF0 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x001C, 0x0025, 0xFFD9 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFFA, 0x0028, 0xFFD4 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFD8, 0x002B, 0xFFF5 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFD7, 0x002B, 0x0006 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFDF, 0x002B, 0x0019 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x000E, 0x002E, 0x002C } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x0032, 0x002E, 0x0003 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0x002A, 0x0030, 0xFFE7 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFF6, 0x002B, 0xFFD4 } }, 
    { CS_CMD_CONTINUE, 0, 2, 45.0f, { 0xFFF6, 0x002B, 0xFFD4 } }, 
    { CS_CMD_STOP,     0, 2, 45.0f, { 0xFFF6, 0x002B, 0xFFD4 } }, 
    { CS_CMD_STOP,     0, 2, 45.0f, { 0xFFF6, 0x002B, 0xFFD4 } }, 
};

static s16 D_8098CF80;
static s16 sRainScale;
static s16 D_8098CF84;
static f32 D_8098CF88;
static f32 D_8098CF8C;
static u32 D_8098CF90;
static u32 D_8098CF94;


extern Mtx D_01000000;

extern Gfx D_04010050[];
extern UNK_TYPE D_04052DB0;

extern Gfx D_06000080[];
extern Gfx D_06000DE0[];
extern Gfx D_06007440[];
extern Gfx D_06007578[];
extern Gfx D_06008390[];

void DemoKankyo_SetupAction(DemoKankyo* this, DemoKankyoActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void DemoKankyo_Init(Actor *thisx, GlobalContext *globalCtx) {
    DemoKankyo* this = THIS;
    s16 i;
    s32 objBankIndex = Object_GetIndex(&globalCtx->objectCtx, sObjIds[this->actor.params]);

    osSyncPrintf("bank_ID = %d\n", objBankIndex);
    if (objBankIndex < 0) {
        __assert("0", "../z_demo_kankyo.c", 521);
    } else {
        this->requiredObject = objBankIndex;
    }

    switch (this->actor.params) {
        case DEMOKANKYO_BLUE_RAIN:
        case DEMOKANKYO_BLUE_RAIN_2:
            switch (globalCtx->sceneNum) {
                case SCENE_HIRAL_DEMO:
                    globalCtx->roomCtx.curRoom.segment = NULL;
                    D_8098CF80 = 10;
                    sRainScale = 8;
                    break;
                case SCENE_TOKINOMA:
                    D_8098CF80 = 14;
                    sRainScale = 8;
                    break;
                case SCENE_SPOT00:
                    D_8098CF80 = 1;
                    sRainScale = 5;
                    break;
                default:
                    Actor_Kill(&this->actor);
                    break;
            }
            break;
        case DEMOKANKYO_ROCK_1:
        case DEMOKANKYO_ROCK_2:
        case DEMOKANKYO_ROCK_3:
        case DEMOKANKYO_ROCK_4:
        case DEMOKANKYO_ROCK_5:
            globalCtx->roomCtx.curRoom.segment = NULL;
            this->actor.scale.x = this->actor.scale.y = this->actor.scale.z = (Rand_ZeroOne() * 0.5f) + 0.5f;
            this->unk_150[0].unk_0 = (Rand_ZeroOne() * 3.0f) + 1.0f;
            this->unk_150[0].unk_4 = (Rand_ZeroOne() * 3.0f) + 1.0f;
            this->unk_150[0].unk_8 = (Rand_ZeroOne() * 3.0f) + 1.0f;
            break;
        case DEMOKANKYO_CLOUDS:
            for (i = 0; i < 30; i++) {
                this->unk_150[i].unk_20 = Rand_ZeroOne() * 65535.0f;
                this->unk_150[i].unk_18 = Rand_ZeroOne() * 100.0f + 60.0f;
            }
            break;
        case DEMOKANKYO_DOOR_OF_TIME:
            this->actor.scale.x = this->actor.scale.y = this->actor.scale.z = 1.0f;
            this->unk_150[0].unk_18 = 0.0f;
            if (!(gSaveContext.eventChkInf[4] & 0x800)) {
                Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_TOKI, 
                                this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0x0000);
            } else {
                globalCtx->unk_11D30[1] = 0xFF;
                Actor_Kill(&this->actor);
            }
            break;
        case DEMOKANKYO_LIGHT_PLANE:
            this->actor.scale.x = this->actor.scale.y = this->actor.scale.z = 1.0f;
            this->unk_150[0].unk_18 = 0.0f;
            break;
        case DEMOKANKYO_WARP_IN:
        case DEMOKANKYO_WARP_OUT:
            Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_ITEMACTION);
            this->actor.flags |= 0x2000000;
            this->actor.room = -1;
            this->warpTimer = 0x23;
            this->sparkleCounter = 0;
            this->actor.scale.x = this->actor.scale.y = this->actor.scale.z = 1.0f;
            if (this->actor.params == 15) {
                Audio_PlaySoundGeneral(NA_SE_EV_SARIA_MELODY, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
            break;
        case DEMOKANKYO_SPARKLES:
            this->warpTimer = 0x23;
            this->sparkleCounter = 0;
            this->actor.scale.x = this->actor.scale.y = this->actor.scale.z = 1.0f;
            break;
        default:
            break;
    }
    for (i = 0; i < 30; i++) {
        this->unk_150[i].unk_22 = 0;
    }
    DemoKankyo_SetupAction(this, DemoKankyo_SetupType);
}

void DemoKankyo_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    if (thisx) {}
}

void DemoKankyo_SetupType(DemoKankyo* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 temp_var;

    if (this->actor.objBankIndex == this->requiredObject) {
        switch (this->actor.params) {
            case DEMOKANKYO_ROCK_1:
            case DEMOKANKYO_ROCK_2:
            case DEMOKANKYO_ROCK_3:
            case DEMOKANKYO_ROCK_4:
            case DEMOKANKYO_ROCK_5:
                DemoKankyo_SetupAction(this, DemoKankyo_UpdateRock);
                break;
            case DEMOKANKYO_CLOUDS:
                DemoKankyo_SetupAction(this, DemoKankyo_UpdateClouds);
                break;
            case DEMOKANKYO_DOOR_OF_TIME:
                if (Flags_GetEnv(globalCtx, 2)) {
                    DemoKankyo_SetupAction(this, DemoKankyo_UpdateDoorOfTime);
                }
                break;
            case DEMOKANKYO_WARP_IN:
                globalCtx->envCtx.unk_E2[0] = 0xFF;
                globalCtx->envCtx.unk_E2[1] = 0xFF;
                globalCtx->envCtx.unk_E2[2] = 0xFF;
                globalCtx->envCtx.unk_E1 = 0;
                if (this->warpTimer < 21 && this->warpTimer >= 15) {
                    temp_var = (this->warpTimer - 15.0f) / 5.0f;
                    globalCtx->envCtx.unk_E1 = 1;
                    globalCtx->envCtx.unk_E2[3] = 255 - 255 * temp_var;
                }
                if (this->warpTimer < 15 && this->warpTimer >= 4) {
                    temp_var = (this->warpTimer - 4.0f) / 10.0f;
                    globalCtx->envCtx.unk_E1 = 1;
                    globalCtx->envCtx.unk_E2[3] = 255 * temp_var;
                }
                if (this->warpTimer == 15) {
                    player->actor.draw = NULL;
                }
                if ((u32)this->warpTimer != 0) {
                    this->warpTimer--;
                }
                if (this->warpTimer == 1) {
                    if (globalCtx->sceneNum == SCENE_TOKINOMA) {
                        D_8098CF84 = 0x19;
                        if (gSaveContext.linkAge != 0) {
                            globalCtx->csCtx.segment = &D_8098C080;
                        } else {
                            globalCtx->csCtx.segment = &D_8098BBA0;
                        }
                    } else {
                        D_8098CF84 = 0x20;
                        if (gSaveContext.linkAge != 0) {
                            globalCtx->csCtx.segment = &D_8098BDD0;
                        } else {
                            globalCtx->csCtx.segment = &D_8098B910;
                        }
                    }
                    if (func_800C0CB8(globalCtx) != 0) {
                        gSaveContext.cutsceneTrigger = 1;
                    }
                    DemoKankyo_SetupAction(this, DemoKankyo_DoNothing);
                }
                break;
            case DEMOKANKYO_WARP_OUT:
                if (globalCtx->sceneNum == SCENE_TOKINOMA) {
                    if (gSaveContext.linkAge != 0) {
                        globalCtx->csCtx.segment = &D_8098C1B0;
                    } else {
                        globalCtx->csCtx.segment = &D_8098BCB0;
                    }
                } else {
                    if (gSaveContext.linkAge != 0) {
                        globalCtx->csCtx.segment = &D_8098BF00;
                    } else {
                        globalCtx->csCtx.segment = &D_8098BA20;
                    }
                }
                gSaveContext.cutsceneTrigger = 1;
                DemoKankyo_SetupAction(this, DemoKankyo_DoNothing2);
                break;
            case DEMOKANKYO_BLUE_RAIN:
            case DEMOKANKYO_SPARKLES:
                break;
        }
    }
}

void DemoKankyo_DoNothing(DemoKankyo* this, GlobalContext* globalCtx) {
}

void DemoKankyo_DoNothing2(DemoKankyo* this, GlobalContext* globalCtx) {
    DemoKankyo_SetupAction(this, DemoKankyo_DoNothing);
}

void DemoKankyo_SetRockPos(DemoKankyo* this, GlobalContext* globalCtx, s32 params) {
    Vec3f startPos;
    Vec3f endPos;
    CsCmdActorAction* csAction;
    f32 temp_f0;

    csAction = globalCtx->csCtx.npcActions[params];
    startPos.x = csAction->startPos.x;
    startPos.y = csAction->startPos.y;
    startPos.z = csAction->startPos.z;
    endPos.x = csAction->endPos.x;
    endPos.y = csAction->endPos.y;
    endPos.z = csAction->endPos.z;
    temp_f0 = func_8006F93C(csAction->endFrame, csAction->startFrame, globalCtx->csCtx.frames);
    this->actor.posRot.pos.x = ((endPos.x - startPos.x) * temp_f0) + startPos.x;
    this->actor.posRot.pos.y = ((endPos.y - startPos.y) * temp_f0) + startPos.y;
    this->actor.posRot.pos.z = ((endPos.z - startPos.z) * temp_f0) + startPos.z;
}

void DemoKankyo_UpdateRock(DemoKankyo* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.state != 0) {
        if (globalCtx->csCtx.npcActions[this->actor.params - 2] != NULL) {
            DemoKankyo_SetRockPos(this, globalCtx, this->actor.params - 2);
        }
    }
    this->unk_150[0].unk_C.x  += this->unk_150[0].unk_0;
    this->unk_150[0].unk_C.y += this->unk_150[0].unk_4;
    this->unk_150[0].unk_C.z += this->unk_150[0].unk_8;
}

void DemoKankyo_UpdateClouds(DemoKankyo* this, GlobalContext* globalCtx) {
    u8 i;

    for (i = 0; i < 30; i++) {
        this->unk_150[i].unk_20 += (s16)this->unk_150[i].unk_18;
    }
}

void DemoKankyo_UpdateDoorOfTime(DemoKankyo* this, GlobalContext* globalCtx) {
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_STONE_STATUE_OPEN - SFX_FLAG);
    this->unk_150[0].unk_18 += 1.0f;
    if (this->unk_150[0].unk_18 >= 102.0f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_STONEDOOR_STOP);
        gSaveContext.eventChkInf[4] |= 0x800;
        Actor_Kill(this->actor.child);
        DemoKankyo_SetupAction(this, DemoKankyo_KillDoorOfTimeCollision);
    }
}

void DemoKankyo_KillDoorOfTimeCollision(DemoKankyo* this, GlobalContext* globalCtx) {
    Actor_Kill(this->actor.child);
}

void DemoKankyo_Update(Actor* thisx, GlobalContext* globalCtx) {
    DemoKankyo* this = THIS;
    this->actionFunc(this, globalCtx);
}

void DemoKankyo_Draw(Actor *thisx, GlobalContext *globalCtx) {
    DemoKankyo* this = THIS;

    if (this->actor.objBankIndex == this->requiredObject) {
        switch (this->actor.params) {
            case DEMOKANKYO_BLUE_RAIN:
            case DEMOKANKYO_BLUE_RAIN_2:
                if (globalCtx->sceneNum == SCENE_TOKINOMA) {
                    if (!Flags_GetEnv(globalCtx, 1)) {
                        break;
                    } else if (!func_8002E12C(&this->actor, 300.0f, 0x7530)) {
                        break;
                    } else {
                        if (gSaveContext.linkAge != 0) {
                            if (globalCtx->csCtx.frames < 170 || globalCtx->csCtx.state == 0) {
                                break;
                            }
                        } else {
                            if (globalCtx->csCtx.frames < 120 || globalCtx->csCtx.state == 0) {
                                break;
                            }
                        }
                    }
                }
                DemoKankyo_DrawRain(this, globalCtx);
                break;
            case DEMOKANKYO_ROCK_1:
            case DEMOKANKYO_ROCK_2:
            case DEMOKANKYO_ROCK_3:
            case DEMOKANKYO_ROCK_4:
            case DEMOKANKYO_ROCK_5:
                DemoKankyo_DrawRock(this, globalCtx);
                break;
            case DEMOKANKYO_CLOUDS:
                DemoKankyo_DrawClouds(this, globalCtx);
                break;
            case DEMOKANKYO_DOOR_OF_TIME:
                DemoKankyo_DrawDoorOfTime(this, globalCtx);
                break;
            case DEMOKANKYO_LIGHT_PLANE:
                DemoKankyo_DrawLightPlane(this, globalCtx);
                break;
            case DEMOKANKYO_WARP_IN:
            case DEMOKANKYO_WARP_OUT:
                DemoKankyo_DrawWarpSparkles(this, globalCtx);
                break;
            case DEMOKANKYO_SPARKLES:
                DemoKankyo_DrawSparkles(this, globalCtx);
                break;
        }
    }
    if (Object_IsLoaded(&globalCtx->objectCtx, this->requiredObject)) {
        this->actor.objBankIndex = this->requiredObject;
    }
}

// transform relating to blue rain
void func_80989B54(DemoKankyo* this, GlobalContext *globalCtx, s16 arg2) {
    DemoKankyo* this2 = this;

    switch (globalCtx->sceneNum) {
        case SCENE_HIRAL_DEMO:
            this2->unk_150[arg2].unk_0 = (Rand_ZeroOne() - 0.5f) * 500.0f;
            this2->unk_150[arg2].unk_4 = 500.0f;
            this2->unk_150[arg2].unk_8 = (Rand_ZeroOne() - 0.5f) * 500.0f;
            break;
        case SCENE_TOKINOMA:
            this2->unk_150[arg2].unk_C.x = 0.0f;
            this2->unk_150[arg2].unk_C.y = 0.0f;
            this2->unk_150[arg2].unk_C.z = 0.0f;
            this2->unk_150[arg2].unk_0 = (Rand_ZeroOne() - 0.5f) * 180.0f;
            this2->unk_150[arg2].unk_4 = 10.0f;
            this2->unk_150[arg2].unk_8 = (Rand_ZeroOne() - 0.5f) * 180.0f;
            break;
        case SCENE_SPOT00:
            this2->unk_150[arg2].unk_0 = (Rand_ZeroOne() - 0.5f) * 600.0f;
            this2->unk_150[arg2].unk_4 = -500.0f;
            this2->unk_150[arg2].unk_8 = (Rand_ZeroOne() - 0.5f) * 600.0f;
            break;
    }
    this2->unk_150[arg2].unk_18 = Rand_ZeroOne() * (D_8098CF80 * 4.0f) + D_8098CF80;
}

void DemoKankyo_DrawRain(DemoKankyo *this, GlobalContext *globalCtx) {
    DemoKankyo* this2 = this;
    f32 temp_f12_2;
    s16 i;
    f32 dx;
    f32 dy;
    f32 dz;
    f32 norm;
    f32 translateX;
    f32 translateY;
    f32 translateZ;
    s16 j;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 1186);

    for (i = 0; i < 30; i++) {
        s32 pad[2];

        dx = globalCtx->view.lookAt.x - globalCtx->view.eye.x;
        dy = globalCtx->view.lookAt.y - globalCtx->view.eye.y;
        dz = globalCtx->view.lookAt.z - globalCtx->view.eye.z;
        norm = sqrtf(SQ(dx) + SQ(dy) + SQ(dz));
    
        if (globalCtx->sceneNum != SCENE_TOKINOMA) {
            this2->unk_150[i].unk_C.x = globalCtx->view.eye.x + (dx / norm) * 350.0f;
            this2->unk_150[i].unk_C.y = globalCtx->view.eye.y + (dy / norm) * 80.0f;
            this2->unk_150[i].unk_C.z = globalCtx->view.eye.z + (dz / norm) * 350.0f;
        }

        switch (this2->unk_150[i].unk_22) {
            case 0:
                func_80989B54(this2, globalCtx, i);
                if (gSaveContext.entranceIndex == 0x00A0) {
                    this2->unk_150[i].unk_4 = Rand_ZeroOne() * 500.0f;
                } else {
                    this2->unk_150[i].unk_4 = Rand_ZeroOne() * -500.0f;
                }
                this2->unk_150[i].unk_22++;
                break;
            case 1:
                temp_f12_2 = globalCtx->view.eye.y + ((dy / norm) * 150.0f);
                if (gSaveContext.entranceIndex == 0x00A0) {
                    this2->unk_150[i].unk_4 -= this2->unk_150[i].unk_18;
                } else {
                    this2->unk_150[i].unk_4 += this2->unk_150[i].unk_18;
                }
                if (gSaveContext.entranceIndex == 0x00A0) {
                    if (this2->unk_150[i].unk_C.y + this2->unk_150[i].unk_4 < (temp_f12_2 - 300.0f)) {
                        this2->unk_150[i].unk_22++;
                    }
                } else if (gSaveContext.entranceIndex == 0x00CD) {
                    if ((temp_f12_2 + 300.0f) < this2->unk_150[i].unk_C.y + this2->unk_150[i].unk_4) {
                        this2->unk_150[i].unk_22++;
                    }
                } else {
                    if (1000.0f < this2->unk_150[i].unk_C.y + this2->unk_150[i].unk_4) {
                        this2->unk_150[i].unk_22++;
                    }
                }
                break;
            case 2:
                func_80989B54(this2, globalCtx, i);
                this2->unk_150[i].unk_22--;
                break;
        }

        Matrix_Translate(this2->unk_150[i].unk_C.x + this2->unk_150[i].unk_0, 
                        this2->unk_150[i].unk_C.y + this2->unk_150[i].unk_4, 
                        this2->unk_150[i].unk_C.z + this2->unk_150[i].unk_8, MTXMODE_NEW);
        if (gSaveContext.entranceIndex != 0x00A0) {
            Matrix_RotateX(M_PI, MTXMODE_APPLY);
        }

        gDPPipeSync(POLY_XLU_DISP++);
        if (gSaveContext.entranceIndex == 0x00CD) {
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, 255);
            gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 0, 255);
        } else {
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 200, 255, 255, 255);
            gDPSetEnvColor(POLY_XLU_DISP++, 0, 150, 255, 255);
        }

        Matrix_Scale(sRainScale * 0.001f, sRainScale * 0.001f, sRainScale * 0.001f, MTXMODE_APPLY);

        for (j = 0; j < 5; j++) {
            s32 pad1;

            if (globalCtx->sceneNum != SCENE_TOKINOMA) {
                if (this2->unk_150[i].unk_0 >= 0.0f) {
                    translateX = -j * 1500.0f;
                } else {
                    translateX = j * 1500.0f;
                }
                if (this2->unk_150[i].unk_8 >= 0.0f) {
                    translateZ = -j * 1500.0f;
                } else {
                    translateZ = j * 1500.0f;
                }
                if (j % 2 != 0) {
                    translateY = j * 4000.0f;
                } else {
                    translateY = -j * 4000.0f;
                }
            } else {
                translateX = 0.0f;
                translateY = j * 10.0f;
                translateZ = 0.0f;
            }

            Matrix_Translate(translateX, translateY, translateZ, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 1344), 
                            G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            POLY_XLU_DISP = Gfx_CallSetupDL(POLY_XLU_DISP, 0x14);
            gSPDisplayList(POLY_XLU_DISP++, D_06000080);
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 1358);
}

void DemoKankyo_DrawRock(DemoKankyo *this, GlobalContext *globalCtx) {
    s32 pad[2];

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 1376);

    func_80093D18(globalCtx->state.gfxCtx);
    Matrix_Translate(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, MTXMODE_NEW);
    Matrix_RotateX(DEG_TO_RAD(this->unk_150[0].unk_C.x), MTXMODE_APPLY);
    Matrix_RotateY(DEG_TO_RAD(this->unk_150[0].unk_C.y), MTXMODE_APPLY);
    Matrix_RotateZ(DEG_TO_RAD(this->unk_150[0].unk_C.z), MTXMODE_APPLY);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, MTXMODE_APPLY);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 155, 55, 255);
    gDPSetEnvColor(POLY_OPA_DISP++, 155, 255, 55, 255);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 1404), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, D_06000DE0);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 1409);
}

void DemoKankyo_DrawClouds(DemoKankyo *this, GlobalContext *globalCtx) {
    s16 i;
    DemoKankyo* this2 = this;
    s32 pad;
    Vec3f ds;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 1425);

    for (i = 0; i < 30; i++) {

        ds.x = -(Math_SinS(this2->unk_150[i].unk_20 - 0x8000) * 120.0f) * (30.0f + ((i / 30.0f) * 10.0f));
        ds.y =  (Math_CosS(this2->unk_150[i].unk_20 - 0x8000) * 5.0f) + 1200.0f;
        ds.z =  (Math_CosS(this2->unk_150[i].unk_20 - 0x8000) * 120.0f) * (30.0f + ((i / 30.0f) * 10.0f));
        Matrix_Translate(globalCtx->view.eye.x + ds.x, 
                         globalCtx->view.eye.y + ds.y + ((i - 12.0f) * 300.0f), 
                         globalCtx->view.eye.z + ds.z, MTXMODE_NEW);
        Matrix_Scale(125.0f, 60.0f, 125.0f, MTXMODE_APPLY);

        gDPPipeSync(POLY_XLU_DISP++);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 210, 210, 255, 255);
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 255, 255);
        gDPSetColorDither(POLY_XLU_DISP++, G_CD_DISABLE);
        gDPSetColorDither(POLY_XLU_DISP++, G_AD_NOTPATTERN | G_CD_MAGICSQ);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 1461), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&D_04052DB0));

        func_80094C50(globalCtx->state.gfxCtx);

        gSPMatrix(POLY_XLU_DISP++, &D_01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, D_04010050);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 0x5C2);
}

void DemoKankyo_DrawDoorOfTime(DemoKankyo *this, GlobalContext *globalCtx) {
    s32 pad[2];

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 1487);

    func_80093D18(globalCtx->state.gfxCtx);
    Matrix_Translate(-this->unk_150[0].unk_18, 0.0f, 0.0f, MTXMODE_APPLY);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 1492), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, D_06007440);
    Matrix_Translate(this->unk_150[0].unk_18 + this->unk_150[0].unk_18, 0.0f, 0.0f, MTXMODE_APPLY);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 1497), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, D_06007578);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 1501);
}

void DemoKankyo_DrawLightPlane(DemoKankyo *this, GlobalContext *globalCtx) {
    s32 pad[2];

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 1514);

    if (globalCtx->csCtx.state == 0 || gSaveContext.sceneSetupIndex >= 4) {
        func_80093D84(globalCtx->state.gfxCtx);

        gSPSegment(POLY_XLU_DISP++, 0x08, Gfx_TexScroll(globalCtx->state.gfxCtx, 0, globalCtx->state.frames & 0x7F, 64, 32));
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 1529), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, D_06008390);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 1534);
}

void DemoKankyo_Vec3fCopy(Vec3f* src, Vec3f* dst) {
    dst->x = src->x;
    dst->y = src->y;
    dst->z = src->z;
}

Vec3f* DemoKankyo_Vec3fAddVecSph(Vec3f* arg0, Vec3f* arg1, VecSph *arg2) {
    Vec3f sp24;
    Vec3f sp18;

    OLib_VecSphGeoToVec3f(&sp18, arg2);
    sp24.x = arg1->x + sp18.x;
    sp24.y = arg1->y + sp18.y;
    sp24.z = arg1->z + sp18.z;
    *arg0 = sp24;
    return arg0;
}

// rebase vec3f in posRot coordinate system including rotation
void func_8098AB68(PosRot *arg0, Vec3f* arg1, Vec3f* arg2) {
    VecSph sp28;
    Vec3f sp1C;

    DemoKankyo_Vec3fCopy(arg1, &sp1C);
    OLib_Vec3fToVecSphGeo(&sp28, &sp1C);
    sp28.yaw += arg0->rot.y;
    DemoKankyo_Vec3fAddVecSph(arg2, &arg0->pos, &sp28);
}

void DemoKankyo_DrawWarpSparkles(DemoKankyo* this, GlobalContext *globalCtx) {
    static Vec3f D_8098CF98;

    s16 i;
    f32 temp_f22;
    DemoKankyo* this2 = this;
    Gfx* disp;
    Player* player = PLAYER;
    Vec3f spD8;
    f32 translateX;
    f32 translateY;
    f32 translateZ;
    PosRot spB8;
    u8 linkAge = gSaveContext.linkAge;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 1824);    // spA0

    if (this2->sparkleCounter < 30) {
        this2->sparkleCounter += 2;
    }
    for (i = this2->sparkleCounter - 1; i >= 0; i--) {
        temp_f22 = 1.0f - (i / (f32)this2->sparkleCounter);

        switch (this2->unk_150[i].unk_22) {
            case 0:
                this2->unk_150[i].unk_20 = 0;
                this2->unk_150[i].unk_1C = 0;
                this2->unk_150[i].unk_0 = (s16)((Rand_ZeroOne() - 0.5f) * 16.0f * temp_f22);
                this2->unk_150[i].unk_4 = (s16)((Rand_ZeroOne() - 0.5f) * 16.0f * temp_f22);
                this2->unk_150[i].unk_8 = (s16)((Rand_ZeroOne() - 0.5f) * 16.0f * temp_f22);
                this2->unk_150[i].unk_23 = 0;
                this2->unk_150[i].unk_22++;
            case 1:
                if (this2->actor.params == 0xF) {
                    if (func_800BB2B4(&spD8, &D_8098CF88, &D_8098CF8C, D_8098C330, &this2->unk_150[i].unk_20, &this2->unk_150[i].unk_1C) != 0) {
                        this2->unk_150[i].unk_22++;
                    }
                    if ((globalCtx->sceneNum == SCENE_TOKINOMA) && (globalCtx->csCtx.frames == 0x19)) {
                        this2->unk_150[i].unk_22++;
                    }
                } else {
                    Audio_PlaySoundGeneral(NA_SE_EV_LINK_WARP_OUT - SFX_FLAG, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    if (func_800BB2B4(&spD8, &D_8098CF88, &D_8098CF8C, D_8098C410, &this2->unk_150[i].unk_20, &this2->unk_150[i].unk_1C) != 0) {
                        this2->unk_150[i].unk_22++;
                    }
                    if (D_8098CF84 < globalCtx->csCtx.frames && this2->actor.params == 0xF) {
                        this2->unk_150[i].unk_22++;
                    }
                }
                func_8002EF14(&spB8, &player->actor);
                func_8098AB68(&spB8, &spD8, &D_8098CF98);
                break;
            case 2:
                if (this2->actor.params == 0xF) {
                    if (i == 0) {
                        func_800776E4(globalCtx);
                        this2->unk_150[i].unk_22++;
                    }
                } else if (i + 1 == this2->sparkleCounter && globalCtx->csCtx.state == 0) {
                    func_80088AF0(globalCtx);
                    Actor_Kill(&this2->actor);
                }
                break;
        }

        this2->unk_150[i].unk_C.x = D_8098CF98.x;
        this2->unk_150[i].unk_C.y = D_8098CF98.y;
        this2->unk_150[i].unk_C.z = D_8098CF98.z;

        switch (this2->unk_150[i].unk_23) {
            case 0:
                this2->unk_150[i].unk_18 = Rand_ZeroOne();
                this2->unk_150[i].unk_23++;
            case 1:
                Math_SmoothStepToF(&this2->unk_150[i].unk_18, 1.0f, 0.5f, 0.4f, 0.2f);
                if (this2->unk_150[i].unk_18 >= 1.0f) {
                    this2->unk_150[i].unk_23 = 2;
                }
                break;
            case 2:
                Math_SmoothStepToF(&this2->unk_150[i].unk_18, 0.0f, 0.5f, 0.3f, 0.2f);
                if (this2->unk_150[i].unk_18 <= 0.0f) {
                    this2->unk_150[i].unk_0 = (s16)((Rand_ZeroOne() - 0.5f) * 16.0f * temp_f22);
                    this2->unk_150[i].unk_4 = (s16)((Rand_ZeroOne() - 0.5f) * 16.0f * temp_f22);
                    this2->unk_150[i].unk_8 = (s16)((Rand_ZeroOne() - 0.5f) * 16.0f * temp_f22);
                    this2->unk_150[i].unk_18 = 0.0f;
                    this2->unk_150[i].unk_23 = 1;
                }
                break;
        }

        translateX = this2->unk_150[i].unk_C.x + this2->unk_150[i].unk_0;
        translateY = this2->unk_150[i].unk_C.y + this2->unk_150[i].unk_4;
        translateZ = this2->unk_150[i].unk_C.z + this2->unk_150[i].unk_8;

        if (this2->unk_150[i].unk_22 < 2) {
            disp = (u32)gGameKeepMoteDL0;
            if (linkAge != 0) {
                Matrix_Translate(translateX, translateY, translateZ, MTXMODE_NEW);
            } else {
                if (translateY) {}
                Matrix_Translate(translateX, translateY + 15.0f, translateZ, MTXMODE_NEW);
            }
            Matrix_Scale(this2->unk_150[i].unk_18 * (0.018f * temp_f22), 
                        this2->unk_150[i].unk_18 * (0.018f * temp_f22), 
                        this2->unk_150[i].unk_18 * (0.018f * temp_f22), MTXMODE_APPLY);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x80, 255, 255, 255, 255);
            if (this2->actor.params == 0xF) {
                gDPSetEnvColor(POLY_XLU_DISP++, D_8098C31C[globalCtx->msgCtx.unk_E3EC].r, 
                                                D_8098C31C[globalCtx->msgCtx.unk_E3EC].g, 
                                                D_8098C31C[globalCtx->msgCtx.unk_E3EC].b, 255);
            } else {
                s8 respawnData = gSaveContext.respawn[1].data;
                gDPSetEnvColor(POLY_XLU_DISP++, D_8098C31C[respawnData].r, D_8098C31C[respawnData].g, D_8098C31C[respawnData].b, 255);
            }
            func_80093D84(globalCtx->state.gfxCtx);
            Matrix_Mult(&globalCtx->mf_11DA0, MTXMODE_APPLY);
            Matrix_RotateZ(DEG_TO_RAD(this2->unk_150[i].unk_24), MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 2011), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, disp);
            this2->unk_150[i].unk_24 += 0x190;
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 2019);
}

static f32 D_8098CFA4;
static f32 D_8098CFA8;
static u32 D_8098CFAC;
static u32 D_8098CFB0;
static u32 D_8098CFB4;

void DemoKankyo_DrawSparkles(DemoKankyo *this, GlobalContext *globalCtx) {
    static Vec3f D_8098CFB8;

    DemoKankyo* this2 = this;
    f32 translateX;
    f32 translateY;
    f32 translateZ;
    Vec3f spD4;
    f32 temp_f20;
    f32 scale;
    s16 i;
    PosRot spB4;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 2434);

    if (this2->sparkleCounter < 0x14) {
        this2->sparkleCounter++;
    }

    for (i = this2->sparkleCounter - 1; i >= 0; i--) {
        temp_f20 = 1.0f - (i / (f32)this2->sparkleCounter);

        switch (this2->unk_150[i].unk_22) {
            case 0:
                this2->unk_150[i].unk_20 = 0;
                this2->unk_150[i].unk_1C = 0;
                this2->unk_150[i].unk_0 = (s16)((Rand_ZeroOne() - 0.5f) * 16.0f * temp_f20);
                this2->unk_150[i].unk_4 = (s16)((Rand_ZeroOne() - 0.5f) * 16.0f * temp_f20);
                this2->unk_150[i].unk_8 = (s16)((Rand_ZeroOne() - 0.5f) * 16.0f * temp_f20);
                this2->unk_150[i].unk_23 = 0;
                this2->unk_150[i].unk_22++;
            case 1:
                if (func_800BB2B4(&spD4, &D_8098CFA4, &D_8098CFA8, D_8098C504, &this2->unk_150[i].unk_20, &this2->unk_150[i].unk_1C) != 0) {
                    this2->unk_150[i].unk_22++;
                }
                func_8002EF14(&spB4, &this2->actor);
                func_8098AB68(&spB4, &spD4, &D_8098CFB8);
                break;
            case 2:
                if (((i + 1) == this2->sparkleCounter) && (globalCtx->csCtx.state == 0)) {
                    Actor_Kill(&this2->actor);
                }
                break;
        }

        this2->unk_150[i].unk_C.x = D_8098CFB8.x;
        this2->unk_150[i].unk_C.y = D_8098CFB8.y;
        this2->unk_150[i].unk_C.z = D_8098CFB8.z;

        switch (this2->unk_150[i].unk_23) {
            case 0:
                this2->unk_150[i].unk_18 = Rand_ZeroOne();
                this2->unk_150[i].unk_23++;
            case 1:
                Math_SmoothStepToF(&this2->unk_150[i].unk_18, 1.0f, 0.5f, 0.4f, 0.2f);
                if (1.0f <= this2->unk_150[i].unk_18) {
                    this2->unk_150[i].unk_23 = 2;
                }
                break;
            case 2:
                Math_SmoothStepToF(&this2->unk_150[i].unk_18, 0.0f, 0.5f, 0.3f, 0.2f);
                if (this2->unk_150[i].unk_18 <= 0.0f) {
                    this2->unk_150[i].unk_0 = (s16)((Rand_ZeroOne() - 0.5f) * 16.0f * temp_f20);
                    this2->unk_150[i].unk_4 = (s16)((Rand_ZeroOne() - 0.5f) * 16.0f * temp_f20);
                    this2->unk_150[i].unk_8 = (s16)((Rand_ZeroOne() - 0.5f) * 16.0f * temp_f20);
                    this2->unk_150[i].unk_18 = 0.0f;
                    this2->unk_150[i].unk_23 = 1;
                }
                break;
        }

        translateX = this2->unk_150[i].unk_C.x + this2->unk_150[i].unk_0;
        translateY = this2->unk_150[i].unk_C.y + this2->unk_150[i].unk_4;
        translateZ = this2->unk_150[i].unk_C.z + this2->unk_150[i].unk_8;

        if (this2->unk_150[i].unk_22 < 2) {
            Matrix_Translate(translateX, translateY, translateZ, MTXMODE_NEW);
            scale = this2->unk_150[i].unk_18 * (0.02f * temp_f20);
            Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x80, 255, 255, 255, 255);
            gDPSetEnvColor(POLY_XLU_DISP++, D_8098C4F0[3].r, D_8098C4F0[3].g, D_8098C4F0[3].b, 255);
            func_80093D84(globalCtx->state.gfxCtx);
            Matrix_Mult(&globalCtx->mf_11DA0, 1);
            Matrix_RotateZ(DEG_TO_RAD(this2->unk_150[i].unk_24), MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 2572), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, gGameKeepMoteDL0);
            this2->unk_150[i].unk_24 += 0x190;
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 2579);
}
