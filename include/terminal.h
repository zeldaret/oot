#ifndef TERMINAL_H
#define TERMINAL_H

// VT_: Helper macros for printing colored text to terminals, using ANSI escape codes
// VT stands for Virtual Terminal

// 3-bit color codes
#define VT_COLOR_BLACK      0
#define VT_COLOR_RED        1
#define VT_COLOR_GREEN      2
#define VT_COLOR_YELLOW     3
#define VT_COLOR_BLUE       4
#define VT_COLOR_MAGENTA    5
#define VT_COLOR_CYAN       6
#define VT_COLOR_WHITE      7

#define VT_COLOR_FOREGROUND 3
#define VT_COLOR_BACKGROUND 4

#define VT_COLOR_EXPAND0(type, color) #type #color
#define VT_COLOR_EXPAND1(type, color) VT_COLOR_EXPAND0(type, color)
#define VT_COLOR(type, color) VT_COLOR_EXPAND1(VT_COLOR_##type, VT_COLOR_##color)

#define VT_ESC "\x1b"
#define VT_CSI "["
#define VT_CUP(x, y) VT_ESC VT_CSI y ";" x "H"
#define VT_ED(n) VT_ESC VT_CSI #n "J"
#define VT_SGR(n) VT_ESC VT_CSI n "m"

// Add more macros if necessary
#define VT_COL(back, fore) VT_SGR(VT_COLOR(BACKGROUND, back) ";" VT_COLOR(FOREGROUND, fore))
#define VT_FGCOL(color) VT_SGR(VT_COLOR(FOREGROUND, color))
#define VT_BGCOL(color) VT_SGR(VT_COLOR(BACKGROUND, color))
#define VT_RST VT_SGR("")
#define VT_CLS VT_ED(2)

// ASCII BEL character, plays an alert tone
#define BEL '\a'

#endif
