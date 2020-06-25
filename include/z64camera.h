#ifndef _Z64CAMERA_H_
#define _Z64CAMERA_H_

#include <ultra64.h>
#include <z64cutscene.h>

typedef struct {
    /* 0x0000 */ f32 unk_00;
    /* 0x0004 */ f32 unk_04;
    /* 0x0008 */ s16 unk_08;
} Special9; // size = 0xC

typedef struct {
    /* 0x0000 */ struct Actor* door;
    /* 0x0004 */ s16 unk_04;
    /* 0x0006 */ s16 unk_06;
    /* 0x0008 */ s16 unk_08;
    /* 0x000A */ s16 unk_0A;
    /* 0x000C */ Special9 spec9;
    /* 0x0018 */ s16 unk_18;
} DoorCamera; // size = 0x1C

typedef struct {
    /* 0x0000 */ f32 lerpAtScale;
    /* 0x0004 */ s16 interfaceFlags;
} Special0; // size = 0x8

typedef struct {
    /* 0x0000 */ f32 curFrame;
    /* 0x0004 */ s16 keyframe;
} Demo1Anim; // size = 0x14

typedef struct {
    /* 0x0000 */ s16 interfaceFlags;
    /* 0x0004 */ Demo1Anim anim;
} Demo1; // size = 0x18

typedef struct {
    /* 0x0000 */ f32 unk_00;
    /* 0x0004 */ s16 unk_04;
    /* 0x0006 */ s16 unk_06;
    /* 0x0008 */ s16 unk_08;
    /* 0x000A */ s16 unk_0A;
} Demo9Anim; // size = 0xC

typedef struct {
    /* 0x0000 */ CutsceneCameraPoint* unk_00;
    /* 0x0004 */ CutsceneCameraPoint *unk_04;
    /* 0x0008 */ s16 unk_08;
    /* 0x000A */ s16 unk_0A;
    /* 0x000C */ s16 interfaceFlags;
    /* 0x0010 */ Demo9Anim anim;
} Demo9;

typedef struct {
    /* 0x0000 */ Vec3f unk_00;
    /* 0x000C */ s32 unk_0C;
    /* 0x0010 */ f32 unk_10;
    /* 0x0014 */ s16 unk_14;
    /* 0x0016 */ s16 unk_16;
    /* 0x0018 */ s16 unk_18;
    /* 0x001A */ s16 unk_1A;
    /* 0x001C */ f32 unk_1C;
    /* 0x0020 */ s16 unk_20;
    /* 0x0022 */ s16 unk_22;
    /* 0x0024 */ s16 unk_24;
    /* 0x0026 */ s16 unk_26;
    /* 0x0028 */ s16 unk_28;
    /* 0x002A */ s16 unk_2A;
} Normal3_Unk20; // size = 0x2C

typedef struct {
    /* 0x0000 */ f32 unk_00;
    /* 0x0004 */ f32 unk_04; // distance
    /* 0x0008 */ f32 unk_08;
    /* 0x000C */ f32 unk_0C;
    /* 0x0010 */ f32 unk_10;
    /* 0x0014 */ f32 unk_14; // fov
    /* 0x0018 */ f32 unk_18;
    /* 0x001C */ s16 unk_1C; // theta
    /* 0x001E */ s16 unk_1E;
    /* 0x0020 */ Normal3_Unk20 unk_20;
} Normal3; // size = 0x4C

typedef struct {
    Vec3f unk_00;
    Vec3f unk_0C;
    f32 unk_18;
    f32 unk_1C;
    s16 unk_20;
    s16 unk_22;
    f32 unk_24;
    s16 unk_28;
} Normal2_20;

typedef struct {
    Vec3f unk_00;
    f32 unk_0C;
    f32 unk_10;
    f32 unk_14;
    f32 unk_18;
    s16 unk_1C;
    s16 unk_1E;
    Normal2_20 unk_20;
} Normal2;

typedef struct {
    /* 0x0000 */ PosRot eyePosRot;
    /* 0x0014 */ char unk_14[0x8];
    /* 0x001C */ s16 fov;
    /* 0x001E */ s16 jfifId;
} Data4InitParams; // size = 0x20

