#ifndef _Z64CAMERA_H_
#define _Z64CAMERA_H_

#include <ultra64.h>
#include <z64cutscene.h>

#define CAM_STAT_CUT        0
#define CAM_STAT_WAIT       1
#define CAM_STAT_UNK3       3
#define CAM_STAT_ACTIVE     7
#define CAM_STAT_UNK100     0x100

typedef enum {
    /* 0x00 */ CAM_SET_NONE,
    /* 0x01 */ CAM_SET_NORMAL0,
    /* 0x02 */ CAM_SET_NORMAL1,
    /* 0x03 */ CAM_SET_DUNGEON0,
    /* 0x04 */ CAM_SET_DUNGEON1,
    /* 0x05 */ CAM_SET_NORMAL3,
    /* 0x06 */ CAM_SET_HORSE0,
    /* 0x07 */ CAM_SET_BOSS_GOMA,
    /* 0x08 */ CAM_SET_BOSS_DODO,
    /* 0x09 */ CAM_SET_BOSS_BARI,
    /* 0x0A */ CAM_SET_BOSS_FGANON,
    /* 0x0B */ CAM_SET_BOSS_BAL,
    /* 0x0C */ CAM_SET_BOSS_SHADES,
    /* 0x0D */ CAM_SET_BOSS_MOFA,
    /* 0x0E */ CAM_SET_TWIN0,
    /* 0x0F */ CAM_SET_TWIN1,
    /* 0x10 */ CAM_SET_BOSS_GANON1,
    /* 0x11 */ CAM_SET_BOSS_GANON2,
    /* 0x12 */ CAM_SET_TOWER0,
    /* 0x13 */ CAM_SET_TOWER1,
    /* 0x14 */ CAM_SET_FIXED0,
    /* 0x15 */ CAM_SET_FIXED1,
    /* 0x16 */ CAM_SET_CIRCLE0,
    /* 0x17 */ CAM_SET_CIRCLE2,
    /* 0x18 */ CAM_SET_CIRCLE3,
    /* 0x19 */ CAM_SET_PREREND0,
    /* 0x1A */ CAM_SET_PREREND1,
    /* 0x1B */ CAM_SET_PREREND3,
    /* 0x1C */ CAM_SET_DOOR0,
    /* 0x1D */ CAM_SET_DOORC,
    /* 0x1E */ CAM_SET_RAIL3,
    /* 0x1F */ CAM_SET_START0,
    /* 0x20 */ CAM_SET_START1,
    /* 0x21 */ CAM_SET_FREE0,
    /* 0x22 */ CAM_SET_FREE2,
    /* 0x23 */ CAM_SET_CIRCLE4,
    /* 0x24 */ CAM_SET_CIRCLE5,
    /* 0x25 */ CAM_SET_DEMO0,
    /* 0x26 */ CAM_SET_DEMO1,
    /* 0x27 */ CAM_SET_MORI1,
    /* 0x28 */ CAM_SET_ITEM0,
    /* 0x29 */ CAM_SET_ITEM1,
    /* 0x2A */ CAM_SET_DEMO3,
    /* 0x2B */ CAM_SET_DEMO4,
    /* 0x2C */ CAM_SET_UFOBEAN,
    /* 0x2D */ CAM_SET_LIFTBEAN,
    /* 0x2E */ CAM_SET_SCENE0,
    /* 0x2F */ CAM_SET_SCENE1,
    /* 0x30 */ CAM_SET_HIDAN1,
    /* 0x31 */ CAM_SET_HIDAN2,
    /* 0x32 */ CAM_SET_MORI2,
    /* 0x33 */ CAM_SET_MORI3,
    /* 0x34 */ CAM_SET_TAKO,
    /* 0x35 */ CAM_SET_SPOT05A,
    /* 0x36 */ CAM_SET_SPOT05B,
    /* 0x37 */ CAM_SET_HIDAN3,
    /* 0x38 */ CAM_SET_ITEM2,
    /* 0x39 */ CAM_SET_CIRCLE6,
    /* 0x3A */ CAM_SET_NORMAL2,
    /* 0x3B */ CAM_SET_FISHING,
    /* 0x3C */ CAM_SET_DEMOC,
    /* 0x3D */ CAM_SET_UO_FIBER,
    /* 0x3E */ CAM_SET_DUNGEON2,
    /* 0x3F */ CAM_SET_TEPPEN,
    /* 0x40 */ CAM_SET_CIRCLE7,
    /* 0x41 */ CAM_SET_NORMAL4,
    /* 0x42 */ CAM_SET_MAX
} CameraSettingType;

