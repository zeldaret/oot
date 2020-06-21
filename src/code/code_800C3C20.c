#include <global.h>

u8 D_8012D200[] = {
    0, 1, 2, 3, 4, 5, 6,
};

void func_800C3C20(void) {
    u8* iter;
    for (iter = D_8012D200; iter < D_8012D200 + 7; iter++) {
        func_800F87A0(*iter);
    }
}
