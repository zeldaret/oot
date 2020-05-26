#include <ultra64.h>
#include <global.h>
#include <vt.h>
//#define NON_MATCHING

typedef struct {
    s16 val;
    s16 param;
} CameraModeValue;
typedef struct {
    s16 funcIdx;
    s16 valueCnt;
    CameraModeValue* values;
} CameraMode;
typedef struct {
    union {
        struct {
            u32 unk_bit0 : 1;
            u32 unk_bit1 : 1;
            u32 validModes : 30;
        };
        u32 unk_00;
    };
    CameraMode* cameraModes;
} CameraSetting;
typedef union {
    s16 sh[2];
    s32 w;
} u_D_8011D3A0;

typedef enum {
    CAM_SET_NONE,
    CAM_SET_NORMAL0,
    CAM_SET_NORMAL1,
    CAM_SET_DUNGEON0,
    CAM_SET_DUNGEON1,
    CAM_SET_NORMAL3,
    CAM_SET_HORSE0,
    CAM_SET_BOSS_GOMA,
    CAM_SET_BOSS_DODO,
    CAM_SET_BOSS_BARI,
    CAM_SET_BOSS_FGANON,
    CAM_SET_BOSS_BAL,
    CAM_SET_BOSS_SHADES,
    CAM_SET_BOSS_MOFA,
    CAM_SET_TWIN0,
    CAM_SET_TWIN1,
    CAM_SET_BOSS_GANON1,
    CAM_SET_BOSS_GANON2,
    CAM_SET_TOWER0,
    CAM_SET_TOWER1,
    CAM_SET_FIXED0,
    CAM_SET_FIXED1,
    CAM_SET_CIRCLE0,
    CAM_SET_CIRCLE2,
    CAM_SET_CIRCLE3,
    CAM_SET_PREREND0,
    CAM_SET_PREREND1,
    CAM_SET_PREREND3,
    CAM_SET_DOOR0,
    CAM_SET_DOORC,
    CAM_SET_RAIL3,
    CAM_SET_START0,
    CAM_SET_START1,
    CAM_SET_FREE0,
    CAM_SET_FREE2,
    CAM_SET_CIRCLE4,
    CAM_SET_CIRCLE5,
    CAM_SET_DEMO0,
    CAM_SET_DEMO1,
    CAM_SET_MORI1,
    CAM_SET_ITEM0,
    CAM_SET_ITEM1,
    CAM_SET_DEMO3,
    CAM_SET_DEMO4,
    CAM_SET_UFOBEAN,
    CAM_SET_LIFTBEAN,
    CAM_SET_SCENE0,
    CAM_SET_SCENE1,
    CAM_SET_HIDAN1,
    CAM_SET_HIDAN2,
    CAM_SET_MORI2,
    CAM_SET_MORI3,
    CAM_SET_TAKO,
    CAM_SET_SPOT05A,
    CAM_SET_SPOT05B,
    CAM_SET_HIDAN3,
    CAM_SET_ITEM2,
    CAM_SET_CIRCLE6,
    CAM_SET_NORMAL2,
    CAM_SET_FISHING,
    CAM_SET_DEMOC,
    CAM_SET_UO_FIBER,
    CAM_SET_DUNGEON2,
    CAM_SET_TEPPEN,
    CAM_SET_CIRCLE7,
    CAM_SET_NORMAL4,
    CAM_SET_MAX
} CameraSettingType;

typedef enum {
    CAM_MODE_NORMAL,
    CAM_MODE_PARALLEL,
    CAM_MODE_KEEPON,
    CAM_MODE_TALK,
    CAM_MODE_BATTLE,
    CAM_MODE_CLIMB,
    CAM_MODE_SUBJECT,
    CAM_MODE_BOWARROW,
    CAM_MODE_BOWARROWZ,
    CAM_MODE_FOOKSHOT,
    CAM_MODE_BOOMERANG,
    CAM_MODE_PACHINCO,
    CAM_MODE_CLIMBZ,
    CAM_MODE_JUMP,
    CAM_MODE_HANG,
    CAM_MODE_HANGZ,
    CAM_MODE_FREEFALL,
    CAM_MODE_CHARGE,
    CAM_MODE_STILL,
    CAM_MODE_PUSHPULL,
    CAM_MODE_BOOKEEPON
} CameraModeType;

/*==================================================================*/
// Data
//#define USE_DATA
#ifdef  USE_DATA
s16 sOREGInit[] = { // 80119EE0
    0x0000, 0x0001, 0x0005, 0x0005, 0x0005, 0x38A4, 0x0014, 0x0010, 0x0096, 0x0019, 0x0096, 0x0006, 0x000A,
    0x000A, 0x0000, 0x0000, 0x0001, 0x0064, 0x00FA, 0x0078, 0x0050, 0x001E, 0x0078, 0x0004, 0x0001, 0x0032,
    0x0014, 0x0708, 0x0032, 0x0032, 0x0032, 0x0014, 0x0014, 0xFFF6, 0xEAAC, 0xDC74, 0xFFFA, 0x0008, 0x000F,
    0x004B, 0x003C, 0x000C, 0x006E, 0x0028, 0x0032, 0x00FA, 0xFFF6, 0x001E, 0x001E, 0x0046, 0x0014, 0x0014,
    0x0014,
};

s16 sOREGInitCnt = 53; // 80119F4C

s16 sPREGInit[] = { // 80119F50
    0xFFEC, 0x00C8, 0x012C, 0x000A, 0x000C, 0x000A, 0x0023, 0x003C, 0x003C, 0x0003, 0x0000, 0xFFD8, 0x0014,
    0x0019, 0x002D, 0xFFFB, 0x000F, 0x000F, 0x0014, 0x0000, 0x0000, 0x0000, 0x0006, 0x003C, 0x001E, 0x0000,
    0x0005,
};

s16 sPREGInitCnt = 27; // 80119F88

char sCameraSettingNames[][12] = {
    "NONE      ", //00
    "NORMAL0    ", //01
    "NORMAL1    ", //02
    "DUNGEON0   ", //03
    "DUNGEON1   ", //04
    "NORMAL3    ", //05
    "HORSE0     ", //06
    "BOSS_GOMA  ", //07
    "BOSS_DODO  ", //08
    "BOSS_BARI  ", //09
    "BOSS_FGANON", //0A
    "BOSS_BAL   ", //0b
    "BOSS_SHADES", //0C
    "BOSS_MOFA  ", //0D
    "BOSS_TWIN0 ", //0E
    "BOSS_TWIN1 ", //0F
    "BOSS_GANON1", //10
    "BOSS_GANON2", //11
    "TOWER0     ", //12
    "TOWER1     ", //13
    "FIXED0     ", //14
    "FIXED1     ", //15
    "CIRCLE0    ", //16
    "CIRCLE2    ", //17
    "CIRCLE3    ", //18
    "PREREND0   ", //19
    "PREREND1   ", //1A
    "PREREND3   ", //1B
    "DOOR0      ", //1C
    "DOORC      ", //1D
    "RAIL3      ", //1E
    "START0     ", //1F
    "START1     ", //20
    "FREE0      ", //21
    "FREE2      ", //22
    "CIRCLE4    ", //23
    "CIRCLE5    ", //24
    "DEMO0      ", //25
    "DEMO1      ", //26
    "MORI1      ", //27
    "ITEM0      ", //28
    "ITEM1      ", //29
    "DEMO3      ", //2A
    "DEMO4      ", //2B
    "UFOBEAN    ", //2C
    "LIFTBEAN   ", //2D
    "SCENE0     ", //2E
    "SCENE1     ", //2F
    "HIDAN1     ", //30
    "HIDAN2     ", //31
    "MORI2      ", //32
    "MORI3      ", //33
    "TAKO       ", //34
    "SPOT05A    ", //35
    "SPOT05B    ", //36
    "HIDAN3     ", //37
    "ITEM2      ", //38
    "CIRCLE6    ", //39
    "NORMAL2    ", //3A
    "FISHING    ", //3B
    "DEMOC      ", //3C
    "UO_FIBER   ", //3D
    "DUNGEON2   ", //3E
    "TEPPEN     ", //3F
    "CIRCLE7    ", //40
    "NORMAL4    ", //41
};

char sCameraModeNames[][12] = {
    "NORMAL     ",
    "PARALLEL   ",
    "KEEPON     ",
    "TALK       ",
    "BATTLE     ",
    "CLIMB      ",
    "SUBJECT    ",
    "BOWARROW   ",
    "BOWARROWZ  ",
    "FOOKSHOT   ",
    "BOOMERANG  ",
    "PACHINCO   ",
    "CLIMBZ     ",
    "JUMP       ",
    "HANG       ",
    "HANGZ      ",
    "FREEFALL   ",
    "CHARGE     ",
    "STILL      ",
    "PUSHPULL   ",
    "BOOKEEPON  ",
};