typedef enum {
    /* 0x00 */ CAM_MODE_NORMAL,
    /* 0x01 */ CAM_MODE_TARGET, // Original: CAM_MODE_PARALLEL
    /* 0x02 */ CAM_MODE_FOLLOWTARGET, // Original: CAM_MODE_KEEPON
    /* 0x03 */ CAM_MODE_TALK,
    /* 0x04 */ CAM_MODE_BATTLE,
    /* 0x05 */ CAM_MODE_CLIMB,
    /* 0x06 */ CAM_MODE_FIRSTPERSON,  // Original: CAM_MODE_SUBJECT
    /* 0x07 */ CAM_MODE_BOWARROW,
    /* 0x08 */ CAM_MODE_BOWARROWZ,
    /* 0x09 */ CAM_MODE_FOOKSHOT,
    /* 0x0A */ CAM_MODE_BOOMERANG,
    /* 0x0B */ CAM_MODE_SLINGSHOT, // Original: CasdfsAM_MODE_PACHINCO
    /* 0x0C */ CAM_MODE_CLIMBZ,
    /* 0x0D */ CAM_MODE_JUMP,
    /* 0x0E */ CAM_MODE_HANG,
    /* 0x0F */ CAM_MODE_HANGZ,
    /* 0x10 */ CAM_MODE_FREEFALL,
    /* 0x11 */ CAM_MODE_CHARGE,
    /* 0x12 */ CAM_MODE_STILL,
    /* 0x13 */ CAM_MODE_PUSHPULL,
    /* 0x14 */ CAM_MODE_BOOMFOLLLOW, // Original: CAM_MODE_BOOKEEPON
    /* 0x15 */ CAM_MODE_MAX
} CameraModeType;

