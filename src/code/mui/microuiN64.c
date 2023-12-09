/**
* @copyright 2023 - Max Bebök
* @license MIT
*/

#include "microuiN64.h"

#define FONT_SIZE  8
#define TILE_WIDTH 10

mu_Context mu_ctx;

static char font_index = 0;
static int joypad_index = 0;

static float mouse_pos_raw[2] = {40,40};
static int mouse_pos[2] = {40,40};
static int cursor_active = true;
static float cursor_speed = 0.025f;
static float n64_mouse_speed = 200.0f;
static int is_n64_mouse = false;

// Approx. for text size
static int text_width(mu_Font fnt, const char *text, int len) {
  if (len == -1) { len = strlen(text); }
  return len * (FONT_SIZE-3);
}

static int text_height(mu_Font fnt) {
  return FONT_SIZE;
}

int mu64_is_active() 
{
  return cursor_active;
}

void mu64_set_mouse_speed(float speed)
{
  cursor_speed = speed;
}

void mu64_init()
{
  /*joypad_index = joypad_idx;
  font_index = font_idx;
  if(!sprite) {
    sprite = sprite_load("rom:/mui.sprite");
  }*/

  mu_init(&mu_ctx);
  mu_ctx.text_width = text_width;
  mu_ctx.text_height = text_height;
  mu_ctx._style.padding = 1;
  mu_ctx._style.title_height = 12;
  mu_ctx._style.spacing = 1;
  mu_ctx._style.indent = 6;
  mu_ctx._style.thumb_size = 8;
  mu_ctx._style.colors[MU_COLOR_TITLEBG] = (mu_Color){0x1c, 0x4f, 0x97, 0xFF};
  mu_ctx._style.colors[MU_COLOR_BORDER]  = (mu_Color){0x10, 0x10, 0x10, 0xFF};

  cursor_active = true;
  is_n64_mouse = false;
}

void mu64_start_frame(Input* input)
{
  if(CHECK_BTN_ALL(input->press.button, BTN_L)) {
    cursor_active = !cursor_active;
  }

  if(cursor_active) {
    float delta_x = (float)(input->cur.stick_x);
    float delta_y = (float)(input->cur.stick_y);

    input->cur.stick_x = 0;
    input->cur.stick_y = 0;

    if(is_n64_mouse) {
      delta_x *= n64_mouse_speed;
      delta_y *= n64_mouse_speed;
    } else {
      delta_x = fabsf(delta_x) * delta_x;
      delta_y = fabsf(delta_y) * delta_y;
    }

    mouse_pos_raw[0] += delta_x * cursor_speed;
    mouse_pos_raw[1] -= delta_y * cursor_speed;
    
    mouse_pos_raw[0] = CLAMP(mouse_pos_raw[0], 0.0f, SCREEN_WIDTH-8.0f);
    mouse_pos_raw[1] = CLAMP(mouse_pos_raw[1], 0.0f, SCREEN_HEIGHT-8.0f);

    mouse_pos[0] = (int)mouse_pos_raw[0];
    mouse_pos[1] = (int)mouse_pos_raw[1];

    if(CHECK_BTN_ALL(input->press.button, BTN_A)) {
      mu_input_mousedown(&mu_ctx, mouse_pos[0], mouse_pos[1], MU_MOUSE_LEFT);
    } else if(!CHECK_BTN_ALL(input->cur.button, BTN_A)) {
      mu_input_mouseup(&mu_ctx, mouse_pos[0], mouse_pos[1], MU_MOUSE_LEFT);
    } else {
      mu_input_mousemove(&mu_ctx, mouse_pos[0], mouse_pos[1]);
    }
  }

  mu_begin(&mu_ctx);
}

void mu64_end_frame()
{
  mu_end(&mu_ctx);
}

