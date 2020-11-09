#include "z_demo_gt.h"
#include "vt.h"
#include "global.h"
#include "overlays/effects/ovl_Effect_Ss_Kakera/z_eff_ss_kakera.h"

#define FLAGS 0x00000030

#define THIS ((DemoGt*)thisx)

void DemoGt_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoGt_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoGt_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoGt_Draw(Actor* thisx, GlobalContext* globalCtx);

Color_RGBA8 D_809825C0 = { 0x64, 0x50, 0x64, 0x00 };
Color_RGBA8 D_809825C4 = { 0xFF, 0x6E, 0x60, 0x00 };
Vec3f D_809825C8 = { 0.0f, 6.0f, 0.0f };
Vec3f D_809825D4 = { 0.0f, 0.0f, 0.0f };
Vec3f D_809825E0 = { 0.0f, 0.0f, 0.0f };
Vec3f D_809825EC = { 0.0f, 0.0f, 0.0f };

InitChainEntry D_809825F8[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

Vec3f D_809825FC = { 0.0f, -16.0f, 0.0f };
Vec3f D_80982608 = { 0.0f, 1.20000004768f, 0.0f };
Actor* D_80982614 = NULL;
Vec3f D_80982618 = { -12.0f, -17.0, 5.0 };
Vec3f* D_80982624 = NULL; // was 0x00000000; ??
Vec2f D_80982628 = { 1.0f, 0.0f };
Vec3f* D_80982630 = NULL; // was 0x00000000;
Vec2f D_80982634 = { 0.0f, 0.0f };
f32 D_8098263C = 280.0f;
f32 D_80982640 = 8.0f;
s32 D_80982644 = 0xB;
s32 D_80982648 = 0x1;
s32 D_8098264C = 0x00030000;
Vec3f D_80982650 = { 5.0f, -16.0f, -16.0f };
Actor* D_8098265C = NULL;
Actor* D_80982660 = NULL;
Vec3f D_80982664 = { 0.0f, 0.0f, -10.0f };
Vec3f D_80982670 = { 5.0f, -3.0f, 0.0f };
Vec3f D_8098267C = { 5.0f, -3.0f, 0.0f };
Vec3f D_80982688 = { 5.0f, -16.0f, -16.0f };
Vec3f D_80982694 = { 15.0f, -26.0, 0.0f };
Vec3f D_809826A0 = { 5.0f, -16.0f, -16.0f };
Vec3f D_809826AC = { 5.0f, -16.0f, -16.0f };
Vec3f D_809826B8 = { 20.0f, 6.0f, 0.0f };
Vec3f D_809826C4 = { 0.0f, 0.0f, 0.0f };
Vec3f D_809826D0 = { 0.0f, -17.0f, 0.0f };
Vec3f D_809826DC = { 0.0f, -30.0f, 0.0f };

void func_8097F428(DemoGt* this, GlobalContext* globalCtx);
void func_8097FF14(DemoGt* this, GlobalContext* globalCtx);
void func_80980DB0(DemoGt* this, GlobalContext* globalCtx);
void func_809810A0(DemoGt* this, GlobalContext* globalCtx);
void func_80981588(DemoGt* this, GlobalContext* globalCtx);
void func_80981994(DemoGt* this, GlobalContext* globalCtx);
void func_80981E04(DemoGt* this, GlobalContext* globalCtx);
void func_809821C4(DemoGt* this, GlobalContext* globalCtx);
void func_8097F498(DemoGt* this, GlobalContext* globalCtx);
void func_8097FF5C(DemoGt* this, GlobalContext* globalCtx);
void func_80980DF0(DemoGt* this, GlobalContext* globalCtx);
void func_809810E0(DemoGt* this, GlobalContext* globalCtx);
void func_809815C8(DemoGt* this, GlobalContext* globalCtx);
void func_809819D4(DemoGt* this, GlobalContext* globalCtx);
void func_80981E44(DemoGt* this, GlobalContext* globalCtx);
void func_80982204(DemoGt* this, GlobalContext* globalCtx);
void func_80981114(DemoGt* this, GlobalContext* globalCtx);
void func_809815FC(DemoGt* this, GlobalContext* globalCtx);
void func_80981A08(DemoGt* this, GlobalContext* globalCtx);

void DemoGt_DoNothing(DemoGt* this, GlobalContext* globalCtx);
void func_8097F508(DemoGt* this, GlobalContext* globalCtx);
void func_8097FF9C(DemoGt* this, GlobalContext* globalCtx);
void func_80980E24(DemoGt* this, GlobalContext* globalCtx);
void func_809811AC(DemoGt* this, GlobalContext* globalCtx);
void func_80981694(DemoGt* this, GlobalContext* globalCtx);
void func_80981AA0(DemoGt* this, GlobalContext* globalCtx);
void func_80981E84(DemoGt* this, GlobalContext* globalCtx);
void func_80982244(DemoGt* this, GlobalContext* globalCtx);

DemoGtActionFunc D_809826E8[] = { func_8097F428, func_8097FF14, func_80980DB0, func_809810A0, func_80981588,
                                  func_80981994, func_80981E04, func_809821C4, func_8097F498, func_8097FF5C,
                                  func_80980DF0, func_809810E0, func_809815C8, func_809819D4, func_80981E44,
                                  func_80982204, func_80981114, func_809815FC, func_80981A08 };

DemoGtActionFunc D_80982734[] = { DemoGt_DoNothing, func_8097F508, func_8097FF9C, func_80980E24, func_809811AC,
                                  func_80981694,    func_80981AA0, func_80981E84, func_80982244 };

const ActorInit Demo_Gt_InitVars = {
    ACTOR_DEMO_GT,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GT,
    sizeof(DemoGt),
    (ActorFunc)DemoGt_Init,
    (ActorFunc)DemoGt_Destroy,
    (ActorFunc)DemoGt_Update,
    (ActorFunc)DemoGt_Draw,
};

extern UNK_TYPE D_06005CB8;
extern UNK_TYPE D_060091E4;
extern UNK_TYPE D_06009970;
extern UNK_TYPE D_06007630;
extern UNK_TYPE D_06004F90;
extern Gfx D_06000EA0[];
extern UNK_TYPE D_06009610;
extern UNK_TYPE D_06002910;
extern UNK_TYPE D_060041A0;
extern UNK_TYPE D_06009B08;

void DemoGt_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    DemoGt* this = THIS;

    if (this->dyna.actor.params == 1 || this->dyna.actor.params == 2) {
        DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    }
}

void func_8097D6B4() {
    func_800788CC(0x2098);
}

// Bomb_explosion
void func_8097D6D4(GlobalContext* globalCtx, Vec3f* pos) {
    Audio_PlaySoundAtPosition(globalCtx, pos, 0x3C, NA_SE_IT_BOMB_EXPLOSION);
}

// Grave explosion
void func_8097D6F8(GlobalContext* globalCtx, Vec3f* pos) {
    Audio_PlaySoundAtPosition(globalCtx, pos, 0x3C, NA_SE_EV_GRAVE_EXPLOSION);
}

void func_8097D71C(GlobalContext* globalCtx) {
    func_800AA000(0.0f, 0x32, 0xA, 5);
}

void func_8097D74C(GlobalContext* globalCtx, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, f32 arg4, s16 arg5, s16 arg6) {
    func_8002843C(globalCtx, arg1, arg2, arg3, &D_809825C0, &D_809825C4, ((Math_Rand_ZeroOne() * (arg4 * 0.2f)) + arg4),
                  arg5, arg6);
}

void func_8097D7D8(GlobalContext* globalCtx, Vec3f* arg1, Vec3f* arg2, f32 arg3, s32 arg4, s32 arg5, s16 arg6) {
    s32 pad;
    if (func_800C0D28(globalCtx) == 0) {
        s32 frames = globalCtx->gameplayFrames;

        if (ABS(frames % arg4) == arg5) {
            s32 pad;
            Vec3f* temp;
            Vec3f sp3C = D_809825C8;
            Vec3f sp30 = D_809825D4;

            VEC_SET(sp3C, sp3C.x * arg3, sp3C.y * arg3, sp3C.z * arg3);

            temp = &sp3C;

            VEC_SET(sp3C, temp->x + arg2->x, temp->y + arg2->y, temp->z + arg2->z);

            if (0) {}

            VEC_SET(sp30, sp30.x * arg3, sp30.y * arg3, sp30.z * arg3);

            func_8097D74C(globalCtx, arg1, &sp3C, &sp30, 300.0f * arg3, 15.0f * arg3, arg6);
        }
    }
}

// TODO: Rename to Actor_spawn_ACTOR_BG_SPOT16_DOUGHNUT
Actor* func_8097D964(GlobalContext* globalCtx, Vec3f* position, s16 params) {
    return Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BG_SPOT16_DOUGHNUT, position->x, position->y, position->z,
                       0, 0, 0, params);
}

