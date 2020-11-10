#ifndef _COMMAND_MACROS_BASE_H_
#define _COMMAND_MACROS_BASE_H_

/**
 * Command Base macros intended for use in designing of more specific command macros
 * Each macro packs bytes (B), halfowrds (H) and words (W, for consistency) into a single word
 */

#define CMD_BBBB(a, b, c, d) (_SHIFTL(a, 24, 8) | _SHIFTL(b, 16, 8) | _SHIFTL(c, 8, 8) | _SHIFTL(d, 0, 8))

#define CMD_BBH(a, b, c) (_SHIFTL(a, 24, 8) | _SHIFTL(b, 16, 8) | _SHIFTL(c, 0, 16))

#define CMD_HBB(a, b, c) (_SHIFTL(a, 16, 16) | _SHIFTL(b, 8, 8) | _SHIFTL(c, 0, 8))

#define CMD_HH(a, b) (_SHIFTL(a, 16, 16) | _SHIFTL(b, 0, 16))

#define CMD_W(a) (a)

#endif