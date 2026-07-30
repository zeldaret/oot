#include "ultra64.h"
#include "n64dd.h"
#include "n64dd_internal.h"
#include "z_locale.h"

#pragma increment_block_number ""

void func_801C8A4C(struct_801E1598*);
void func_801C8B8C(struct_801E1598*);
void func_801C8C00(struct_801E1598*);
void func_801C8C74(struct_801E1598*);
s32 func_801C9A50(struct_801E1598*);
s32 func_801C9AD0(struct_801E1598*);
s32 func_801C9C34(struct_801E1598*);
void func_801C8DB4(void);
void func_801C8DD8(OSMesgQueue*, OSMesgQueue*, s32, void*, s32);
void func_801C8E98(void (*)(s32, s32, s32), s32, void (*)(void*, uintptr_t, size_t));
void func_801C8EEC(void*, s32, s32, u8);
s8 func_801C8FD0(void);
s32 func_801C9020(void);
s32 func_801C905C(void);
s32 func_801C90A4(void);
s32 func_801C90BC(void);
s32 func_801C9114(void);
s32 func_801C916C(void);

s32 D_801D36E0 = 0;
s32 D_801D36E4 = 0;
struct {
    void (*unk0)(struct_801E1598*);
    s32 (*unk4)(struct_801E1598*);
} D_801D36E8[5] = {
    { func_801C8A4C, func_801C9A50 }, { func_801C8B8C, func_801C9AD0 }, { func_801C8C00, func_801C9AD0 },
    { func_801C8C74, func_801C9BA4 }, { func_801C8C74, func_801C9C34 },
};
s32 D_801D3710 = 0;

struct_801E1590 D_801E1590;
struct_801E1598 D_801E1598;
OSMesg D_801E1608;
OSMesg D_801E1610[8];
OSThread D_801E1630;

s32 func_801C8860(struct_801DA5D0* arg0) {
    s32 temp_v0_2;
    s8 temp_v0;

    switch (arg0->unk0) {
        case 0:
            if (func_801C90A4() != 0) {
                return 1;
            }
            func_801C8DB4();
            return 0;
        case 1:
            func_801C8DD8(arg0->unk1C_1.unk1C, arg0->unk1C_1.unk20, arg0->unk1C_1.unk24, arg0->unk1C_1.unk28,
                          arg0->unk1C_1.unk2C);
            return 0;
        case 2:
            func_801C8E98(arg0->unkC, arg0->unk10, arg0->unk14);
            return 0;
        case 3:
            if (func_801C90A4() != 0) {
                return 1;
            }
            func_801C8EEC(arg0->unk18, arg0->unk1C_3_4.unk1C, arg0->unk1C_3_4.unk20, 1);
            return 0;
        case 4:
            if (func_801C90A4() != 0) {
                return 1;
            }
            func_801C8EEC(arg0->unk18, arg0->unk1C_3_4.unk1C, arg0->unk1C_3_4.unk20, 2);
            return 0;
        case 5:
            temp_v0 = func_801C8FD0();
            arg0->unk8 = temp_v0;
            return temp_v0 & 0xFF;
        case 7:
            return func_801C905C();
        case 6:
            return func_801C90A4();
        case 8:
            temp_v0_2 = func_801C9020();
            arg0->unk4 = temp_v0_2;
            return temp_v0_2;
        case 9:
            return func_801C90BC();
        case 10:
            return func_801C9114();
        case 11:
            return func_801C916C();
        case 12:
            D_801D3720 = 0;
            break;
        case 13:
            D_801D3720 = 1;
            break;
    }
    return 0;
}

void func_801C89FC(s32 arg0) {
    if (arg0 != 0) {
        D_801D36E0 = 1;
        return;
    }
    D_801D36E0 = 2;
}

s32 func_801C8A24(void) {
    return D_801D36E0;
}

s32 func_801C8A34(void) {
    return D_801D36E4 == 1;
}

void func_801C8A4C(struct_801E1598* arg0) {
    s32 temp_v0;

    osCreateMesgQueue(&arg0->unk1C, &D_801E1608, 1);
    if (gCurrentRegion == 1) {
        arg0->unk68 = LeoCJCreateLeoManager(0x95, 0x96, D_801E1610, 8);
    } else {
        arg0->unk68 = LeoCACreateLeoManager(0x95, 0x96, D_801E1610, 8);
    }
    temp_v0 = arg0->unk68;
    if ((temp_v0 == 0x29) || (temp_v0 == 0)) {
        D_801D36E4 = 1;
    }
}

void func_801C8AF8(struct_801E1598* arg0) {
    LEOCmd sp1C;

    LeoReadDiskID(&sp1C, &arg0->unk38, &arg0->unk1C);
    osRecvMesg(&arg0->unk1C, (OSMesg*)&arg0->unk68, OS_MESG_BLOCK);
}

void func_801C8B40(struct_801E1598* arg0) {
    LEOCmd sp1C;

    LeoSpdlMotor(&sp1C, 4, &arg0->unk1C);
    osRecvMesg(&arg0->unk1C, (OSMesg*)&arg0->unk68, OS_MESG_BLOCK);
}

void func_801C8B8C(struct_801E1598* arg0) {
    s32 sp34;
    s32 sp30;
    OSMesgQueue* sp28;

    sp30 = arg0->unk5C;
    if (LeoByteToLBA(sp30, (u32)arg0->unk60, &sp34) == 0) {
        sp28 = &arg0->unk1C;
        LeoReadWrite(&arg0->unk0, 0, (u32)sp30, arg0->unk58, (u32)sp34, sp28);
        osRecvMesg(sp28, BADCASTP & arg0->unk68, OS_MESG_BLOCK);
    }
}