typedef enum {
    /* 0x00 */ CAM_FUNC_NONE,
    /* 0x01 */ CAM_FUNC_NORM0,
    /* 0x02 */ CAM_FUNC_NORM1,
    /* 0x03 */ CAM_FUNC_NORM2,
    /* 0x04 */ CAM_FUNC_NORM3,
    /* 0x05 */ CAM_FUNC_NORM4,
    /* 0x06 */ CAM_FUNC_PARA0,
    /* 0x07 */ CAM_FUNC_PARA1,
    /* 0x08 */ CAM_FUNC_PARA2,
    /* 0x09 */ CAM_FUNC_PARA3,
    /* 0x0A */ CAM_FUNC_PARA4,
    /* 0x0B */ CAM_FUNC_KEEP0,
    /* 0x0C */ CAM_FUNC_KEEP1,
    /* 0x0D */ CAM_FUNC_KEEP2,
    /* 0x0E */ CAM_FUNC_KEEP3,
    /* 0x0F */ CAM_FUNC_KEEP4,
    /* 0x10 */ CAM_FUNC_SUBJ0,
    /* 0x11 */ CAM_FUNC_SUBJ1,
    /* 0x12 */ CAM_FUNC_SUBJ2,
    /* 0x13 */ CAM_FUNC_SUBJ3,
    /* 0x14 */ CAM_FUNC_SUBJ4,
    /* 0x15 */ CAM_FUNC_JUMP0,
    /* 0x16 */ CAM_FUNC_JUMP1,
    /* 0x17 */ CAM_FUNC_JUMP2,
    /* 0x18 */ CAM_FUNC_JUMP3,
    /* 0x19 */ CAM_FUNC_JUMP4,
    /* 0x1A */ CAM_FUNC_BATT0,
    /* 0x1B */ CAM_FUNC_BATT1,
    /* 0x1C */ CAM_FUNC_BATT2,
    /* 0x1D */ CAM_FUNC_BATT3,
    /* 0x1E */ CAM_FUNC_BATT4,
    /* 0x1F */ CAM_FUNC_FIXD0,
    /* 0x20 */ CAM_FUNC_FIXD1,
    /* 0x21 */ CAM_FUNC_FIXD2,
    /* 0x22 */ CAM_FUNC_FIXD3,
    /* 0x23 */ CAM_FUNC_FIXD4,
    /* 0x24 */ CAM_FUNC_DATA0,
    /* 0x25 */ CAM_FUNC_DATA1,
    /* 0x26 */ CAM_FUNC_DATA2,
    /* 0x27 */ CAM_FUNC_DATA3,
    /* 0x28 */ CAM_FUNC_DATA4,
    /* 0x29 */ CAM_FUNC_UNIQ0,
    /* 0x2A */ CAM_FUNC_UNIQ1,
    /* 0x2B */ CAM_FUNC_UNIQ2,
    /* 0x2C */ CAM_FUNC_UNIQ3,
    /* 0x2D */ CAM_FUNC_UNIQ4,
    /* 0x2E */ CAM_FUNC_UNIQ5,
    /* 0x2F */ CAM_FUNC_UNIQ6,
    /* 0x30 */ CAM_FUNC_UNIQ7,
    /* 0x31 */ CAM_FUNC_UNIQ8,
    /* 0x32 */ CAM_FUNC_UNIQ9,
    /* 0x33 */ CAM_FUNC_DEMO0,
    /* 0x34 */ CAM_FUNC_DEMO1,
    /* 0x35 */ CAM_FUNC_DEMO2,
    /* 0x36 */ CAM_FUNC_DEMO3,
    /* 0x37 */ CAM_FUNC_DEMO4,
    /* 0x38 */ CAM_FUNC_DEMO5,
    /* 0x39 */ CAM_FUNC_DEMO6,
    /* 0x3A */ CAM_FUNC_DEMO7,
    /* 0x3B */ CAM_FUNC_DEMO8,
    /* 0x3C */ CAM_FUNC_DEMO9,
    /* 0x3D */ CAM_FUNC_SPEC0,
    /* 0x3E */ CAM_FUNC_SPEC1,
    /* 0x3F */ CAM_FUNC_SPEC2,
    /* 0x40 */ CAM_FUNC_SPEC3,
    /* 0x41 */ CAM_FUNC_SPEC4,
    /* 0x42 */ CAM_FUNC_SPEC5,
    /* 0x43 */ CAM_FUNC_SPEC6,
    /* 0x44 */ CAM_FUNC_SPEC7,
    /* 0x45 */ CAM_FUNC_SPEC8,
    /* 0x46 */ CAM_FUNC_SPEC9,
    /* 0x47 */ CAM_FUNC_MAX
} CameraFuncType;

typedef struct {
    /* 0x0000 */ Vec3f collisionClosePoint;
    /* 0x000C */ CollisionPoly* atEyePoly;
    /* 0x0010 */ f32 swingUpdateRate;
    /* 0x0014 */ s16 unk_14;
    /* 0x0016 */ s16 unk_16;
    /* 0x0018 */ s16 unk_18;
    /* 0x001A */ s16 swingUpdateRateTimer;
} SwingAnimation; // size = 0x1C

typedef struct {
    /* 0x0000 */ SwingAnimation swing;
    /* 0x001C */ f32 yOffset;
    /* 0x0020 */ f32 unk_20;
    /* 0x0024 */ s16 slopePitchAdj;
    /* 0x0026 */ s16 swingYawTarget;
    /* 0x0028 */ s16 unk_28;
    /* 0x002A */ s16 startSwingTimer;
} Normal1Anim; // size = 0x2C

