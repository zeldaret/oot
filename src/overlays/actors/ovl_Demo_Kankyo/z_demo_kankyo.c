#include "z_demo_kankyo.h"
#include "z64cutscene_commands.h"

#define FLAGS 0x00000030

#define THIS ((DemoKankyo*)thisx)

void DemoKankyo_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoKankyo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoKankyo_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoKankyo_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809892A4(DemoKankyo*, GlobalContext*);
void func_8098987C(DemoKankyo*, GlobalContext*);
void func_80989800(DemoKankyo*, GlobalContext*);
void func_809896E8(DemoKankyo*, GlobalContext*);
void func_809898C8(DemoKankyo*, GlobalContext*);
void func_809896DC(DemoKankyo*, GlobalContext*);
void func_80989960(DemoKankyo*, GlobalContext*);
void func_80989D24(DemoKankyo*, GlobalContext*);
void func_8098A36C(DemoKankyo*, GlobalContext*);
void func_8098A4F0(DemoKankyo*, GlobalContext*);
void func_8098A854(DemoKankyo*, GlobalContext*);
void func_8098A9A4(DemoKankyo*, GlobalContext*);
void func_8098ABC0(DemoKankyo*, GlobalContext*);
void func_8098B354(DemoKankyo*, GlobalContext*);

CutsceneData D_8098B910[] = {
    CS_BEGIN_CUTSCENE(2, 164),
    CS_CAM_POS_PLAYER_LIST(0, 135),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32485580444336f, 31, 79, 59, 0x010F),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32485580444336f, 31, 78, 60, 0x0120),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32485580444336f, 32, 78, 60, 0x0131),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32485580444336f, 30, 79, 59, 0x01F4),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32485580444336f, 30, 78, 60, 0x01F6),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32485580444336f, 30, 78, 60, 0x0207),
        CS_CAM_POS_PLAYER(CS_CMD_STOP, 0x00, 0, 60.32485580444336f, 30, 78, 60, 0x0000),
    CS_CAM_FOCUS_POINT_PLAYER_LIST(0, 164),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.32485580444336f, 11, 50, 23, 0x010F),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.32485580444336f, 11, 48, 22, 0x0120),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 7, 60.32485580444336f, 11, 48, 22, 0x0131),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 7, 60.32485580444336f, 57, 101, 21, 0x01F4),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.32485580444336f, 57, 101, 21, 0x01F6),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.32485580444336f, 57, 101, 21, 0x0207),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_STOP, 0x00, 30, 60.32485580444336f, 57, 101, 21, 0x0000),
    CS_END(),
};

u32 dataPad[2] = {0,0};

CutsceneData D_8098BA20[] = {
    CS_BEGIN_CUTSCENE(5, 1167),
    CS_CAM_POS_PLAYER_LIST(0, 1138),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.324859619140625f, 31, 82, 61, 0x20BA),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.324859619140625f, 31, 82, 61, 0xA1BC),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.324859619140625f, 31, 82, 61, 0xA5E1),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.324859619140625f, 31, 82, 61, 0xA5CB),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.324859619140625f, 31, 82, 61, 0xA5EB),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.324859619140625f, 31, 82, 61, 0x20BA),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.324859619140625f, 31, 82, 61, 0xA1BC),
        CS_CAM_POS_PLAYER(CS_CMD_STOP, 0x00, 0, 60.324859619140625f, 31, 82, 61, 0xA5E1),
    CS_CAM_FOCUS_POINT_PLAYER_LIST(0, 1167),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.324859619140625f, 55, 99, 31, 0x20BA),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.324859619140625f, 55, 99, 31, 0xA1BC),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 10, 60.324859619140625f, 55, 99, 31, 0xA5E1),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 7, 60.324859619140625f, 17, 59, 31, 0xA5CB),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.324859619140625f, 17, 59, 31, 0xA5EB),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 1000, 60.324859619140625f, 17, 59, 31, 0x20BA),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.324859619140625f, 17, 59, 31, 0xA1BC),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_STOP, 0x00, 30, 60.324859619140625f, 17, 59, 31, 0xA5E1),
    CS_SCENE_TRANS_FX(0x0005, 36, 46),
    CS_SCENE_TRANS_FX(0x0001, 30, 35),
    CS_MISC_LIST(1),
        CS_MISC(0x000C, 95, 97, 0x0000, 0x00000000, 0x00000000, 0xFFFFFFE3, 0xFFFFFFF9, 0x00000000, 0xFFFFFFE3, 0xFFFFFFF9, 0x00000000, 0x00000000, 0x00000000),
    CS_END(),
};