typedef struct {
    /* 0x0000 */ f32 yOffset;
    /* 0x0004 */ f32 fov;
    /* 0x0008 */ s16 interfaceFlags;
    /* 0x000C */ Data4InitParams initParams;
} Data4; // size = 0x2C

typedef struct {
    /* 0x0000 */ s16 interfaceFlags;
} Unique6; // size = 0x2

typedef struct {
    s16 unk_00;
} Special4;

typedef struct {
    /* 0x0000 */ Vec3s rot;
    /* 0x0006 */ s16 fov;
    /* 0x0008 */ s16 updDirTimer;
    /* 0x000A */ s16 jfifId;
} Fixed3Anim; // size = 0xC

typedef struct {
    /* 0x000 */ s16 interfaceFlags;
    /* 0x0004 */ Fixed3Anim anim;
} Fixed3; // size = 0x10

typedef struct {
    /* 0x0000 */ Vec3f eye;
    /* 0x000C */ s16 fov;
} Fixed2_InitParams; // size = 0xE

typedef struct {
    /* 0x0000 */ f32 yOffset;
    /* 0x0004 */ f32 eyeStepScale;
    /* 0x0008 */ f32 posStepScale;
    /* 0x000C */ f32 fov;
    /* 0x0010 */ s16 interfaceFlags;
    /* 0x0014 */ Fixed2_InitParams initParams;
} Fixed2; // size = 0x22

typedef struct {
    /* 0x0000 */ PosRot eyePosRotTarget;
    /* 0x0014 */ s16 fov;
} Fixed1Anim; // size = 0x18

typedef struct {
    /* 0x0000 */ f32 unk_00; // seems to be unused?
    /* 0x0004 */ f32 lerpStep;
    /* 0x0008 */ f32 fov;
    /* 0x000C */ s16 interfaceFlags;
    /* 0x0010 */ Fixed1Anim anim;
} Fixed1; // size = 0x28

typedef struct {
    f32 fovTarget;
    s16 animTimer;
} KeepOn0Anim;

typedef struct {
    f32 fovScale;
    f32 thetaScale;
    s16 timerInit;
    s16 interfaceFlags;
    KeepOn0Anim anim;
} KeepOn0;

typedef struct {
    f32 unk_00;
    f32 unk_04;
    f32 unk_08;
    struct Actor *unk_0C;
    f32 unk_10;
    s16 unk_14;
    s16 unk_16;
    s16 unk_18;
    s16 unk_1A;
    s16 unk_1C;
} Battle1_Unk30;

typedef struct {
    f32 unk_00;
    f32 unk_04;
    f32 unk_08;
    f32 unk_0C;
    f32 unk_10;
    f32 unk_14;
    f32 unk_18;
    f32 unk_1C;
    f32 unk_20;
    f32 unk_24;
    f32 unk_28;
    s16 unk_2C;
    Battle1_Unk30 unk_30;
} Battle1;

typedef struct {
    /* 0x0000 */ Vec3f unk_00;
    /* 0x000C */ s32 unk_0C;
    /* 0x0010 */ f32 unk_10;
    /* 0x0014 */ s16 phiTarget;
    /* 0x0016 */ s16 thetaTarget;
    /* 0x0018 */ s16 updateRot;
    /* 0x001A */ s16 animTimer;
    /* 0x001C */ f32 unk_1C;
    /* 0x0020 */ VecSph unk_20;
} Jump1_Anim; // size = 0x28

typedef struct {
    /* 0x0000 */ f32 atYOffset;
    /* 0x0004 */ f32 distMin;
    /* 0x0008 */ f32 distMax;
    /* 0x000C */ f32 thetaUpateRateTarget;
    /* 0x0010 */ f32 maxThetaUpdate;
    /* 0x0014 */ f32 unk_14; // never used.  
    /* 0x0018 */ f32 atLERPScaleMax;
    /* 0x001C */ s16 interfaceFlags;
    /* 0x0020 */ Jump1_Anim anim;
} Jump1; // size 0x48

