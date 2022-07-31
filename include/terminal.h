#ifndef TERMINAL_H
#define TERMINAL_H

// 3-bit color codes
#define T_COLOR_BLACK      0
#define T_COLOR_RED        1
#define T_COLOR_GREEN      2
#define T_COLOR_YELLOW     3
#define T_COLOR_BLUE       4
#define T_COLOR_MAGENTA    5
#define T_COLOR_CYAN       6
#define T_COLOR_WHITE      7

#define T_COLOR_FOREGROUND 3
#define T_COLOR_BACKGROUND 4

#define T_COLOR_EXPAND0(type, color) #type #color
#define T_COLOR_EXPAND1(type, color) T_COLOR_EXPAND0(type, color)
#define T_COLOR(type, color) T_COLOR_EXPAND1(T_COLOR_##type, T_COLOR_##color)

#define T_ESC "\x1b"
#define T_CSI "["
#define T_CUP(x, y) T_ESC T_CSI y ";" x "H"
#define T_ED(n) T_ESC T_CSI #n "J"
#define T_SGR(n) T_ESC T_CSI n "m"

// Add more macros if necessary
#define T_COL(back, fore) T_SGR(T_COLOR(BACKGROUND, back) ";" T_COLOR(FOREGROUND, fore))
#define T_FGCOL(color) T_SGR(T_COLOR(FOREGROUND, color))
#define T_BGCOL(color) T_SGR(T_COLOR(BACKGROUND, color))
#define T_RST T_SGR("")
#define T_CLS T_ED(2)

// ASCII BEL character, plays an alert tone
#define BEL '\a'

#endif
