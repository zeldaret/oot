#ifndef H_MICROUI_N64
#define H_MICROUI_N64

#include "global.h"
//#include <stdbool.h>
#include "microui.h"

void mu64_init();

void mu64_start_frame(Input* input);
void mu64_end_frame();
Gfx* mu64_draw(Gfx* gfx);

int mu64_is_active();
void mu64_set_mouse_speed(float speed);

void mu64_color_rgb8(u8* r, u8* g, u8* b);

extern mu_Context mu_ctx;

#endif