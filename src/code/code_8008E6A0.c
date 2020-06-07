#include <global.h>

void func_8008E6A0(SubGlobalContext7B8* this) {
    this->counter = 0;
    this->toggle = false;
}

u32 func_8008E6AC(SubGlobalContext7B8* this, Input* input) {
    if (CHECK_PAD(input->cur, R_TRIG) && CHECK_PAD(input->press, D_JPAD)) {
        this->toggle = !this->toggle;
    }
    if (!this->toggle) {
        goto ret_true;
    }

    if (CHECK_PAD(input->cur, Z_TRIG)) {

        if (CHECK_PAD(input->press, R_TRIG)) {
            goto ret_true;
        }

        if (CHECK_PAD(input->cur, R_TRIG)) {
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
