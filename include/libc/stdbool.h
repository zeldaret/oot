#ifndef STDBOOL_H
#define STDBOOL_H

#define __bool_true_false_are_defined 1

#ifndef __cplusplus

#if (__STDC_VERSION__ >= 199901L)
#define bool    _Bool
#else
#define bool    unsigned int
#endif

#define false   0
#define true    1

#endif

#endif