typedef struct {
    f32 unk_00;
    s16 unk_04;
    s16 unk_06;
    s16 unk_08;
    s16 unk_0A;
    s16 unk_0C;
} Jump2_Unk24;

typedef struct {
    /* 0x0000 */ f32 unk_00;
    /* 0x0004 */ f32 unk_04;
    /* 0x0008 */ f32 unk_08;
    /* 0x000C */ f32 unk_0C;
    /* 0x0010 */ f32 unk_10;
    /* 0x0014 */ f32 unk_14;
    /* 0x0018 */ f32 unk_18;
    /* 0x001C */ f32 unk_1C;
    /* 0x0020 */ s16 unk_20;
    /* 0x0024 */ Jump2_Unk24 unk_24;
} Jump2; // size = 0x22

typedef struct {
    Vec3f unk_00;
    s32 unk_0C;
    f32 unk_10;
    s16 unk_14;
    s16 unk_16;
    s16 unk_18;
    s16 unk_1A;
    f32 unk_1C;
    s16 unk_20;
    s16 unk_22;
} Jump3_Unk24;

typedef struct {
    f32 unk_00;
    f32 unk_04;
    f32 unk_08;
    f32 unk_0C;
    f32 unk_10;
    f32 unk_14;
    f32 unk_18;
    f32 unk_1C;
    s16 unk_20;
    s16 unk_22;
    Jump3_Unk24 unk_24;
} Jump3;

typedef struct {
    /* 0x0000 */ Vec3f unk_00;
    /* 0x000C */ f32 yTarget;
    /* 0x0010 */ s16 unk_10;
    /* 0x0012 */ s16 thetaTarget;
    /* 0x0014 */ s16 phiTarget;
    /* 0x0016 */ s16 unk_16;
    /* 0x0018 */ s16 animTimer;
} Parallel1Anim; // size = 0x1A

typedef struct {
    /* 0x0000 */ f32 unk_00;
    /* 0x0004 */ f32 distTarget;
    /* 0x0008 */ f32 unk_08;
    /* 0x000C */ f32 unk_0C;
    /* 0x0010 */ f32 fovTarget;
    /* 0x0014 */ f32 unk_14;
    /* 0x0018 */ f32 unk_18;
    /* 0x001C */ f32 unk_1C;
    /* 0x0020 */ s16 phiTarget;
    /* 0x0022 */ s16 thetaTarget;
    /* 0x0024 */ s16 interfaceFlags;
    /* 0x0028 */ Parallel1Anim anim;
} Parallel1;

typedef struct {
    Vec3f unk_00;
    s32 unk_0C;
    f32 unk_10;
    s16 unk_14;
    s16 unk_16;
    s16 unk_18;
    s16 unk_1A;
    f32 unk_1C;
    f32 unk_20;
    s16 unk_24;
    s16 unk_26;
    s16 unk_28;
    s16 unk_2A;
} Normal1_Unk24;

typedef struct {
    f32 unk_00;
    f32 unk_04;
    f32 unk_08;
    f32 unk_0C;
    f32 unk_10;
    f32 unk_14;
    f32 unk_18;
    f32 unk_1C;
    s16 unk_20;
    s16 unk_22;
    Normal1_Unk24 unk_24;
} Normal1;

typedef struct {
    /* 0x0000 */ Vec3f unk_00;
    /* 0x000C */ s16 unk_0C;
    /* 0x0010 */ Linef unk_10;
} Unique0_Unk10; // size = 0x28

typedef struct {
    /* 0x0000 */ char unk_00[0x6];
    /* 0x0006 */ s16 unk_06;
    /* 0x0008 */ s16 unk_08;
    /* 0x000A */ s16 unk_0A;
    /* 0x000C */ s16 unk_0C;
    /* 0x0010 */ Unique0_Unk10 unk_10;
    char pad[0x18];
} Unique0; // size = 0x38

typedef struct {
    /* 0x0000 */ f32 unk_00;
    /* 0x0004 */ s16 unk_04;
    /* 0x0006 */ s16 unk_06;
    /* 0x0008 */ s16 unk_08;
} Unique1_Unk1C; // size = 0xA