CutsceneData D_8098BBA0[] = {
    CS_BEGIN_CUTSCENE(2, 118),
    CS_CAM_POS_PLAYER_LIST(0, 89),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 71.32476043701172f, 53, 53, 40, 0x010F),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 53, 53, 40, 0x0120),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 53, 53, 40, 0x0131),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 70.59991455078125f, 58, 102, 48, 0x01F4),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 70.59991455078125f, 58, 102, 48, 0x01F6),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 70.59991455078125f, 58, 102, 48, 0x0207),
        CS_CAM_POS_PLAYER(CS_CMD_STOP, 0x00, 0, 70.59991455078125f, 58, 102, 48, 0x0047),
    CS_CAM_FOCUS_POINT_PLAYER_LIST(0, 118),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 7, 70.52477264404297f, 11, 29, 10, 0x010F),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 7, 70.39991760253906f, 11, 29, 10, 0x0120),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 7, 70.59991455078125f, 11, 29, 10, 0x0131),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 7, 70.59991455078125f, 29, 71, 25, 0x01F4),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 70.59991455078125f, 29, 71, 25, 0x01F6),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 70.59991455078125f, 29, 71, 25, 0x0207),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_STOP, 0x00, 30, 70.59991455078125f, 29, 71, 25, 0x0047),
    CS_END(),
};

u32 dataPad1[2] = {0,0};

CutsceneData D_8098BCB0[] = {
    CS_BEGIN_CUTSCENE(5, 1120),
    CS_SCENE_TRANS_FX(0x0005, 36, 46),
    CS_SCENE_TRANS_FX(0x0001, 30, 35),
    CS_CAM_POS_PLAYER_LIST(0, 1091),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.324859619140625f, 42, 89, 50, 0x0000),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.324859619140625f, 42, 89, 50, 0x0000),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.324859619140625f, 42, 89, 50, 0x0000),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.324859619140625f, 42, 89, 50, 0x0000),
        CS_CAM_POS_PLAYER(CS_CMD_STOP, 0x00, 0, 60.324859619140625f, 42, 89, 50, 0x29D0),
    CS_CAM_FOCUS_POINT_PLAYER_LIST(0, 1120),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.324859619140625f, 24, 66, 29, 0x0000),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.324859619140625f, 24, 66, 29, 0x0000),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 1000, 60.324859619140625f, 24, 66, 29, 0x0000),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.324859619140625f, 24, 66, 29, 0x0000),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_STOP, 0x00, 30, 60.324859619140625f, 24, 66, 29, 0x29D0),
    CS_MISC_LIST(1),
        CS_MISC(0x000C, 95, 96, 0x0000, 0x00000000, 0x00000000, 0xFFFFFFEE, 0xFFFFFFF3, 0x00000000, 0xFFFFFFEE, 0xFFFFFFF3, 0x00000000, 0x00000000, 0x00000000),
    CS_END(),
};