typedef struct {
    /* 0x0000 */ f32 yOffset;
    /* 0x0004 */ f32 distMin;
    /* 0x0008 */ f32 distMax;
    /* 0x000C */ f32 unk_0C;
    /* 0x0010 */ f32 unk_10;
    /* 0x0014 */ f32 unk_14;
    /* 0x0018 */ f32 fovTarget;
    /* 0x001C */ f32 atLERPScaleMax;
    /* 0x0020 */ s16 pitchTarget;
    /* 0x0022 */ s16 interfaceFlags;
    /* 0x0024 */ Normal1Anim anim;
} Normal1; // size = 0x50

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

typedef struct {
    /* 0x0000 */ SwingAnimation swing;
    /* 0x001C */ f32 unk_1C;
    /* 0x0020 */ f32 unk_20;
    /* 0x0024 */ s16 curPitch;
    /* 0x0026 */ s16 yawUpdAmt;
    /* 0x0028 */ s16 yawTimer;
    /* 0x002A */ s16 distTimer;
} Normal3Anim; // size = 0x2C

typedef struct {
    /* 0x0000 */ f32 yOffset;
    /* 0x0004 */ f32 distMin;
    /* 0x0008 */ f32 distMax;
    /* 0x000C */ f32 yawUpdateSpeed;
    /* 0x0010 */ f32 unk_10;
    /* 0x0014 */ f32 fovTarget;
    /* 0x0018 */ f32 maxAtLERPScale;
    /* 0x001C */ s16 pitchTarget;
    /* 0x001E */ s16 interfaceFlags;
    /* 0x0020 */ Normal3Anim anim;
} Normal3; // size = 0x4C

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
    
    /* 0x0000 */ SwingAnimation swing;
    /* 0x001C */ f32 unk_1C;
    /* 0x0020 */ VecSph unk_20;
} Jump1Anim; // size = 0x28

typedef struct {
    /* 0x0000 */ f32 atYOffset;
    /* 0x0004 */ f32 distMin;
    /* 0x0008 */ f32 distMax;
    /* 0x000C */ f32 yawUpateRateTarget;
    /* 0x0010 */ f32 maxYawUpdate;
    /* 0x0014 */ f32 unk_14; // never used.  
    /* 0x0018 */ f32 atLERPScaleMax;
    /* 0x001C */ s16 interfaceFlags;
    /* 0x0020 */ Jump1Anim anim;
} Jump1; // size 0x48

typedef struct {
    /* 0x0000 */ f32 floorY;
    /* 0x0004 */ s16 yawTarget;
    /* 0x0006 */ s16 initYawDiff; // unused, set but not read.
    /* 0x0008 */ s16 yawAdj;
    /* 0x000A */ s16 onFloor; // unused, set but not read
    /* 0x000C */ s16 animTimer;
} Jump2Anim; // size = 0x10

typedef struct {
    /* 0x0000 */ f32 atYOffset;
    /* 0x0004 */ f32 minDist;
    /* 0x0008 */ f32 maxDist;
    /* 0x000C */ f32 minMaxDistFactor;
    /* 0x0010 */ f32 yawUpdRateTarget;
    /* 0x0014 */ f32 xzUpdRateTarget;
    /* 0x0018 */ f32 fovTarget;
    /* 0x001C */ f32 atLERPStepScale;
    /* 0x0020 */ s16 interfaceFlags;
    /* 0x0024 */ Jump2Anim anim;
} Jump2; // size = 0x34

typedef struct {
    /* 0x0000 */ SwingAnimation swing;
    /* 0x001C */ f32 unk_1C;
    /* 0x0020 */ s16 animTimer;
    /* 0x0022 */ s16 mode;
} Jump3Anim; // size = 0x24