typedef struct {
    /* 0x0000 */ f32 unk_00;
    /* 0x0004 */ f32 unk_04;
    /* 0x0008 */ f32 unk_08;
    /* 0x000C */ char unk_0C[4];
    /* 0x0010 */ f32 unk_10;
    /* 0x0014 */ f32 unk_14;
    /* 0x0018 */ s16 unk_18;
    /* 0x001A */ s16 unk_1A;
    /* 0x001C */ Unique1_Unk1C unk_1C;
} Unique1; // size = 0x26

typedef struct {
    /* 0x0000 */ f32 unk_00;
    /* 0x0004 */ s16 unk_04;
} Unique2_Unk10; // size = 0x6

typedef struct {
    /* 0x0000 */ f32 unk_00;
    /* 0x0004 */ f32 unk_04;
    /* 0x0008 */ f32 unk_08;
    /* 0x000C */ s16 unk_0C;
    /* 0x0010 */ Unique2_Unk10 unk_10;
} Unique2; // size = 0x6

typedef struct {
    f32 unk_00;
    f32 unk_04;
} Unique3_Unk18;

typedef struct {
    f32 unk_00;
    f32 unk_04;
    s16 unk_08;
} Unique3_UnkC;

typedef struct {
    /* 0x0000 */ char unk_00[6];
    /* 0x0006 */ s16 unk_06;
    /* 0x0008 */ s16 unk_08;
    /* 0x000A */ s16 unk_0A;
    /* 0x000C */ Unique3_UnkC unk_0C;
    /* 0x0018 */ Unique3_Unk18 unk_18;
} Unique3; // Size = 0x20

typedef union {
    /* 0x0000 */ Vec3s unk_00;
} Unique7_Unk8; // size = 0x6

typedef struct {
    /* 0x0000 */ f32 fov;
    /* 0x0004 */ s16 interfaceFlags;
    /* 0x0006 */ s16 align;
    // unk_08 goes unused.
    /* 0x0008 */ Unique7_Unk8 unk_08;
} Unique7; // size = 0x10

typedef struct {
    s16 unk_04;
} Demo6_Unk4;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    Demo6_Unk4 unk_04;
} Demo6;

typedef struct {
    // This appears to be a VecSph, but theta and phi are swapped
    // for some reason.
    /* 0x0000 */ f32 r;
    /* 0x0004 */ f32 theta;
    /* 0x0006 */ f32 phi;
    /* 0x0008 */ s16 animTimer;
} Subj3_Anim; // size = 0xA

typedef struct {
    /* 0x0000 */ f32 eyeNextYOffset;
    /* 0x0004 */ f32 eyeDist;
    /* 0x0008 */ f32 eyeNextDist;
    /* 0x000C */ f32 unk_0C; // unused
    /* 0x0010 */ Vec3f atOffset;
    /* 0x001C */ f32 fovTarget;
    /* 0x0020 */ s16 interfaceFlags;
    /* 0x0024 */ Subj3_Anim anim;
} Subj3; // size = 0x2E

typedef struct {
    Linef unk_00;
    f32 unk_18;
    f32 unk_20;
    f32 unk_24;
    f32 unk_28;
    VecSph unk_2C;
} Subj4_Unk04;  

typedef struct {
    s16 unk_00;
    Subj4_Unk04 unk_04;
} Subj4;

typedef struct {
    s16 unk_00;
} Special5_Unk1C;

typedef struct {
    f32 unk_00;
    f32 unk_04;
    f32 unk_08;
    f32 unk_0C;
    f32 unk_10;
    s16 unk_14;
    s16 unk_16;
    s16 unk_18;
    s16 unk_1A;
    Special5_Unk1C unk_1C;
} Special5;

typedef struct {
    Vec3f unk_00;
    f32 unk_0C;
} Fixed4_Unk14;

typedef struct {
    f32 unk_00;
    f32 unk_04;
    f32 unk_08;
    f32 unk_0C;
    s16 unk_10;
    Fixed4_Unk14 unk_14;
} Fixed4;

typedef struct {
    Vec3f unk_00;
    Actor* unk_0C;
    Vec3f unk_10;
    s16 unk_1C;
} KeepOn3_Unk2C;

