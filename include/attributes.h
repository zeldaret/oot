#ifndef ATTRIBUTES_H
#define ATTRIBUTES_H

#ifndef __GNUC__
#define __attribute__(x)
#endif

#define UNUSED      __attribute__((unused))
#define FALLTHROUGH __attribute__((fallthrough))
#define NORETURN    __attribute__((noreturn))

#endif