void func_8097D9C4(GlobalContext* globalCtx, Vec3f* arg1, f32 arg2) {
    s32 pad;
    Vec3f sp30 = D_809825E0;
    Vec3f sp24 = D_809825EC;

    EffectSsBomb2_SpawnLayered(globalCtx, arg1, &sp30, &sp24, 100.0f * arg2, 15.0f * arg2);
    func_8097D6D4(globalCtx, arg1);
}

void func_8097DA78(GlobalContext* globalCtx, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, f32 arg4) {
    EffectSsBomb2_SpawnLayered(globalCtx, arg1, arg2, arg3, (100.0f * arg4), (25.0f * arg4));
}

void func_8097DAC8(DemoGt* this, GlobalContext* globalCtx, Vec3f* arg3) {
    Vec3f spC4;
    Vec3f spB8;
    f32 temp_f0;

    s16 rotation = 0;
    s16 phi_s0;
    s32 i;

    for (i = 0; i < 12; i++) {

        spC4.x = Math_Sins(rotation) * 46.0f;
        spC4.y = (Math_Rand_ZeroOne() * 75.0f) + 2.0f;
        spC4.z = Math_Coss(rotation) * 46.0f;

        spB8.x = (spC4.x * 0.1f) + 20.0f;
        spB8.y = Math_Rand_ZeroOne() * 16.0f;
        spB8.z = spC4.z * 0.1f;

        spC4.x += arg3->x;
        spC4.y += arg3->y;
        spC4.z += arg3->z;

        temp_f0 = Math_Rand_ZeroOne();
        if (temp_f0 < 0.1f) {
            phi_s0 = 0x60;
        } else if (temp_f0 < 0.7f) {
            phi_s0 = 0x40;
        } else {
            phi_s0 = 0x20;
        }

        EffectSsKakera_Spawn(globalCtx, &spC4, &spB8, arg3, -247, phi_s0, 3, 0, 0,
                             (s32)(Math_Rand_ZeroOne() * 10.0f + 30.0f), 2, 300, (s32)(Math_Rand_ZeroOne() * 0.0f) + 30,
                             KAKERA_COLOR_NONE, OBJECT_GEFF, D_06000EA0);
        rotation += 0x1555;
    }
}

void func_8097DD28(DemoGt* this, GlobalContext* globalCtx, Vec3f* pos) {
    Vec3f spC4;
    Vec3f spB8;

    f32 temp_f0;

    s16 rotation = 0;
    s16 phi_s0;
    s32 i;

    for (i = 0; i < 8; i++) {

        spC4.x = Math_Sins(rotation) * 30.0f;
        spC4.y = (Math_Rand_ZeroOne() * 75.0f) + 2.0f;
        spC4.z = Math_Coss(rotation) * 30.0f;

        spB8.x = 0.0f;
        spB8.y = Math_Rand_ZeroOne() * -4.0f;
        spB8.z = spC4.z * 0.1f;

        spC4.x += pos->x;
        spC4.y += pos->y;
        spC4.z += pos->z;

        temp_f0 = Math_Rand_ZeroOne();

        if (temp_f0 < 0.1f) {
            phi_s0 = 0x60;
        } else if (temp_f0 < 0.7f) {
            phi_s0 = 0x40;
        } else {
            phi_s0 = 0x20;
        }

        EffectSsKakera_Spawn(globalCtx, &spC4, &spB8, pos, -0xF7, phi_s0, 3, 0, 0,
                             (s32)((Math_Rand_ZeroOne() * 10.0f) + 30.0f), 2, 0x12C,
                             (s32)(Math_Rand_ZeroOne() * 0.0f) + 0x1E, KAKERA_COLOR_NONE, OBJECT_GEFF, D_06000EA0);

        rotation += 0x2000;
    }
}

void func_8097DF70(DemoGt* this, GlobalContext* globalCtx, Vec3f* pos) {
    Vec3f spC4;
    Vec3f spB8;
    f32 temp_f0;

    s16 rotation = 0;
    s16 phi_s0;
    s32 i;

    for (i = 0; i < 0xC; i++) {

        spC4.x = Math_Sins(rotation) * 16.0f;
        spC4.y = (Math_Rand_ZeroOne() * 5.0f) + 2.0f;
        spC4.z = Math_Coss(rotation) * 16.0f;

        spB8.x = spC4.x * 0.6f;
        spB8.y = (Math_Rand_ZeroOne() * 36.0f) + 6.0f;
        spB8.z = spC4.z * 0.6f;

        spC4.x += pos->x;
        spC4.y += pos->y;
        spC4.z += pos->z;

        temp_f0 = Math_Rand_ZeroOne();

        if (temp_f0 < 0.1f) {
            phi_s0 = 0x61;
        } else if (temp_f0 < 0.7f) {
            phi_s0 = 0x41;
        } else {
            phi_s0 = 0x21;
        }

        EffectSsKakera_Spawn(globalCtx, &spC4, &spB8, pos, -0xC8, phi_s0, 10, 10, 0,
                             Math_Rand_ZeroOne() * 30.0f + 30.0f, 2, 300, (s32)(Math_Rand_ZeroOne() * 30.0f) + 30,
                             KAKERA_COLOR_NONE, OBJECT_GEFF, D_06000EA0);
        rotation += 0x1555;
    }
}

void func_8097E1D4(GlobalContext* arg0, Vec3f* arg1, s16 arg2) {
    Vec3f spC4;
    Vec3f spB8;

    f32 temp_f0;
    s16 rotation = 0;
    s16 phi_s0;
    s32 i;

    for (i = 0; i < 1; i++) {

        spC4.x = Math_Sins(rotation) * 46.0f;
        spC4.y = (Math_Rand_ZeroOne() * 75.0f) - 28.0f;
        spC4.z = Math_Coss(rotation) * 46.0f;

        spB8.x = Math_Sins(arg2) * 3.0f;
        spB8.y = (Math_Rand_ZeroOne() * -4.0f) + 10.0f;
        spB8.z = Math_Coss(arg2) * 3.0f;

        spC4.x += arg1->x;
        spC4.y += arg1->y;
        spC4.z += arg1->z;

        temp_f0 = Math_Rand_ZeroOne();
        if (temp_f0 < 0.1f) {
            phi_s0 = 0x61;
        } else if (temp_f0 < 0.7f) {
            phi_s0 = 0x41;
        } else {
            phi_s0 = 0x21;
        }

        EffectSsKakera_Spawn(arg0, &spC4, &spB8, arg1, -0xF7, phi_s0, 3, 0, 0,
                             (s32)((Math_Rand_ZeroOne() * 10.0f) + 30.0f), 2, 0x12C,
                             (s32)(Math_Rand_ZeroOne() * 0.0f) + 30, KAKERA_COLOR_NONE, OBJECT_GEFF, D_06000EA0);

        rotation += 0x10000;
    }
}

void func_8097E454(GlobalContext* globalCtx, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, f32 arg4, f32 arg5, s32 arg6,
                   s32 arg7, s16 arg8);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097E454.s")
// void func_8097E454(GlobalContext* globalCtx, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, f32 arg4, f32 arg5, s32 arg6,
//                    s32 arg7, s16 arg8) {
//     s16 phi_s0;
//     s32 i;
//     f32 temp;
//     f32 temp2;
//     Vec3f sp7C;
//     s32 gameplayFrames;

//     if ((func_800C0D28(globalCtx) == 0) && (arg7 > 0) && (arg6 > 0)) {
//         gameplayFrames = ABS(globalCtx->gameplayFrames) % arg7;

//         if (gameplayFrames < arg6) {
//             phi_s0 = (gameplayFrames) / arg6;
//             temp = (15.0f * arg5);
//             temp2 = 300.0f * arg5;

//             for (i = gameplayFrames; i < arg6; i += arg7) {

//                 sp7C.x = (Math_Sins(phi_s0) * arg4) + arg1->x;
//                 sp7C.y = arg1->y;
//                 sp7C.z = (Math_Coss(phi_s0) * arg4) + arg1->z;

//                 func_8097D74C(globalCtx, &sp7C, arg2, arg3, temp2, temp, arg8);
//                 if (Math_Rand_ZeroOne() <= 0.05f) {
//                     func_8097E1D4(globalCtx, &sp7C, phi_s0);
//                 }

//                 phi_s0 += (s16)(0x10000 / arg6);
//             }
//         }
//     }
// }

u8 func_8097E69C(GlobalContext* globalCtx) {
    if (globalCtx->csCtx.state == 0) {
        return true;
    }
    return false;
}

CsCmdActorAction* DemoGt_GetNpcAction(GlobalContext* globalCtx, u32 actionIdx) {
    s32 pad[2];
    CsCmdActorAction* ret = NULL;

    if (!func_8097E69C(globalCtx)) {
        ret = globalCtx->csCtx.npcActions[actionIdx];
    }
    return ret;
}

u8 func_8097E704(GlobalContext* globalCtx, u16 arg1, s32 arg2) {
    CsCmdActorAction* action;

    action = DemoGt_GetNpcAction(globalCtx, arg2);
    if (action != NULL && action->action == arg1) {
        return true;
    }
    return false;
}

