#include <global.h>

void PadUtils_Init(Input* input) {
    bzero(input, sizeof(Input));
}

void func_800FCB70() {
}

void PadUtils_ResetPressRel(Input* input) {
    input->press.in.button = 0;
    input->rel.in.button = 0;
}

u32 PadUtils_CheckCurExact(Input* input, u16 value) {
    return value == input->cur.in.button;
}

u32 PadUtils_CheckCur(Input* input, u16 key) {
    return key == (input->cur.in.button & key);
}

u32 PadUtils_CheckPressed(Input* input, u16 key) {
    return key == (input->press.in.button & key);
}

u32 PadUtils_CheckReleased(Input* input, u16 key) {
    return key == (input->rel.in.button & key);
}

u16 PadUtils_GetCurButton(Input* input) {
    return input->cur.in.button;
}

u16 PadUtils_GetPressButton(Input* input) {
    return input->press.in.button;
}

s8 PadUtils_GetCurX(Input* input) {
    return input->cur.in.x;
}

s8 PadUtils_GetCurY(Input* input) {
    return input->cur.in.y;
}

void PadUtils_SetRelXY(Input* input, s32 x, s32 y) {
    input->rel.in.x = x;
    input->rel.in.y = y;
}

s8 PadUtils_GetRelXImpl(Input* input) {
    return input->rel.in.x;
}

s8 PadUtils_GetRelYImpl(Input* input) {
    return input->rel.in.y;
}

s8 PadUtils_GetRelX(Input* input) {
    return PadUtils_GetRelXImpl(input);
}

s8 PadUtils_GetRelY(Input* input) {
    return PadUtils_GetRelYImpl(input);
}

void PadUtils_UpdateRelXY(Input* input) {
    s32 curX, curY;
    s32 relX, relY;

    curX = PadUtils_GetCurX(input);
    curY = PadUtils_GetCurY(input);

    if (curX > 7) {
        relX = (curX < 0x43) ? curX - 7 : 0x43 - 7;
    } else if (curX < -7) {
        relX = (curX > -0x43) ? curX + 7 : -0x43 + 7;
    } else {
        relX = 0;
    }

    if (curY > 7) {
        relY = (curY < 0x43) ? curY - 7 : 0x43 - 7;

    } else if (curY < -7) {
        relY = (curY > -0x43) ? curY + 7 : -0x43 + 7;
    } else {
        relY = 0;
    }

    PadUtils_SetRelXY(input, relX, relY);
}
