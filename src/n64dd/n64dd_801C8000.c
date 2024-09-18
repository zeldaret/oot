// Does some command processing
#include "global.h"
#include "n64dd.h"
#include "versions.h"

void func_801C8554(void);
void func_801C8578(void* arg0, void* arg1, OSId id, void* sp, OSPri pri);
void func_801C8638(void (*arg0)(void*, void*, void*), s32 arg1, void (*arg2)(void*, uintptr_t, size_t));
void func_801C868C(void* arg0, void* arg1, void* arg2, u8 arg3);
s8 func_801C8770(void);
s32 func_801C87C0(void);
s32 func_801C87FC(void);
s32 func_801C8844(void);
s32 func_801C885C(void);
s32 func_801C88AC(void);
s32 func_801C88FC(void);

s32 D_801D2E60 = 0;
s32 D_801D2E64 = 0;

typedef struct struct_801D2E68 {
    /* 0x0 */ void (*unk_0)(struct_801E0D18*);
    /* 0x4 */ s32 (*unk_4)(struct_801E0D18*);
} struct_801D2E68; // size = 0x8

struct_801D2E68 D_801D2E68[5] = {
    { func_801C81EC, func_801C91E0 }, { func_801C832C, func_801C9260 }, { func_801C83A0, func_801C9260 },
    { func_801C8414, func_801C9334 }, { func_801C8414, func_801C93C4 },
};

s32 D_801D2E90 = 0;

OSMesgQueue* B_801E0D10[2];
struct_801E0D18 B_801E0D18;
OSMesg B_801E0D88[1];
OSMesg B_801E0D90[8];
OSThread B_801E0DB0;

s32 func_801C8000(struct_801D9D50* arg0) {
    switch (arg0->unk_00) {
        case 0:
            if (func_801C8844() != 0) {
                return 1;
            }
            func_801C8554();
            break;
        case 1:
            func_801C8578(arg0->unk_1C, arg0->unk_20, arg0->unk_24, arg0->unk_28, arg0->unk_2C);
            break;
        case 2:
            func_801C8638(arg0->unk_0C, arg0->unk_10, arg0->unk_14);
            break;
        case 3:
            if (func_801C8844() != 0) {
                return 1;
            }
            func_801C868C(arg0->unk_18, arg0->unk_1C, arg0->unk_20, 1);
            break;
        case 4:
            if (func_801C8844() != 0) {
                return 1;
            }
            func_801C868C(arg0->unk_18, arg0->unk_1C, arg0->unk_20, 2);
            break;
        case 5:
            arg0->unk_08 = func_801C8770();
            return arg0->unk_08;
        case 7:
            return func_801C87FC();
        case 6:
            return func_801C8844();
        case 8:
            arg0->unk_04 = func_801C87C0();
            return arg0->unk_04;
        case 9:
            return func_801C885C();
        case 10:
            return func_801C88AC();
        case 11:
            return func_801C88FC();
        case 12:
            D_801D2EA0 = 0;
            break;
        case 13:
            D_801D2EA0 = 1;
            break;
    }
    return 0;
}

void func_801C819C(UNK_TYPE arg0) {
    if (arg0 != 0) {
        D_801D2E60 = 1;
    } else {
        D_801D2E60 = 2;
    }
}

s32 func_801C81C4(void) {
    return D_801D2E60;
}

s32 func_801C81D4(void) {
    return D_801D2E64 == 1;
}

void func_801C81EC(struct_801E0D18* arg0) {
    osCreateMesgQueue(&arg0->unk_1C, B_801E0D88, ARRAY_COUNT(B_801E0D88));

    if (gCurrentRegion == 1) {
        arg0->unk_68 = LeoCJCreateLeoManager(LEO_PRIORITY_WRK, LEO_PRIORITY_INT, B_801E0D90, ARRAY_COUNT(B_801E0D90));
    } else {
        arg0->unk_68 = LeoCACreateLeoManager(LEO_PRIORITY_WRK, LEO_PRIORITY_INT, B_801E0D90, ARRAY_COUNT(B_801E0D90));
    }

    if ((arg0->unk_68 == LEO_ERROR_DEVICE_COMMUNICATION_FAILURE) || (arg0->unk_68 == LEO_ERROR_GOOD)) {
        D_801D2E64 = 1;
    }
}

