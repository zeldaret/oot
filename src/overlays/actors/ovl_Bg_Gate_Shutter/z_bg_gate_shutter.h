#ifndef Z_BG_GATE_SHUTTER_H
#define Z_BG_GATE_SHUTTER_H

#include "ultra64.h"
#include "actor.h"

struct BgGateShutter;

typedef void (*BgGateShutterActionFunc)(struct BgGateShutter*, struct PlayState*);

/**
 * Requests written to BgGateShutter.openingState by the Kakariko gate guard (EnHeishi2).
 * The gate resets the value to GATE_SHUTTER_REQUEST_NONE once it has finished moving.
 */
typedef enum BgGateShutterRequest {
    /* -1 */ GATE_SHUTTER_REQUEST_CLOSE = -1, // Keaton Mask sale refused
    /*  0 */ GATE_SHUTTER_REQUEST_NONE,       // No request, or the last movement has finished
    /*  1 */ GATE_SHUTTER_REQUEST_OPEN,       // Zelda's Letter shown; ignored once INFTABLE_76 is set
    /*  2 */ GATE_SHUTTER_REQUEST_REOPEN      // Keaton Mask sold after the gate was closed
} BgGateShutterRequest;

typedef struct BgGateShutter {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgGateShutterActionFunc actionFunc;
    /* 0x0168 */ s16 openingState; // BgGateShutterRequest
    /* 0x016C */ Vec3f homePos; // never read
    /* 0x0178 */ s16 timer;
} BgGateShutter; // size = 0x017C

#endif
