#ifndef _COMMAND_MACROS_BASE_H_
#define _COMMAND_MACROS_BASE_H_

/**
 * Command base
 * Packs four bytes into a word
 */
#define CMD_BBBB(a, b, c, d) (_SHIFTL(a, 24, 8) | _SHIFTL(b, 16, 8) | _SHIFTL(c, 8, 8) | _SHIFTL(d, 0, 8))

/**
 * Command base
 * Packs two bytes and a halfword into a word
 */
#define CMD_BBH(a, b, c) (_SHIFTL(a, 24, 8) | _SHIFTL(b, 16, 8) | _SHIFTL(c, 0, 16))

/**
 * Command base
 * Packs a halfword and two bytes into a word
 */
#define CMD_HBB(a, b, c) (_SHIFTL(a, 16, 16) | _SHIFTL(b, 8, 8) | _SHIFTL(c, 0, 8))

/**
 * Command base
 * Packs two halfwords into a word
 */
#define CMD_HH(a, b) (_SHIFTL(a, 16, 16) | _SHIFTL(b, 0, 16))

/**
 * Command base
 * Packs a word into a word (consistency)
 */
#define CMD_W(a) (a)

#endif