void func_801C8298(struct_801E0D18* arg0) {
    LEOCmd sp1C;

    // TODO: passing a pointer as a logical block address?
    LeoSeek(&sp1C, (u32)&arg0->diskId, &arg0->unk_1C);
    osRecvMesg(&arg0->unk_1C, (OSMesg*)&arg0->unk_68, OS_MESG_BLOCK);
}

void func_801C82E0(struct_801E0D18* arg0) {
    LEOCmd sp1C;

    LeoSpdlMotor(&sp1C, 4, &arg0->unk_1C);
    osRecvMesg(&arg0->unk_1C, (OSMesg*)&arg0->unk_68, OS_MESG_BLOCK);
}

void func_801C832C(struct_801E0D18* arg0) {
    s32 sp34;
    s32 startLBA = arg0->unk_5C;

    if (LeoByteToLBA(startLBA, arg0->unk_60, &sp34) == LEO_ERROR_GOOD) {
        OSMesgQueue* sp28 = &arg0->unk_1C;

        LeoReadWrite(&arg0->unk_00, OS_READ, startLBA, (void*)arg0->unk_58, sp34, sp28);
        osRecvMesg(sp28, (OSMesg*)&arg0->unk_68, OS_MESG_BLOCK);
    }
}

void func_801C83A0(struct_801E0D18* arg0) {
    s32 sp34;
    s32 startLBA = arg0->unk_58;

    if (LeoByteToLBA(startLBA, arg0->unk_60, &sp34) == LEO_ERROR_GOOD) {
        OSMesgQueue* sp28 = &arg0->unk_1C;

        LeoReadWrite(&arg0->unk_00, OS_WRITE, startLBA, (void*)arg0->unk_5C, sp34, sp28);
        osRecvMesg(sp28, (OSMesg*)&arg0->unk_68, OS_MESG_BLOCK);
    }
}

void func_801C8414(struct_801E0D18* arg0) {
    arg0->unk_68 = 9;
}

void func_801C8424(struct_801E0D18* arg0) {
    struct_801D2E68* temp_v0;
    s32 (*temp_s2)(struct_801E0D18*);
    void (*aux)(struct_801E0D18*);
    s32 temp_v0_2;

    arg0->unk_68 = -1;
    if ((func_801C81D4() != 0) || (arg0->unk_64 == 0)) {
        arg0->unk_66 = 1;
        temp_v0 = &D_801D2E68[arg0->unk_64];
        aux = temp_v0->unk_0;
        temp_s2 = temp_v0->unk_4;
        do {
            aux(arg0);
            temp_v0_2 = temp_s2(arg0);
        } while (temp_v0_2 == 2);
        arg0->unk_6C = temp_v0_2;
        if (arg0->unk_64 == 0) {
            func_801C819C(temp_v0_2);
        }
        arg0->unk_66 = 0;
    }
}

void func_801C84D4(void* arg) {
    while (true) {
        struct_801E0D18* sp24;

        osRecvMesg(B_801E0D10[0], (OSMesg*)&sp24, OS_MESG_BLOCK);
        func_801C8424(sp24);
        osSendMesg(B_801E0D10[1], NULL, OS_MESG_BLOCK);
    }
}

void func_801C8554(void) {
    osDestroyThread(&B_801E0DB0);
}

void func_801C8578(void* arg0, void* arg1, OSId id, void* sp, OSPri pri) {
    B_801E0D10[0] = (OSMesgQueue*)arg0;
    B_801E0D10[1] = (OSMesgQueue*)arg1;
    osCreateThread(&B_801E0DB0, id, &func_801C84D4, NULL, sp, pri);
    osStartThread(&B_801E0DB0);
}

