#ifndef _ULTRA64_TIME_H_
#define _ULTRA64_TIME_H_

#include <ultra64/os_message.h>

/* Types */

typedef u64 OSTime;

typedef struct OSTimer_s
{
	struct OSTimer_s *next;
	struct OSTimer_s *prev;
	OSTime interval;
	OSTime value;
	OSMesgQueue *mq;
	OSMesg msg;
} OSTimer;


/* Functions */

OSTime osGetTime(void);

int osSetTimer(OSTimer *timer, OSTime countdown, OSTime interval, OSMesgQueue *mq, OSMesg msg);
void osStopTimer(OSTimer *timer);

#endif
