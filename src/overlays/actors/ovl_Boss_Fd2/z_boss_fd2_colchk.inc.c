#include "z64collision_check.h"

static ColliderJntSphElementInit sJntSphElementsInit[9] = {
    {
        {
            ELEM_MATERIAL_UNK3,
            { 0xFFCFFFFF, 0x00, 0x20 },
            { 0xFFCDFFFE, 0x00, 0x00 },
            ATELEM_NONE,
            ACELEM_ON | ACELEM_HOOKABLE,
            OCELEM_ON,
        },
        { 35, { { 6000, 0, 0 }, 21 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK2,
            { 0xFFCFFFFF, 0x00, 0x20 },
            { 0xFFCDFFFE, 0x00, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_NONE,
            OCELEM_ON,
        },
        { 18, { { 4000, 0, 0 }, 13 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK2,
            { 0xFFCFFFFF, 0x00, 0x20 },
            { 0xFFCDFFFE, 0x00, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_NONE,
            OCELEM_ON,
        },
        { 19, { { 3000, 0, 0 }, 13 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK2,
            { 0xFFCFFFFF, 0x00, 0x20 },
            { 0xFFCDFFFE, 0x00, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_NONE,
            OCELEM_ON,
        },
        { 20, { { 4000, 0, 0 }, 15 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK2,
            { 0xFFCFFFFF, 0x00, 0x20 },
            { 0xFFCDFFFE, 0x00, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_NONE,
            OCELEM_ON,
        },
        { 24, { { 4000, 0, 0 }, 13 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK2,
            { 0xFFCFFFFF, 0x00, 0x20 },
            { 0xFFCDFFFE, 0x00, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_NONE,
            OCELEM_ON,
        },
        { 25, { { 3000, 0, 0 }, 13 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK2,
            { 0xFFCFFFFF, 0x00, 0x20 },
            { 0xFFCDFFFE, 0x00, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_NONE,
            OCELEM_ON,
        },
        { 26, { { 3500, 1500, 0 }, 15 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK2,
            { 0xFFCFFFFF, 0x00, 0x20 },
            { 0xFFCDFFFE, 0x00, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_NONE,
            OCELEM_ON,
        },
        { 17, { { 0, 0, 0 }, 26 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK2,
            { 0xFFCFFFFF, 0x00, 0x20 },
            { 0xFFCDFFFE, 0x00, 0x00 },
            ATELEM_ON | ATELEM_SFX_NORMAL,
            ACELEM_NONE,
            OCELEM_ON,
        },
        { 30, { { 0, 0, 0 }, 17 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COL_MATERIAL_METAL,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_PLAYER,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    9,
    sJntSphElementsInit,
};