void func_8097E744(DemoGt* this, GlobalContext* globalCtx, u32 actionIdx) {
    CsCmdActorAction* npcAction = DemoGt_GetNpcAction(globalCtx, actionIdx);
    Vec3f* thisPos = &this->dyna.actor.posRot.pos;

    f32 startX;
    f32 startY;
    f32 startZ;
    f32 endX;
    f32 endY;
    f32 endZ;
    f32 someFloat;

    if (npcAction != NULL) {
        someFloat = func_8006F9BC(npcAction->endFrame, npcAction->startFrame, globalCtx->csCtx.frames, 8, 0);
        startX = npcAction->startPos.x;
        startY = npcAction->startPos.y;
        startZ = npcAction->startPos.z;
        endX = npcAction->endPos.x;
        endY = npcAction->endPos.y;
        endZ = npcAction->endPos.z;

        thisPos->x = ((endX - startX) * someFloat) + startX;
        thisPos->y = ((endY - startY) * someFloat) + startY;
        thisPos->z = ((endZ - startZ) * someFloat) + startZ;
    }
}

void func_8097E824(DemoGt* this, s32 arg1);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097E824.s")
// void func_8097E824(DemoGt* this, s32 arg1) {
//     // PosRot* temp_v0_10;
//     // Vec3s* temp_v0_9;
//     // f32 temp_f6;
//     // s32 pad[4];
//     s16 phi_a1;
//     s16 phi_a2;
//     s16 phi_a3;

//     f32 phi_f14;
//     f32 phi_f12;
//     f32 phi_f2;

//     f32 f1;
//     f32 f2;
//     f32 f3;

//     if (arg1 == 1) {
//         phi_a1 = (kREG(19) + 0x8000);
//         phi_a2 = (kREG(20) + 0x8000);
//         phi_a3 = (kREG(21) + 0x8000);
//         phi_f14 = kREG(16) * 0.1f;
//         phi_f12 = (kREG(17) * 0.1f) + 0.5f;
//         phi_f2 = kREG(18) * 0.1f;
//     } else if (arg1 == 2) {
//         phi_a1 = kREG(25) + 0x8000;
//         phi_a2 = kREG(26) + 0x8000;
//         phi_a3 = kREG(27) + 0x8000;
//         phi_f14 = kREG(22) * 0.1f;
//         phi_f12 = (kREG(23) * 0.1f) + 0.5f;
//         phi_f2 = kREG(24) * 0.1f;
//     } else if (arg1 == 3) {
//         phi_a1 = kREG(31) + 0x8000;
//         phi_a2 = kREG(32) + 0x8000;
//         phi_a3 = kREG(33) + 0x8000;
//         phi_f14 = kREG(28) * 0.1f;
//         phi_f12 = (kREG(29) * 0.1f) + 0.5f;
//         phi_f2 = kREG(30) * 0.1f;
//     } else if (arg1 == 4) {
//         phi_a1 = kREG(37) + 0x8000;
//         phi_a2 = kREG(38) + 0x8000;
//         phi_a3 = kREG(39) + 0x8000;
//         phi_f14 = kREG(34) * 0.1f;
//         phi_f12 = (kREG(35) * 0.1f) + 0.5f;
//         phi_f2 = kREG(36) * 0.1f;
//     } else if (arg1 == 5) {
//         phi_a1 = kREG(43) + 0x8000;
//         phi_a2 = kREG(44) + 0x8000;
//         phi_a3 = kREG(45) + 0x8000;
//         phi_f14 = kREG(40) * 0.1f;
//         phi_f12 = (kREG(41) * 0.1f) + 0.5f;
//         phi_f2 = kREG(42) * 0.1f;
//     } else if (arg1 == 6) {
//         phi_a1 = kREG(49) + 0x8000;
//         phi_a2 = kREG(50) + 0x8000;
//         phi_a3 = kREG(51) + 0x8000;
//         phi_f14 = kREG(46) * 0.1f;
//         phi_f12 = (kREG(47) * 0.1f) + 0.5f;
//         phi_f2 = kREG(48) * 0.1f;
//     } else if (arg1 == 7) {
//         phi_a1 = kREG(85) + 0x8000;
//         phi_a2 = kREG(86) + 0x8000;
//         phi_a3 = kREG(87) + 0x8000;
//         phi_f14 = kREG(82) * 0.1f;
//         phi_f12 = (kREG(83) * 0.1f) + 0.5f;
//         phi_f2 = kREG(84) * 0.1f;
//     } else {
//         phi_a1 = kREG(91) + 0x8000;
//         phi_a2 = kREG(92) + 0x8000;
//         phi_a3 = kREG(93) + 0x8000;
//         phi_f14 = kREG(88) * 0.1f;
//         phi_f12 = (kREG(89) * 0.1f) + 0.5f;
//         phi_f2 = kREG(90) * 0.1f;
//     }
   
//     this->unk_16C.x += phi_a1;
//     this->unk_16C.y += phi_a2;
//     this->unk_16C.z += phi_a3;

//     this->dyna.actor.posRot.pos.x += Math_Coss(this->unk_16C.x) * phi_f2;
//     this->dyna.actor.posRot.pos.y += Math_Coss(this->unk_16C.y) * phi_f12;
//     this->dyna.actor.posRot.pos.z += Math_Coss(this->unk_16C.z) * phi_f14;
// }

void func_8097ED64(DemoGt* this, GlobalContext* globalCtx, s32 arg0) {
    func_8097E744(this, globalCtx, arg0);
    func_8097E824(this, arg0);
}

u8 func_8097ED94() {
    if (kREG(2) != 0) {
        return true;
    }
    if (gSaveContext.sceneSetupIndex < 4) {
        return false;
    }
    return true;
}

void func_8097EDD8(DemoGt* this, GlobalContext* globalCtx, UNK_PTR arg0) {
    s32 pad[3];
    s32 localC;

    if (arg0 != 0) {
        Actor_ProcessInitChain(&this->dyna.actor, D_809825F8);
        DynaPolyInfo_SetActorMove(&this->dyna, 0);
        localC = 0;
        DynaPolyInfo_Alloc(arg0, &localC);
        this->dyna.dynaPolyId =
            DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, localC);
    }
}

u8 func_8097EE44(DemoGt* this, GlobalContext* globalCtx, s32 arg0, s32 arg1, UNK_PTR arg2) {

    if (func_8097ED94()) {
        this->unk_164 = arg0;
        this->unk_168 = arg1;
        func_8097EDD8(this, globalCtx, arg2);
        return true;
    } else {
        Actor_Kill(&this->dyna.actor);
        return false;
    }
}

void func_8097EEA8(DemoGt* this, GlobalContext* globalCtx) {
    this->dyna.actor.scale.x *= 10.0f;
    this->dyna.actor.scale.y *= 10.0f;
    this->dyna.actor.scale.z *= 10.0f;
    func_8097EE44(this, globalCtx, 0, 1, NULL);
}

void func_8097EF00(DemoGt* this, GlobalContext* globalCtx) {
    u16 frames = globalCtx->csCtx.frames;

    if (frames == 527) {
        func_800F3F3C(13);
    }
}

void func_8097EF34(DemoGt* this, GlobalContext* globalCtx) {
}

void func_8097EF40(DemoGt* this, GlobalContext* globalCtx) {
    u16 frames = globalCtx->csCtx.frames;
    Vec3f sp4C[2];
    Vec3f sp40 = D_809825FC;
    Vec3f sp34 = D_80982608;
    Vec3f* posRot = &this->dyna.actor.posRot.pos;
    s32 pad;

    if (kREG(1) == 0x14 || frames == 220) {

        sp4C[0].x = posRot->x + 256.0f;
        sp4C[0].y = posRot->y + 679.0f;
        sp4C[0].z = posRot->z + 82.0f;
        func_8097D74C(globalCtx, &sp4C, &sp40, &sp34, 1700.0f, 0xF, 0x1E);

        sp4C[0].x = posRot->x + 256.0f;
        sp4C[0].y = posRot->y + 679.0f;
        sp4C[0].z = posRot->z - 60.0f;
        func_8097D74C(globalCtx, &sp4C, &sp40, &sp34, 1700.0f, 0xF, 0x1E);
    }
}

void func_8097F0AC(DemoGt* this, GlobalContext* globalCtx) {
    Vec3f sp38[2];
    s16 pad[3];
    Vec3f sp24;
    u16 frames = globalCtx->csCtx.frames;
    s32 pad2;

    if (frames == 140 || (kREG(1) == 0x13)) {
        sp38[0].x = this->dyna.actor.posRot.pos.x + 260.0f;
        sp38[0].y = this->dyna.actor.posRot.pos.y + 340.0f;
        sp38[0].z = this->dyna.actor.posRot.pos.z + 45.0f;
        func_8097D9C4(globalCtx, &sp38, 2.0f);
    }
    if (frames == 176) {
        sp24.x = this->dyna.actor.posRot.pos.x + 260.0f;
        sp24.y = this->dyna.actor.posRot.pos.y + 840.0f;
        sp24.z = this->dyna.actor.posRot.pos.z + 45.0f;
        func_8097D9C4(globalCtx, &sp24, 2.0f);
    }
}