CutsceneData D_8098BDD0[] = {
    CS_BEGIN_CUTSCENE(2, 1164),
    CS_CAM_POS_PLAYER_LIST(0, 1135),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32485580444336f, 31, 68, 59, 0x010F),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32485580444336f, 32, 68, 60, 0x0120),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32485580444336f, 31, 69, 59, 0x0131),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32485580444336f, 31, 64, 59, 0x01F4),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32485580444336f, 31, 64, 59, 0x01F6),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32485580444336f, 31, 64, 59, 0x0207),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32485580444336f, 31, 64, 59, 0xB46C),
        CS_CAM_POS_PLAYER(CS_CMD_STOP, 0x00, 0, 60.32485580444336f, 31, 64, 59, 0x05BC),
    CS_CAM_FOCUS_POINT_PLAYER_LIST(0, 1164),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.32485580444336f, 12, 40, 22, 0x010F),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.32485580444336f, 11, 38, 22, 0x0120),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 7, 60.32485580444336f, 11, 39, 22, 0x0131),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 7, 60.32485580444336f, 57, 86, 21, 0x01F4),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.32485580444336f, 57, 86, 21, 0x01F6),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 1000, 60.32485580444336f, 57, 86, 21, 0x0207),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.32485580444336f, 57, 86, 21, 0xB46C),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_STOP, 0x00, 30, 60.32485580444336f, 57, 86, 21, 0x05BC),
    CS_END(),
};

u32 dataPad2[2] = {0,0};

CutsceneData D_8098BF00[] = {
    CS_BEGIN_CUTSCENE(5, 1167),
    CS_SCENE_TRANS_FX(0x0005, 36, 46),
    CS_SCENE_TRANS_FX(0x0001, 30, 35),
    CS_CAM_POS_PLAYER_LIST(0, 1138),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.324859619140625f, 30, 63, 61, 0xA8A5),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.324859619140625f, 30, 63, 61, 0xA3D9),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.324859619140625f, 30, 63, 61, 0xF3A5),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32486343383789f, 29, 61, 59, 0xA5D5),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32486343383789f, 29, 61, 59, 0xA5E7),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32486343383789f, 29, 61, 59, 0xA5EC),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.32486343383789f, 29, 61, 59, 0xBCA5),
        CS_CAM_POS_PLAYER(CS_CMD_STOP, 0x00, 0, 60.32486343383789f, 29, 61, 59, 0xEEC0),
    CS_CAM_FOCUS_POINT_PLAYER_LIST(0, 1167),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.324859619140625f, 54, 79, 31, 0xA8A5),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.324859619140625f, 54, 80, 31, 0xA3D9),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 10, 60.324859619140625f, 54, 79, 31, 0xF3A5),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 7, 60.32486343383789f, 15, 42, 30, 0xA5D5),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.32486343383789f, 15, 42, 30, 0xA5E7),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 1000, 60.32486343383789f, 15, 42, 30, 0xA5EC),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.32486343383789f, 15, 42, 30, 0xBCA5),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_STOP, 0x00, 30, 60.32486343383789f, 15, 42, 30, 0xEEC0),
    CS_MISC_LIST(1),
        CS_MISC(0x000C, 95, 96, 0x0000, 0x00000000, 0x00000000, 0xFFFFFFEF, 0xFFFFFFCD, 0x00000000, 0xFFFFFFEF, 0xFFFFFFCD, 0x00000000, 0x00000000, 0x00000000),
    CS_END(),
};

CutsceneData D_8098C080[] = {
    CS_BEGIN_CUTSCENE(2, 1118),
    CS_CAM_POS_PLAYER_LIST(0, 1089),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 71.32476043701172f, 53, 53, 40, 0x010F),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 53, 53, 40, 0x0120),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.0f, 53, 53, 40, 0x0131),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 70.59991455078125f, 58, 89, 47, 0x01F4),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 70.59991455078125f, 58, 89, 47, 0x01F6),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 70.59991455078125f, 58, 89, 47, 0x0207),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 70.59991455078125f, 58, 89, 47, 0x0000),
        CS_CAM_POS_PLAYER(CS_CMD_STOP, 0x00, 0, 70.59991455078125f, 58, 89, 47, 0x0000),
    CS_CAM_FOCUS_POINT_PLAYER_LIST(0, 1118),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 7, 70.52477264404297f, 11, 29, 10, 0x010F),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 7, 70.39991760253906f, 11, 29, 10, 0x0120),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 7, 70.59991455078125f, 11, 29, 10, 0x0131),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 7, 70.59991455078125f, 29, 58, 25, 0x01F4),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 70.59991455078125f, 29, 58, 25, 0x01F6),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 1000, 70.59991455078125f, 29, 58, 25, 0x0207),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 70.59991455078125f, 29, 58, 25, 0x0000),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_STOP, 0x00, 30, 70.59991455078125f, 29, 58, 25, 0x0000),
    CS_END(),
};

