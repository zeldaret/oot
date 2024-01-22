#ifndef TERMINAL_H
#define TERMINAL_H

// VT_: Helper macros for printing coloured text to terminals, using ANSI escape codes
// VT stands for Virtual Terminal

// 3-bit colour codes
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

#define VT_COLOR_EXPAND0(type, colour) #type #colour
#define VT_COLOR_EXPAND1(type, colour) VT_COLOR_EXPAND0(type, colour)
#define VT_COLOR(type, colour) VT_COLOR_EXPAND1(VT_COLOR_##type, VT_COLOR_##colour)

#define VT_ESC "\x1b"
#define VT_CSI "["
#define VT_CUP(x, y) VT_ESC VT_CSI y ";" x "H"
#define VT_ED(n) VT_ESC VT_CSI #n "J"
#define VT_SGR(n) VT_ESC VT_CSI n "m"

// Add more macros if necessary
#define VT_COL(back, fore) VT_SGR(VT_COLOR(BACKGROUND, back) ";" VT_COLOR(FOREGROUND, fore))
#define VT_FGCOL(colour) VT_SGR(VT_COLOR(FOREGROUND, colour))
#define VT_BGCOL(colour) VT_SGR(VT_COLOR(BACKGROUND, colour))
#define VT_RST VT_SGR("")
#define VT_CLS VT_ED(2)

// ASCII BEL character, plays an alert tone
#define BEL '\a'

#endif
