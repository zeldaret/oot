#include "libaudio.h"

ALGlobals* alGlobals = NULL;

void alInit(ALGlobals* g, ALSynConfig* c) {
    if (alGlobals == NULL) {
        alGlobals = g;
        alSynNew(&alGlobals->drvr, c);
    }
}

void alClose(ALGlobals* glob) {
    if (alGlobals != NULL) {
        alSynDelete(&glob->drvr);
        alGlobals = NULL;
    }
}

void alLink(ALLink* ln, ALLink* to) {
    ln->next = to->next;
    ln->prev = to;
    if (to->next != NULL) {
        to->next->prev = ln;
    }
    to->next = ln;
}

void alUnlink(ALLink* ln) {
    if (ln->next != NULL) {
        ln->next->prev = ln->prev;
    }
    if (ln->prev != NULL) {
        ln->prev->next = ln->next;
    }
}