void func_8097F19C(DemoGt* this, GlobalContext* globalCtx) {
    func_8097EF34(this, globalCtx);
    func_8097EF40(this, globalCtx);
    func_8097F0AC(this, globalCtx);
}

void func_8097F1D8(DemoGt* this) {
    f32 temp_v0 = this->unk_172;

    this->unk_174 = (temp_v0 * ((kREG(64) * 0.001f) + 0.048f)) + (kREG(72) + 10.0f);
    this->unk_172 += this->unk_174;

    if (this->unk_172 > (s16)(kREG(73) + 0x250)) {
        this->unk_172 = kREG(73) + 0x250;
    }
}

void func_8097F280(DemoGt* this, GlobalContext* globalCtx) {
    Vec3i* unk178 = &this->unk_178;
    Vec3i* unk188 = &this->unk_188;
    Vec3i* unk198 = &this->unk_198;

    f32 temp_f0;

    if (globalCtx->csCtx.frames < 0xA0) {
        unk178->x = 0x64;
        unk178->y = 0xFF;
        unk178->z = 0xC8;

        unk188->x = 0xFF;
        unk188->y = 0x78;
        unk188->z = 0x64;

        unk198->x += 1;
        unk198->y -= 1;

    } else if (globalCtx->csCtx.frames < 170) {
        temp_f0 = func_8006F9BC(170, 160, globalCtx->csCtx.frames, 0, 0);

        unk178->x = (temp_f0 * -63.0f) + 163.0f;
        unk178->y = (temp_f0 * -155.0f) + 255.0f;
        unk178->z = temp_f0 * -100.0f + 200.0f;

        unk188->x = (temp_f0 * -155.0f) + 255.0f;
        unk188->y = (temp_f0 * -20.0f) + 120.0f;
        unk188->z = 0x64;
    } else {
        unk178->x = 0x64;
        unk178->y = 0x64;
        unk178->z = 0x64;

        unk188->x = 0x64;
        unk188->y = 0x64;
        unk188->z = 0x64;
    }
}

void func_8097F3EC(DemoGt* this, GlobalContext* globalCtx) {
    if (func_8097E704(globalCtx, 2U, 1)) {
        this->unk_164 = 8;
    }
}

void func_8097F428(DemoGt* this, GlobalContext* globalCtx) {
    func_8097F280(this, globalCtx);
    func_8097E824(this, 1);
    func_8097F19C(this, globalCtx);
    func_8097F3EC(this, globalCtx);
    func_8097D6B4();
    func_8097D71C(globalCtx);
    func_8097EF00(this, globalCtx);
}

void func_8097F498(DemoGt* this, GlobalContext* globalCtx) {
    func_8097F280(this, globalCtx);
    func_8097F1D8(this);
    func_8097ED64(this, globalCtx, 1);
    func_8097F19C(this, globalCtx);
    func_8097D6B4();
    func_8097D71C(globalCtx);
    func_8097EF00(this, globalCtx);
}

