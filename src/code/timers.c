#include <global.h>

volatile OSTime D_8016A520;
volatile OSTime D_8016A528;
volatile OSTime D_8016A530;
volatile OSTime D_8016A538;
volatile OSTime D_8016A540;
volatile OSTime D_8016A548;
volatile OSTime D_8016A550;
volatile OSTime D_8016A558;
volatile OSTime gRSPAudioTotalTime;
volatile OSTime gRSPGFXTotalTime;
volatile OSTime gRSPOtherTotalTime;
/* not sure where this belongs.  The lo half of gRSPOtherTotalTime
 * originally had a size of 0xC which lead me to believe that gRDPTotalTime
 * could be in speed_meter.c, but that doesn't make sense with it's usage.
 * My best guess is that that this was some unused timer at some point. */
char unk_8016A578[8];
volatile OSTime gRDPTotalTime;
SpeedMeterTimeEntry* gSpeedMeterTimeEntryPtr;
