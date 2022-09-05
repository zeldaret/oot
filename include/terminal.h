#ifndef TERMINAL_H
#define TERMINAL_H

// 3-bit color codes
#define TE_COLOR_BLACK      0
#define TE_COLOR_RED        1
#define TE_COLOR_GREEN      2
#define TE_COLOR_YELLOW     3
#define TE_COLOR_BLUE       4
#define TE_COLOR_MAGENTA    5
#define TE_COLOR_CYAN       6
#define TE_COLOR_WHITE      7

#define TE_COLOR_FOREGROUND 3
#define TE_COLOR_BACKGROUND 4

#define TE_COLOR_EXPAND0(type, color) #type #color
#define TE_COLOR_EXPAND1(type, color) TE_COLOR_EXPAND0(type, color)
#define TE_COLOR(type, color) TE_COLOR_EXPAND1(TE_COLOR_##type, TE_COLOR_##color)

#define TE_ESC "\x1b"
#define TE_CSI "["
#define TE_CUP(x, y) TE_ESC TE_CSI y ";" x "H"
#define TE_ED(n) TE_ESC TE_CSI #n "J"
#define TE_SGR(n) TE_ESC TE_CSI n "m"

// Add more macros if necessary
#define TE_COL(back, fore) TE_SGR(TE_COLOR(BACKGROUND, back) ";" TE_COLOR(FOREGROUND, fore))
#define TE_FGCOL(color) TE_SGR(TE_COLOR(FOREGROUND, color))
#define TE_BGCOL(color) TE_SGR(TE_COLOR(BACKGROUND, color))
#define TE_RST TE_SGR("")
#define TE_CLS TE_ED(2)

// ASCII BEL character, plays an alert tone
#define BEL '\a'

#endif
