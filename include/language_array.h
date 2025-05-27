#ifndef LANGUAGE_ARRAY_H
#define LANGUAGE_ARRAY_H

#include "versions.h"

#if OOT_NTSC
#define LANGUAGE_ARRAY(jpn, eng, ger, fra) { jpn, eng }
#else
#define LANGUAGE_ARRAY(jpn, eng, ger, fra) { eng, ger, fra }
#endif

#endif
