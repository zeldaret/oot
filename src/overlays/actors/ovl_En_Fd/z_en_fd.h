#ifndef _Z_EN_FD_H_
#define _Z_EN_FD_H_

#include "ultra64.h"
#include "global.h"

struct EnFd;

typedef void (*EnFdActionFunc)(struct EnFd* this, GlobalContext* globalCtx);

enum FDPartType {
    FD_PART_NONE,
    FD_PART_FLAME,
    FD_PART_DOT
};

typedef struct {
    /* 0x0000 */ u8 type;
    /* 0x0001 */ u8 timer;
    /* 0x0002 */ u8 initialTimer;
    /* 0x0004 */ f32 scale;
    /* 0x0008 */ f32 scaleSpeed;
    /* 0x000C */ Color_RGBA8 color;
    /* 0x0010 */ char unk_10[4];
    /* 0x0014 */ Vec3f pos;
    /* 0x0020 */ Vec3f speed;
    /* 0x002C */ Vec3f accel;
} EnFdPart; // size = 0x38

typedef struct EnFd {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnFdActionFunc actionFunc;
    /* 0x0194 */ ColliderJntSph collider;
    /* 0x01B4 */ ColliderJntSphItem colSphs[12];
    /* 0x04B4 */ u8 coreActive;
    /* 0x04B6 */ s16 initYawToInitPos;
    /* 0x04B8 */ s16 curYawToInitPos;
    /* 0x04BA */ s16 runDir;
    /* 0x04BC */ s16 firstUpdateFlag;
    /* 0x04BE */ s16 spinTimer;
    /* 0x04C0 */ s16 circlesToComplete;
    /* 0x04C2 */ s16 invincibilityTimer;
    /* 0x04C4 */ s16 attackTimer;
    /* 0x04C8 */ f32 runRadius;
    /* 0x04CC */ f32 fadeAlpha;
    /* 0x04D0 */ Vec3f corePos;
    /* 0x04DC */ Vec3s limbDrawTable[27];
    /* 0x057E */ Vec3s transDrawTable[27];
    /* 0x0620 */ EnFdPart particles[0xC8];
} EnFd; // size = 0x31E0

extern const ActorInit En_Fd_InitVars;

#endif
