#include "global.h"

void func_8008E6A0(SubGlobalContext7B8* this) {
    this->counter = 0;
    this->toggle = false;
}

u32 func_8008E6AC(SubGlobalContext7B8* this, Input* input) {
    if (CHECK_BTN_ALL(input->cur.button, BTN_R) && CHECK_BTN_ALL(input->press.button, BTN_DDOWN)) {
        this->toggle = !this->toggle;
    }
    if (!this->toggle) {
        goto ret_true;
    }

    if (CHECK_BTN_ALL(input->cur.button, BTN_Z)) {
        if (CHECK_BTN_ALL(input->press.button, BTN_R)) {
            goto ret_true;
        }
        if (CHECK_BTN_ALL(input->cur.button, BTN_R)) {
            this->counter++;
            if (this->counter >= 9) {
                goto ret_true;
            }
        }
    }

    goto ret_false;

ret_true:
    this->counter = 0;
    return true;

ret_false:
    return false;
}
