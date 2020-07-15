#ifndef _Z64CAMERA_H_
#define _Z64CAMERA_H_

#include <ultra64.h>
#include <z64cutscene.h>

typedef struct {
    /* 0x0000 */ CutsceneCameraPoint* atPoints;
    /* 0x0004 */ CutsceneCameraPoint* eyePoints;
    /* 0x0008 */ s16 actionParameters;
    /* 0x000A */ s16 initTimer;
} OnePointDemoCamera; // size = 0xC

typedef struct {
    /* 0x0000 */ struct Actor* actor;
    /* 0x0004 */ s16 unk_04;
    /* 0x0006 */ s16 unk_06;
    /* 0x0008 */ s16 unk_08;
    /* 0x000A */ s16 unk_0A;
} PersonalizeParams; // size = 0xC

typedef struct {
    /* 0x0000 */ s16 unk_00;
} Special9_Unk18; // size = 0x2

typedef struct {
    /* 0x0000 */ f32 unk_00;
    /* 0x0004 */ f32 unk_04;
    /* 0x0008 */ s16 unk_08;
    /* 0x000C */ Special9_Unk18;
} Special9; // size = 0x10

typedef struct {
    /* 0x0000 */ PersonalizeParams* personalizeParams;
    /* 0x000C */ Special9 spec9;
} PersonalizedDoor; // size = 0x1C

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
    /* 0x0000 */ f32 curFrame;
    /* 0x0004 */ s16 keyframe;
    /* 0x0006 */ s16 doLERPAt;
    /* 0x0008 */ s16 finishAction;
    /* 0x000A */ s16 animTimer;
} Demo9Anim; // size = 0xC

typedef struct {
    /* 0x0000 */ s16 interfaceFlags;
    /* 0x0004 */ Demo9Anim anim;
} Demo9;

typedef struct {
    /* 0x0000 */ OnePointDemoCamera onePointDemo;
    /* 0x000C */ Demo9 demo9;
} Demo9OnePointDemo; // size = 0x1C

typedef struct {
    /* 0x0000 */ s16 animTimer;
    /* 0x0004 */ Vec3f atTarget;
} Demo6Anim; // size = 0x10

typedef struct {
    /* 0x0000 */ s16 interfaceFlags;
    /* 0x0002 */ s16 unk_02;
    /* 0x0004 */ Demo6Anim anim; 
} Demo6; // size = 0x14

typedef struct {
    /* 0x0000 */ Vec3f initialAt;
    /* 0x000C */ f32 unk_0C;
    /* 0x0010 */ s16 animFrame;
    /* 0x0012 */ s16 yawDir;
} Demo3Anim; // size = 0x14

typedef struct {
    /* 0x0000 */ f32 fov;
    /* 0x0004 */ f32 unk_04; // unused
    /* 0x0008 */ s16 interfaceFlags;
    /* 0x000C */ Demo3Anim anim;
} Demo3; // size = 0x20

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
    /* 0x0028 */ s16 unk_28;
    /* 0x002A */ s16 unk_2A;
} Normal3_Unk20; // size = 0x2C

typedef struct {
    /* 0x0000 */ f32 unk_00;
    /* 0x0004 */ f32 unk_04;
    /* 0x0008 */ f32 unk_08;
    /* 0x000C */ f32 unk_0C;
    /* 0x0010 */ f32 unk_10;
    /* 0x0014 */ f32 unk_14;
    /* 0x0018 */ f32 unk_18;
    /* 0x001C */ s16 unk_1C;
    /* 0x001E */ s16 unk_1E;
    /* 0x0020 */ Normal3_Unk20 unk_20;
} Normal3; // size = 0x4C

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
    /* 0x0000 */ f32 fovTarget;
    /* 0x0004 */ s16 animTimer;
} KeepOn0Anim; // size = 0x6

typedef struct {
    /* 0x0000 */ f32 fovScale;
    /* 0x0004 */ f32 yawScale;
    /* 0x0008 */ s16 timerInit;
    /* 0x000A */ s16 interfaceFlags;
    /* 0x000C */ KeepOn0Anim anim;
} KeepOn0; // size = 0x12