typedef s32 (*CameraFunc)(Camera*);
//norm0
s32 Camera_Normal0(Camera* camera);
//norm1
s32 Camera_Normal1(Camera* camera);
//norm2
s32 Camera_Normal2(Camera* camera);
//norm3
s32 Camera_Normal3(Camera* camera);
//norm4
s32 Camera_Normal4(Camera* camera);
//para0
s32 Camera_Parallel0(Camera* camera);
//para1
s32 Camera_Parallel1(Camera* camera);
//para2
s32 Camera_Parallel2(Camera* camera);
//para3
void Camera_Parallel3(Camera* camera);
//para4
s32 Camera_Parallel4(Camera* camera);
//keep0
s32 Camera_KeepOn0(Camera* camera);
//keep1
s32 Camera_KeepOn1(Camera* camera);
//keep2
s32 Camera_KeepOn2(Camera* camera);
//keep3
s32 Camera_KeepOn3(Camera* camera);
//keep4
s32 Camera_KeepOn4(Camera* camera);
//subj0
s32 Camera_Subj0(Camera* camera);
//subj1
s32 Camera_Subj1(Camera* camera);
//subj2
s32 Camera_Subj2(Camera* camera);
//subj3
s32 Camera_Subj3(Camera* camera);
//subj4
s32 Camera_Subj4(Camera* camera);
//jump0
s32 Camera_Jump0(Camera* camera);
//jump1
s32 Camera_Jump1(Camera* camera);
//jump2
s32 Camera_Jump2(Camera* camera);
//jump3
s32 Camera_Jump3(Camera* camera);
//jump4
s32 Camera_Jump4(Camera* camera);
// batt0
s32 Camera_Battle0(Camera* camera);
// batt1
s32 Camera_Battle1(Camera* camera);
// batt2
s32 Camera_Battle2(Camera* camera);
// batt3
s32 Camera_Battle3(Camera* camera);
// batt4
s32 Camera_Battle4(Camera* camera);
// fixd0
s32 Camera_Fixed0(Camera* camera);
// fixd1
s32 Camera_Fixed1(Camera* camera);
// fixd2
s32 Camera_Fixed2(Camera* camera);
// fixd3
s32 Camera_Fixed3(Camera* camera);
// fixd4
s32 Camera_Fixed4(Camera* camera);
// data0
s32 Camera_Data0(Camera* camera);
// data1
s32 Camera_Data1(Camera* camera);
// data2
s32 Camera_Data2(Camera* camera);
// data3
s32 Camera_Data3(Camera* camera);
// data4
s32 Camera_Data4(Camera* camera);
// uniq0
s32 Camera_Unique0(Camera* camera);
// uniq1
s32 Camera_Unique1(Camera* camera);
// uniq2
s32 Camera_Unique2(Camera* camera);
// uniq3
s32 Camera_Unique3(Camera* camera);
// uniq4
s32 Camera_Unique4(Camera* camera);
// uniq5
s32 Camera_Unique5(Camera* camera);
// uniq6
s32 Camera_Unique6(Camera* camera);
// uniq7
s32 Camera_Unique7(Camera* camera);
// uniq8
s32 Camera_Unique8(Camera* camera);
// uniq9
s32 Camera_Unique9(Camera* camera);
// demo0
s32 Camera_Demo0(Camera* camera);
// demo1
s32 Camera_Demo1(Camera* camera);
// demo2
s32 Camera_Demo2(Camera* camera);
// demo3
s32 Camera_Demo3(Camera* camera);
// demo4
s32 Camera_Demo4(Camera* camera);
// demo5
s32 Camera_Demo5(Camera* camera);
// demo6
s32 Camera_Demo6(Camera* camera);
// demo7
void Camera_Demo7(Camera* camera);
// demo8
s32 Camera_Demo8(Camera* camera);
// demo9
s32 Camera_Demo9(Camera* camera);
// spec0
s32 Camera_Special0(Camera* camera);
// spec1
s32 Camera_Special1(Camera* camera);
// spec2
s32 Camera_Special2(Camera* camera);
// spec3
s32 Camera_Special3(Camera* camera);
// spec4
s32 Camera_Special4(Camera* camera);
// spec5
s32 Camera_Special5(Camera* camera);
// spec6
s32 Camera_Special6(Camera* camera);
// spec7
s32 Camera_Special7(Camera* camera);
// spec8
s32 Camera_Special8(Camera* camera);
// spec9
s32 Camera_Special9(Camera* camera);

CameraFunc D_8011D274[] = {
    NULL,
    Camera_Normal0,
    Camera_Normal1,
    Camera_Normal2,
    Camera_Normal3,
    Camera_Normal4,
    Camera_Parallel0,
    Camera_Parallel1,
    Camera_Parallel2,
    Camera_Parallel3,
    Camera_Parallel4,
    Camera_KeepOn0,
    Camera_KeepOn1,
    Camera_KeepOn2,
    Camera_KeepOn3,
    Camera_KeepOn4,
    Camera_Subj0,
    Camera_Subj1,
    Camera_Subj2,
    Camera_Subj3,
    Camera_Subj4,
    Camera_Jump0,
    Camera_Jump1,
    Camera_Jump2,
    Camera_Jump3,
    Camera_Jump4,
    Camera_Battle0,
    Camera_Battle1,
    Camera_Battle2,
    Camera_Battle3,
    Camera_Battle4,
    Camera_Fixed0,
    Camera_Fixed1,
    Camera_Fixed2,
    Camera_Fixed3,
    Camera_Fixed4,
    Camera_Data0,
    Camera_Data1,
    Camera_Data2,
    Camera_Data3,
    Camera_Data4,
    Camera_Unique0,
    Camera_Unique1,
    Camera_Unique2,
    Camera_Unique3,
    Camera_Unique4,
    Camera_Unique5,
    Camera_Unique6,
    Camera_Unique7,
    Camera_Unique8,
    Camera_Unique9,
    Camera_Demo0,
    Camera_Demo1,
    Camera_Demo2,
    Camera_Demo3,
    Camera_Demo4,
    Camera_Demo5,
    Camera_Demo6,
    Camera_Demo7,
    Camera_Demo8,
    Camera_Demo9,
    Camera_Special0,
    Camera_Special1,
    Camera_Special2,
    Camera_Special3,
    Camera_Special4,
    Camera_Special5,
    Camera_Special6,
    Camera_Special7,
    Camera_Special8,
    Camera_Special9,
};

s32 sInitRegs = 1; // 8011D390

s16 D_8011D39C = 0;
u_D_8011D3A0 D_8011D3A0 = { { 0x0000, 0x0000, } };
s32 D_8011D398 = -1;
s32 D_8011D3A4 = 0x02;
s32 D_8011D3A8 = 0x20;
s32 D_8011D3E8 = 0;
s32 D_8011D3F0 = 0;

char D_8011D3F8[][8] = {
    "NONE   ",
    "NORM0()",
    "NORM1()",
    "NORM2()",
    "NORM3()",
    "NORM4()",
    "PARA0()",
    "PARA1()",
    "PARA2()",
    "PARA3()",
    "PARA4()",
    "KEEP0()",
    "KEEP1()",
    "KEEP2()",
    "KEEP3()",
    "KEEP4()",
    "SUBJ0()",
    "SUBJ1()",
    "SUBJ2()",
    "SUBJ3()",
    "SUBJ4()",
    "JUMP0()",
    "JUMP1()",
    "JUMP2()",
    "JUMP3()",
    "JUMP4()",
    "BATT0()",
    "BATT1()",
    "BATT2()",
    "BATT3()",
    "BATT4()",
    "FIXD0()",
    "FIXD1()",
    "FIXD2()",
    "FIXD3()",
    "FIXD4()",
    "DATA0()",
    "DATA1()",
    "DATA2()",
    "DATA3()",
    "DATA4()",
    "UNIQ0()",
    "UNIQ1()",
    "UNIQ2()",
    "UNIQ3()",
    "UNIQ4()",
    "UNIQ5()",
    "UNIQ6()",
    "UNIQ7()",
    "UNIQ8()",
    "UNIQ9()",
    "DEMO0()",
    "DEMO1()",
    "DEMO2()",
    "DEMO3()",
    "DEMO4()",
    "DEMO5()",
    "DEMO6()",
    "DEMO7()",
    "DEMO8()",
    "DEMO9()",
    "SPEC0()",
    "SPEC1()",
    "SPEC2()",
    "SPEC3()",
    "SPEC4()",
    "SPEC5()",
    "SPEC6()",
    "SPEC7()",
    "SPEC8()",
    "SPEC9()",
};

s16 D_8011DAFC[] = {
    0x0001, 0x0002, 0x003A, 0x0003, 0x0004, 0x003E,
};

s32 D_8011DB10 = 0;

// BSS
GlobalContext* D_8015BD7C;
s32 D_8015BD80;
Vec3s D_8015CE46;

extern unk_D_8011D064 D_8011D064[];
#else
extern s16 sOREGInit[53];
extern s16 sOREGInitCnt; // 80119F4C
extern s16 sPREGInit[27]; // 80119F50
extern s16 sPREGInitCnt; // 80119F88
extern char sCameraSettingNames[][12];
extern char sCameraModeNames[][12]; // 8011A2A4
extern CameraSetting D_8011D064[];
extern s32 (*D_8011D274[])(Camera*);
extern s32 sInitRegs; // 8011D390
extern s32 D_8011D398;
extern s16 D_8011D39C;
extern u_D_8011D3A0 D_8011D3A0;
extern s32 D_8011D3A4;
extern s32 D_8011D3A8;
extern s32 D_8011D3E8;
extern s32 D_8011D3F0;
extern s16 D_8011DAFC[6];
extern s32 D_8011DB10;
extern GlobalContext* D_8015BD7C;
extern s32 D_8015BD80;
extern Vec3f D_8015BD84;
extern Vec3f D_8015BD90;
extern Vec3f D_8015BD9C;
extern f32 D_8015BDC8;
extern Vec3s D_8015CE46;
extern CollisionPoly *D_8015CE4C;
#endif

/*===============================================================*/
typedef struct {
    Vec3f unk_00;
    Vec3f unk_0C;
    CollisionPoly* unk_18;
    char unk_1C[0x8];
    s32 unk_24;
} struct_80043D18;

// names for this struct's values come from a debug function, may want to rename
typedef struct {
    s8 code;
    s8 z;
    u16 T;
    f32 zoom;
    Vec3s pos;
} SplineData; // originally called SplinedatZ

f32 func_800437F0(f32 arg0, f32 arg1) {
    f32 percent = 0.4f;
    f32 ret = fabsf(arg1);

    if (arg0 < ret) {
        ret = 1;
    } else if (ret < (f32)arg0 * (1 - percent)) { //! float cast needed to match
        ret = (SQ(arg1) * (1 - percent)) / SQ((1 - percent) * arg0);
    } else {
        ret = 1 - (0.4f * SQ(arg0 - ret)) / SQ(0.4f * arg0);
    }

    return ret;
}

f32 func_8004389C(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    f32 temp1 = arg0 - arg1;
    f32 temp2;
    f32 ret;

    if (fabsf(temp1) >= arg3) {
        temp2 = temp1 * arg2;
        ret = arg1 + temp2;
    } else {
        ret = arg0;
    }

    return ret;
}

f32 func_800438DC(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    f32 temp1 = arg0 - arg1;
    f32 temp2;
    f32 ret;

    if (fabsf(temp1) >= arg3) {
        temp2 = temp1 * arg2;
        ret = arg1 + temp2;
    } else {
        ret = arg1;
    }

    return ret;
}

s16 func_8004391C(s16 arg0, s16 arg1, f32 arg2, s16 arg3) {
    s16 temp1 = arg0 - arg1;
    s16 temp2;
    s32 ret;

    if (ABS(temp1) >= arg3) {
        temp2 = temp1 * arg2 + 0.5f;
        ret = arg1 + temp2;
    } else {
        ret = arg0;
    }

    return ret;
}

s16 func_800439AC(s16 arg0, s16 arg1, f32 arg2, s16 arg3) {
    s16 temp1 = arg0 - arg1;
    s16 temp2;
    s32 ret;

    if (ABS(temp1) >= arg3) {
        temp2 = temp1 * arg2 + 0.5f;
        ret = arg1 + temp2;
    } else {
        ret = arg1;
    }

    return ret;
}