typedef struct {
    /* 0x0000 */ f32 yOffset;
    /* 0x0004 */ f32 distMin;
    /* 0x0008 */ f32 distMax;
    /* 0x000C */ f32 swingUpdateRate;
    /* 0x0010 */ f32 unk_10;
    /* 0x0014 */ f32 unk_14;
    /* 0x0018 */ f32 fovTarget;
    /* 0x001C */ f32 unk_1C;
    /* 0x0020 */ s16 pitchTarget;
    /* 0x0022 */ s16 interfaceFlags;
    /* 0x0024 */ Jump3Anim anim;
} Jump3; // size = 0x48

typedef struct {
    /* 0x0000 */ f32 initialEyeToAtDist;
    /* 0x0004 */ f32 roll;
    /* 0x0008 */ f32 yPosOffset;
    /* 0x000C */ Actor* target;
    /* 0x0010 */ f32 unk_10;
    /* 0x0014 */ s16 unk_14; // unused
    /* 0x0016 */ s16 initialEyeToAtYaw;
    /* 0x0018 */ s16 initialEyeToAtPitch;
    /* 0x001A */ s16 animTimer;
    /* 0x001C */ s16 chargeTimer;
} Battle1Anim; // size = 0x1E

typedef struct {
    /* 0x0000 */ f32 yOffset;
    /* 0x0004 */ f32 distance;
    /* 0x0008 */ f32 swingYawInitial;
    /* 0x000C */ f32 swingYawFinal;
    /* 0x0010 */ f32 swingPitchInitial;
    /* 0x0014 */ f32 swingPitchFinal;
    /* 0x0018 */ f32 swingPitchAdj;
    /* 0x001C */ f32 fov;
    /* 0x0020 */ f32 atLERPScaleOnGround;
    /* 0x0024 */ f32 yOffsetOffGround;
    /* 0x0028 */ f32 atLERPScaleOffGround;
    /* 0x002C */ s16 flags;
    /* 0x0030 */ Battle1Anim anim;
} Battle1; // size = 0x50

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
    /* 0x000C */ Actor* unk_0C;
    /* 0x0010 */ s16 unk_10;
    /* 0x0012 */ s16 unk_12;
    /* 0x0014 */ s16 unk_14;
    /* 0x0016 */ s16 unk_16;
} Keep1Anim; // size = 0x18

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
    /* 0x002C */ f32 unk_2C;
    /* 0x0030 */ s16 interfaceFlags;
    /* 0x0034 */ Keep1Anim anim;
} KeepOn1; // size = 0x4C

typedef struct {
    /* 0x0000 */ Vec3f eyeToAtTarget; // esentially a VecSph, but all floats.
    /* 0x000C */ Actor* target;
    /* 0x0010 */ Vec3f atTarget;
    /* 0x001C */ s16 animTimer;
} Keep3Anim; // size = 0x20

typedef struct {
    /* 0x0000 */ f32 yOffset;
    /* 0x0004 */ f32 minDist;
    /* 0x0008 */ f32 maxDist;
    /* 0x000C */ f32 swingYawInital;
    /* 0x0010 */ f32 swingYawFinal;
    /* 0x0014 */ f32 swingPitchInitial;
    /* 0x0018 */ f32 swingPitchFinal;
    /* 0x001C */ f32 swingPitchAdj;
    /* 0x0020 */ f32 fovTarget;
    /* 0x0024 */ f32 atLERPScaleMax;
    /* 0x0028 */ s16 initTimer;
    /* 0x002A */ s16 flags;
    /* 0x002C */ Keep3Anim anim;
} KeepOn3; // size = 0x4C

typedef struct {
    /* 0x0000 */ f32 unk_00;
    /* 0x0004 */ f32 unk_04;
    /* 0x0008 */ f32 unk_08;
    /* 0x000C */ s16 unk_0C;
    /* 0x000E */ s16 unk_0E;
    /* 0x0010 */ s16 unk_10;
    /* 0x0012 */ s16 unk_12;
    /* 0x0014 */ s16 unk_14;
} KeepOn4_Unk20; // size = 0x14

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
    /* 0x0020 */ KeepOn4_Unk20 unk_20;
} KeepOn4; // size = 0x34

