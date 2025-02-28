#ifndef STDARG_H
#define STDARG_H

#if defined(__sgi) /* IDO */

#ifndef _VA_LIST_
# define _VA_LIST_
typedef char* va_list;
#endif

#define _INT    0
#define _FP     1
#define _STRUCT 2

#define _VA_FP_SAVE_AREA 0x10

#define _VA_ALIGN(p, a) (((unsigned int)(((char*)p) + ((a) > 4 ? (a) : 4) - 1)) & -((a) > 4 ? (a) : 4))

#define va_start(list, parmN) (list = ((va_list)&parmN + sizeof(parmN)))

#define __va_stack_arg(list, mode)                                      \
    (                                                                   \
        ((list) = (char*)_VA_ALIGN(list, __builtin_alignof(mode)) +     \
                    _VA_ALIGN(sizeof(mode), 4)),                        \
        (((char*)list) - (_VA_ALIGN(sizeof(mode), 4) - sizeof(mode)))   \
    )

#define __va_double_arg(list, mode)                                                                 \
    (                                                                                               \
        (((long)list & 0x1) /* 1 byte aligned? */                                                   \
            ? (list = (char*)((long)list + 7), (char*)((long)list - 6 - _VA_FP_SAVE_AREA))          \
            : (((long)list & 0x2) /* 2 byte aligned? */                                             \
                ? (list = (char*)((long)list + 10), (char*)((long)list - 24 - _VA_FP_SAVE_AREA))    \
                : __va_stack_arg(list, mode)))                                                      \
    )

#define va_arg(list, mode)                                  \
    ((mode*)(((__builtin_classof(mode) == _FP &&            \
               __builtin_alignof(mode) == sizeof(double))   \
                   ? __va_double_arg(list, mode)            \
                   : __va_stack_arg(list, mode))))[-1]

/* No cleanup processing is required for the end of a varargs list: */
#define va_end(__list)

#elif defined(EGCS) /* EGCS */

typedef char * __gnuc_va_list;

#define __va_rounded_size(__TYPE)  \
  (((sizeof (__TYPE) + sizeof (int) - 1) / sizeof (int)) * sizeof (int))

#define va_start(__AP, __LASTARG) \
  (__AP = (__gnuc_va_list) __builtin_next_arg (__LASTARG))

#define va_end(__AP)    ((void)0)

/* We cast to void * and then to TYPE * because this avoids
   a warning about increasing the alignment requirement.  */
#define va_arg(__AP, __type)                                                                \
  ((__type *) (void *) (__AP = (char *) ((__alignof__(__type) > 4                           \
                                ? ((__PTRDIFF_TYPE__)__AP + 8 - 1) & -8                     \
                                : ((__PTRDIFF_TYPE__)__AP + 4 - 1) & -4)                    \
                                + __va_rounded_size (__type))),                             \
                                *(__type *) (void *) (__AP - __va_rounded_size (__type)))

typedef __gnuc_va_list va_list;

#else /* Modern GCC */

// When building with modern GCC, use the official vaarg macros to avoid warnings and possibly bad codegen.
#define va_list  __builtin_va_list
#define va_start __builtin_va_start
#define va_arg   __builtin_va_arg
#define va_end   __builtin_va_end

#endif

#endif