typedef struct {
    f32 unk_00;
    f32 unk_04;
    f32 unk_08;
    f32 unk_0C;
    f32 unk_10;
    f32 unk_14;
    f32 unk_18;
    f32 unk_1C;
    f32 unk_20;
    f32 unk_24;
    s16 unk_28;
    s16 unk_2A;
    KeepOn3_Unk2C unk_2C;
} KeepOn3;

typedef struct {
    f32 unk_00;
    f32 unk_04;
    f32 unk_08;
    s16 unk_0C;
    s16 unk_0E;
    s16 unk_10;
    s16 unk_12;
    s16 unk_14;
} KeepOn4_Unk20;

typedef struct {
    f32 unk_00;
    f32 unk_04;
    f32 unk_08;
    f32 unk_0C;
    f32 unk_10;
    f32 unk_14;
    f32 unk_18;
    s16  unk_1C;
    s16 unk_1E;
    KeepOn4_Unk20 unk_20;
} KeepOn4;

typedef struct {
    f32 unk_00;
    s16 unk_04;
} Special6_Unk04;

typedef struct {
    s16 unk_00;
    Special6_Unk04 unk_04;
} Special6;

typedef struct {
    /* 0x0000 */ s16 idx;
} Special7; // size = 0x4

typedef struct {
    f32 unk_00;
    f32 unk_04;
    f32 unk_08;
    Actor* unk_0C;
    s16 unk_10;
    s16 unk_12;
    s16 unk_14;
    s16 unk_16;
} Keep1_Unk34;

typedef struct {
    f32 unk_00;
    f32 unk_04;
    f32 unk_08;
    f32 unk_0C;
    f32 unk_10;
    f32 unk_14;
    f32 unk_18;
    f32 unk_1C;
    f32 unk_20;
    f32 unk_24;
    f32 unk_28;
    f32 unk_2C;
    s16 unk_30;
    Keep1_Unk34 unk_34;
} KeepOn1;

typedef union {
    char data[0x50];
    s16 sh[2];
    s32 w;
    f32 f;
    DoorCamera doorCam;
    Special0 spec0;
    Demo1 demo1;
    Normal3 normal3;
    Normal2 normal2;
    Data4 data4;
    Unique6 uniq6;
    Special4 spec4;
    Fixed3 fixd3;
    Fixed2 fixd2;
    Fixed1 fixd1;
    KeepOn0 keep0;
    Jump1 jump1;
    Jump2 jump2;
    Jump3 jump3;
    Parallel1 para1;
    Normal1 norm1;
    Unique0 uniq0;
    Unique1 uniq1;
    Unique2 uniq2;
    Unique3 uniq3;
    Unique7 uniq7;
    Demo6 demo6;
    Subj3 subj3;
    Subj4 subj4;
    Special5 spec5;
    Fixed4 fixd4;
    KeepOn1 keep1;
    KeepOn3 keep3;
    KeepOn4 keep4;
    Special6 spec6;
    Special7 spec7;
    Demo9 demo9;
} CameraParams;