typedef struct {
    /* 0x0000 */ f32 fovTarget;
    /* 0x0004 */ s16 animTimer;
} KeepOn0Anim; // size = 0x8

typedef struct {
    /* 0x0000 */ f32 fovScale;
    /* 0x0004 */ f32 yawScale;
    /* 0x0008 */ s16 timerInit;
    /* 0x000A */ s16 interfaceFlags;
    /* 0x000C */ KeepOn0Anim anim;
} KeepOn0; // size = 0x14

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
    /* 0x0000 */ Vec3f eye;
    /* 0x000C */ s16 fov;
} Fixed2InitParams; // size = 0x10

typedef struct {
    /* 0x0000 */ f32 yOffset;
    /* 0x0004 */ f32 eyeStepScale;
    /* 0x0008 */ f32 posStepScale;
    /* 0x000C */ f32 fov;
    /* 0x0010 */ s16 interfaceFlags;
    /* 0x0014 */ Fixed2InitParams initParams;
} Fixed2; // size = 0x24

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
    /* 0x0000 */ Vec3f eyeTarget;
    /* 0x000C */ f32 followSpeed;
} Fixed4Anim; // size = 0x10

typedef struct {
    /* 0x0000 */ f32 yOffset;
    /* 0x0004 */ f32 speedToEyePos;
    /* 0x0008 */ f32 followSpeed;
    /* 0x000C */ f32 fov;
    /* 0x0010 */ s16 interfaceFlags;
    /* 0x0014 */ Fixed4Anim anim;
} Fixed4; // size = 0x24

typedef struct {
    /* 0x0000 */ f32 r;
    /* 0x0004 */ s16 yaw;
    /* 0x0006 */ s16 pitch;
    /* 0x0008 */ s16 animTimer;
} Subj3Anim; // size = 0xC

typedef struct {
    /* 0x0000 */ f32 eyeNextYOffset;
    /* 0x0004 */ f32 eyeDist;
    /* 0x0008 */ f32 eyeNextDist;
    /* 0x000C */ f32 unk_0C; // unused
    /* 0x0010 */ Vec3f atOffset;
    /* 0x001C */ f32 fovTarget;
    /* 0x0020 */ s16 interfaceFlags;
    /* 0x0024 */ Subj3Anim anim;
} Subj3; // size = 0x30

typedef struct {
    /* 0x0000 */ Linef unk_00;
    /* 0x0018 */ f32 unk_18;
    /* 0x001C */ f32 unk_1C;
    /* 0x0020 */ f32 unk_20;
    /* 0x0024 */ f32 unk_24;
    /* 0x0028 */ f32 unk_28;
    /* 0x002C */ s16 unk_2C;
    /* 0x002E */ s16 unk_2E;
    /* 0x0030 */ s16 unk_30;
    /* 0x0032 */ s16 unk_32;
} Subj4Anim; // size = 0x34

typedef struct {
    /* 0x0000 */ s16 interfaceFlags;
    /* 0x0004 */ Subj4Anim anim;
} Subj4; // size = 0x38

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
    /* 0x0000 */ f32 unk_00; // unused
    /* 0x0004 */ s16 yawTarget;
    /* 0x0006 */ s16 yawTargetAdj;
    /* 0x0008 */ s16 timer;
} Unique1Anim; // size = 0xC

typedef struct {
    /* 0x0000 */ f32 yOffset;
    /* 0x0004 */ f32 distMin;
    /* 0x0008 */ f32 distMax;
    /* 0x000C */ char unk_0C[4]; // unused
    /* 0x0010 */ f32 fovTarget;
    /* 0x0014 */ f32 atLERPScaleMax;
    /* 0x0018 */ s16 pitchTarget;
    /* 0x001A */ s16 interfaceFlags;
    /* 0x001C */ Unique1Anim anim;
} Unique1; // size = 0x28

