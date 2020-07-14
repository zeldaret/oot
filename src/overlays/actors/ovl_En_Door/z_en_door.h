#ifndef _Z_EN_DOOR_H_
#define _Z_EN_DOOR_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x00 */ s16 sceneNum;
    /* 0x02 */ u8 unk_2;
    /* 0x04 */ s16 objectId;
} EnDoorObjectInfo;

struct EnDoor;

typedef void (*EnDoorActionFunc)(struct EnDoor*, GlobalContext*);

typedef struct EnDoor {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ u8 unk_190;
    /* 0x0191 */ s8 unk_191;
    /* 0x0192 */ u8 unk_192;
    /* 0x0193 */ s8 unk_193;
    /* 0x0194 */ u8 unk_194;
    /* 0x0196 */ s16 unk_196;
    /* 0x0198 */ Vec3s unk_198[5];
    /* 0x01B6 */ Vec3s unk_1B6[5];
    /* 0x01D4 */ EnDoorActionFunc actionFunc;
} EnDoor; // size = 0x01D8

extern const ActorInit En_Door_InitVars;

#endif