u32 dataPad3[2] = {0,0};

CutsceneData D_8098C1B0[] = {
    CS_BEGIN_CUTSCENE(5, 1120),
    CS_SCENE_TRANS_FX(0x0005, 36, 46),
    CS_SCENE_TRANS_FX(0x0001, 30, 35),
    CS_CAM_POS_PLAYER_LIST(0, 1091),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.324867248535156f, 41, 75, 49, 0x1F1C),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.324867248535156f, 41, 75, 49, 0x1F8C),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.324867248535156f, 41, 75, 49, 0x1FFC),
        CS_CAM_POS_PLAYER(CS_CMD_CONTINUE, 0x00, 0, 60.324867248535156f, 41, 75, 49, 0x206C),
        CS_CAM_POS_PLAYER(CS_CMD_STOP, 0x00, 0, 60.324867248535156f, 41, 75, 49, 0x20DC),
    CS_CAM_FOCUS_POINT_PLAYER_LIST(0, 1120),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.324867248535156f, 24, 52, 29, 0x1F1C),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.324867248535156f, 24, 52, 29, 0x1F8C),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 1000, 60.324867248535156f, 24, 52, 29, 0x1FFC),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_CONTINUE, 0x00, 30, 60.324867248535156f, 24, 52, 29, 0x206C),
        CS_CAM_FOCUS_POINT_PLAYER(CS_CMD_STOP, 0x00, 30, 60.324867248535156f, 24, 52, 29, 0x20DC),
    CS_MISC_LIST(1),
        CS_MISC(0x000C, 95, 96, 0x0000, 0x00000000, 0x00000000, 0xFFFFFFDF, 0x00000019, 0x00000000, 0xFFFFFFDF, 0x00000019, 0x00000000, 0x00000000, 0x00000000),
    CS_END(),
};

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

