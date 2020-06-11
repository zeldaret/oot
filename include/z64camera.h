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
    f32 unk_00;
    s16 unk_04;
} Special0;

typedef struct {
    /* 0x0000 */ f32 unk_00;
    /* 0x0004 */ s16 unk_04;
} Demo1_unk_04; // size = 0x14

typedef struct {
    /* 0x0000 */ s16 unk_00;
    /* 0x0002 */ s16 unk_02;
    /* 0x0004 */ Demo1_unk_04 unk_04;
} Demo1; // size = 0x18

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
    Vec3f eye;
    Vec3s rot;
    char unk_12[0xA];
    s16 fov;
    s16 jfifId;
} Data4_InitParams;

typedef struct {
    f32 unk_00;
    f32 fov;
    s16 unk_08;
    Data4_InitParams initParams;
} Data4;

typedef struct {
    s16 unk_00;
} Unique6;

typedef struct {
    s16 unk_00;
} Special4;

typedef struct {
    Vec3s rot;
    s16 fov;
    s16 updDirTimer;
    s16 jfifId;
} Fixed3_UpdateParams;

typedef struct {
    s16 interfaceFlags;
    Fixed3_UpdateParams updateParams;
} Fixed3;

typedef struct {
    /* 0x0000 */ Vec3f eye;
    /* 0x000C */ s16 fov;
} Fixed2_InitParams; // size = 0xE

typedef struct {
    /* 0x0000 */ Vec3f unk_00;
    /* 0x000C */ f32 fov;
    /* 0x0010 */ s16 unk_10;
    /* 0x0014 */ Fixed2_InitParams initParams;
} Fixed2; // size = 0x22

typedef struct {
    /* 0x0000 */ Vec3f eyePos;
    /* 0x000C */ Vec3s eyeRot;
    /* 0x0012 */ s16 unk_12;
    /* 0x0014 */ s16 fov;
} Fixed1_InitParams; // size = 0x18

typedef struct {
    /* 0x0000 */ f32 unk_00; // seems to be unused?
    /* 0x0004 */ f32 rotStep;
    /* 0x0008 */ f32 fov;
    /* 0x000C */ s16 unk_0C;
    /* 0x0010 */ Fixed1_InitParams initParams;
} Fixed1; // size = 0x28

typedef struct {
    f32 unk_00;
    s16 unk_04;
} KeepOn0_UnkC;

typedef struct {
    f32 unk_00;
    f32 unk_04;
    s16 unk_08;
    s16 unk_0A;
    KeepOn0_UnkC unk_0C;
} KeepOn0;

typedef struct {
    char unk_00[0x14];
    s32 unk_14;
} KeepOn4_Unk20;

typedef struct {
    f32 unk_00;
    f32 unk_04;
    f32 unk_08;
    f32 unk_0C;
    f32 unk_10;
    f32 unk_14;
    f32 unk_18;
    s16 unk_1C;
    s16 unk_1E;
    KeepOn4_Unk20 unk_20;
    char pad[0x18];
} KeepOn4;

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
    /* 0x0014 */ s16 unk_14;
    /* 0x0016 */ s16 unk_16;
    /* 0x0018 */ s16 unk_18;
    /* 0x001A */ s16 unk_1A;
    /* 0x001C */ f32 unk_1C;
    /* 0x0020 */ f32 unk_20;
    /* 0x0024 */ s16 unk_24;
    /* 0x0026 */ s16 unk_26;
} Jump1_Unk20;

typedef struct {
    f32 unk_00;
    f32 unk_04;
    f32 unk_08;
    f32 unk_0C;
    f32 unk_10;
    f32 unk_14;
    f32 unk_18;
    s16 unk_1C;
    Jump1_Unk20 unk_20;
} Jump1;

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

typedef struct {
    Vec3s unk_00;
} Unique7_Unk8;

typedef struct {
    f32 unk_00;
    s16 unk_04;
    s16 unk_06;
    Unique7_Unk8 unk_08;
} Unique7;

typedef struct {
    s16 unk_04;
} Demo6_Unk4;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    Demo6_Unk4 unk_04;
} Demo6;

typedef struct {
    f32 unk_00;
    s16 unk_04;
    s16 unk_06;
    s16 unk_08;
} Subj3_Unk24;

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
    Subj3_Unk24 unk_24;
} Subj3;

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
} CameraParams;

typedef struct {
    /* 0x0000 */ CameraParams params;
    /* 0x0050 */ Vec3f at;
    /* 0x005C */ Vec3f eye;
    /* 0x0068 */ Vec3f unk_68;
    /* 0x0074 */ Vec3f eyeNext;
    /* 0x0080 */ Vec3f unk_80;
    /* 0x008C */ struct GlobalContext* globalCtx;
    /* 0x0090 */ struct Player* player;
    /* 0x0094 */ PosRot playerPosRot;
    /* 0x00A8 */ struct Actor* target;
    /* 0x00AC */ PosRot targetPosRot;
    /* 0x00C0 */ Vec3f unk_C0; // has to do with how quickly the camera rotates link.
    /* 0x00CC */ Vec3f unk_CC; // has to do with how quickly the camera zooms
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
    /* 0x012C */ s16 relativeToPlayer; // camera Cutscene points are relative to player's position
    /* 0x012E */ s16 unk_12E;
    /* 0x0130 */ s16 uid;    // Unique identifier of the camera.
    /* 0x0132 */ char unk_132[0x02];
    /* 0x0134 */ Vec3s direction;
    /* 0x013A */ Vec3s unk_13A; // seems to be a copy of direction, but unused for anything different?
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
    /* 0x0154 */ u16 unk_154; // appears to be some clone of setting?
    /* 0x0156 */ s16 unk_156;
    /* 0x0158 */ s16 unk_158; // unknown if used
    /* 0x015A */ s16 roll;
    /* 0x015C */ s16 paramFlags;
    /* 0x015E */ s16 animState;
    /* 0x0160 */ s16 unk_160;
    /* 0x0162 */ s16 parentCamIdx;
    /* 0x0164 */ s16 thisIdx;
    /* 0x0166 */ s16 unk_166; // unknown if used
    /* 0x0168 */ s16 unk_168;
    /* 0x016A */ s16 unk_16A; // unknown if used
} Camera; // size = 0x16C

#endif