typedef struct {
    /* 0x0000 */ Vec3f unk_00;
    /* 0x000C */ s32 unk_0C;
    /* 0x0010 */ f32 unk_10;
    /* 0x0014 */ s16 pitchTarget;
    /* 0x0016 */ s16 yawTarget;
    /* 0x0018 */ s16 updateRot;
    /* 0x001A */ s16 animTimer;
    /* 0x001C */ f32 unk_1C;
    /* 0x0020 */ VecSph unk_20;
} Jump1_Anim; // size = 0x28

typedef struct {
    /* 0x0000 */ f32 atYOffset;
    /* 0x0004 */ f32 distMin;
    /* 0x0008 */ f32 distMax;
    /* 0x000C */ f32 yawUpateRateTarget;
    /* 0x0010 */ f32 maxYawUpdate;
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
    /* 0x0012 */ s16 yawTarget;
    /* 0x0014 */ s16 pitchTarget;
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
    /* 0x0020 */ s16 pitchTarget;
    /* 0x0022 */ s16 yawTarget;
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
    /* 0x0000 */ Vec3f initalPos;
    /* 0x000C */ s16 animTimer;
    /* 0x0010 */ Linef sceneCamPosPlayerLine;
} Unique0Anim; // size = 0x28

typedef struct {
    /* 0x0000 */ s16 interfaceFlags;
    /* 0x0004 */ Unique0Anim anim;
} Unique0; // size = 0x2C

typedef struct {
    /* 0x0000 */ PersonalizeParams personalizeParams;
    /* 0x000C */ Unique0 uniq0;
} PersonalizedUnique0; // size = 0x38

typedef struct {
    /* 0x0000 */ f32 unk_00; // unused
    /* 0x0004 */ s16 yawTarget;
    /* 0x0006 */ s16 yawTargetAdj;
    /* 0x0008 */ s16 timer;
} Unique1Anim; // size = 0xA

typedef struct {
    /* 0x0000 */ f32 yOffset;
    /* 0x0004 */ f32 distClampMin;
    /* 0x0008 */ f32 distClampMax;
    /* 0x000C */ char unk_0C[4]; // unused
    /* 0x0010 */ f32 fovTarget;
    /* 0x0014 */ f32 atLERPScaleMax;
    /* 0x0018 */ s16 pitchTarget;
    /* 0x001A */ s16 interfaceFlags;
    /* 0x001C */ Unique1Anim anim;
} Unique1; // size = 0x26

// Seems to go unused
typedef struct {
    /* 0x0000 */ f32 unk_00;
    /* 0x0004 */ s16 unk_04;
} Unique2_Unk10; // size = 0x6

typedef struct {
    /* 0x0000 */ f32 yOffset;
    /* 0x0004 */ f32 distTarget;
    /* 0x0008 */ f32 fovTarget;
    /* 0x000C */ s16 interfaceFlags;
    /* 0x0010 */ Unique2_Unk10 unk_10; // unused, values set but not read.
} Unique2; // size = 0x6

typedef struct {
    f32 unk_00;
    f32 unk_04;
} Unique3_Unk18;

typedef struct {
    f32 unk_00;
    f32 unk_04;
    s16 interfaceFlags;
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
    /* 0x0000 */ f32 r;
    /* 0x0004 */ s16 yaw;
    /* 0x0006 */ s16 pitch;
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
    f32 unk_1C;
    f32 unk_20;
    f32 unk_24;
    f32 unk_28;
    s16 unk_2C;
    s16 unk_2E;
    s16 unk_30;
    s16 unk_32;
} Subj4Anim;

typedef struct {
    s16 interfaceFlags;
    Subj4Anim anim;
} Subj4;

typedef struct {
    /* 0x0000 */ s16 animTimer;
} Special5Anim; // size = 0x2

typedef struct {
    /* 0x0000 */ f32 yOffset;
    /* 0x0004 */ f32 eyeDist;
    /* 0x0008 */ f32 minDistForRot;
    /* 0x000C */ f32 fovTarget;
    /* 0x0010 */ f32 atMaxLERPScale;
    /* 0x0014 */ s16 timerInit;
    /* 0x0016 */ s16 pitch;
    /* 0x0018 */ s16 interfaceFlags;
    /* 0x001A */ s16 unk_1A;
    /* 0x001C */ Special5Anim anim;
} Special5; // size = 0x20

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
    f32 initalPlayerY;
    s16 animTimer;
} Special6Anim;

