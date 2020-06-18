#ifndef _Z_EN_DNS_H_
#define _Z_EN_DNS_H_

#include <ultra64.h>
#include <global.h>

struct EnDns;

typedef struct EnDns {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x17C];
} EnDns; // size = 0x02C8

extern const ActorInit En_Dns_InitVars;

#endif