Gfx* mu64_draw(Gfx* gfx)
{
  if(!cursor_active)return gfx;

  const char ICONS[5] = {' ', 'X', '+', '-', '^'};

  mu_Command *cmd = NULL;
  GfxPrint printer;
  GfxPrint_Init(&printer);
  GfxPrint_Open(&printer, gfx);
  GfxPrint_SetColor(&printer, 0xFF, 0xFF, 0xFF, 0xFF);
  GfxPrint_SetPos(&printer, 0, 0);
  printer.flags &= ~GFXP_FLAG_SHADOW;
  int gfxOpen = true;
  int isIcon = false;

  while (mu_next_command(&mu_ctx, &cmd))
  {
    switch (cmd->type) {
      case MU_COMMAND_TEXT:
        if(!gfxOpen) {
          GfxPrint_Open(&printer, gfx);
          printer.flags &= ~GFXP_FLAG_SHADOW;
        }

        GfxPrint_SetColor(&printer, cmd->text.color.r, cmd->text.color.g, cmd->text.color.b, cmd->text.color.a);
        GfxPrint_SetPosPx(&printer, cmd->text.pos.x, cmd->text.pos.y);
        GfxPrint_Printf(&printer, cmd->text.str);
        gfxOpen = true;
      break;

      case MU_COMMAND_RECT:
        if(cmd->rect.color.a != 0) {
            if(gfxOpen) {
              gfx = GfxPrint_Close(&printer);
            }
            if(gfxOpen || isIcon) {
              gDPPipeSync(gfx++);
              gDPSetRenderMode(gfx++, G_RM_PASS, G_RM_XLU_SURF2);
              gDPSetCombineMode(gfx++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
              isIcon = false;
            } 

            //gDPSetPrimColor(gfx++, *(int*)(void*)&cmd->rect.color);
            gDPSetPrimColor(gfx++, 0, 0, cmd->rect.color.r, cmd->rect.color.g, cmd->rect.color.b, cmd->rect.color.a);
            gDPFillRectangle(gfx++, 
              cmd->rect.rect.x, cmd->rect.rect.y,
              cmd->rect.rect.x + cmd->rect.rect.w,
              cmd->rect.rect.y + cmd->rect.rect.h
            );

            gfxOpen = false;
        }
      break;

      case MU_COMMAND_ICON:
        if(cmd->icon.id > 0) {
          // @TODO: draw actual icon
          if(!gfxOpen) {
            GfxPrint_Open(&printer, gfx);
            printer.flags &= ~GFXP_FLAG_SHADOW;
            gfxOpen = true;
          }

          GfxPrint_SetPosPx(&printer,  cmd->icon.rect.x+2,  cmd->icon.rect.y +2);
          GfxPrint_SetColor(&printer, 0,100,0, 0xFF);
          GfxPrint_Printf(&printer, "%c", ICONS[cmd->icon.id]);
          //gfx = GfxPrint_Close(&printer);
          //gfxOpen = false;
        }
      break;

      case MU_COMMAND_CLIP: {
        int clipEndX = cmd->clip.rect.x + cmd->clip.rect.w;
        int clipEndY = cmd->clip.rect.y + cmd->clip.rect.h;
        gDPSetScissor(gfx++, G_SC_NON_INTERLACE,
          cmd->clip.rect.x,  cmd->clip.rect.y,
          clipEndX > SCREEN_WIDTH ? SCREEN_WIDTH : clipEndX,
          clipEndY > SCREEN_HEIGHT ? SCREEN_HEIGHT : clipEndY
        );
        
      } break;
    }
  }

  gDPSetScissor(gfx++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
  
  if(!gfxOpen) {
    GfxPrint_Open(&printer, gfx);
    printer.flags &= ~GFXP_FLAG_SHADOW;
    gfxOpen = true;
  }

  // @TODO: draw actual icon
  GfxPrint_SetPosPx(&printer,   mouse_pos[0], mouse_pos[1]);
  GfxPrint_SetColor(&printer, 0,100,0, 0xFF);
  GfxPrint_Printf(&printer, "@");

  if(gfxOpen)gfx = GfxPrint_Close(&printer);
  GfxPrint_Destroy(&printer);
  return gfx;
}

void mu64_color_rgb8(u8 *r, u8 *g, u8 *b)
{
  mu_Context* ctx = &mu_ctx;
  float colorF32[3] = {*r,*g,*b};
  int rowSizeA[2] = { -30, -1 };
  mu_layout_row(ctx, 2, rowSizeA, 39);

  mu_layout_begin_column(ctx);
    int rowSizeB[2] = { 10, -1 };
    mu_layout_row(ctx, 2, rowSizeB, 0);
    mu_label(ctx, "R"); mu_slider(ctx, &colorF32[0], 0, 255);
    mu_label(ctx, "G"); mu_slider(ctx, &colorF32[1], 0, 255);
    mu_label(ctx, "B"); mu_slider(ctx, &colorF32[2], 0, 255);
  mu_layout_end_column(ctx);

  *r = (u8)colorF32[0];
  *g = (u8)colorF32[1];
  *b = (u8)colorF32[2];

  mu_Rect rect = mu_layout_next(ctx);
  mu_draw_rect(ctx, rect, mu_color(*r, *g, *b, 255));
}
