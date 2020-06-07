#ifndef _ULTRA64_INTERRUPT_H_
#define _ULTRA64_INTERRUPT_H_

/* Types */

typedef u32 OSIntMask;


/* Functions */

OSIntMask osGetIntMask(void);
OSIntMask osSetIntMask(OSIntMask);

#endif