typedef struct {
    /* 0x0000 */ f32 unk_00;
    /* 0x0004 */ s16 unk_04;
} Unique2Unk10; // size = 0x8

typedef struct {
    /* 0x0000 */ f32 yOffset;
    /* 0x0004 */ f32 distTarget;
    /* 0x0008 */ f32 fovTarget;
    /* 0x000C */ s16 interfaceFlags;
    /* 0x0010 */ Unique2Unk10 unk_10; // unused, values set but not read.
} Unique2; // size = 0x18

typedef struct {
    /* 0x0000 */ f32 initialFov;
    /* 0x0004 */ f32 initialDist;
} Unique3Anim; // size = 0x8

typedef struct {
    /* 0x0000 */ f32 yOffset;
    /* 0x0004 */ f32 fov;
    /* 0x0008 */ s16 interfaceFlags;
} Unique3Params; // size = 0xC

typedef struct {
    /* 0x0000 */ struct Actor* doorActor;
    /* 0x0004 */ s16 camDataIdx;
    /* 0x0006 */ s16 timer1;
    /* 0x0008 */ s16 timer2;
    /* 0x000A */ s16 timer3;
} DoorParams; // size = 0xC

typedef struct {
    /* 0x0000 */ DoorParams doorParams;
    /* 0x000C */ Unique3Params params;
    /* 0x0018 */ Unique3Anim anim;
} Unique3; // size = 0x20

typedef struct {
    /* 0x0000 */ Vec3f initalPos;
    /* 0x000C */ s16 animTimer;
    /* 0x0010 */ Linef sceneCamPosPlayerLine;
} Unique0Anim; // size = 0x28

typedef struct {
    /* 0x0000 */ s16 interfaceFlags;
    /* 0x0004 */ Unique0Anim anim;
} Unique0Params; // size = 0x2C

typedef struct {
    /* 0x0000 */ DoorParams doorParams;
    /* 0x000C */ Unique0Params uniq0;
} Unique0; // size = 0x38

typedef struct {
    /* 0x0000 */ s16 interfaceFlags;
} Unique6; // size = 0x4

typedef union {
    /* 0x0000 */ Vec3s unk_00;
} Unique7Unk8; // size = 0x8

typedef struct {
    /* 0x0000 */ f32 fov;
    /* 0x0004 */ s16 interfaceFlags;
    /* 0x0006 */ s16 align;
    // unk_08 goes unused.
    /* 0x0008 */ Unique7Unk8 unk_08;
} Unique7; // size = 0x10

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
    /* 0x0000 */ s16 interfaceFlags;
    /* 0x0004 */ Unique9Anim anim;
} Unique9; // size = 0x40

typedef struct {
    /* 0x0000 */ s32 keyFrameCnt;
    /* 0x0004 */ OnePointDemoFull* keyFrames;
    /* 0x0008 */ Unique9 uniq9;
} Unique9OnePointDemo; // size = 0x48

typedef struct {
    /* 0x0000 */ f32 curFrame;
    /* 0x0004 */ s16 keyframe;
} Demo1Anim; // size = 0x14

typedef struct {
    /* 0x0000 */ s16 interfaceFlags;
    /* 0x0004 */ Demo1Anim anim;
} Demo1; // size = 0x18

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
    /* 0x0000 */ s16 animTimer;
    /* 0x0004 */ Vec3f atTarget;
} Demo6Anim; // size = 0x10

typedef struct {
    /* 0x0000 */ s16 interfaceFlags;
    /* 0x0002 */ s16 unk_02;
    /* 0x0004 */ Demo6Anim anim; 
} Demo6; // size = 0x14

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
    /* 0x0000 */ CutsceneCameraPoint* atPoints;
    /* 0x0004 */ CutsceneCameraPoint* eyePoints;
    /* 0x0008 */ s16 actionParameters;
    /* 0x000A */ s16 initTimer;
} OnePointDemoCamera; // size = 0xC

typedef struct {
    /* 0x0000 */ OnePointDemoCamera onePointDemo;
    /* 0x000C */ Demo9 demo9;
} Demo9OnePointDemo; // size = 0x1C