void func_801C8C00(struct_801E1598* arg0) {
    s32 sp34;
    void* sp30;
    OSMesgQueue* sp28;

    sp30 = arg0->unk58;
    if (LeoByteToLBA((s32)sp30, (u32)arg0->unk60, &sp34) == 0) {
        sp28 = &arg0->unk1C;
        LeoReadWrite(&arg0->unk0, 1, (u32)sp30, (void*)arg0->unk5C, (u32)sp34, sp28);
        osRecvMesg(sp28, (void**)&arg0->unk68, OS_MESG_BLOCK);
    }
}

void func_801C8C74(struct_801E1598* arg0) {
    arg0->unk68 = 9;
}

void func_801C8C84(struct_801E1598* arg0) {
    s32 (*temp_s2)(struct_801E1598*);
    s32 temp_v0_2;
    void (*temp_s1)(struct_801E1598*);

    arg0->unk68 = -1;
    if ((func_801C8A34() != 0) || ((u8)arg0->unk64 == 0)) {
        arg0->unk66 = 1;
        temp_s1 = D_801D36E8[(u8)arg0->unk64].unk0;
        temp_s2 = D_801D36E8[(u8)arg0->unk64].unk4;
        do {
            temp_s1(arg0);
            temp_v0_2 = temp_s2(arg0);
        } while (temp_v0_2 == 2);
        arg0->unk6C = temp_v0_2;
        if ((u8)arg0->unk64 == 0) {
            func_801C89FC(temp_v0_2);
        }
        arg0->unk66 = 0;
    }
}

void func_801C8D34(void* arg0) {
    void* sp24;

    while (true) {
        osRecvMesg(D_801E1590.unk0, &sp24, OS_MESG_BLOCK);
        func_801C8C84(sp24);
        osSendMesg(D_801E1590.unk4, NULL, OS_MESG_BLOCK);
    }
}

void func_801C8DB4(void) {
    osDestroyThread(&D_801E1630);
}

void func_801C8DD8(OSMesgQueue* arg0, OSMesgQueue* arg1, s32 arg2, void* arg3, s32 arg4) {
    D_801E1590.unk0 = arg0;
    D_801E1590.unk4 = arg1;
    osCreateThread(&D_801E1630, arg2, func_801C8D34, NULL, arg3, arg4);
    osStartThread(&D_801E1630);
}

void func_801C8E50(struct_801E1598* arg0, s32 arg1) {
    if (arg1 == 1) {
        func_801C8C84(arg0);
        return;
    }
    osSendMesg(D_801E1590.unk0, arg0, OS_MESG_BLOCK);
}

void func_801C8E98(void (*arg0)(s32, s32, s32), s32 arg1, void (*arg2)(void*, uintptr_t, size_t)) {
    struct_801E1598* ptr = &D_801E1598;

    func_801CA3C0(arg1, arg2);
    D_801D3734 = BADCASTP arg0;
    ptr->unk64 = 0;
    ptr->unk65 = 0;
    func_801C8E50(ptr, 0);
}

void func_801C8EEC(void* arg0, s32 arg1, s32 arg2, u8 arg3) {
    struct_801E1598* var = &D_801E1598;

    if (D_801D3710 == 1) {
        D_801D3710 = 0;
        var->unk64 = 4;
        func_801C8E50(var, 1);
        if ((D_801E1598.unk6C == 3) || (D_801E1598.unk6C == 4)) {
            return;
        }
    }
    var->unk58 = arg0;
    var->unk5C = arg1;
    var->unk60 = arg2;
    var->unk64 = arg3;
    func_801C8E50(var, 0);
}

s32 func_801C8F9C(struct_801E1598* arg0) {
    u8 sp1F;

    arg0->unk68 = LeoTestUnitReady(&sp1F);
    return (sp1F & 1) == 0;
}

s8 func_801C8FD0(void) {
    s32 temp_v0;

    temp_v0 = func_801C8F9C(&D_801E1598);
    if (D_801E1598.unk68 == 8) {
        return 0;
    }
    if (temp_v0 == 0) {
        return 2;
    }
    return 1;
}

s32 func_801C9020(void) {
    if ((func_801C90A4() == 0) && (D_801E1598.unk68 != 0)) {
        return D_801E1598.unk68;
    }
    return -1;
}

s32 func_801C905C(void) {
    s32* new_var;

    new_var = &D_801E1598.unk6C;
    if ((func_801C90A4() == 0) && ((*new_var == 3) || (*new_var == 4))) {
        return D_801E1598.unk68;
    }
    return 0;
}

s32 func_801C90A4(void) {
    return D_801E1598.unk66 == 1;
}

s32 func_801C90BC(void) {
    D_801E1598.unk64 = 3;
    func_801C8E50(&D_801E1598, 1);
#if OOT_VERSION > NTSC_1_0
    D_801D3710 = 0;
#endif
    if ((D_801E1598.unk6C == 3) || (D_801E1598.unk6C == 4)) {
        return -1;
    } else {
        return D_801E1598.unk6C == 0;
    }
}

s32 func_801C9114(void) {
    D_801E1598.unk64 = 4;
    func_801C8E50(&D_801E1598, 1);
#if OOT_VERSION > NTSC_1_0
    D_801D3710 = 0;
#endif
    if ((D_801E1598.unk6C == 3) || (D_801E1598.unk6C == 4)) {
        return -1;
    } else {
        return D_801E1598.unk6C == 0;
    }
}

s32 func_801C916C(void) {
    s32 var_v1;

    if (LeoDriveExist() != 0) {
        var_v1 = 8;
    } else {
        var_v1 = 0;
    }
    if (var_v1 == 0) {}
    D_801E1598.unk68 = var_v1;
    return var_v1 == 0;
}
