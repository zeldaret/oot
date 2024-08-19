#include "global.h"
#include "n64dd.h"


n64ddStruct_80121AF0* B_80121AF0;

n64ddStruct_80121AF0* func_800ADB30(n64ddStruct_80121AF0* arg0) {
    n64ddStruct_800FF4B0_pointers* temp_a0 = func_800ADBD0();

    if (arg0 != NULL && arg0->unk_00 != NULL) {
        arg0->unk_00(temp_a0, arg0);
    }
    B_80121AF0 = arg0;
    return B_80121AF0;
}

void func_800ADB8C(void) {
    if (B_80121AF0 != NULL) {
        if (B_80121AF0->unk_04 != NULL) {
            B_80121AF0->unk_04();
        }
    }
    B_80121AF0 = NULL;
}

n64ddStruct_800FF4B0_pointers* func_800ADBD0(void) {
    D_800FF4B0.unk_04 = 0;
    D_800FF4B0.unk_08 = (RegEditor*)gRegEditor;
    D_800FF4B0.unk_88 = &gSaveContext;
    return &D_800FF4B0;
}

void func_800ADC00(void) {
}

void func_800ADC08(s32 arg0, s32 arg1, s32 arg2) {
}
