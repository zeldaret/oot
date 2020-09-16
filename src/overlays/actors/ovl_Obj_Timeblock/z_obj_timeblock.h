#ifndef _Z_OBJ_TIMEBLOCK_H_
#define _Z_OBJ_TIMEBLOCK_H_

#include <ultra64.h>
#include <global.h>

struct ObjTimeblock;

typedef s32 (*ObjTimeblockActionFunc)(struct ObjTimeblock*, GlobalContext*);
typedef void (*ObjTimeblockUnkFuncType1)(struct ObjTimeblock*, GlobalContext*);

typedef struct ObjTimeblock {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ObjTimeblockUnkFuncType1 unk_164;
    /* 0x0168 */ ObjTimeblockActionFunc actionFunc;
    /* 0x016C */ UNK_TYPE2 unk_16C;
    /* 0x016E */ s16 unk_16E;
    /* 0x0170 */ UNK_TYPE2 unk_170;
    /* 0x0172 */ u16 unk_172;
    /* 0x0174 */ u8 unk_174;
    /* 0x0175 */ u8 unk_175;
    /* 0x0176 */ u8 unk_176;
    /* 0x0177 */ u8 unk_177;
    /* 0x0178 */ u8 unk_178;
} ObjTimeblock; // size = 0x017C

extern const ActorInit Obj_Timeblock_InitVars;

#endif