void func_80043A3C(Vec3f* arg0, Vec3f* arg1, f32 arg2, f32 arg3, f32 arg4) {
    arg1->x = func_8004389C(arg0->x, arg1->x, arg3, arg4);
    arg1->y = func_8004389C(arg0->y, arg1->y, arg2, arg4);
    arg1->z = func_8004389C(arg0->z, arg1->z, arg3, arg4);
}

void func_80043ABC(Camera* camera) {
    camera->unk_C0.z = 100.0f;
    camera->unk_C0.y = OREG(7);
    camera->unk_C0.x = OREG(6);
    camera->unk_CC.x = OREG(2) * 0.01f;
    camera->unk_CC.y = OREG(3) * 0.01f;
    camera->unk_CC.z = OREG(4) * 0.01f;
}

void func_80043B60(Camera* camera) {
    camera->unk_C0.x = OREG(27);
    camera->unk_C0.z = OREG(27);
    camera->unk_C0.y = OREG(27);
    camera->unk_CC.x = 0.001f;
    camera->unk_CC.y = 0.001f;
    camera->unk_CC.z = 0.001f;
}

Vec3f* func_80043BC4(Vec3f* arg0, Vec3s* arg1) {
    Vec3f sp4;

    sp4.x = arg1->x;
    sp4.y = arg1->y;
    sp4.z = arg1->z;

    *arg0 = sp4;
    return arg0;
}

Vec3f* func_80043C28(Vec3f* arg0, Vec3f* arg1, VecSph* arg2) {
    Vec3f sp24, sp18;
    func_8007C25C(&sp18, arg2);

    sp24.x = arg1->x + sp18.x;
    sp24.y = arg1->y + sp18.y;
    sp24.z = arg1->z + sp18.z;

    *arg0 = sp24;
    return arg0;
}

Vec3f* func_80043CAC(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3) {
    Vec3f sp4;

    sp4.x = arg1->x + (arg2->x * arg3);
    sp4.y = arg1->y + (arg2->y * arg3);
    sp4.z = arg1->z + (arg2->z * arg3);

    *arg0 = sp4;
    return arg0;
}

s32 func_80043D18(Camera* camera, Vec3f* arg1, struct_80043D18* arg2) {
    CollisionContext* colCtx;
    Vec3f sp68, sp5C, sp50;
    f32 temp_ret;
    CollisionPoly* sp48;
    s32 sp44;
    VecSph sp3C;

    colCtx = &camera->globalCtx->colCtx;
    func_8007C490(&sp3C, arg1, &arg2->unk_00);
    sp3C.r += 8.0f;
    func_80043C28(&sp5C, arg1, &sp3C);

    if (func_8003DD6C(colCtx, arg1, &sp5C, &sp68, &arg2->unk_18, 1, 1, 1, -1, &arg2->unk_24) == 0) {
        func_8007C0F8(&sp50, arg1, &arg2->unk_00);

        arg2->unk_0C.x = -sp50.x;
        arg2->unk_0C.y = -sp50.y;
        arg2->unk_0C.z = -sp50.z;

        sp68 = arg2->unk_00;
        sp68.y += 5.0f;
        temp_ret = func_8003CCA4(colCtx, &sp48, &sp44, &sp68);

        if ((arg2->unk_00.y - temp_ret) > 5.0f) {
            arg2->unk_00.x += arg2->unk_0C.x;
            arg2->unk_00.y += arg2->unk_0C.y;
            arg2->unk_00.z += arg2->unk_0C.z;
            return 0;
        }

        arg2->unk_18 = sp48;
        sp68.y = temp_ret + 1.0f;
        arg2->unk_24 = sp44;
    }

    arg2->unk_0C.x = arg2->unk_18->norm.x * (1.f / 32767);
    arg2->unk_0C.y = arg2->unk_18->norm.y * (1.f / 32767);
    arg2->unk_0C.z = arg2->unk_18->norm.z * (1.f / 32767);
    arg2->unk_00.x = arg2->unk_0C.x + sp68.x;
    arg2->unk_00.y = arg2->unk_0C.y + sp68.y;
    arg2->unk_00.z = arg2->unk_0C.z + sp68.z;

    return sp44 + 1;
}

void func_80043F34(Camera* camera, Vec3f* arg1, Vec3f* arg2) {
    struct_80043D18 sp20;
    Vec3s unused;

    sp20.unk_00 = *arg2;
    func_80043D18(camera, arg1, &sp20);
    *arg2 = sp20.unk_00;
}

// 242 lines
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80043F94.s")

void func_80044340(Camera* camera, Vec3f* arg1, Vec3f* arg2) {
    struct_80043D18 sp20;
    Vec3s unused;

    sp20.unk_00 = *arg2;
    func_80043F94(camera, arg1, &sp20);
    *arg2 = sp20.unk_00;
}

s32 func_800443A0(Camera *camera, Vec3f *arg1, Vec3f *arg2)
{
    s32 pad;
    Vec3f sp40;
    s32 pad2;
    s32 sp38;
    CollisionPoly *sp34;
    CollisionContext *colCtx;
    colCtx = &camera->globalCtx->colCtx;

    sp34 = NULL;
    if (func_8003DD6C(colCtx, arg1, arg2, &sp40, &sp34, 1, 1, 1, 0, &sp38) && (func_80038B7C(sp34, arg1) < 0.0f)) {
        return true;
    }

    return false;
}

f32 func_80044434(Camera* camera, Vec3f* arg1, Vec3f* arg2, s32* arg3) {
    s32 sp2C; // unused
    CollisionPoly* sp28;
    f32 temp_ret = func_8003C940(&camera->globalCtx->colCtx, &sp28, arg3, arg2);

    if (temp_ret == -32000.0f) {
        arg1->x = 0.0f;
        arg1->z = 0.0f;
        arg1->y = 1.0f;
    } else {
        arg1->x = sp28->norm.x * (1.f / 32767);
        arg1->y = sp28->norm.y * (1.f / 32767);
        arg1->z = sp28->norm.z * (1.f / 32767);
    }

    return temp_ret;
}

f32 func_80044510(Camera* camera, Vec3f* arg1) {
    Vec3f sp2C, sp20;
    s32 sp1C;

    sp2C = *arg1;
    sp2C.y += 80.0f;

    return func_80044434(camera, &sp20, &sp2C, &sp1C);
}

// 125 lines (loop)
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80044568.s")

s16 func_80044740(Camera* camera, s32 arg1) {
    return func_80041A4C(&camera->globalCtx->colCtx, arg1, 50);
}

struct_80041C10_ret* func_8004476C(Camera* camera) {
    return func_80041C10(&camera->globalCtx->colCtx, camera->unk_148, 50);
}

s32 func_8004479C(Camera* camera, s32* arg1, Vec3f* arg2) {
    s32 temp_ret;
    PosRot sp20;
    s32 ret;

    func_8002EF44(&sp20, &camera->player->actor);
    temp_ret = func_80041A28(&camera->globalCtx->colCtx, arg2, *arg1);

    if (func_80041A4C(&camera->globalCtx->colCtx, temp_ret, *arg1) == 0) {
        ret = -1;
    } else {
        ret = temp_ret;
    }
    return ret;
}

s32 func_8004481C(Camera* camera, s16* arg1) {
    CollisionPoly* sp44;
    s32 sp40; // unused
    s32 sp3C;
    PosRot sp28;

    func_8002EF44(&sp28, &camera->player->actor);
    sp28.pos.y += Player_GetCameraYOffset(camera->player);
    if (func_8003C940(&camera->globalCtx->colCtx, &sp44, &sp3C, &sp28.pos) == -32000.0f) {
        return 0;
    }
    *arg1 = func_80041B80(&camera->globalCtx->colCtx, sp44, sp3C);
    return func_80041C98(&camera->globalCtx->colCtx, sp44, sp3C);
}

s32 func_800448CC(Camera* camera, f32* arg1) {
    PosRot sp34;
    s32 sp30;
    s32 temp_ret;

    func_8002EF44(&sp34, &camera->player->actor);
    *arg1 = sp34.pos.y;

    if (func_8004213C(camera->globalCtx, &camera->globalCtx->colCtx, sp34.pos.x, sp34.pos.z, arg1, &sp30) == 0) {
        *arg1 = -32000.0f;
        return -1;
    }
    if (!(camera->player->stateFlags1 & 0x8000000)) {
        *arg1 = -32000.0f;
        return -1;
    }

    temp_ret = func_80042538(&camera->globalCtx->colCtx, sp30);
    if ((temp_ret <= 0) || (func_80042548(&camera->globalCtx->colCtx, sp30) <= 0)) {
        return -2;
    }

    return temp_ret;
}

f32 func_800449AC(Camera* camera, Vec3f* arg1, s32* arg2) {
    PosRot sp2C;
    f32 sp28;
    s32 sp24;

    func_8002EF44(&sp2C, &camera->player->actor);
    sp28 = sp2C.pos.y;

    if (func_8004213C(camera->globalCtx, &camera->globalCtx->colCtx, arg1->x, arg1->z, &sp28, &sp24) == 0) {
        return -32000.f;
    }
    if (sp28 < arg1->y) {
        return -32000.f;
    }

    *arg2 = func_8004259C(&camera->globalCtx->colCtx, sp24);
    return sp28;
}