void func_801C85F0(struct_801E0D18* arg0, s32 arg1) {
    if (arg1 == 1) {
        func_801C8424(arg0);
    } else {
        osSendMesg(B_801E0D10[0], arg0, OS_MESG_BLOCK);
    }
}

void func_801C8638(void (*arg0)(void*, void*, void*), s32 arg1, void (*arg2)(void*, uintptr_t, size_t)) {
    s32 var0 = 0;

    func_801C9B50(arg1, arg2);
    D_801D2EB4 = arg0;
    B_801E0D18.unk_64 = var0;
    B_801E0D18.unk_65 = var0;
    func_801C85F0(&B_801E0D18, 0);
}

void func_801C868C(void* arg0, void* arg1, void* arg2, u8 arg3) {
    s32 var0 = (s32)arg0;
    s32 var1 = (s32)arg1;
    s32 var2 = (s32)arg2;
    s32 var3 = arg3;
    s32 var4 = 4;

    if (D_801D2E90 == 1) {
        D_801D2E90 = 0;
        B_801E0D18.unk_64 = var4;
        func_801C85F0(&B_801E0D18, 1);
        if (B_801E0D18.unk_6C == 3 || B_801E0D18.unk_6C == 4) {
            return;
        }
    }

    B_801E0D18.unk_58 = var0;
    B_801E0D18.unk_5C = var1;
    B_801E0D18.unk_60 = var2;
    B_801E0D18.unk_64 = var3;
    func_801C85F0(&B_801E0D18, 0);
}

s32 func_801C873C(struct_801E0D18* arg0) {
    u8 sp1F;

    arg0->unk_68 = LeoTestUnitReady(&sp1F);
    return !(sp1F & LEO_TEST_UNIT_MR);
}

s8 func_801C8770(void) {
    s32 temp = func_801C873C(&B_801E0D18);

    if (B_801E0D18.unk_68 == LEO_ERROR_BUSY) {
        return 0;
    }

    if (!temp) {
        return 2;
    }

    return 1;
}

s32 func_801C87C0(void) {
    if (func_801C8844() == 0) {
        if (B_801E0D18.unk_68 != 0) {
            return B_801E0D18.unk_68;
        }
    }

    return -1;
}

s32 func_801C87FC(void) {
    s32* new_var = &B_801E0D18.unk_68;
    s32 temp_v0;

    if (func_801C8844() == 0) {
        temp_v0 = B_801E0D18.unk_6C;

        if ((temp_v0 == 3) || (temp_v0 == 4)) {
            return *new_var;
        }
    }

    return 0;
}

s32 func_801C8844(void) {
    return B_801E0D18.unk_66 == 1;
}

s32 func_801C885C(void) {
    B_801E0D18.unk_64 = 3;
    func_801C85F0(&B_801E0D18, 1);

#if OOT_VERSION >= NTSC_1_1
    D_801D2E90 = 0;
#endif

    if ((B_801E0D18.unk_6C == 3) || (B_801E0D18.unk_6C == 4)) {
        return -1;
    }
    return B_801E0D18.unk_6C == 0;
}

s32 func_801C88AC(void) {
    s32 phi_v0;

    B_801E0D18.unk_64 = 4;
    func_801C85F0(&B_801E0D18, 1);

#if OOT_VERSION >= NTSC_1_1
    D_801D2E90 = 0;
#endif

    if ((B_801E0D18.unk_6C == 3) || (B_801E0D18.unk_6C == 4)) {
        return -1;
    }
    return B_801E0D18.unk_6C == 0;
}

s32 func_801C88FC(void) {
    s32 temp = 0;
    s32 phi_v1;

    if (LeoDriveExist()) {
        phi_v1 = 8;
    } else {
        phi_v1 = 0;
    }

    temp = phi_v1 == temp;

    B_801E0D18.unk_68 = phi_v1;

    return temp;
}
