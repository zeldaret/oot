#include "libaudio.h"
#include "synthInternals.h"

void alFilterNew(ALFilter* f, ALCmdHandler h, ALSetParam s, s32 type) {
    f->source = NULL;
    f->handler = h;
    f->setParam = s;
    f->inp = 0;
    f->outp = 0;
    f->type = type;
}