typedef struct {
    /* 0x0000 */ f32 lerpAtScale;
    /* 0x0004 */ s16 interfaceFlags;
} Special0; // size = 0x8

typedef struct {
    /* 0x0000 */ s16 initalTimer;
} Special4; // size = 0x4

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
    /* 0x0000 */ s16 idx;
} Special7; // size = 0x4

typedef struct {
    /* 0x0000 */ f32 initalPlayerY;
    /* 0x0004 */ s16 animTimer;
} Special6Anim; // size = 0x8

typedef struct {
    /* 0x0000 */ s16 interfaceFlags;
    /* 0x0004 */ Special6Anim anim;
} Special6; // size = 0xC

typedef struct {
    /* 0x0000 */ s16 targetYaw;
} Special9Anim; // size = 0x2

typedef struct {
    /* 0x0000 */ f32 yOffset;
    /* 0x0004 */ f32 unk_04;
    /* 0x0008 */ s16 interfaceFlags;
    /* 0x000A */ s16 unk_0A;
    /* 0x000C */ Special9Anim anim;
} Special9Params; // size = 0x10

typedef struct {
    /* 0x0000 */ DoorParams doorParams;
    /* 0x000C */ Special9Params params;
} Special9; // size = 0x1C

typedef struct {
    /* 0x0000 */ Vec3f pos;
    /* 0x000C */ Vec3f norm;
    /* 0x0018 */ CollisionPoly* poly;
    /* 0x001C */ VecSph sphNorm;
    /* 0x0024 */ u32 bgId;
} CamColChk; // size = 0x28

typedef struct {
    char paramData[0x50];
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
    /* 0x00D8 */ f32 xzSpeed;
    /* 0x00DC */ f32 dist;
    /* 0x00E0 */ f32 speedRatio;
    /* 0x00E4 */ Vec3f posOffset;
    /* 0x00F0 */ Vec3f playerPosDelta;
    /* 0x00FC */ f32 fov;
    /* 0x0100 */ f32 atLERPStepScale;
    /* 0x0104 */ f32 playerGroundY;
    /* 0x0108 */ Vec3f floorNorm;
    /* 0x0114 */ f32 waterYPos;
    /* 0x0118 */ s32 waterPrevCamIdx;
    /* 0x011C */ s32 waterPrevCamSetting;
    /* 0x0120 */ s32 waterQuakeId;
    /* 0x0124 */ void* data0;
    /* 0x0128 */ void* data1;
    /* 0x012C */ s16 data2;
    /* 0x012E */ s16 data3;
    /* 0x0130 */ s16 uid;
    /* 0x0132 */ char unk_132[0x02];
    /* 0x0134 */ Vec3s inputDir;
    /* 0x013A */ Vec3s camDir;
    /* 0x0140 */ s16 status;
    /* 0x0142 */ s16 setting;
    /* 0x0144 */ s16 mode;
    /* 0x0146 */ s16 bgCheckId;
    /* 0x0148 */ s16 camDataIdx;
    /* 0x014A */ s16 unk_14A;
    /* 0x014C */ s16 unk_14C;
    /* 0x014E */ s16 childCamIdx;
    /* 0x0150 */ s16 unk_150;
    /* 0x0152 */ s16 unk_152;
    /* 0x0154 */ s16 prevSetting;
    /* 0x0156 */ s16 nextCamDataIdx;
    /* 0x0158 */ s16 nextBGCheckId;
    /* 0x015A */ s16 roll;
    /* 0x015C */ s16 paramFlags;
    /* 0x015E */ s16 animState;
    /* 0x0160 */ s16 timer;
    /* 0x0162 */ s16 parentCamIdx;
    /* 0x0164 */ s16 thisIdx;
    /* 0x0166 */ s16 prevCamDataIdx;
    /* 0x0168 */ s16 unk_168;
    /* 0x016A */ s16 unk_16A;
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