void func_8097F508(DemoGt* this, GlobalContext* globalCtx) {
    s32 pad;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    u32 gameplayFrames = globalCtx->gameplayFrames;
    s16 pad2[2];
    s16 spC6;
    f32 spC0;
    f32 spBC;
    s16 spBA;
    s16 spB8;
    Mtx* spB4;

    Vec3f spA8;
    Vec3f sp9C;
    f32 sp98;

    Vec3i* tempVec198;
    Vec3i* tempVec188;
    Vec3i* tempVec178;

    spC6 = this->unk_172;
    spC0 = fabsf(spC6 * (M_PI / 0x8000));
    spBC = kREG(71);

    spB8 = (s16)((s32)kREG(70)) + 0x4000;
    spBA = kREG(70);

    spB4 = Graph_Alloc(gfxCtx, sizeof(Mtx));
    sp98 = 1.0f - Math_Coss(spC6);

    OPEN_DISPS(gfxCtx, "../z_demo_gt_part1.c", 458);

    spA8.x = Math_Coss(spB8);
    spA8.y = 0.0f;
    spA8.z = Math_Sins(spB8);
    sp9C.x = Math_Coss(spBA) * spBC * sp98;
    sp9C.y = Math_Sins(spC6) * spBC;
    sp9C.z = Math_Sins(spBA) * spBC * sp98;

    Matrix_Push();
    func_800D23FC(spC0, &spA8, 1);
    Matrix_Translate(sp9C.x, sp9C.y, sp9C.z, 1);
    Matrix_ToMtx(spB4, "../z_demo_gt_part1.c", 474);
    tempVec198 = &this->unk_198;
    tempVec188 = &this->unk_188;
    tempVec178 = &this->unk_178;

    Matrix_Pull();

    func_80093D18(gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScrollEnvColor(gfxCtx, 0, 0, tempVec198->x, 0x20, 0x40, 1, 0, tempVec198->y, 0x20, 0x40,
                                        tempVec178->x, tempVec178->y, tempVec178->z, 0x80));

    gSPSegment(POLY_OPA_DISP++, 0x0A,
               Gfx_TwoTexScrollEnvColor(gfxCtx, 0, 0, tempVec198->x, 0x20, 0x40, 1, 0, tempVec198->y, 0x20, 0x40,
                                        tempVec188->x, tempVec188->y, tempVec188->z, 0x80));

    gSPMatrix(POLY_OPA_DISP++, spB4, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(POLY_OPA_DISP++, &D_06002910);

    func_80093D84(gfxCtx);

    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    gSPSegment(
        POLY_XLU_DISP++, 0x09,
        Gfx_TwoTexScroll(gfxCtx, 0, 0U, gameplayFrames * 0x14, 0x10, 0x200, 1, 0, gameplayFrames * 0x1E, 0x10, 0x200));

    gSPMatrix(POLY_XLU_DISP++, spB4, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(POLY_XLU_DISP++, &D_060041A0);

    CLOSE_DISPS(gfxCtx, "../z_demo_gt_part1.c", 557);
}

void func_8097F904(DemoGt* this, GlobalContext* globalCtx) {
    this->dyna.actor.scale.x *= 10.0f;
    this->dyna.actor.scale.y *= 10.0f;
    this->dyna.actor.scale.z *= 10.0f;
    func_8097EE44(this, globalCtx, 1, 2, &D_06005CB8);
}

void func_8097F960(DemoGt* this, GlobalContext* globalCtx) {
}

void func_8097F96C(DemoGt* this, GlobalContext* globalCtx) {
    s32 pad[4];
    Vec3f pos;
    Actor* actor;
    u16 frames = globalCtx->csCtx.frames;

    if ((frames > 1059) && (frames < 1062) || kREG(1) == 0x11) {
        pos.x = this->dyna.actor.posRot.pos.x;
        pos.y = this->dyna.actor.posRot.pos.y + 612.0f;
        pos.z = this->dyna.actor.posRot.pos.z;

        if (D_80982614 == NULL) {
            D_80982614 = func_8097D964(globalCtx, &pos, 2);
            return;
        }

        actor = D_80982614;
        actor->posRot.pos.x = pos.x;
        actor->posRot.pos.y = pos.y;
        actor->posRot.pos.z = pos.z;
    }
}

void func_8097FA1C(DemoGt* this, GlobalContext* globalCtx) {
    Vec3f sp50[2];
    u16 frames = globalCtx->csCtx.frames;
    Vec3f* posRot = &this->dyna.actor.posRot.pos;
    Vec3f sp3C = D_80982618;
    s32 pad[3];

    if (((frames > 502) && !(frames >= 581)) || (kREG(1) == 5)) {

        sp50[0].x = posRot->x + 300.0f;
        sp50[0].y = posRot->y + 360.0f;
        sp50[0].z = posRot->z - 377.0f;
        func_8097D7D8(globalCtx, &sp50, &sp3C, 6.0f, 6, 1, 0x23);
    }
}

void func_8097FAFC(DemoGt* this, GlobalContext* globalCtx) {
    s32 pad[2];
    u16 frames = globalCtx->csCtx.frames;
    Vec3f sp38;
    f32 new_var = -200.0;

    if (((frames > 0x246) && (frames < 0x2AB)) || (kREG(1) == 6)) {
        sp38 = this->dyna.actor.posRot.pos;
        sp38.y += 680.0f;

        if (frames == 0x2AA) {
            D_80982628.x += new_var;
        } else if (frames == 0x2A9) {
            D_80982634.x += new_var;
        }

        func_8097E454(globalCtx, &sp38, &D_80982624, &D_80982630, D_8098263C, D_80982640, D_80982644, D_80982648,
                      *((s16*)((&D_8098264C))));
    }
}

void func_8097FC1C(DemoGt* this, GlobalContext* globalCtx) {
    Vec3f sp50[2];
    u16 frames = globalCtx->csCtx.frames;
    PosRot* posRot = &this->dyna.actor.posRot;
    Vec3f sp3C = D_80982650;
    s32 pad[3];

    if (frames > 682 || kREG(1) == 7) {
        sp50[0].x = posRot->pos.x + 260.0f;
        sp50[0].y = posRot->pos.y + 360.0f;
        sp50[0].z = posRot->pos.z + 260.0f;
        func_8097D7D8(globalCtx, &sp50, &sp3C, 6.0, 6, 0, 0x23);
    }
}

void func_8097FCE4(DemoGt* this, GlobalContext* globalCtx) {
    s32 pad[3];
    Vec3f vec;
    u16 frames = globalCtx->csCtx.frames;

    if (frames == 0x1F7 || kREG(1) == 4) {
        vec.x = this->dyna.actor.posRot.pos.x + 300.0f;
        vec.y = this->dyna.actor.posRot.pos.y + 560.0f;
        vec.z = this->dyna.actor.posRot.pos.z - 377.0f;
        func_8097D9C4(globalCtx, &vec, 2.0f);
    }
}

void func_8097FD70(DemoGt* this, GlobalContext* globalCtx) {
    func_8097F960(this, globalCtx);
    func_8097F96C(this, globalCtx);
    func_8097FA1C(this, globalCtx);
    func_8097FAFC(this, globalCtx);
    func_8097FC1C(this, globalCtx);
    func_8097FCE4(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097FDDC.s")

void func_8097FED8(DemoGt* this, GlobalContext* globalCtx) {
    if (func_8097E704(globalCtx, 2, 2)) {
        this->unk_164 = 9;
    }
}

void func_8097FF14(DemoGt* this, GlobalContext* globalCtx) {
    func_8097FDDC();
    func_8097E824(this, 2);
    func_8097FD70(this, globalCtx);
    func_8097FED8(this, globalCtx);
}

void func_8097FF5C(DemoGt* this, GlobalContext* globalCtx) {
    func_8097FDDC();
    func_8097ED64(this, globalCtx, 2);
    func_8097FD70(this, globalCtx);
}

void func_8097FF9C(DemoGt* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Vec3i* tempVec198;
    Vec3i* tempVec178;
    s32 pad;

    OPEN_DISPS(gfxCtx, "../z_demo_gt_part2.c", 470);

    func_80093D18(gfxCtx);
    tempVec198 = &this->unk_198;
    tempVec178 = &this->unk_178;

    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScrollEnvColor(gfxCtx, 0, 0U, tempVec198->x, 0x20, 0x40, 1, 0, tempVec198->y, 0x20, 0x40,
                                        tempVec178->x, tempVec178->y, tempVec178->z, 0x80));

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_demo_gt_part2.c", 485),
              G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(POLY_OPA_DISP++, &D_06004F90);

    gSPPopMatrixN(POLY_OPA_DISP++, G_MTX_MODELVIEW, 1);

    CLOSE_DISPS(gfxCtx, "../z_demo_gt_part2.c", 489);
}

void func_80980110(DemoGt* this, GlobalContext* globalCtx) {
    this->dyna.actor.scale.x *= 10.0f;
    this->dyna.actor.scale.y *= 10.0f;
    this->dyna.actor.scale.z *= 10.0f;
    func_8097EE44(this, globalCtx, 2, 3, &D_060091E4);
}

void func_DoesNothing(DemoGt* this, GlobalContext* globalCtx) {
}

void func_80980178(DemoGt* this, GlobalContext* globalCtx) {
}

void func_80980184(DemoGt* this, GlobalContext* globalCtx) {
    s32 pad[4];
    Vec3f pos;
    Actor* actor;

    if (globalCtx->csCtx.frames > 1027 && globalCtx->csCtx.frames < 1031) {
        pos.x = this->dyna.actor.posRot.pos.x;
        pos.y = this->dyna.actor.posRot.pos.y + 247.0f;
        pos.z = this->dyna.actor.posRot.pos.z;

        if (D_8098265C == NULL) {
            D_8098265C = func_8097D964(globalCtx, &pos, 3);
            return;
        }

        actor = D_8098265C;
        actor->posRot.pos.x = pos.x;
        actor->posRot.pos.y = pos.y;
        actor->posRot.pos.z = pos.z;
    }
}

void func_80980218(DemoGt* this, GlobalContext* globalCtx) {
    s32 pad[4];
    Vec3f pos;
    Actor* actor;

    if (globalCtx->csCtx.frames > 997 && globalCtx->csCtx.frames < 1001) {
        pos.x = this->dyna.actor.initPosRot.pos.x;
        pos.y = this->dyna.actor.initPosRot.pos.y + 38.0f;
        pos.z = this->dyna.actor.initPosRot.pos.z;

        if (D_80982660 == NULL) {
            D_80982660 = func_8097D964(globalCtx, &pos, 4);
            return;
        }

        actor = D_80982660;
        actor->posRot.pos.x = pos.x;
        actor->posRot.pos.y = pos.y;
        actor->posRot.pos.z = pos.z;
    }
}

void func_809802AC(DemoGt* this, GlobalContext* globalCtx) {
    Vec3f sp50[2];
    u16 frames = globalCtx->csCtx.frames;
    Vec3f* posRot = &this->dyna.actor.posRot.pos;
    Vec3f sp3C = D_80982664;
    s32 pad[3];

    if (frames > 109 && frames < 140) {

        sp50[0].x = posRot->x - 100.0f;
        sp50[0].y = posRot->y + 1260.0f;
        sp50[0].z = posRot->z - 323.0f;
        func_8097D7D8(globalCtx, &sp50, &sp3C, 4.0f, 3, 0, 0x14);
    }
}

void func_8098036C(DemoGt* this, GlobalContext* globalCtx) {
    Vec3f sp50[2];
    u16 frames = globalCtx->csCtx.frames;
    Vec3f* posRot = &this->dyna.actor.posRot.pos;
    Vec3f sp3C = D_80982670;
    s32 pad[3];

    if (frames > 284 && frames < 421) {

        sp50[0].x = posRot->x + 760.0f;
        sp50[0].y = posRot->y - 40.0f;
        sp50[0].z = posRot->z - 240.0f;
        func_8097D7D8(globalCtx, &sp50, &sp3C, 6.0, 6, 1, 0x23);
    }
}

void func_80980430(DemoGt* this, GlobalContext* globalCtx) {
    Vec3f sp50[2];
    s32 frames = globalCtx->csCtx.frames;
    PosRot* posRot = &this->dyna.actor.posRot;
    Vec3f sp3C = D_8098267C;
    s32 pad[3];

    if (frames > 709 || kREG(1) == 8) {
        sp50[0].x = posRot->pos.x + 760.0f;
        sp50[0].y = posRot->pos.y - 40.0f;
        sp50[0].z = posRot->pos.z - 240.0f;

        func_8097D7D8(globalCtx, &sp50, &sp3C, 6.0, 6, 1, 0x23);
    }
}

void func_80980504(DemoGt* this, GlobalContext* globalCtx) {
    Vec3f sp50[2];
    u16 frames = globalCtx->csCtx.frames;
    Vec3f* posRot = &this->dyna.actor.posRot.pos;
    Vec3f sp3C = D_80982688;
    s32 pad[3];

    if (frames > 0x2C0 || kREG(1) == 9) {
        sp50[0].x = posRot->x + 830.0f;
        sp50[0].y = posRot->y + 60.0f;
        sp50[0].z = posRot->z + 390.0f;
        func_8097D7D8(globalCtx, &sp50, &sp3C, 6.0, 6, 2, 0x23);
    }
}

void func_809805D8(DemoGt* this, GlobalContext* globalCtx) {
    Vec3f sp50[2];
    u16 frames = globalCtx->csCtx.frames;
    Vec3f* initPosRot = &this->dyna.actor.initPosRot.pos;
    Vec3f sp3C = D_80982694;
    s32 pad[3];

    if ((frames > 739) && (frames < 781) || kREG(1) == 11) {
        sp50[0].x = initPosRot->x + 550.0f;
        sp50[0].y = initPosRot->y - 110.0f;
        sp50[0].z = initPosRot->z + 50.0f;

        func_8097D7D8(globalCtx, &sp50, &sp3C, 6.0, 6, 4, 0x23);
    }
}

void func_809806B8(DemoGt* this, GlobalContext* globalContext) {
    Vec3f sp50[2];
    u16 frames = globalContext->csCtx.frames;
    Vec3f* posRot = &this->dyna.actor.posRot.pos;
    Vec3f sp3C = D_809826A0;
    s32 pad[3];

    if (frames > 964 || kREG(1) == 12) {
        sp50[0].x = posRot->x + 460.0f;
        sp50[0].y = posRot->y + 60.0f;
        sp50[0].z = posRot->z + 760.0f;
        func_8097D7D8(globalContext, &sp50, &sp3C, 6.0, 6, 3, 0x23);
    }
}

void func_8098078C(DemoGt* this, GlobalContext* globalContext) {
    Vec3f sp50[2];
    u16 frames = globalContext->csCtx.frames;
    Vec3f* posRot = &this->dyna.actor.posRot.pos;
    Vec3f sp3C = D_809826AC;
    s32 pad[3];

    if (frames > 939 || kREG(1) == 14) {
        sp50[0].x = posRot->x + 360.0f;
        sp50[0].y = posRot->y + 70.0f;
        sp50[0].z = posRot->z - 640.0f;
        func_8097D7D8(globalContext, &sp50, &sp3C, 6.0, 6, 0, 0x23);
    }
}

void func_8098085C(DemoGt* this, GlobalContext* globalCtx) {
    Vec3f sp28[2];
    u16 frames = globalCtx->csCtx.frames;
    Vec3f* posRot = &this->dyna.actor.posRot.pos;

    if (frames == 58 || kREG(1) == 1) {
        sp28[0].x = posRot->x + 900.0f;
        sp28[0].y = posRot->y - 50.0f;
        sp28[0].z = posRot->z + 93.0f;
        func_8097D9C4(globalCtx, &sp28, 2.0f);
    } else if (frames == 80) {
        sp28[0].x = posRot->x + 810.0f;
        sp28[0].y = posRot->y + 200.0f;
        sp28[0].z = posRot->z - 37.0f;
        func_8097D9C4(globalCtx, &sp28, 0.899999976158f);
        return;
    } else if (frames == 90) {
        sp28[0].x = posRot->x - 220.0f;
        sp28[0].y = posRot->y + 1350.0f;
        sp28[0].z = posRot->z - 287.0f;
        func_8097D9C4(globalCtx, &sp28, 2.0f);
    }
}

void func_809809C0(DemoGt* this, GlobalContext* globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    DemoGt* this2 = this;
    s32 gameplayFrames = globalCtx2->gameplayFrames;
    u16 frames = globalCtx2->csCtx.frames;
    Vec3f sp54;
    s16 pad[3];
    Vec3f sp40;
    Vec3f sp34;
    s16 pad2[3];

    if ((frames > 469 && frames < 481) || kREG(1) == 3) {

        sp40 = D_809826B8;
        sp34 = D_809826C4;
        sp54.x = this2->dyna.actor.posRot.pos.x + 790.0f;
        sp54.y = this2->dyna.actor.posRot.pos.y + 60.0f;
        sp54.z = this2->dyna.actor.posRot.pos.z + 23.0f;

        if (ABS(gameplayFrames % 12) == 0) {
            func_8097DA78(globalCtx2, &sp54, &sp40, &sp34, 2.0f);
        }
    }
}

void func_80980AD4(DemoGt* this, GlobalContext* globalCtx) {
    s32 pad[4];
    Vec3f pos;
    u16 frames = globalCtx->csCtx.frames;

    if (frames == 477 || kREG(2) == 1) {
        pos.x = this->dyna.actor.posRot.pos.x + 790.0f;
        pos.y = this->dyna.actor.posRot.pos.y + 60.0f;
        pos.z = this->dyna.actor.posRot.pos.z + 23.0f;

        func_8097DAC8(this, globalCtx, &pos);
        func_8097D6F8(globalCtx, &pos);
    }
}

void func_80980B68(DemoGt* this, GlobalContext* globalCtx) {
    s32 pad[4];
    Vec3f pos;
    u16 frames = globalCtx->csCtx.frames;

    if (frames == 317 || kREG(3) == 1) {
        pos.x = this->dyna.actor.posRot.pos.x + 980.0f;
        pos.y = this->dyna.actor.posRot.pos.y + 410.0f;
        pos.z = this->dyna.actor.posRot.pos.z - 177.0f;
        func_8097DD28(this, globalCtx, &pos);
        func_8097D6F8(globalCtx, &pos);
    }
}

void func_80980BFC(DemoGt* this, GlobalContext* globalCtx) {
    s32 pad[4];
    Vec3f pos;
    u16 frames = globalCtx->csCtx.frames;

    if (frames == 740 || kREG(4) == 1) {
        pos.x = this->dyna.actor.posRot.pos.x + 790.0f;
        pos.y = this->dyna.actor.posRot.pos.y + 60.0f;
        pos.z = this->dyna.actor.posRot.pos.z + 23.0f;

        func_8097DF70(this, globalCtx, &pos);
        func_8097D6F8(globalCtx, &pos);
    }
}

// SPAWNS LOOOTS of doughnuts?
void func_80980C90(DemoGt* this, GlobalContext* globalCtx) {
    func_DoesNothing(this, globalCtx);
    func_80980178(this, globalCtx);
    func_80980184(this, globalCtx);
    func_80980218(this, globalCtx);
    func_809802AC(this, globalCtx);
    func_8098036C(this, globalCtx);
    func_80980430(this, globalCtx);
    func_80980504(this, globalCtx);
    func_809805D8(this, globalCtx);
    func_809806B8(this, globalCtx);
    func_8098078C(this, globalCtx);
    func_8098085C(this, globalCtx);
    func_809809C0(this, globalCtx);
    func_80980AD4(this, globalCtx);
    func_80980B68(this, globalCtx);
    func_80980BFC(this, globalCtx);
}

void func_80980D74(DemoGt* this, GlobalContext* globalCtx) {
    if (func_8097E704(globalCtx, 2, 3)) {
        this->unk_164 = 10;
    }
}

void func_80980DB0(DemoGt* this, GlobalContext* globalCtx) {
    func_8097E824(this, 3);
    func_80980C90(this, globalCtx);
    func_80980D74(this, globalCtx);
}

void func_80980DF0(DemoGt* this, GlobalContext* globalCtx) {
    func_8097ED64(this, globalCtx, 3);
    func_80980C90(this, globalCtx);
}

void func_80980E24(DemoGt* this, GlobalContext* globalCtx) {
    GlobalContext* gfxCtx = globalCtx->state.gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_demo_gt_part3.c", 1026);

    func_80093D18(gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_demo_gt_part3.c", 0x404),
              G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, &D_06007630);
    gSPPopMatrixN(POLY_OPA_DISP++, G_MTX_MODELVIEW, 1);

    CLOSE_DISPS(gfxCtx, "../z_demo_gt_part3.c", 1032);
}

void func_80980F00(DemoGt* this, GlobalContext* globalCtx) {
    this->dyna.actor.scale.x *= 10.0f;
    this->dyna.actor.scale.y *= 10.0f;
    this->dyna.actor.scale.z *= 10.0f;
    func_8097EE44(this, globalCtx, 3, 4, NULL);
}

void func_80980F58(DemoGt* this, GlobalContext* globalCtx) {
    u16 frames = globalCtx->csCtx.frames;
    if (frames == 244) {
        func_80078914(&this->dyna.actor.projectedPos, 0x20DE);
    }
}

void func_80980F8C(DemoGt* this, GlobalContext* globalCtx) {
    Vec3f sp58[2];
    Vec3f sp4C;
    u16 frames = globalCtx->csCtx.frames;
    Vec3f sp3C;
    s32 pad[3];

    if (frames > 259 && frames < 289) {
        sp3C = D_809826D0;

        sp58[0].x = 640.0f;
        sp58[0].y = 2100.0f;
        sp58[0].z = -170.0f;

        Matrix_MultVec3f(sp58, &sp4C);
        func_8097D7D8(globalCtx, &sp4C, &sp3C, 3.0f, 5, 0, 0x1E);
    }
}

void func_8098103C(DemoGt* this, GlobalContext* globalCtx) {
    if (func_8097E704(globalCtx, 2, 4)) {
        this->unk_164 = 11;
    } else if (func_8097E704(globalCtx, 3, 4)) {
        this->unk_164 = 16;
    }
}

void func_809810A0(DemoGt* this, GlobalContext* globalCtx) {
    func_8097E824(this, 4);
    func_80980F58(this, globalCtx);
    func_8098103C(this, globalCtx);
}

void func_809810E0(DemoGt* this, GlobalContext* globalCtx) {
    func_8097ED64(this, globalCtx, 4);
    func_80980F58(this, globalCtx);
}

void func_80981114(DemoGt* this, GlobalContext* globalCtx) {
    f32 temp = this->unk_172;

    this->unk_174 = (temp * ((kREG(64) * 0.001f) + 0.048f)) + (kREG(65) + 98.0f);

    this->unk_172 += this->unk_174;
    if (this->unk_172 > 0x4000) {
        this->unk_172 = 0x4000;
    }
}

void func_809811AC(DemoGt* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx;
    GlobalContext* globalCtx2 = globalCtx;
    u16 frames = globalCtx->csCtx.frames;
    s32 pad;
    s16 sp76;

    f32 sp70;
    f32 sp6C;

    s16 sp6A;
    s16 sp68;
    s16 sp66_pad;

    Mtx* sp60;

    Vec3f sp54;
    Vec3f sp48;
    f32 sp44;

    if (frames < 301) {

        sp76 = this->unk_172;
        sp70 = fabsf(sp76 * (M_PI / 0x8000));
        sp6C = kREG(61);

        sp68 = (s16)((s32)kREG(58)) + 0x4000;
        sp6A = kREG(58);

        gfxCtx = globalCtx2->state.gfxCtx;
        sp60 = Graph_Alloc(gfxCtx, sizeof(Mtx));
        sp44 = 1.0f - Math_Coss(sp76);

        OPEN_DISPS(gfxCtx, "../z_demo_gt_part4_1.c", 217);

        sp54.x = Math_Coss(sp68);
        sp54.y = 0.0f;
        sp54.z = Math_Sins(sp68);

        sp48.x = (Math_Coss(sp6A) * sp6C) * sp44;
        sp48.y = Math_Sins(sp76) * sp6C;
        sp48.z = (Math_Sins(sp6A) * sp6C) * sp44;

        Matrix_Push();

        func_800D23FC(sp70, &sp54, 1);
        Matrix_Translate(sp48.x, sp48.y, sp48.z, 1);
        Matrix_ToMtx(sp60, "../z_demo_gt_part4_1.c", 232);

        if (func_800C0D28(globalCtx2) == 0) {
            func_80980F8C(this, globalCtx2);
        }

        Matrix_Pull();
        func_80093D18(gfxCtx);
        gSPMatrix(POLY_OPA_DISP++, sp60, (G_MTX_PUSH | G_MTX_LOAD) | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, &D_06009610);
        gSPPopMatrixN(POLY_OPA_DISP++, G_MTX_MODELVIEW, 1);

        CLOSE_DISPS(gfxCtx, "../z_demo_gt_part4_1.c", 246);
    }
}

void func_809813CC(DemoGt* this, GlobalContext* globalCtx) {
    this->dyna.actor.scale.x *= 10.0f;
    this->dyna.actor.scale.y *= 10.0f;
    this->dyna.actor.scale.z *= 10.0f;
    func_8097EE44(this, globalCtx, 4, 5, NULL);
}

void func_80981424(DemoGt* this, GlobalContext* globalCtx) {
    u16 frames = globalCtx->csCtx.frames;

    if (frames == 789) {
        func_80078914(&this->dyna.actor.projectedPos, 0x20DE);
    }
}

void func_80981458(DemoGt* this, GlobalContext* globalCtx) {
    Vec3f sp58[2];
    Vec3f sp4C;
    u16 frames = globalCtx->csCtx.frames;
    Vec3f sp3C;
    s32 pad[3];

    if ((frames > 0x357 && frames < 0x37B) || (kREG(1) == 13)) {
        sp3C = D_809826DC;

        sp58[0].x = 0.0f;
        sp58[0].y = 1170.0f;
        sp58[0].z = -1100.0f;

        Matrix_MultVec3f(sp58, &sp4C);
        func_8097D7D8(globalCtx, &sp4C, &sp3C, 7.1, 5, 1, 0x1E);
    }
}

void func_80981524(DemoGt* this, GlobalContext* globalCtx) {
    if (func_8097E704(globalCtx, 2, 5)) {
        this->unk_164 = 12;
    } else if (func_8097E704(globalCtx, 3, 5)) {
        this->unk_164 = 17;
    }
}

void func_80981588(DemoGt* this, GlobalContext* globalCtx) {
    func_8097E824(this, 5);
    func_80981424(this, globalCtx);
    func_80981524(this, globalCtx);
}

void func_809815C8(DemoGt* this, GlobalContext* globalCtx) {
    func_8097ED64(this, globalCtx, 5);
    func_80981424(this, globalCtx);
}

void func_809815FC(DemoGt* this, GlobalContext* globalCtx) {
    f32 temp = this->unk_172;

    this->unk_174 = temp * ((kREG(66) * 0.001f) + 0.048f) + (kREG(67) + 50.0f);

    this->unk_172 += this->unk_174;

    if (this->unk_172 > 0x4000) {
        this->unk_172 = 0x4000;
    }
}

void func_80981694(DemoGt* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx;
    s32 pad;
    s16 sp76;
    f32 sp70;
    f32 sp6C;

    s16 sp6A;
    s16 sp68;
    s16 pad_sp66;

    Mtx* sp60;

    Vec3f sp54;
    Vec3f sp48;
    f32 sp44;

    sp76 = this->unk_172;
    sp70 = fabsf(sp76 * (M_PI / 0x8000));
    sp6C = kREG(62);

    sp6A = kREG(59) - 0x4000;
    sp68 = (s16)(kREG(59) - 0x4000) + 0x4000;

    gfxCtx = globalCtx->state.gfxCtx;
    sp60 = Graph_Alloc(gfxCtx, sizeof(Mtx));
    sp44 = 1 - Math_Coss(sp76);

    OPEN_DISPS(gfxCtx, "../z_demo_gt_part4_2.c", 212);

    sp54.x = Math_Coss(sp68);
    sp54.y = 0.0f;
    sp54.z = Math_Sins(sp68);

    sp48.x = Math_Coss(sp6A) * sp6C * sp44;
    sp48.y = Math_Sins(sp76) * sp6C;
    sp48.z = Math_Sins(sp6A) * sp6C * sp44;

    Matrix_Push();

    func_800D23FC(sp70, &sp54, 1);

    Matrix_Translate(sp48.x, sp48.y, sp48.z, 1);
    Matrix_ToMtx(sp60, "../z_demo_gt_part4_2.c", 227);

    if (func_800C0D28(globalCtx) == 0) {
        func_80981458(this, globalCtx);
    }

    Matrix_Pull();

    func_80093D18(gfxCtx);

    gSPMatrix(POLY_OPA_DISP++, sp60, G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, &D_06009610);
    gSPPopMatrixN(POLY_OPA_DISP++, G_MTX_MODELVIEW, 1);

    CLOSE_DISPS(gfxCtx, "../z_demo_gt_part4_2.c", 241);
}

void func_809818A4(DemoGt* this, GlobalContext* globalCtx) {
    this->dyna.actor.scale.x *= 10.0f;
    this->dyna.actor.scale.y *= 10.0f;
    this->dyna.actor.scale.z *= 10.0f;
    func_8097EE44(this, globalCtx, 5, 6, NULL);
}

void func_809818FC(DemoGt* this, GlobalContext* globalCtx) {
    u16 frames = globalCtx->csCtx.frames;
    if (frames == 845) {
        func_80078914(&this->dyna.actor.projectedPos, 0x20DE);
    }
}
void func_80981930(DemoGt* this, GlobalContext* globalCtx) {
    if (func_8097E704(globalCtx, 2U, 6)) {
        this->unk_164 = 13;
    } else if (func_8097E704(globalCtx, 3U, 6)) {
        this->unk_164 = 18;
    }
}
void func_80981994(DemoGt* this, GlobalContext* globalCtx) {
    func_8097E824(this, 6);
    func_809818FC(this, globalCtx);
    func_80981930(this, globalCtx);
}

void func_809819D4(DemoGt* this, GlobalContext* globalCtx) {
    func_8097ED64(this, globalCtx, 6);
    func_809818FC(this, globalCtx);
}

void func_80981A08(DemoGt* this, GlobalContext* globalCtx) {
    f32 temp = this->unk_172;

    this->unk_174 = (temp * ((kREG(68) * 0.001f) + 0.005f)) + (kREG(69) + 50.0f);

    this->unk_172 += this->unk_174;

    if (this->unk_172 > 0x4000) {
        this->unk_172 = 0x4000;
    }
}

void func_80981AA0(DemoGt* this, GlobalContext* globalCtx) {
    DemoGt* this2 = this;
    s16 sp78 = this2->unk_172;
    f32 sp74;
    f32 sp70;
    s16 sp6E;
    s16 sp6C;
    GraphicsContext* gfxCtx;
    Mtx* sp64;

    Vec3f sp58;
    Vec3f sp4C;

    f32 sp48;

    sp74 = fabsf(sp78 * (M_PI / 0x8000));
    sp70 = kREG(63);

    sp6E = kREG(60) + 0x4000;
    sp6C = kREG(60) + 0x4000;
    sp6C += 0x4000;

    gfxCtx = globalCtx->state.gfxCtx;
    sp64 = Graph_Alloc(gfxCtx, sizeof(Mtx));
    sp48 = 1.0f - Math_Coss(sp78);

    OPEN_DISPS(gfxCtx, "../z_demo_gt_part4_3.c", 276);

    sp58.x = Math_Coss(sp6C);
    sp58.y = 0.0f;
    sp58.z = Math_Sins(sp6C);

    sp4C.x = Math_Coss(sp6E) * sp70 * sp48;
    sp4C.y = Math_Sins(sp78) * sp70;
    sp4C.z = Math_Sins(sp6E) * sp70 * sp48;

    Matrix_Push();

    func_800D23FC(sp74, &sp58, 1);
    Matrix_Translate(sp4C.x, sp4C.y, sp4C.z, 1);
    Matrix_ToMtx(sp64, "../z_demo_gt_part4_3.c", 291);
    Matrix_Pull();

    func_80093D18(gfxCtx);

    gSPMatrix(POLY_OPA_DISP++, sp64, G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(POLY_OPA_DISP++, &D_06009610);

    gSPPopMatrix(POLY_OPA_DISP++, G_MTX_MODELVIEW);

    CLOSE_DISPS(gfxCtx, "../z_demo_gt_part4_3.c", 307);
}

void func_80981C94(DemoGt* this, GlobalContext* globalCtx) {
    this->dyna.actor.scale.x *= 10.0f;
    this->dyna.actor.scale.y *= 10.0f;
    this->dyna.actor.scale.z *= 10.0f;
    func_8097EE44(this, globalCtx, 6, 7, NULL);
}

void func_80981CEC(DemoGt* this, GlobalContext* globalCtx) {
    u16 frames = globalCtx->csCtx.frames;
    if (frames == 183) {
        func_80078914(&this->dyna.actor.projectedPos, 0x20DE);
    }
}

void func_80981D20(DemoGt* this) {
    f32 temp = this->unk_172;

    this->unk_174 = temp * ((kREG(64) * 0.001f) + 0.048f) + (kREG(76) + 100.0f);
    this->unk_172 += this->unk_174;

    if (this->unk_172 > (s16)(kREG(80) + 0x4000)) {
        this->unk_172 = kREG(80) + 0x4000;
    }
}

void func_80981DC8(DemoGt* this, GlobalContext* globalCtx) {
    if (func_8097E704(globalCtx, 2, 7)) {
        this->unk_164 = 0xE;
    }
}

void func_80981E04(DemoGt* this, GlobalContext* globalCtx) {
    func_8097E824(this, 7);
    func_80981CEC(this, globalCtx);
    func_80981DC8(this, globalCtx);
}

void func_80981E44(DemoGt* this, GlobalContext* globalCtx) {
    func_80981D20(this);
    func_8097ED64(this, globalCtx, 7);
    func_80981CEC(this, globalCtx);
}

void func_80981E84(DemoGt* this, GlobalContext* globalCtx) {
    DemoGt* this2 = this;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s16 sp6E;
    f32 sp68;
    f32 sp64;
    s16 sp62;
    s16 sp60;
    Mtx* sp5C;
    Vec3f sp50;
    Vec3f sp44;
    f32 sp40;

    sp6E = this2->unk_172;
    sp68 = fabsf(sp6E * (M_PI / 0x8000));
    sp64 = kREG(75);

    sp62 = kREG(74) + 0x7FEC;
    sp60 = kREG(74) + 0x7FEC;
    sp60 = sp60 + 0x4000;

    sp5C = Graph_Alloc(gfxCtx, sizeof(Mtx));
    sp40 = 1.0f - Math_Coss(sp6E);

    OPEN_DISPS(gfxCtx, "../z_demo_gt_part5.c", 136);

    sp50.x = Math_Coss(sp60);
    sp50.y = 0.0f;
    sp50.z = Math_Sins(sp60);

    sp44.x = (Math_Coss(sp62) * sp64) * sp40;
    sp44.y = Math_Sins(sp6E) * sp64;
    sp44.z = (Math_Sins(sp62) * sp64) * sp40;

    Matrix_Push();
    func_800D23FC(sp68, &sp50, MTXMODE_APPLY);
    Matrix_Translate(sp44.x, sp44.y, sp44.z, MTXMODE_APPLY);

    Matrix_ToMtx(sp5C, "../z_demo_gt_part5.c", 152);
    Matrix_Pull();
    func_80093D18(gfxCtx);

    gSPMatrix(POLY_OPA_DISP++, sp5C, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(POLY_OPA_DISP++, &D_06009970);

    CLOSE_DISPS(gfxCtx, "../z_demo_gt_part5.c", 160);
}

void func_80982054(DemoGt* this, GlobalContext* globalCtx) {
    this->dyna.actor.scale.x *= 10.0f;
    this->dyna.actor.scale.y *= 10.0f;
    this->dyna.actor.scale.z *= 10.0f;
    func_8097EE44(this, globalCtx, 7, 8, NULL);
}

void func_809820AC(DemoGt* this, GlobalContext* globalCtx) {
    u16 frames = globalCtx->csCtx.frames;
    if (frames == 0x9A) {
        func_80078914(&this->dyna.actor.projectedPos, 0x20DE);
    }
}

void func_809820E0(DemoGt* this) {
    f32 temp = this->unk_172;

    this->unk_174 = (temp * ((kREG(64) * 0.001f) + 0.048f)) + (kREG(79) + 100.0f);
    this->unk_172 += this->unk_174;

    if (this->unk_172 > (s16)(kREG(81) + 0x4000)) {
        this->unk_172 = kREG(81) + 0x4000;
    }
}

void func_80982188(DemoGt* this, GlobalContext* globalCtx) {
    if (func_8097E704(globalCtx, 2, 9) != 0) {
        this->unk_164 = 15;
    }
}

void func_809821C4(DemoGt* this, GlobalContext* globalCtx) {
    func_8097E824(this, 9);
    func_809820AC(this, globalCtx);
    func_80982188(this, globalCtx);
}

void func_80982204(DemoGt* this, GlobalContext* globalCtx) {
    func_809820E0(this);
    func_8097ED64(this, globalCtx, 9);
    func_809820AC(this, globalCtx);
}

void func_80982244(DemoGt* this, GlobalContext* globalCtx) {
    DemoGt* this2 = this;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s16 sp6E;
    f32 sp68;
    f32 sp64;
    s16 sp62;
    s16 sp60;
    Mtx* sp5C;

    Vec3f sp50;
    Vec3f sp44;
    f32 sp40;

    sp6E = this2->unk_172;
    sp68 = fabsf(sp6E * (M_PI / 0x8000));
    sp64 = kREG(78);

    sp62 = kREG(77) + 0xBE80;
    sp60 = kREG(77) + 0xBE80;
    sp60 += 0x4000;

    sp5C = Graph_Alloc(gfxCtx, 0x40U);
    sp40 = 1.0f - Math_Coss(sp6E);

    OPEN_DISPS(gfxCtx, "../z_demo_gt_part6.c", 0x89);

    sp50.x = Math_Coss(sp60);
    sp50.y = 0.0f;
    sp50.z = Math_Sins(sp60);

    sp44.x = Math_Coss(sp62) * sp64 * sp40;
    sp44.y = Math_Sins(sp6E) * sp64;
    sp44.z = Math_Sins(sp62) * sp64 * sp40;

    Matrix_Push();
    func_800D23FC(sp68, &sp50, 1);
    Matrix_Translate(sp44.x, sp44.y, sp44.z, 1);

    Matrix_ToMtx(sp5C, "../z_demo_gt_part6.c", 0x99);

    Matrix_Pull();
    func_80093D18(gfxCtx);

    gSPMatrix(POLY_OPA_DISP++, sp5C, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(POLY_OPA_DISP++, &D_06009B08);

    CLOSE_DISPS(gfxCtx, "../z_demo_gt_part6.c", 0xA3);
}

void DemoGt_Update(Actor* thisx, GlobalContext* globalCtx) {
    DemoGt* this = THIS;
    DemoGtActionFunc function;

    if (this->unk_164 < 0 || this->unk_164 >= 19 || (function = D_809826E8[this->unk_164]) == NULL) {
        // The main mode is strange!
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }

    function(this, globalCtx);
}

void DemoGt_Init(Actor* thisx, GlobalContext* globalCtx) {
    DemoGt* this = THIS;

    switch (this->dyna.actor.params) {
        case 0:
            func_8097EEA8(this, globalCtx);
            break;
        case 1:
            func_8097F904(this, globalCtx);
            break;
        case 2:
            func_80980110(this, globalCtx);
            break;
        case 5:
            func_80980F00(this, globalCtx);
            break;
        case 6:
            func_809813CC(this, globalCtx);
            break;
        case 7:
            func_809818A4(this, globalCtx);
            break;
        case 23:
            func_80981C94(this, globalCtx);
            break;
        case 24:
            func_80982054(this, globalCtx);
            break;
        default:
            // Demo_Gt_Actor_ct There is no such argument !
            osSyncPrintf("Demo_Gt_Actor_ct そんな引数は無い!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
            Actor_Kill(&this->dyna.actor);
    }
}

void DemoGt_DoNothing(DemoGt* this, GlobalContext* globalCtx) {
}

void DemoGt_Draw(Actor* thisx, GlobalContext* globalCtx) {
    DemoGt* this = THIS;
    DemoGtActionFunc function;

    if (this->unk_168 < 0 || this->unk_168 >= 9 || (function = D_80982734[this->unk_168]) == NULL) {
        // The drawing mode is strange !!!!!!!!!!!!!!!!!!!!!!!!!
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }

    function(thisx, globalCtx);
}
