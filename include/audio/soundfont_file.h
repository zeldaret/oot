#ifndef SOUNDFONT_FILE_H
#define SOUNDFONT_FILE_H

#include "libc/stdbool.h"
#include "alignment.h"
#include "attributes.h"
#include "z64audio.h"

// Envelope definitions

#define ENVELOPE_POINT(delay, target) { (delay),      (target) }
#define ENVELOPE_DISABLE()            { ADSR_DISABLE, 0        }
#define ENVELOPE_HANG()               { ADSR_HANG,    0        }
#define ENVELOPE_GOTO(index)          { ADSR_GOTO,    (index)  }
#define ENVELOPE_RESTART()            { ADSR_RESTART, 0        }

// Instrument definitions

#define INSTR_SAMPLE_NONE { NULL, 0.0f }
#define INSTR_SAMPLE_LO_NONE 0
#define INSTR_SAMPLE_HI_NONE 127

// Explicit padding is sometimes required where soundfont data was padded to 0x10 bytes (possibly due to source file
// splits in the original soundfonts?)
// It's less convenient for us to emit multiple files per soundfont, so instead we fill in the padding manually.

#ifndef GLUE
#define GLUE(a,b) a##b
#endif
#ifndef GLUE2
#define GLUE2(a,b) GLUE(a,b)
#endif

#ifdef __sgi
// For IDO, we have to add explicit padding arrays
#define SF_PAD4() static u8 GLUE2(_pad, __LINE__) [] = { 0,0,0,0 }
#define SF_PAD8() static u8 GLUE2(_pad, __LINE__) [] = { 0,0,0,0,0,0,0,0 }
#define SF_PADC() static u8 GLUE2(_pad, __LINE__) [] = { 0,0,0,0,0,0,0,0,0,0,0,0 }
#else
// For other compilers, the soundfont compiler (sfc) emits alignment attributes that handle this automatically
#define SF_PAD4()
#define SF_PAD8()
#define SF_PADC()
#endif

#endif