s16 sObjIds[] = {
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

f32 D_8098C314[] = {
    0.0f, 150.0f,
};

Color_RGB8 D_8098C31C[] = {
    {  0, 200,   0},
    {255,  50,   0},
    {  0, 150, 255},
    {255, 150,   0}, 
    {200,  50, 255},
    {200, 255,   0},
};

CutsceneCameraPoint D_8098C330[] = {
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

CutsceneCameraPoint D_8098C410[] = {
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

Color_RGB8 D_8098C4F0[] = {
    {   0, 200,   0 },
    { 255,  50,   0 },
    {   0, 150, 255 },
    { 255, 150,   0 },
    {   0, 255, 255 },
    { 200, 255,   0 },
};

CutsceneCameraPoint D_8098C504[] = {
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

s16 D_8098CF80;
s16 D_8098CF82;
s16 D_8098CF84;
f32 D_8098CF88;
f32 D_8098CF8C;
u32 bssPad[2];

extern Mtx D_01000000;
extern Gfx D_04010050[];
extern UNK_TYPE D_04052DB0;
extern Gfx D_06000080[];
extern Gfx D_06000DE0[];
extern Gfx D_06007440[];
extern Gfx D_06007578[];
extern Gfx D_06008390[];

// setupaction
void func_80988E80(DemoKankyo* this, DemoKankyoActionFunc actionFunc) {
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
                    D_8098CF80 = 0xA;
                    D_8098CF82 = 8;
                    break;
                case SCENE_TOKINOMA:
                    D_8098CF80 = 0xE;
                    D_8098CF82 = 8;
                    break;
                case SCENE_SPOT00:
                    D_8098CF80 = 1;
                    D_8098CF82 = 5;
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
            this->actor.scale.x = this->actor.scale.y = this->actor.scale.z = (Math_Rand_ZeroOne() * 0.5f) + 0.5f;
            this->unk_150[0].unk_0 = (Math_Rand_ZeroOne() * 3.0f) + 1.0f;
            this->unk_150[0].unk_4 = (Math_Rand_ZeroOne() * 3.0f) + 1.0f;
            this->unk_150[0].unk_8 = (Math_Rand_ZeroOne() * 3.0f) + 1.0f;
            break;
        case DEMOKANKYO_CLOUDS:
            for (i = 0; i < 30; i++) {
                this->unk_150[i].unk_20 = Math_Rand_ZeroOne() * 65535.0f;
                this->unk_150[i].unk_18 = Math_Rand_ZeroOne() * 100.0f + 60.0f;
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
            this->unk_14E = 0x23;
            this->unk_14D = 0;
            this->actor.scale.x = this->actor.scale.y = this->actor.scale.z = 1.0f;
            if (this->actor.params == 15) {
                Audio_PlaySoundGeneral(NA_SE_EV_SARIA_MELODY, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
            break;
        case DEMOKANKYO_SPARKLES:
            this->unk_14E = 0x23;
            this->unk_14D = 0;
            this->actor.scale.x = this->actor.scale.y = this->actor.scale.z = 1.0f;
            break;
        default:
            break;
    }
    for (i = 0; i < 30; i++) {
        this->unk_150[i].unk_22 = 0;
    }
    func_80988E80(this, func_809892A4);
}

void DemoKankyo_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    if (thisx) {}
}

// setup each type
void func_809892A4(DemoKankyo* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 temp_var;

    if (this->actor.objBankIndex == this->requiredObject) {
        switch (this->actor.params) {
            case DEMOKANKYO_ROCK_1:
            case DEMOKANKYO_ROCK_2:
            case DEMOKANKYO_ROCK_3:
            case DEMOKANKYO_ROCK_4:
            case DEMOKANKYO_ROCK_5:
                func_80988E80(this, func_80989800);
                break;
            case DEMOKANKYO_CLOUDS:
                func_80988E80(this, func_8098987C);
                break;
            case DEMOKANKYO_DOOR_OF_TIME:
                if (Flags_GetEnv(globalCtx, 2)) {
                    func_80988E80(this, func_809898C8);
                }
                break;
            case DEMOKANKYO_WARP_IN:
                globalCtx->envCtx.unk_E2[0] = 0xFF;
                globalCtx->envCtx.unk_E2[1] = 0xFF;
                globalCtx->envCtx.unk_E2[2] = 0xFF;
                globalCtx->envCtx.unk_E1 = 0;
                if (this->unk_14E < 21 && this->unk_14E >= 15) {
                    temp_var = (this->unk_14E - 15.0f) / 5.0f;
                    globalCtx->envCtx.unk_E1 = 1;
                    globalCtx->envCtx.unk_E2[3] = 255 - 255 * temp_var;
                }
                if (this->unk_14E < 15 && this->unk_14E >= 4) {
                    temp_var = (this->unk_14E - 4.0f) / 10.0f;
                    globalCtx->envCtx.unk_E1 = 1;
                    globalCtx->envCtx.unk_E2[3] = 255 * temp_var;
                }
                if (this->unk_14E == 15) {
                    player->actor.draw = NULL;
                }
                if ((u32)this->unk_14E != 0) {
                    this->unk_14E--;
                }
                if (this->unk_14E == 1) {
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
                    func_80988E80(this, func_809896DC);
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
                func_80988E80(this, func_809896E8);
                break;
            case DEMOKANKYO_BLUE_RAIN:
            case DEMOKANKYO_SPARKLES:
                break;
        }
    }
}

// nop
void func_809896DC(DemoKankyo* this, GlobalContext* globalCtx) {
}

// nop2
void func_809896E8(DemoKankyo* this, GlobalContext* globalCtx) {
    func_80988E80(this, func_809896DC);
}

// smooth step rock position
void func_80989710(DemoKankyo* this, GlobalContext* globalCtx, s32 arg2) {
    Vec3f startPos;
    Vec3f endPos;
    CsCmdActorAction* csAction;
    f32 temp_f0;

    csAction = globalCtx->csCtx.npcActions[arg2];
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

// rocks
void func_80989800(DemoKankyo* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.state != 0) {
        if (globalCtx->csCtx.npcActions[this->actor.params - 2] != NULL) {
            func_80989710(this, globalCtx, this->actor.params - 2);
        }
    }
    this->unk_150[0].unk_C.x  += this->unk_150[0].unk_0;
    this->unk_150[0].unk_C.y += this->unk_150[0].unk_4;
    this->unk_150[0].unk_C.z += this->unk_150[0].unk_8;
}

// clouds
void func_8098987C(DemoKankyo* this, GlobalContext* globalCtx) {
    u8 i;

    for (i = 0; i < 30; i++) {
        this->unk_150[i].unk_20 += (s16)this->unk_150[i].unk_18;
    }
}

// door of time
void func_809898C8(DemoKankyo* this, GlobalContext* globalCtx) {
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_STONE_STATUE_OPEN - SFX_FLAG);
    this->unk_150[0].unk_18 += 1.0f;
    if (this->unk_150[0].unk_18 >= 102.0f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_STONEDOOR_STOP);
        gSaveContext.eventChkInf[4] |= 0x800;
        Actor_Kill(this->actor.child);
        func_80988E80(this, func_80989960);
    }
}

// kill dot after it opens
void func_80989960(DemoKankyo* this, GlobalContext* globalCtx) {
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
                func_80989D24(this, globalCtx);
                break;
            case DEMOKANKYO_ROCK_1:
            case DEMOKANKYO_ROCK_2:
            case DEMOKANKYO_ROCK_3:
            case DEMOKANKYO_ROCK_4:
            case DEMOKANKYO_ROCK_5:
                func_8098A36C(this, globalCtx);
                break;
            case DEMOKANKYO_CLOUDS:
                func_8098A4F0(this, globalCtx);
                break;
            case DEMOKANKYO_DOOR_OF_TIME:
                func_8098A854(this, globalCtx);
                break;
            case DEMOKANKYO_LIGHT_PLANE:
                func_8098A9A4(this, globalCtx);
                break;
            case DEMOKANKYO_WARP_IN:
            case DEMOKANKYO_WARP_OUT:
                func_8098ABC0(this, globalCtx);
                break;
            case DEMOKANKYO_SPARKLES:
                func_8098B354(this, globalCtx);
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
            this2->unk_150[arg2].unk_0 = (Math_Rand_ZeroOne() - 0.5f) * 500.0f;
            this2->unk_150[arg2].unk_4 = 500.0f;
            this2->unk_150[arg2].unk_8 = (Math_Rand_ZeroOne() - 0.5f) * 500.0f;
            break;
        case SCENE_TOKINOMA:
            this2->unk_150[arg2].unk_C.x = 0.0f;
            this2->unk_150[arg2].unk_C.y = 0.0f;
            this2->unk_150[arg2].unk_C.z = 0.0f;
            this2->unk_150[arg2].unk_0 = (Math_Rand_ZeroOne() - 0.5f) * 180.0f;
            this2->unk_150[arg2].unk_4 = 10.0f;
            this2->unk_150[arg2].unk_8 = (Math_Rand_ZeroOne() - 0.5f) * 180.0f;
            break;
        case SCENE_SPOT00:
            this2->unk_150[arg2].unk_0 = (Math_Rand_ZeroOne() - 0.5f) * 600.0f;
            this2->unk_150[arg2].unk_4 = -500.0f;
            this2->unk_150[arg2].unk_8 = (Math_Rand_ZeroOne() - 0.5f) * 600.0f;
            break;
    }
    this2->unk_150[arg2].unk_18 = (Math_Rand_ZeroOne() * (D_8098CF80 * 4.0f)) + D_8098CF80;
}

// blue rain draw
void func_80989D24(DemoKankyo *this, GlobalContext *globalCtx) {
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
                    this2->unk_150[i].unk_4 = Math_Rand_ZeroOne() * 500.0f;
                } else {
                    this2->unk_150[i].unk_4 = Math_Rand_ZeroOne() * -500.0f;
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

        Matrix_Scale(D_8098CF82 * 0.001f, D_8098CF82 * 0.001f, D_8098CF82 * 0.001f, MTXMODE_APPLY);

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

// draw rock
void func_8098A36C(DemoKankyo *this, GlobalContext *globalCtx) {
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

// draw clouds
void func_8098A4F0(DemoKankyo *this, GlobalContext *globalCtx) {
    s16 i;
    DemoKankyo* this2 = this;
    s32 pad;
    Vec3f ds;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 1425);

    for (i = 0; i < 30; i++) {

        ds.x = -(Math_Sins(this2->unk_150[i].unk_20 - 0x8000) * 120.0f) * (30.0f + ((i / 30.0f) * 10.0f));
        ds.y =  (Math_Coss(this2->unk_150[i].unk_20 - 0x8000) * 5.0f) + 1200.0f;
        ds.z =  (Math_Coss(this2->unk_150[i].unk_20 - 0x8000) * 120.0f) * (30.0f + ((i / 30.0f) * 10.0f));
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

// draw DoT
void func_8098A854(DemoKankyo *this, GlobalContext *globalCtx) {
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

// draw light plane
void func_8098A9A4(DemoKankyo *this, GlobalContext *globalCtx) {
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

// vec3f copy
void func_8098AAC8(Vec3f* src, Vec3f* dst) {
    dst->x = src->x;
    dst->y = src->y;
    dst->z = src->z;
}

// vec3f add vecsph
Vec3f* func_8098AAE4(Vec3f* arg0, Vec3f* arg1, VecSph *arg2) {
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

    func_8098AAC8(arg1, &sp1C);
    OLib_Vec3fToVecSphGeo(&sp28, &sp1C);
    sp28.yaw += arg0->rot.y;
    func_8098AAE4(arg2, &arg0->pos, &sp28);
}

// draw warp sparkles
#ifdef NON_MATCHING
// Single register swap and stack diffs in the last block in the loop
void func_8098ABC0(DemoKankyo* this, GlobalContext *globalCtx) {
    static Vec3f D_8098CF98;

    s16 i;                              // s1
    DemoKankyo* this2 = this;           // s1
    f32 temp_f22;                       // f22
    s32 pad;                            // spE8 - spEC
    Player* player = PLAYER;            // spE4 - spE8
    Vec3f spD8;                         // spD8 - spE4
    f32 translateX;                     // spD4 - spD8
    f32 translateY;                     // spD0 - spD4
    f32 translateZ;                     // spCC - spD0
    PosRot spB8;                        // spB8 - spCA
    u8 linkAge = gSaveContext.linkAge;  // spB7 - spB8

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 1824);    // spA0

    if (this2->unk_14D < 30) {
        this2->unk_14D += 2;
    }
    for (i = this2->unk_14D - 1; i >= 0; i--) {
        temp_f22 = 1.0f - (i / (f32)this2->unk_14D);

        switch (this2->unk_150[i].unk_22) {
            case 0:
                this2->unk_150[i].unk_20 = 0;
                this2->unk_150[i].unk_1C = 0;
                this2->unk_150[i].unk_0 = (s16)((Math_Rand_ZeroOne() - 0.5f) * 16.0f * temp_f22);
                this2->unk_150[i].unk_4 = (s16)((Math_Rand_ZeroOne() - 0.5f) * 16.0f * temp_f22);
                this2->unk_150[i].unk_8 = (s16)((Math_Rand_ZeroOne() - 0.5f) * 16.0f * temp_f22);
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
                } else if (i + 1 == this2->unk_14D && globalCtx->csCtx.state == 0) {
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
                this2->unk_150[i].unk_18 = Math_Rand_ZeroOne();
                this2->unk_150[i].unk_23++;
            case 1:
                Math_SmoothScaleMaxMinF(&this2->unk_150[i].unk_18, 1.0f, 0.5f, 0.4f, 0.2f);
                if (this2->unk_150[i].unk_18 >= 1.0f) {
                    this2->unk_150[i].unk_23 = 2;
                }
                break;
            case 2:
                Math_SmoothScaleMaxMinF(&this2->unk_150[i].unk_18, 0.0f, 0.5f, 0.3f, 0.2f);
                if (this2->unk_150[i].unk_18 <= 0.0f) {
                    this2->unk_150[i].unk_0 = (s16)((Math_Rand_ZeroOne() - 0.5f) * 16.0f * temp_f22);
                    this2->unk_150[i].unk_4 = (s16)((Math_Rand_ZeroOne() - 0.5f) * 16.0f * temp_f22);
                    this2->unk_150[i].unk_8 = (s16)((Math_Rand_ZeroOne() - 0.5f) * 16.0f * temp_f22);
                    this2->unk_150[i].unk_18 = 0.0f;
                    this2->unk_150[i].unk_23 = 1;
                }
                break;
        }

        translateX = this2->unk_150[i].unk_C.x + this2->unk_150[i].unk_0;
        translateY = this2->unk_150[i].unk_C.y + this2->unk_150[i].unk_4;
        translateZ = this2->unk_150[i].unk_C.z + this2->unk_150[i].unk_8;

        if (this2->unk_150[i].unk_22 < 2) {
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
            gSPDisplayList(POLY_XLU_DISP++, D_04010130);
            this2->unk_150[i].unk_24 += 0x190;
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 2019);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/func_8098ABC0.s")
f32 D_8098CF98;
f32 D_8098CF9C;
f32 D_8098CFA0;
#endif

f32 D_8098CFA4;
f32 D_8098CFA8;
u32 bssPad1;
u32 bssPad2[2];

// draw normal sparkles
void func_8098B354(DemoKankyo *this, GlobalContext *globalCtx) {
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

    if (this2->unk_14D < 0x14) {
        this2->unk_14D++;
    }

    for (i = this2->unk_14D - 1; i >= 0; i--) {
        temp_f20 = 1.0f - (i / (f32)this2->unk_14D);

        switch (this2->unk_150[i].unk_22) {
            case 0:
                this2->unk_150[i].unk_20 = 0;
                this2->unk_150[i].unk_1C = 0;
                this2->unk_150[i].unk_0 = (s16)((Math_Rand_ZeroOne() - 0.5f) * 16.0f * temp_f20);
                this2->unk_150[i].unk_4 = (s16)((Math_Rand_ZeroOne() - 0.5f) * 16.0f * temp_f20);
                this2->unk_150[i].unk_8 = (s16)((Math_Rand_ZeroOne() - 0.5f) * 16.0f * temp_f20);
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
                if (((i + 1) == this2->unk_14D) && (globalCtx->csCtx.state == 0)) {
                    Actor_Kill(&this2->actor);
                }
                break;
        }

        this2->unk_150[i].unk_C.x = D_8098CFB8.x;
        this2->unk_150[i].unk_C.y = D_8098CFB8.y;
        this2->unk_150[i].unk_C.z = D_8098CFB8.z;

        switch (this2->unk_150[i].unk_23) {
            case 0:
                this2->unk_150[i].unk_18 = Math_Rand_ZeroOne();
                this2->unk_150[i].unk_23++;
            case 1:
                Math_SmoothScaleMaxMinF(&this2->unk_150[i].unk_18, 1.0f, 0.5f, 0.4f, 0.2f);
                if (1.0f <= this2->unk_150[i].unk_18) {
                    this2->unk_150[i].unk_23 = 2;
                }
                break;
            case 2:
                Math_SmoothScaleMaxMinF(&this2->unk_150[i].unk_18, 0.0f, 0.5f, 0.3f, 0.2f);
                if (this2->unk_150[i].unk_18 <= 0.0f) {
                    this2->unk_150[i].unk_0 = (s16)((Math_Rand_ZeroOne() - 0.5f) * 16.0f * temp_f20);
                    this2->unk_150[i].unk_4 = (s16)((Math_Rand_ZeroOne() - 0.5f) * 16.0f * temp_f20);
                    this2->unk_150[i].unk_8 = (s16)((Math_Rand_ZeroOne() - 0.5f) * 16.0f * temp_f20);
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
            gSPDisplayList(POLY_XLU_DISP++, D_04010130);
            this2->unk_150[i].unk_24 += 0x190;
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_kankyo.c", 2579);
}