s16 func_80044A74(Vec3f* arg0, Vec3f* arg1) {
    return Math_atan2f(arg1->x - arg0->x, arg1->z - arg0->z) * (180.0f / M_PI) * (32767.5f / 180.0f) + 0.5f;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80044ADC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80044E68.s")

f32 func_800450A4(Camera* camera, f32 arg1) {
    f32 ret;

    if (camera->unk_100 < (OREG(41) * 0.01f)) {
        ret = OREG(41) * 0.01f;
    } else if (arg1 <= camera->unk_100) {
        ret = arg1;
    } else {
        ret = OREG(42) * 0.01f * camera->unk_100;
    }

    return ret;
}

#ifdef NON_MATCHING
void func_80045128(Camera *camera, s16 mode) {
    s32 i;

    if (PREG(82)) {
        osSyncPrintf("camera: res: stat (%d/%d/%d)\n", camera->unk_164, camera->setting, mode);
    }
    for(i = 0; i < D_8011D064[camera->setting].cameraModes[mode].valueCnt; i++){
        CameraModeValue *phi_s0 = &D_8011D064[camera->setting].cameraModes[mode].values[i];
        PREG(phi_s0->param) = phi_s0->val;
        if (PREG(82)) {
            osSyncPrintf("camera: res: PREG(%02d) = %d\n", phi_s0->param, phi_s0->val);
        }
    }
    camera->unk_15E = 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80045128.s")
#endif

#ifdef NON_MATCHING
s32 func_80045254(Camera *camera) {
    CameraModeValue *phi_s0;
    s32 i;

    for(i = 0; i < D_8011D064[camera->setting].cameraModes[camera->mode].valueCnt; i++){
        phi_s0 = &D_8011D064[camera->setting].cameraModes[camera->mode].values[i];
        phi_s0->val = PREG(phi_s0->param);
        if(PREG(82)){
            osSyncPrintf("camera: res: %d = PREG(%02d)\n", phi_s0->val, phi_s0->param);
        }
    }
    return true;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80045254.s")
#endif


#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80045350.s")

void* func_8004545C(Vec3f* arg0, s32 arg1, s32 arg2, struct_80043D18* arg3, struct_80043D18* arg4) {
    Vec3f sp24;

    if (func_800427B4(arg3->unk_18, arg4->unk_18, arg1, arg2, &sp24) == 0) {
        osSyncPrintf(VT_COL(YELLOW, BLACK) "camera: corner check no cross point %x %x\n" VT_RST, arg3, arg4);
        *arg0 = arg3->unk_00;
        return arg0;
    }

    *arg0 = sp24;
    return arg0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80045508.s")

#ifdef NON_MATCHING
// CLOSE: stack is 4 bytes too big
f32 func_80045714(Vec3f* arg0, s16 arg1, s16 arg2, f32 arg3) {
    VecSph sp1C;
    f32 sp18;

    func_8007C3F4(&sp1C, arg0);
    sp18 = Math_Coss(sp1C.phi);
    sp18 = fabsf(Math_Coss(arg1 - sp1C.theta) * sp18);
    return Math_Coss(arg1 - arg2) * (sp18 * arg3);
}
#else
f32 func_80045714(Vec3f* a, s16 b, s16 c, f32 arg3);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80045714.s")
#endif

f32 func_8007C0A8(f32, f32);

s32 func_800457A8(Camera* camera, VecSph* arg1, f32 arg2, s16 arg3) {
    f32 unused;
    Vec3f sp50;
    Vec3f sp44;
    s32 unused2;
    PosRot* sp2C;
    f32 temp_ret;

    temp_ret = Player_GetCameraYOffset(camera->player);

    sp50.x = 0.f;
    sp50.z = 0.f;
    sp50.y = temp_ret + arg2;

    sp2C = &camera->unk_94;
    if (arg3 != 0) {
        sp50.y -= func_8007C0A8(func_80045714(&camera->unk_108, sp2C->rot.y, arg1->theta, OREG(9)), temp_ret);
    }
    func_80043A3C(&sp50, &camera->unk_E4, camera->unk_CC.y, camera->unk_CC.x, 0.1f);

    sp44.x = sp2C->pos.x + camera->unk_E4.x;
    sp44.y = sp2C->pos.y + camera->unk_E4.y;
    sp44.z = sp2C->pos.z + camera->unk_E4.z;
    func_80043A3C(&sp44, &camera->at, camera->unk_100, camera->unk_100, 0.2f);

    return 1;
}

#ifdef NON_MATCHING
// CLOSE: regalloc
s32 func_800458D4(Camera* camera, VecSph* arg1, f32 arg2, f32* arg3, s16 arg4) {
    f32 phi_f2;
    Vec3f sp60;
    Vec3f sp54;
    f32 temp_ret;
    PosRot* temp_s1;
    f32 sp48;
    s32 pad[2];

    sp60.y = Player_GetCameraYOffset(camera->player) + arg2;
    sp60.x = 0.0f;
    sp60.z = 0.0f;

    temp_s1 = &camera->unk_94;
    if (arg4 != 0) {
        sp60.y -= func_80045714(&camera->unk_108, temp_s1->rot.y, arg1->theta, OREG(9));
    }

    sp48 = temp_s1->pos.y - *arg3;
    temp_ret = Math_atan2f(sp48, func_8007C028(&camera->at, &camera->eye)); // f2 and f14 are swapped

    if (OREG(32) * (M_PI / 180) < temp_ret) {
        phi_f2 = 1.0f - sinf(temp_ret - OREG(32) * (M_PI / 180));
    } else if (OREG(33) * (M_PI / 180) > temp_ret) {
        phi_f2 = 1.0f - sinf(OREG(33) * (M_PI / 180) - temp_ret);
    } else {
        phi_f2 = 1.0f;
    }

    sp60.y -= sp48 * phi_f2;
    func_80043A3C(&sp60, &camera->unk_E4, OREG(29) * 0.01f, OREG(30) * 0.01f, 0.1f);

    sp54.x = temp_s1->pos.x + camera->unk_E4.x;
    sp54.y = temp_s1->pos.y + camera->unk_E4.y;
    sp54.z = temp_s1->pos.z + camera->unk_E4.z;
    func_80043A3C(&sp54, &camera->at, camera->unk_100, camera->unk_100, 0.2f);

    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800458D4.s")
#endif

s32 func_80045B08(Camera* camera, VecSph* arg1, f32 arg2, s16 arg3) {
    f32 phi_f2;
    Vec3f sp48;
    Vec3f sp3C;
    f32 sp38; // unused
    f32 temp_ret;
    PosRot* temp_s1;

    sp48.y = Player_GetCameraYOffset(camera->player) + arg2;
    sp48.x = 0.0f;
    sp48.z = 0.0f;

    temp_ret = Math_Sins(arg3);
    temp_s1 = &camera->unk_94;

    if (temp_ret < 0.0f) {
        phi_f2 = Math_Coss(temp_s1->rot.y - arg1->theta);
    } else {
        phi_f2 = -Math_Coss(temp_s1->rot.y - arg1->theta);
    }

    sp48.y -= temp_ret * phi_f2 * OREG(9);
    func_80043A3C(&sp48, &camera->unk_E4, camera->unk_CC.y, camera->unk_CC.x, 0.1f);

    sp3C.x = temp_s1->pos.x + camera->unk_E4.x;
    sp3C.y = temp_s1->pos.y + camera->unk_E4.y;
    sp3C.z = temp_s1->pos.z + camera->unk_E4.z;
    func_80043A3C(&sp3C, &camera->at, camera->unk_100, camera->unk_100, 0.2f);

    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80045C74.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800460A8.s")

s32 func_800466F8(Camera* camera, VecSph* arg1, f32 arg2, f32* arg3, s16 arg4) {
    s32 phi_v0;
    Vec3f sp60;
    Vec3f sp54;
    f32 sp50; // unused
    f32 sp4C; // unused
    f32 sp48; // I doubt this is a Vec3f
    Player* sp44;
    PosRot sp30;

    sp48 = Player_GetCameraYOffset(camera->player);
    sp44 = camera->player;
    func_8002EF44(&sp30, sp44->rideActor);

    if ((*(s32*)((s32)(sp44->rideActor) + 0x1F0) & 4) != 0) { // actors aren't this big, is rideActor a different type?
        phi_v0 = 1;
    } else {
        phi_v0 = 0;
    }

    if (phi_v0 != 0) {
        sp30.pos.y -= 49.f;
        *arg3 = func_8004389C(sp30.pos.y, *arg3, 0.1f, 0.2f);
        camera->unk_100 = func_8004389C(0.4f, camera->unk_100, 0.2f, 0.02f);
    } else {
        *arg3 = func_8004389C(sp30.pos.y, *arg3, 0.5f, 0.2f);
    }

    sp60.x = 0.0f;
    sp60.z = 0.0f;
    sp60.y = sp48 + arg2;

    if (arg4 != 0) {
        sp60.y -= func_80045714(&camera->unk_108, camera->unk_94.rot.y, arg1->theta, OREG(9));
    }

    func_80043A3C(&sp60, &camera->unk_E4, camera->unk_CC.y, camera->unk_CC.x, 0.1f);

    sp54.x = camera->unk_E4.x + sp30.pos.x;
    sp54.y = camera->unk_E4.y + sp30.pos.y;
    sp54.z = camera->unk_E4.z + sp30.pos.z;
    func_80043A3C(&sp54, &camera->at, camera->unk_100, camera->unk_100, 0.2f);

    return 1;
}

void func_800468CC(Camera* camera, f32 arg1, f32 arg2, f32 arg3) {
    f32 sp1C;
    f32 phi_f12;

    if (arg1 < arg2) {
        sp1C = arg2;
        phi_f12 = OREG(6);
    } else if (arg3 < arg1) {
        sp1C = arg3;
        phi_f12 = OREG(6);
    } else {
        sp1C = arg1;
        phi_f12 = 1.0f;
    }

    camera->unk_C0.x = func_8004389C(phi_f12, camera->unk_C0.x, OREG(25) * 0.01f, 0.1f);
    func_8004389C(sp1C, camera->unk_DC, 1.f / camera->unk_C0.x, 0.2f);
}

void func_800469C0(Camera* camera, f32 arg1, f32 arg2, f32 arg3, s16 arg4) {
    f32 sp1C;
    f32 phi_f12;

    if (arg1 < arg2) {
        sp1C = arg2;

        if (arg4 != 0) {
            phi_f12 = OREG(6) * 0.5f;
        } else {
            phi_f12 = OREG(6);
        }
    } else if (arg3 < arg1) {
        sp1C = arg3;

        if (arg4 != 0) {
            phi_f12 = OREG(6) * 0.5f;
        } else {
            phi_f12 = OREG(6);
        }
    } else {
        sp1C = arg1;

        if (arg4 != 0) {
            phi_f12 = OREG(6);
        } else {
            phi_f12 = 1.0f;
        }
    }

    camera->unk_C0.x = func_8004389C(phi_f12, camera->unk_C0.x, OREG(25) * 0.01f, 0.1f);
    func_8004389C(sp1C, camera->unk_DC, 1.f / camera->unk_C0.x, 0.2f);
}

#ifdef NON_MATCHING
// lots of regalloc and stack issues, but that's it
void func_80046B44(Camera* camera, s16 arg1, s16 arg2, s16 arg3) {
    s32 pad[2];
    s16 sp1C;
    s16 phi_v1;
    s16 phi_v0;
    f32 phi_a2;

    phi_v1 = ABS(arg1);
    phi_v0 = arg3 > 0 ? (s16)(Math_Coss(arg3) * arg3) : arg3;
    sp1C = arg2 - phi_v0;
    if (ABS(sp1C) < phi_v1) {
        phi_a2 = (1.0f / camera->unk_C0.y) * 3.0f;
    } else {
        phi_a2 = (1.0f / camera->unk_C0.y) * func_800437F0(0.8f, 1.0f - phi_v0 * (1.0f / OREG(5)));
    }
    func_8004391C(sp1C, arg1, phi_a2, 0xa);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80046B44.s")
#endif

#ifdef NON_MATCHING
// stack, regalloc, tiny bit of ordering
s16 func_80046CB4(Camera* camera, s16 arg1, s16 arg2, f32 arg3, f32 arg4) {
    f32 sp34;
    s16 sp1C;
    f32 temp_ret;
    f32 phi_f14;
    s16 temp;

    if (camera->unk_D8 > 0.001f) {
        temp = arg1 - 0x7FFF;
        sp1C = arg2 - temp;
        phi_f14 = (s16)(sp1C - 0x7FFF) * (1.0f / 32767.0f);
    } else {
        temp = arg1 - 0x7FFF;
        sp1C = arg2 - temp;
        phi_f14 = OREG(48) * 0.01f;
    }
    temp_ret = func_800437F0(arg3, phi_f14);
    sp34 = ((1.0f - temp_ret) * arg4) + temp_ret;
    if (sp34 < 0.0f) {
        sp34 = 0.0f;
    }
    // ordering stuff here
    return arg1 + (s16)(sp1C * sp34 * (1.0f / camera->unk_C0.z) * func_800437F0(0.5f, camera->unk_E0)) + arg1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80046CB4.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80046E20.s")

s32 func_80047394(Camera* camera) {
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Normal1.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Normal2.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Normal3.s")

s32 Camera_Normal4(Camera* camera) {
    return func_80047394(camera);
}

s32 Camera_Normal0(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Parallel1.s")

s32 Camera_Parallel2(Camera* camera) {
    return func_80047394(camera);
}

void Camera_Parallel3(Camera *camera) {
    CameraModeValue *reg = &D_8011D064[camera->setting].cameraModes[camera->mode].values[0];
    s16 val = reg->val;

    D_8011D3A0.w = val;
    if(val & 1){
        camera->unk_14C |= 0x400;
    }
    if(val & 2){
        camera->unk_14C |= 0x10;
    }
}


s32 Camera_Parallel4(Camera* camera) {
    return func_80047394(camera);
}

s32 Camera_Parallel0(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Jump1.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Jump2.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Jump3.s")

s32 Camera_Jump4(Camera* camera) {
    return func_80047394(camera);
}

s32 Camera_Jump0(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Battle1.s")

s32 Camera_Battle2(Camera* camera) {
    return func_80047394(camera);
}

s32 Camera_Battle3(Camera* camera) {
    func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Battle4.s")

s32 Camera_Battle0(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_KeepOn1.s")

s32 Camera_KeepOn2(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_KeepOn3.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_KeepOn4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_KeepOn0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Fixed1.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Fixed2.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Fixed3.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Fixed4.s")

s32 Camera_Fixed0(Camera* camera) {
    return func_80047394(camera);
}

s32 Camera_Subj1(Camera* camera) {
    return func_80047394(camera);
}

s32 Camera_Subj2(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Subj3.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Subj4.s")

s32 Camera_Subj0(Camera* camera) {
    return func_80047394(camera);
}

s32 Camera_Data0(Camera* camera) {
    return func_80047394(camera);
}

s32 Camera_Data1(Camera* camera) {
    osSyncPrintf("chau!chau!\n");
    return Camera_Normal1(camera);
}

s32 Camera_Data2(Camera* camera) {
    return func_80047394(camera);
}

s32 Camera_Data3(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Data4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Unique1.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Unique2.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Unique3.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Unique0.s")

s32 Camera_Unique4(Camera* camera) {
    return func_80047394(camera);
}

s32 Camera_Unique5(Camera* camera) {
    return func_80047394(camera);
}

#ifdef NON_MATCHING
s32 Camera_Unique6(Camera *camera) {
    Vec3f sp2C;
    Vec3f *unk_94;
    f32 offset;

    if (camera->unk_15E == 0 || camera->unk_15E == 0xA || camera->unk_15E == 0x14 || QREG(0)) {
        camera->unk_00.sh[0] = D_8011D064[camera->setting].cameraModes[camera->mode].values->val;
    }
    if (QREG(0)) {
        func_80045254(camera);
    }
    D_8011D3A0.sh[0] = camera->unk_00.sh[0];
    if (camera->unk_15E == 0) {
        camera->unk_15E++;
        func_80043ABC(camera);
    }
    if (camera->player != NULL) {
        offset = Player_GetCameraYOffset(camera->player);
        unk_94 = &camera->unk_94.pos;
        sp2C = *unk_94;
        sp2C.y += offset;
        camera->unk_DC = func_8007BF90(&sp2C, &camera->eye);
        camera->unk_E4.x = camera->at.x - unk_94->x;
        camera->unk_E4.y = camera->at.y - unk_94->y;
        camera->unk_E4.z = camera->at.z - unk_94->z;
    } else {
        camera->unk_DC = func_8007BF90(&camera->at, &camera->eye);
    }
    if (camera->unk_00.sh[0] & 1) {
        if (camera->unk_160 > 0) {
            camera->unk_160--;
        }
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Unique6.s")
#endif

//#ifdef NON_MATCHING
#if 0
s32 Camera_Unique7(Camera *arg0) {
    s16 sp50;
    ? sp4C;
    s32 sp44;
    ? sp3C;
    Vec3f *sp24;
    Vec3f *sp20;
    s16 temp_t3;
    s32 temp_at;
    Vec3s* temp_v0;
    CameraModeValue *temp_t2;
    s16 phi_v1;
    s32 phi_v1_2;
    s32 phi_v1_3;

    if ((arg0->unk_15E == 0) || (arg0->unk_15E == 0xA) || (arg0->unk_15E == 0x14) || QREG(0)) {
        temp_t2 = D_8011D064[arg0->setting].cameraModes[arg0->mode].values;
        arg0->unk_00.f = temp_t2[0].val;
        arg0->unk_04 = temp_t2[1].val;
    }

    if (QREG(0)) {
        func_80045254(arg0);
    }
    temp_v0 = func_8004476C(arg0);
    sp44 = temp_v0;
    sp20 = &arg0->unk_74;
    func_80043BC4(&arg0->unk_74, (Vec3s *) temp_v0);
    arg0->eye = arg0->unk_74;

    sp3C.unk0 = (?32) (unaligned s32) sp44->unk6;
    sp3C.unk4 = (u16) sp44->unkA;
    sp24 = &arg0->eye;
    func_8007C490(&sp4C, &arg0->eye, &arg0->unk_94, &arg0->unk_74);
    phi_v1_2 = (s32) sp44->unkC;
    if (sp44->unkC == -1) {
        phi_v1_2 = (s32) ((s32) ((bitwise f32) arg0->unk_00.sh * 100.0f) << 0x10) >> 0x10;
    }
    temp_at = phi_v1_2;
    phi_v1_3 = phi_v1_2;
    if (phi_v1_2 < 0x169) {
        phi_v1_3 = (s32) (((((phi_v1_2 * 4) - temp_at) * 8) + temp_at) * 0x40000) >> 0x10;
    }
    D_8011D3A0.sh = (s16 *) arg0->unk_04;
    if (arg0->unk_15E == 0) {
        arg0->unk_15E = (s16) (arg0->unk_15E + 1);
        arg0->unk_15A = (u16)0;
        arg0->unk_100 = 0.0f;
        arg0->unk_FC = (f32) ((f32) phi_v1_3 * 0.009999999776482582f);
        arg0->unk_08 = sp52;
    }
    arg0->unk_FC = 60.0f;
    sp20 = (Vec3f *) &arg0->unk_08;
    arg0->unk_08 = func_800439AC(sp52, arg0->unk_08, 0.4000000059604645f, (u16)0x7D0);
    sp50 = (s16) (s32) (Math_Coss((s16) ((s32) ((sp52 - sp44->unk8) << 0x10) >> 0x10)) * (f32) -(s32) sp44->unk6);
    func_80043C28(&arg0->at, sp24, (VecSph *) &sp4C);
    arg0->unk_14C = (s16) (arg0->unk_14C | 0x400);
    return true;
}
#endif
//#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Unique7.s")
//#endif

s32 Camera_Unique8(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Unique9.s")

void Camera_DebugPrintSplineArray(char* name, s16 length, SplineData splines[]) {
    s32 i;

    osSyncPrintf("static SplinedatZ  %s[] = {\n", name);
    for (i = 0; i < length; i++) {
        osSyncPrintf("    /* key frame %2d */ {\n", i);
        osSyncPrintf("    /*     code     */ %d,\n", splines[i].code);
        osSyncPrintf("    /*     z        */ %d,\n", splines[i].z);
        osSyncPrintf("    /*     T        */ %d,\n", splines[i].T);
        osSyncPrintf("    /*     zoom     */ %f,\n", splines[i].zoom);
        osSyncPrintf("    /*     pos      */ { %d, %d, %d }\n", splines[i].pos.x, splines[i].pos.y, splines[i].pos.z);
        osSyncPrintf("    },\n");
    }
    osSyncPrintf("};\n\n");
}

void Camera_Vec3fCopy(Vec3f* src, Vec3f* dst) {
    dst->x = src->x;
    dst->y = src->y;
    dst->z = src->z;
}

typedef struct {
    Vec3f unk_00;
    s16 unk_0C;
    s16 unk_0E;
} unk_80054478_a0;
void func_80054478(unk_80054478_a0 *arg0, Vec3f *arg1, Vec3f *arg2) {
    VecSph sp28;
    Vec3f sp1C;

    Camera_Vec3fCopy(arg1, &sp1C);
    func_8007C3F4(&sp28, &sp1C);
    sp28.theta += arg0->unk_0E;
    func_80043C28(arg2, &arg0->unk_00, &sp28);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Demo1.s")

s32 Camera_Demo2(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Demo3.s")

s32 Camera_Demo4(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Demo5.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Demo6.s")

void Camera_Demo7(Camera *camera) {
    if (camera->unk_15E == 0) {
        camera->unk_14C &= ~4;
        camera->unk_14C |= 0x1000;
        camera->unk_15E++;
    }
}

s32 Camera_Demo8(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Demo9.s")

s32 Camera_Demo0(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Special0.s")

s32 Camera_Special1(Camera* camera) {
    return func_80047394(camera);
}

s32 Camera_Special2(Camera* camera) {
    return Camera_Unique2(camera);
}

s32 Camera_Special3(Camera* camera) {
    return func_80047394(camera);
}

#ifdef NON_MATCHING
s32 Camera_Special4(Camera *camera) {
    PosRot sp3C;
    s32 temp_v0;
    s16 sp3A;
    s16 *unk_160 = &camera->unk_160;


    if (camera->unk_15E == 0) {
        D_8011D3A0.w = 0x3200;
        camera->unk_15E++;
        camera->unk_FC = 40.0f;
        camera->unk_00.sh[0] = *unk_160;
    }
    camera->unk_FC = func_8004389C(80.0f, camera->unk_FC, 1.0f / *unk_160, 0.1f);
    if ((camera->unk_00.sh[0] - *unk_160) < 0xF) {
        *unk_160 = *unk_160 - 1;
        return 0;
    }
    camera->unk_15A = -0x1F4;
    func_8002EF14(&sp3C, camera->unk_A8);
    camera->at = sp3C.pos;
    camera->at.y -= 150.0f;
    temp_v0 = (s16)(sp3C.rot.y - 0x7FFF) + 0x3E8;
    sp3A = temp_v0;
    camera->unk_74.y = (f32) camera->at.y;
    camera->eye.x = camera->unk_74.x = (Math_Sins(temp_v0) * 780.0f) + camera->at.x;
    camera->eye.z = camera->unk_74.z = (Math_Coss(sp3A) * 780.0f) + camera->at.z;
    camera->eye.y = sp3C.pos.y;
    camera->eye.y = func_80044510(camera, &camera->eye) + 20.0f;
    camera->unk_160--;
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Special4.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Special5.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Special7.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Special6.s")

s32 Camera_Special8(Camera* camera) {
    return func_80047394(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Special9.s")

Camera* func_80057B98(View* view, CollisionContext* colCtx, GlobalContext* globalCtx) {
    Camera* newCamera = ZeldaArena_MallocDebug(sizeof(*newCamera), "../z_camera.c", 9370);
    if (newCamera != NULL) {
        osSyncPrintf(VT_FGCOL(BLUE) "camera: create --- allocate %d byte" VT_RST "\n", sizeof(*newCamera) * 4);
        func_80057C6C(newCamera, view, colCtx, globalCtx);
    } else {
        osSyncPrintf(VT_COL(RED, WHITE) "camera: create: not enough memory\n" VT_RST);
    }
    return newCamera;
}

void func_80057C14(Camera* camera) {
    if (camera != NULL) {
        osSyncPrintf(VT_FGCOL(BLUE) "camera: destroy ---" VT_RST "\n");
        ZeldaArena_FreeDebug(camera, "../z_camera.c", 9391);
    } else {
        osSyncPrintf(VT_COL(YELLOW, BLACK) "camera: destroy: already cleared\n" VT_RST);
    }
}

#ifdef NON_MATCHING
void func_80057C6C(Camera *camera, View *view, CollisionContext *colCtx, GlobalContext *globalCtx) {
    s32 i;
    s32 j;
    Camera *cam;

    func_80106860(camera, 0, sizeof(*camera));
    if (sInitRegs) {
        for(i = 0; i < sOREGInitCnt; i++){
            OREG(i) = sOREGInit[i];
        }

        for(i = 0; i < sPREGInitCnt; i++){
            PREG(i) = sPREGInit[i];
        }

        func_800B958C(camera, &D_8015BD80);
        sInitRegs = 0;
        PREG(88) = -1;
    }
    camera->globalCtx = D_8015BD7C = globalCtx;
    func_800B4D58(&D_8015BD80, camera);
    do{
        i = D_8011D39C;
        D_8011D39C++;
        if(i == 0){
            break;
        }
        if(i == 0){
            D_8011D39C += 2;
        }
        for(j = 0; j < 4; j++){
            cam = camera->globalCtx->cameraPtrs[j];
            if(cam != NULL && cam->uid == i){
                break;
            }
        }
    } while(j != 4);
    camera->unk_134.y = 0x3FFF;
    camera->unk_13A = camera->unk_134;
    camera->uid = i;
    camera->unk_C0.x = 10.0f;
    camera->unk_C0.y = OREG(7);
    camera->unk_C0.z = 10.0f;
    camera->unk_68.y = 1.0f;
    camera->unk_68.x = 0.0f;
    camera->unk_68.z = 0.0f;
    camera->unk_FC = 60.0f;
    camera->unk_CC.x = OREG(2) * 0.01f;
    camera->unk_CC.y = OREG(3) * 0.01f;
    camera->unk_CC.z = OREG(4) * 0.01f;
    D_8011D3A8 = 0x20;
    D_8011D3A4 = 0;
    camera->unk_14C = 0;
    camera->unk_154 = 0x21U;
    camera->unk_166 = -1;
    camera->mode = CAM_MODE_NORMAL;
    camera->unk_146 = 0x32;
    camera->unk_168 = 0x7FFF;
    camera->unk_160 = -1;
    camera->unk_14C |= 0x4000;
    camera->unk_68.x = 0.0f;
    camera->unk_68.y = 1.0f;
    camera->unk_68.z = 0.0f;
    camera->unk_80.x = 0.0f;
    camera->unk_80.y = 0.0f;
    camera->unk_80.z = 0.0f;
    camera->setting = camera->unk_154;
    camera->unk_148 = camera->unk_166;
    camera->unk_100 = 1.0f;
    D_8011D3A0.sh[0] = 0xFF00;
    D_8011D398 = -1;
    D_8011D3F0 = 3;
    osSyncPrintf("\x1b[34mcamera: initialize --- \x1b[m UID %d\n", camera->uid);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80057C6C.s")
#endif

s32 func_8005AD40(Camera* camera, s32 arg1, s16 arg2, f32 arg3, s16 arg4, s16 arg5, s16 arg6);

void func_80057FC4(Camera* camera) {
    if (camera != &camera->globalCtx->cameras[0]) {
        camera->unk_154 = camera->setting = CAM_SET_FREE0;
        camera->unk_14C &= ~0x4;
    } else if (camera->globalCtx->roomCtx.curRoom.mesh->polygon.type != 1) {
        switch (camera->globalCtx->roomCtx.curRoom.unk_03) {
            case 1:
                func_8005AD40(camera, 0, -99, 0, 0, 18, 10);
                camera->unk_154 = camera->setting = CAM_SET_DUNGEON0;
                break;
            case 0:
                osSyncPrintf("camera: room type: default set field\n");
                func_8005AD40(camera, 0, -99, 0, 0, 18, 10);
                camera->unk_154 = camera->setting = CAM_SET_NORMAL0;
                break;
            default:
                osSyncPrintf("camera: room type: default set etc (%d)\n", camera->globalCtx->roomCtx.curRoom.unk_03);
                func_8005AD40(camera, 0, -99, 0, 0, 18, 10);
                camera->unk_154 = camera->setting = CAM_SET_NORMAL0;
                camera->unk_14C |= 4;
                break;
        }
    } else {
        osSyncPrintf("camera: room type: prerender\n");
        camera->unk_154 = camera->setting = CAM_SET_FREE0;
        camera->unk_14C &= ~0x4;
    }
}

void Camera_Stub80058140(Camera* camera) {
}

#ifdef NON_MATCHING
void func_80058148(Camera *camera, Player *player) {
    s32 pad;
    PosRot sp54;
    VecSph sp4C;
    s32 sp48;
    Vec3f sp3C;
    f32 temp_f0;

    func_8002EF44(&sp54, &player->actor);
    temp_f0 = Player_GetCameraYOffset(player);
    camera->player = player;
    camera->unk_94 = sp54;
    sp4C.r = 180.0f;
    camera->unk_DC = 180.0f;
    camera->unk_134.y = sp54.rot.y;
    sp4C.phi = 0x71C;
    sp4C.theta = camera->unk_134.y - 0x7FFF;
    camera->unk_134.x = 0x71C;
    camera->unk_134.z = 0;
    camera->unk_13A = camera->unk_134;
    camera->unk_D8 = 0.0f;
    camera->unk_F0.y = 0.0f;
    camera->at = sp54.pos;
    camera->unk_E4.y = temp_f0;
    camera->unk_E4.x = 0.0f;
    camera->unk_E4.z = 0.0f;
    camera->at.y += temp_f0;
    func_80043C28(&camera->unk_74, &camera->at, &sp4C);
    camera->eye = camera->unk_74;
    camera->unk_15A = 0;
    camera->unk_68.z = 0.0f;
    camera->unk_68.x = 0.0f;
    camera->unk_68.y = 1.0f;
    if (func_80044434(camera, &sp3C, &camera->at, &sp48) != -32000.0f) {
        camera->unk_146 = sp48;
    }
    camera->unk_118 = -1;
    camera->unk_11C = -1;
    camera->unk_14C |= 4;
    if (camera == &camera->globalCtx->cameras[0]) {
        D_8011D3A0.w = 0xB200;
    } else {
        D_8011D3A0.w = 0;
    }
    func_80057FC4(camera);
    camera->unk_14A = 0;
    camera->unk_15C = 0;
    camera->unk_156 = -1;
    camera->unk_100 = 1.0f;
    func_80045128(camera, camera->mode);
    func_8005B044();
    osSyncPrintf("\x1b[34mcamera: personalize ---\x1b[m\n");
    if (camera->unk_164 == 0) {
        func_800588B4(camera);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80058148.s")
#endif

#ifdef NON_MATCHING
void Camera_ChangeStatus(Camera* camera, s16 status) {
    s32 temp_s1;
    CameraMode* temp_v0;
    s32 phi_a1;
    s32 phi_a2;
    s16 phi_v0;
    CameraModeValue* phi_s0;
    s32 phi_s1;

    if (PREG(82)) {
        phi_a1 = status == 7 ? 0x6F : 0x78;
        phi_a2 = camera->status != 7 ? 0x6F : 0x78;
        osSyncPrintf("camera: change camera status: cond %c%c\n", phi_a1, phi_a2);
    }
    if (PREG(82)) {
        osSyncPrintf("camera: res: stat (%d/%d/%d)\n", camera->unk_164, camera->setting, camera->mode);
    }
    if (status == 7 && camera->status != 7) {
        temp_v0 = &D_8011D064[camera->setting].cameraModes[camera->mode];
        if (temp_v0->valueCnt > 0) {
            phi_s0 = temp_v0->values;
            phi_s1 = 0;
        loop_12:
            PREG(phi_s0->param) = phi_s0->val;
            if (PREG(82) != 0) {
                osSyncPrintf("camera: change camera status: PREG(%02d) = %d\n", phi_s0->param, phi_s0->val);
            }
            temp_s1 = phi_s1 + 1;
            phi_s0 = phi_s0 + 4;
            phi_s1 = temp_s1;
            if (temp_s1 < D_8011D064[camera->setting].cameraModes[camera->mode].valueCnt) {
                goto loop_12;
            }
        }
    }
    camera->status = status;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_ChangeStatus.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800584E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800588B4.s")

s32 func_80058CF8(Camera* camera) {
    camera->unk_152 &= ~1;

    if (camera->globalCtx->roomCtx.curRoom.unk_02 == 3) {
        camera->unk_152 |= 1;
    }

    return 1;
}

s32 func_80058D34(Camera* camera) {
    s32 phi_a2 = 0;

    if (D_8011D394 == 0) {
        if (camera->globalCtx->activeCamera == 0) {
            if (CHECK_PAD(D_8015BD7C->state.input[2].press, U_CBUTTONS)) {
                osSyncPrintf("attention sound URGENCY\n");
                func_80078884(NA_SE_SY_ATTENTION_URGENCY);
            }
            if (CHECK_PAD(D_8015BD7C->state.input[2].press, D_CBUTTONS)) {
                osSyncPrintf("attention sound NORMAL\n");
                func_80078884(NA_SE_SY_ATTENTION_ON);
            }

            if (CHECK_PAD(D_8015BD7C->state.input[2].press, R_CBUTTONS)) {
                phi_a2 = 1;
            }
            if (CHECK_PAD(D_8015BD7C->state.input[2].press, L_CBUTTONS)) {
                phi_a2 = -1;
            }
            if (phi_a2 != 0) {
                D_8011D398 = (D_8011D398 + phi_a2) % 6;
                if (func_8005A77C(camera, D_8011DAFC[D_8011D398]) > 0) {
                    osSyncPrintf("camera: force change SET to %s!\n", sCameraSettingNames[D_8011DAFC[D_8011D398]]);
                }
            }
        }
    }
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80058E8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800591EC.s")

void func_80059EC8(Camera* camera) {
    Camera* sp24 = camera->globalCtx->cameraPtrs[0];
    Player* player = (Player*)camera->globalCtx->actorCtx.actorList[2].first;

    if (camera->unk_160 == 0) {
        Gameplay_ChangeCameraStatus(camera->globalCtx, camera->unk_162, 7);

        if ((camera->unk_162 == 0) && (camera->unk_168 != 0)) {
            player->actor.freeze = 0;
            player->stateFlags1 &= ~0x20000000;

            if (player->action != 0) {
                func_8002DF54(camera->globalCtx, &player->actor, 7);
                osSyncPrintf("camera: player demo end!!\n");
            }

            sp24->unk_14C |= 8;
        }

        if (camera->globalCtx->cameraPtrs[camera->unk_14E]->unk_162 == camera->unk_164) {
            camera->globalCtx->cameraPtrs[camera->unk_14E]->unk_162 = camera->unk_162;
        }

        if (camera->globalCtx->cameraPtrs[camera->unk_162]->unk_14E == camera->unk_164) {
            camera->globalCtx->cameraPtrs[camera->unk_162]->unk_14E = camera->unk_14E;
        }

        if (camera->globalCtx->cameraPtrs[camera->unk_162]->unk_164 == 0) {
            camera->globalCtx->cameraPtrs[camera->unk_162]->unk_15E = 0;
        }

        camera->unk_162 = 0;
        camera->unk_14E = camera->unk_162;
        camera->unk_160 = -1;
        camera->globalCtx->envCtx.unk_E1 = 0;

        Gameplay_ClearCamera(camera->globalCtx, camera->unk_164);
    }
}

s32 func_8005A02C(Camera* camera) {
    camera->unk_14C |= 0xC;
    camera->unk_14C &= ~(0x1000 | 0x8);
    return 1;
}

#ifdef NON_MATCHING
extern char sCameraModeNames[21][12];
extern char sCameraSettingNames[66][12];
extern s32 D_8011DB14;
s32 Camera_ChangeMode(Camera* camera, s16 mode, u8 arg2) {
    s32 phi_v0;
    u32 temp_t8;
    s32 phi_at;

    if (QREG(89)) {
        osSyncPrintf("+=+(%d)+=+ recive request -> %s\n", camera->globalCtx->state.frames, sCameraModeNames[mode]);
    }

    if ((camera->unk_14C & 0x20) && (arg2 == 0)) {
        camera->unk_14A |= 0x20;
        return -1;
    } else if (!(D_8011D064[camera->setting].validModes & (1 << mode))) {
        if (mode == 6) {
            camera = camera;
            osSyncPrintf("camera: error sound\n", camera);
            func_80078884(NA_SE_SY_ERROR);
        }
        if (camera->mode != CAM_MODE_NORMAL) {
            osSyncPrintf("\x1b[43;30mcamera: change camera mode: force NORMAL: %s %s refused\n\x1b[m",
                         sCameraSettingNames[camera->setting], sCameraModeNames[mode]);
            camera->mode = CAM_MODE_NORMAL;
            func_80045128(camera, camera->mode);
            func_8005A02C(camera);
            phi_at = 0xC0000000;
        } else {
            camera->unk_14A = (s16)(camera->unk_14A | 0x20);
            camera->unk_14A = (s16)(camera->unk_14A | 2);
            return 0;
        }
    } else if ((mode == camera->mode) && (arg2 == 0)) {
        camera->unk_14A |= 0x20;
        camera->unk_14A |= 2;
        return -1;
    } else {
        camera->unk_14A |= 0x20;
        camera->unk_14A |= 2;
        camera = camera;
        func_80045128(camera, mode);
        temp_t8 = mode - 1;
        phi_v0 = 0;
        switch (mode) {
            default:
                break;
            case 5: // switch 1
                phi_v0 = 0x20;
                break;
            case 3: // switch 1
                phi_v0 = 4;
                break;
            case 1: // switch 1
                phi_v0 = 0;
                if (camera->unk_A8 != NULL) {
                    phi_v0 = 0;
                    if (camera->unk_A8->id != ACTOR_EN_BOOM) {
                        phi_v0 = 8;
                    }
                }
                break;
            case 0:  // switch 1
            case 2:  // switch 1
            case 7:  // switch 1
            case 14: // switch 1
            case 18: // switch 1
                phi_v0 = 2;
                break;
        }

        switch (camera->mode) {
            default:
                break;
            case 6: // switch 2
                if ((phi_v0 & 0x20) != 0) {
                    camera->unk_15E = (u16)0xAU;
                }
                break;
            case 1: // switch 2
                if ((phi_v0 & 0x10) != 0) {
                    camera->unk_15E = (u16)0xAU;
                }
                phi_v0 |= 1;
                break;
            case 17: // switch 2
                phi_v0 |= 1;
                break;
            case 2: // switch 2
                if ((phi_v0 & 8) != 0) {
                    camera->unk_15E = (u16)0xAU;
                }
                phi_v0 |= 1;
                break;
            case 4: // switch 2
                if ((phi_v0 & 4) != 0) {
                    camera->unk_15E = (u16)0xAU;
                }
                phi_v0 |= 1;
                break;
            case 8:  // switch 2
            case 15: // switch 2
            case 19: // switch 2
                phi_v0 |= 1;
                break;
            case 0: // switch 2
                if ((phi_v0 & 0x10) != 0) {
                    camera->unk_15E = (u16)0xAU;
                }
                break;
        }
        phi_v0 &= ~0x10;
        D_8011DB14 = phi_v0;
        if (camera->status == 7) {
            switch (phi_v0) {
                case 1:
                    func_80078884(NA_SE_PL_WALK_GROUND);
                    break;
                case 2:
                    if (1 == camera->globalCtx->roomCtx.curRoom.unk_03) {
                        func_80078884(NA_SE_SY_ATTENTION_URGENCY);
                    } else {
                        func_80078884(NA_SE_SY_ATTENTION_ON);
                    }
                    break;
                case 4:
                    func_80078884(NA_SE_SY_ATTENTION_URGENCY);
                    break;
                case 8:
                    func_80078884(NA_SE_SY_ATTENTION_ON);
                    break;
            }
        }
        func_8005A02C(camera);
        camera->mode = mode;
        phi_at = 0x80000000;
    }
    return mode | phi_at;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_ChangeMode.s")
#endif

void func_8005A444(Camera* camera, s16 arg1) {
    Camera_ChangeMode(camera, arg1, 0);
}

s32 func_8005A470(Camera *camera, s16 arg1) {
    s32 phi_return;

    if (QREG(89) != 0) {
        osSyncPrintf("+=+=+=+ recive asking -> %s (%s)\n", sCameraModeNames[arg1], sCameraSettingNames[camera->setting]);
    }
    if (!(D_8011D064[camera->setting].validModes & (1 << arg1))) {
        return 0;
    } else if(arg1 == camera->mode){
        return -1;
    } else {
        return arg1 | 0x80000000;
    }
}

#ifdef NON_MATCHING
s16 Camera_ChangeSetting(Camera *camera, s16 setting, s16 arg2) {
    s16 temp_t1;
    u32 t;

    if ((camera->unk_14A & 1) && (((D_8011D064[camera->setting].unk_00 & 0xF000000) >> 0x18) >= (D_8011D064[setting].unk_00 & 0xF000000) >> 0x18)){
        camera->unk_14A |= 0x10;
        return -2;
    }

    if ((setting == CAM_SET_SPOT05A || setting == CAM_SET_SPOT05B) && LINK_IS_ADULT && (camera->globalCtx->sceneNum == 0x56)) {
        camera->unk_14A |= 0x10;
        return -5;
    }

    if (setting == CAM_SET_NONE || setting >= CAM_SET_MAX) {
        osSyncPrintf("\x1b[41;37mcamera: error: illegal camera set (%d) !!!!\n\x1b[m", setting);
        return -0x63;
    }

    if (setting == camera->setting && !(arg2 & 1)) {
        camera->unk_14A |= 0x10;
        if (!(arg2 & 2)) {
            camera->unk_14A |= 1;
        }
        return -1;
    }

    camera->unk_14A |= 0x10;

    if (!(arg2 & 2)) {
        camera->unk_14A |= 1;
    }

    camera->unk_14C |= (0x8 | 0x4);
    camera->unk_14C &= ~(0x1000 | 0x8);

    t = 0x40000000;

    if (!(D_8011D064[camera->setting].unk_bit1)) {
        camera->unk_154 = camera->setting;
    }
    if (arg2 & 8) {
        camera->unk_148 = camera->unk_166;
        camera->unk_166 = -1;
    } else if (!(arg2 & 4)) {
        if (!(D_8011D064[camera->setting].unk_00 & t)) {
            camera->unk_166 = camera->unk_148;
        }
        camera->unk_148 = -1;
    }

    camera->setting = setting;

    if (Camera_ChangeMode(camera, camera->mode, 1) >= 0) {
        func_80045128(camera, camera->mode);
    }

    osSyncPrintf("\x1b[1m%06u:\x1b[m camera: change camera[%d] set %s\n", camera->globalCtx->state.frames, camera->unk_164, sCameraSettingNames[camera->setting]);

    return setting;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_ChangeSetting.s")
#endif

s32 func_8005A77C(Camera* camera, s16 arg1) {
    return Camera_ChangeSetting(camera, arg1, 0);
}

#ifdef NON_MATCHING
s16 func_8005A7A8(Camera *arg0, s32 arg1) {
    s16 temp_v0;
    s16 temp_v1;

    if (arg1 == -1 || arg1 == arg0->unk_148) {
        arg0->unk_14A |= 0x40;
        return -1;
    } else if (!(arg0->unk_14A & 0x40)) {
        temp_v0 = func_80044740(arg0, arg1);
        arg0->unk_14A |= 0x40;
        temp_v1 = (Camera_ChangeSetting(arg0, temp_v0, 5) < 0) ^ 1;
        if ((temp_v1 != 0) || D_8011D064[arg0->setting].unk_00 & 0x80000000) {
            arg0->unk_148 = arg1;
            arg0->unk_14A |= 4;
            func_80045128(arg0, arg0->mode);
        } else if (temp_v1 < -1) {
            osSyncPrintf("\x1b[41;37mcamera: error: illegal camera ID (%d) !! (%d|%d|%d)\n\x1b[m", arg1, arg0->unk_164, 0x32, temp_v0);
        }
        return temp_v1;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005A7A8.s")
#endif

#ifdef NON_MATCHING
// this code uses lw, then lhu.  D_8015CD46 is probably part of a struct.
Vec3s *func_8005A8C4(Vec3s *arg0, Camera *camera) {
    if (D_8011D394 != 0) {
        *arg0 = D_8015CE46;
        return arg0;
    } else {
        *arg0 = camera->unk_134;
        return arg0;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005A8C4.s")
#endif

s16 func_8005A948(Camera* camera) {
    Vec3s sp18;

    func_8005A8C4(&sp18, camera);
    return sp18.y;
}

#ifdef NON_MATCHING
// Same issue as func_8005A8C4
Vec3s* func_8005A970(Vec3s *arg0, Camera *arg1) {
    if (D_8011D394 != 0) {
        *arg0 = D_8015CE46;
        return arg0;
    } else {
        *arg0 = arg1->unk_13A;
        return arg0;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005A970.s")
#endif

s16 func_8005A9CC(s32 arg0) {
    Vec3s sp18;

    func_8005A970(&sp18, arg0);
    return sp18.x;
}

s16 func_8005A9F4(Camera* camera) {
    Vec3s sp18;

    func_8005A970(&sp18, camera);
    return sp18.y;
}

s32 func_8005AA1C(Camera *camera, s32 arg1, s16 y, s32 countdown) {
    s16 quakeIdx;

    quakeIdx = Quake_Add(camera, 3);
    if (quakeIdx == 0) {
        return 0;
    }
    Quake_SetSpeed(quakeIdx, 0x61A8);
    Quake_SetQuakeValues(quakeIdx, y, 0, 0, 0);
    Quake_SetCountdown(quakeIdx, countdown);
    return 1;
}

#ifdef NON_MATCHING
// additional move v0, zero added.
s32 func_8005AA90(Camera* camera, s32 param, void* value) {
    s32 pad;
    Vec3f sp4;

    if (value != NULL) {
        switch (param) {
            case 1:
                camera->unk_15C &= ~0x19;
                camera->at = *(Vec3f*)value;
                break;
            case 16:
                camera->unk_15C &= ~0x19;
                camera->unk_AC = *(Vec3f*)value;
                break;
            case 8:
                if (camera->setting == CAM_SET_DEMOC || camera->setting == CAM_SET_DEMO4) {
                    break;
                }
                camera->unk_A8 = (Actor*)value;
                camera->unk_15C &= ~0x19;
                break;
            case 2:
                sp4 = *(Vec3f*)value;
                camera->unk_74 = sp4;
                camera->eye = sp4;
                break;
            case 4:
                camera->unk_68 = *(Vec3f*)value;
                break;
            case 0x40:
                camera->unk_15A = *(f32*)value * (M_PI / 180.0f) + 0.5f;
                break;
            case 32:
                camera->unk_FC = *(f32*)value;
                break;
            case 3:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
                return false;
            default:
                return false;
        }
        camera->unk_15C |= param;
        return true;
    } else {
        return false;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_8005AA90.s")
#endif

s32 func_8005AC24(Camera* camera, s16 arg1){
    camera->unk_15C &= ~arg1;
    return true;
}

s32 func_8005AC48(Camera* camera, s16 arg1) {
    camera->unk_14C = arg1;
    return 1;
}

s32 func_8005AC60(Camera* camera) {
    camera->unk_15E = 0;
    return 1;
}

s32 func_8005AC6C(Camera* camera, s32 arg1, s32 arg2, Player* player, s16 arg4) {
    PosRot sp24;

    camera->unk_124 = arg1;
    camera->unk_128 = arg2;
    camera->unk_12C = arg4;

    if (camera->unk_12C != 0) {
        camera->player = player;
        func_8002EF44(&sp24, &player->actor);
        camera->unk_94 = sp24;

        camera->unk_156 = -1;
        camera->unk_D8 = 0.0f;
        camera->unk_E0 = 0.0f;
    }

    return 1;
}

s16 func_8005ACFC(Camera* camera, s16 arg1) {
    camera->unk_14C |= arg1;
    return camera->unk_14C;
}

s16 func_8005AD1C(Camera* camera, s16 arg1) {
    camera->unk_14C &= ~arg1;
    return camera->unk_14C;
}

s32 func_8005AD40(Camera* camera, s32 arg1, s16 arg2, f32 arg3, s16 arg4, s16 arg5, s16 arg6) {
    if ((camera->setting == CAM_SET_DEMO4) || (camera->setting == CAM_SET_DOORC)) {
        return 0;
    }

    camera->unk_00.w = arg1;
    camera->unk_06 = arg4;
    camera->unk_08 = arg5;
    camera->unk_0A = arg6;
    camera->unk_04 = arg2;

    if (arg2 == -99) {
        func_80045128(camera, camera->mode);
        return -99;
    }

    if (arg2 == -1) {
        func_8005A77C(camera, CAM_SET_DOORC);
        osSyncPrintf(".... change default door camera (set %d)\n", CAM_SET_DOORC);
    } else {
        s32 ret = func_80044740(camera, arg2);
        camera->unk_14A |= 0x40;

        if (func_8005A77C(camera, ret) >= 0) {
            camera->unk_148 = arg2;
            camera->unk_14A |= 4;
        }

        osSyncPrintf("....change door camera ID %d (set %d)\n", camera->unk_148, camera->setting);
    }

    func_80045128(camera, camera->mode);
    return -1;
}

s32 func_8005AE64(Camera* camera, Camera* otherCamera) {
    s32 unused;
    Vec3f sp30;

    camera->unk_E4.x = 0.0f;
    camera->unk_E4.y = 0.0f;
    camera->unk_E4.z = 0.0f;
    camera->unk_100 = 0.1f;
    camera->at = otherCamera->at;

    sp30 = otherCamera->eye;
    camera->unk_74 = sp30;
    camera->eye = sp30;

    camera->unk_DC = func_8007BF90(&camera->at, &camera->eye);
    camera->unk_FC = otherCamera->unk_FC;
    camera->unk_15A = otherCamera->unk_15A;
    func_80043B60(camera);

    if (camera->player != NULL) {
        func_8002EF14(&camera->unk_94, &camera->player->actor);
        camera->unk_E4.x = camera->at.x - camera->unk_94.pos.x;
        camera->unk_E4.y = camera->at.y - camera->unk_94.pos.y;
        camera->unk_E4.z = camera->at.z - camera->unk_94.pos.z;
        camera->unk_DC = func_8007BF90(&camera->unk_94.pos, &camera->eye);
        camera->unk_CC.x = 1.0f;
        camera->unk_CC.y = 1.0f;
    }
    return 1;
}

s32 func_8005AFA8() {
    return D_8011D394;
}

Vec3f* func_8005AFB4(Vec3f* dst, Camera* camera) {
    *dst = camera->unk_80;
    return dst;
}

void Camera_SetCameraData(Camera* camera, s16 arg1, s32 arg2, s32 arg3, s16 arg4, s16 arg5) {
    if (arg1 & 0x1) {
        camera->unk_124 = arg2;
    }

    if (arg1 & 0x2) {
        camera->unk_128 = arg3;
    }

    if (arg1 & 0x4) {
        camera->unk_12C = arg4;
    }

    if (arg1 & 0x8) {
        camera->unk_12E = arg5;
    }

    if (arg1 & 0x10) {
        osSyncPrintf(VT_COL(RED, WHITE) "camera: setCameraData: last argument not alive!\n" VT_RST);
    }
}

s32 func_8005B044() {
    if (QREG(0) == 0) {
        QREG(2) = 1;
        QREG(10) = -1;
        QREG(11) = 100;
        QREG(12) = 80;
        QREG(20) = 90;
        QREG(21) = 10;
        QREG(22) = 10;
        QREG(23) = 50;
        QREG(24) = 6000;
        QREG(25) = 240;
        QREG(26) = 40;
        QREG(27) = 85;
        QREG(28) = 55;
        QREG(29) = 87;
        QREG(30) = 23;
        QREG(31) = 20;
        QREG(32) = 4;
        QREG(33) = 5;
        QREG(50) = 1;
        QREG(51) = 20;
        QREG(52) = 200;
        QREG(53) = 1;
        QREG(54) = 15;
        QREG(55) = 60;
        QREG(56) = 15;
        QREG(57) = 30;
        QREG(58) = 0;
    }

    QREG(65) = 50;
    return 1;
}

s32 func_8005B198() {
    return D_8011D3AC;
}

s16 func_8005B1A4(Camera* camera) {
    camera->unk_14C |= 0x8;

    if ((camera->unk_164 == 0) && (camera->globalCtx->activeCamera != 0)) {
        camera->globalCtx->cameraPtrs[camera->globalCtx->activeCamera]->unk_14C |= 0x8;
        return camera->globalCtx->activeCamera;
    }

    return camera->unk_164;
}