typedef struct {
    s16 interfaceFlags;
    Special6Anim anim;
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

typedef struct {
    /* 0x0000 */ s16 animTimer;
} Battle4Anim; // size = 0x2

typedef struct {
    /* 0x0000 */ f32 yOffset;
    /* 0x0004 */ f32 rTarget;
    /* 0x0008 */ s16 pitchTarget;
    /* 0x000C */ f32 lerpUpdateRate;
    /* 0x0010 */ f32 fovTarget;
    /* 0x0014 */ f32 atLERPTarget;
    /* 0x0018 */ s16 interfaceFlags;
    /* 0x001A */ s16 unk_1A;
    /* 0x001C */ Battle4Anim anim;
} Battle4; // size = 0x20

typedef struct {
    /* 0x0000 */ f32 unk_00;
    /* 0x0004 */ f32 unk_04;
    /* 0x0008 */ f32 unk_08;
    /* 0x000C */ Actor* target;
    /* 0x0010 */ f32 unk_10;
    /* 0x0014 */ s16 unk_14;
    /* 0x0016 */ s16 unk_16;
    /* 0x0018 */ s16 unk_18;
    /* 0x001A */ s16 unk_1A;
    /* 0x001C */ s16 unk_1C;
} Battle1Anim; // size = 0x1E

typedef struct {
    /* 0x0000 */ f32 unk_00;
    /* 0x0004 */ f32 unk_04;
    /* 0x0008 */ f32 unk_08;
    /* 0x000C */ f32 unk_0C;
    /* 0x0010 */ f32 unk_10;
    /* 0x0014 */ f32 unk_14;
    /* 0x0018 */ f32 unk_18;
    /* 0x001C */ f32 unk_1C;
    /* 0x0020 */ f32 unk_20;
    /* 0x0024 */ f32 unk_24;
    /* 0x0028 */ f32 unk_28;
    /* 0x002C */ s16 interfaceFlags;
    /* 0x0030 */ Battle1Anim anim;
} Battle1; // size = 0x50

typedef struct {
    Vec3f unk_00;
    Vec3f unk_0C;
    CollisionPoly* unk_18;
    VecSph unk_1C;
    s32 unk_24;
} struct_80043D18;

/** initFlags
 * & 0x00FF = atInitFlags
 * & 0xFF00 = eyeInitFlags
 * 0x1: Direct Copy of atTargetInit
 *      if initFlags & 0x6060: use posRot2 for focus point
 * 0x2: Add atTargetInit to view's lookAt
 *      if initFlags & 0x6060: use posRot for focus point
 * 0x3: Add atTargetInit to camera's at
 * 0x4: Don't update targets? 
 * 0x8: flag to use atTagetInit as f32 pitch, yaw, r
 * 0x10: ? unused
 * 0x20: focus on player
*/
typedef struct {
    /* 0x0000 */ u8 actionFlags;
    /* 0x0001 */ u8 unk_01;
    /* 0x0002 */ s16 initFlags;
    /* 0x0004 */ s16 timerInit;
    /* 0x0006 */ s16 rollTargetInit;
    /* 0x0008 */ f32 fovTargetInit;
    /* 0x000C */ f32 lerpStepScale;
    /* 0x0010 */ Vec3f atTargetInit;
    /* 0x001C */ Vec3f eyeTargetInit;
} OnePointDemoFull; /* size = 0x28 */

typedef struct {
    /* 0x0000 */ OnePointDemoFull* curKeyFrame;
    /* 0x0004 */ Vec3f atTarget;
    /* 0x0010 */ Vec3f eyeTarget;
    /* 0x001C */ Vec3f playerPos;
    /* 0x0028 */ f32 fovTarget;
    /* 0x002C */ VecSph atEyeOffsetTarget;
    /* 0x0034 */ s16 rollTarget;
    /* 0x0036 */ s16 curKeyFrameIdx;
    /* 0x0038 */ s16 unk_38;
    /* 0x003A */ s16 isNewKeyFrame;
    /* 0x003C */ s16 keyFrameTimer;
} Unique9Anim; // size = 0x3E

typedef struct {
    /* 0x0008 */ s16 interfaceFlags;
    /* 0x000C */ Unique9Anim anim;
} Unique9; // size = 0x4C

typedef struct {
    s32 keyFrameCnt;
    OnePointDemoFull* keyFrames;
    Unique9 uniq9;
} Unique9OnePointDemo;

typedef struct {
    /* 0x0000 */ Vec3f unk_00;
    /* 0x000C */ Vec3f unk_0C;
    /* 0x0018 */ f32 unk_18;
    /* 0x001C */ f32 unk_1C;
    /* 0x0020 */ s16 unk_20;
    /* 0x0022 */ s16 unk_22;
    /* 0x0024 */ f32 unk_24;
    /* 0x0028 */ s16 unk_28;
} Normal2Anim; // size = 0x2A

typedef struct {
    /* 0x0000 */ f32 unk_00;
    /* 0x0004 */ f32 unk_04;
    /* 0x0008 */ f32 unk_08;
    /* 0x000C */ f32 unk_0C;
    /* 0x0010 */ f32 unk_10;
    /* 0x0014 */ f32 unk_14;
    /* 0x0018 */ f32 unk_18;
    /* 0x001C */ s16 unk_1C;
    /* 0x001E */ s16 interfaceFlags;
    /* 0x0020 */ Normal2Anim anim;
} Normal2; // size = 0x4A

typedef union {
    PersonalizeParams personalize;
    PersonalizedDoor doorCam;
    Special0 spec0;
    Demo1 demo1;
    Normal3 norm3;
    Normal2 norm2;
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
    PersonalizedUnique0 uniq0;
    Unique1 uniq1;
    Unique2 uniq2;
    Unique3 uniq3;
    Unique7 uniq7;
    Subj3 subj3;
    Subj4 subj4;
    Special5 spec5;
    Fixed4 fixd4;
    KeepOn1 keep1;
    KeepOn3 keep3;
    KeepOn4 keep4;
    Special6 spec6;
    Special7 spec7;
    Demo9OnePointDemo demo9;
    Demo6 demo6;
    Demo3 demo3;
    Battle4 batt4;
    Battle1 batt1;
    Unique9OnePointDemo uniq9;
} CameraParams;

typedef struct {
    /* 0x0000 */ CameraParams params;
    /* 0x0050 */ Vec3f at;
    /* 0x005C */ Vec3f eye;
    /* 0x0068 */ Vec3f up;
    /* 0x0074 */ Vec3f eyeNext;
    /* 0x0080 */ Vec3f skyboxOffset;
    /* 0x008C */ struct GlobalContext* globalCtx;
    /* 0x0090 */ struct Player* player;
    /* 0x0094 */ PosRot playerPosRot;
    /* 0x00A8 */ struct Actor* target;
    /* 0x00AC */ PosRot targetPosRot;
    /* 0x00C0 */ f32 rUpdateRateInv;
    /* 0x00C4 */ f32 pitchUpdateRateInv;
    /* 0x00C8 */ f32 yawUpdateRateInv;
    /* 0x00CC */ f32 xzOffsetUpdateRate;
    /* 0x00D0 */ f32 yOffsetUpdateRate;
    /* 0x00D4 */ f32 fovUpdateRate;
    /* 0x00D8 */ f32 unk_D8;
    /* 0x00DC */ f32 dist;
    /* 0x00E0 */ f32 unk_E0;
    /* 0x00E4 */ Vec3f posOffset;
    /* 0x00F0 */ Vec3f playerPosDelta;
    /* 0x00FC */ f32 fov;
    /* 0x0100 */ f32 atLERPStepScale;
    /* 0x0104 */ f32 playerGroundY;
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
    /* 0x0146 */ s16 bgCheckId; // unknown if used
    /* 0x0148 */ s16 camDataIdx;
    /* 0x014A */ s16 unk_14A; // unknown if used
    /* 0x014C */ s16 unk_14C;
    /* 0x014E */ s16 childCamIdx;
    /* 0x0150 */ s16 unk_150; // unknown if used
    /* 0x0152 */ s16 unk_152;
    /* 0x0154 */ s16 prevSetting; // appears to be some clone of setting?
    /* 0x0156 */ s16 nextCamDataIdx;
    /* 0x0158 */ s16 nextBGCheckId;
    /* 0x015A */ s16 roll;
    /* 0x015C */ s16 paramFlags;
    /* 0x015E */ s16 animState;
    /* 0x0160 */ s16 timer; // timer when to change the camera back to parent. 
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
    /* 0x001C */ Vec3f up;
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