typedef struct {
    /* 0x0000 */ CameraParams params;
    /* 0x0050 */ Vec3f at;
    /* 0x005C */ Vec3f eye;
    /* 0x0068 */ Vec3f unk_68;
    /* 0x0074 */ Vec3f eyeNext;
    /* 0x0080 */ Vec3f skyboxOffset;
    /* 0x008C */ struct GlobalContext* globalCtx;
    /* 0x0090 */ struct Player* player;
    /* 0x0094 */ PosRot playerPosRot;
    /* 0x00A8 */ struct Actor* target;
    /* 0x00AC */ PosRot targetPosRot;
    /* 0x00C0 */ f32 rUpdateRateInv;
    /* 0x00C4 */ f32 phiUpdateRateInv;
    /* 0x00C8 */ f32 thetaUpdateRateInv;
    /* 0x00CC */ f32 xzOffsetUpdateRate;
    /* 0x00D0 */ f32 yOffsetUpdateRate;
    /* 0x00D4 */ f32 fovUpdateRate;
    /* 0x00D8 */ f32 unk_D8;
    /* 0x00DC */ f32 dist;
    /* 0x00E0 */ f32 unk_E0;
    /* 0x00E4 */ Vec3f posOffset;
    /* 0x00F0 */ Vec3f playerPosDelta;
    /* 0x00FC */ f32 fov;
    /* 0x0100 */ f32 atLERPStepScale; // update rate of distance from link?
    /* 0x0104 */ f32 unk_104;
    /* 0x0108 */ Vec3f unk_108;
    /* 0x0114 */ f32 unk_114;
    /* 0x0118 */ s32 unk_118;
    /* 0x011C */ s32 unk_11C;
    /* 0x0120 */ char unk_120[0x4];
    /* 0x0124 */ CutsceneCameraPoint* atPoints;
    /* 0x0128 */ CutsceneCameraPoint* eyePoints;
    /* 0x012C */ s16 unk_12C;
    /* 0x012E */ s16 unk_12E;
    /* 0x0130 */ s16 uid;    // Unique identifier of the camera.
    /* 0x0132 */ char unk_132[0x02];
    /* 0x0134 */ Vec3s direction;
    /* 0x013A */ Vec3s realDir; // updated regardless of sUpdateCameraDirection
    /* 0x0140 */ s16 status;
    /* 0x0142 */ s16 setting; // referred to as set
    /* 0x0144 */ s16 mode;
    /* 0x0146 */ s16 unk_146; // unknown if used
    /* 0x0148 */ s16 camDataIdx;
    /* 0x014A */ s16 unk_14A; // unknown if used
    /* 0x014C */ s16 unk_14C;
    /* 0x014E */ s16 childCamIdx;
    /* 0x0150 */ s16 unk_150; // unknown if used
    /* 0x0152 */ s16 unk_152;
    /* 0x0154 */ s16 prevSetting; // appears to be some clone of setting?
    /* 0x0156 */ s16 unk_156;
    /* 0x0158 */ s16 unk_158; // unknown if used
    /* 0x015A */ s16 roll;
    /* 0x015C */ s16 paramFlags;
    /* 0x015E */ s16 animState;
    /* 0x0160 */ s16 unk_160;
    /* 0x0162 */ s16 parentCamIdx;
    /* 0x0164 */ s16 thisIdx;
    /* 0x0166 */ s16 prevCamDataIdx;
    /* 0x0168 */ s16 unk_168;
    /* 0x016A */ s16 unk_16A; // unknown if used
} Camera; // size = 0x16C

/**
 * Debug Camera
*/
typedef struct {
    /* 0x0000 */ UNK_TYPE unk_00;
    /* 0x0004 */ Vec3f at;
    /* 0x0010 */ Vec3f eye;
    /* 0x001C */ Vec3f unk_1C;
    /* 0x0028 */ Vec3f unk_28;
    /* 0x0034 */ UNK_TYPE unk_34;
    /* 0x0038 */ UNK_TYPE unk_38;
    /* 0x003C */ UNK_TYPE unk_3C;
    /* 0x0040 */ UNK_TYPE unk_40;
    /* 0x0044 */ UNK_TYPE unk_44;
    /* 0x0048 */ f32 fov;
    /* 0x004C */ s16 unk_4C;
    /* 0x0050 */ f32 unk_50;
    /* 0x0054 */ Vec3f unk_54;
    /* 0x0054 */ Vec3f unk_60;
    /* 0x006C */ f32 unk_6C;
    /* 0x0070 */ f32 unk_70;
    /* 0x0074 */ f32 unk_74;
    /* 0x0078 */ s16 unk_78;
    /* 0x007A */ s16 unk_7A;
    /* 0x007C */ s16 unk_7C;
    /* 0x007E */ s16 unk_7E;
    /* 0x0080 */ s16 unk_80;
    /* 0x0082 */ s16 unk_82;
    /* 0x0084 */ s16 unk_84;
    /* 0x0086 */ s16 unk_86;
    /* 0x0088 */ s32 unk_88;
    /* 0x008A */ char unk_8C[0x1034];
    /* 0x10C0 */ Vec3s unk_10C0;
    /* 0x10C6 */ Vec3s unk_10C6;
} DBCamera; // size = 0x10CC

#endif
