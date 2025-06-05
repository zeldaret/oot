#ifndef TRANSLATION_H
#define TRANSLATION_H

#include "libu64/debug.h"

/**
 * The "T" macro holds translations in English for original debug strings written in Japanese.
 * The translated strings are only direct translations. Certain names or terms may not reflect
 * their in-game localized counterparts.
 *
 * To use translated English strings in the build, change the definition below to "en".
 *
 * Note: This translation macro exists for quality of life purposes.
 *       The original game would not have had a macro like this.
 */
#define T(jp, en) jp

#define LOG_STRING_T(stringJP, stringEN, file, line) LOG(#stringJP, stringJP, "%s", file, line)

#endif
