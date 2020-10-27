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
extern UNK_TYPE D_60099700;
extern UNK_TYPE D_06007630;
extern UNK_TYPE D_06004F90;
extern Gfx D_06000EA0[];
extern UNK_TYPE D_06009610;

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

// This prototype is very important for the rest to match!!!
void func_8097D7D8(GlobalContext* globalCtx, Vec3f* arg1, Vec3f* arg2, f32 arg3, s32 arg4, s32 arg5, s16 arg6);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097D7D8.s")
// void func_8097D7D8(GlobalContext* globalCtx, Vec3f* arg1, Vec3f* arg2, f32 arg3, s32 arg4, s32 arg5, s16 arg6) {

//     if (func_800C0D28(globalCtx) == 0) {
//         s32 gameplayFrames = globalCtx->gameplayFrames;
//         if (ABS(gameplayFrames % arg4) == arg5) {
//             Vec3f sp3C = D_809825C8;
//             Vec3f sp30 = D_809825D4;

//             sp3C.x *= arg3;
//             sp3C.y *= arg3;
//             sp3C.z *= arg3;

//             sp3C.x *= arg3 + arg2->x;
//             sp3C.y *= arg3 + arg2->y;
//             sp3C.z *= arg3 + arg2->z;

//             sp30.x *= arg3;
//             sp30.y *= arg3;
//             sp30.z *= arg3;

//             func_8097D74C(globalCtx, arg1, &sp3C, &sp30, 300.0f * arg3, (s32)(15.0f * arg3), arg6);
//         }
//     }
// }

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

// Very similar methods
// void func_8097DAC8(DemoGt* this, GlobalContext* globalCtx, Vec3f* vec);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097DAC8.s")
// void func_8097DAC8(DemoGt* this, GlobalContext* globalCtx, Vec3f* arg3) {
//     Vec3f spC4;
//     Vec3f spB8;
//     s16 counter = 0;
//     s32 i;

//     for (i = 0; i < 12; i++) {
//         f32 scale;
//         s32 temp;
//         spC4.x = Math_Sins(counter) * 46.0f;
//         spC4.y = (Math_Rand_ZeroOne() * 75.0f) + 2.0f;
//         spC4.z = Math_Coss(counter) * 46.0f;

//         spB8.x = (spC4.x * 0.1f) + 20.0f;
//         spB8.y = Math_Rand_ZeroOne() * 16.0f;
//         spB8.z = spC4.z * 0.1f;

//         spC4.x += arg3->x;
//         spC4.y += arg3->y;
//         spC4.z += arg3->z;
//         scale = Math_Rand_ZeroOne();
//         if (scale < 0.1f) {
//             temp = 0x60;
//         } else if (scale < 0.7f) {
//             temp = 0x40;
//         } else {
//             temp = 0x20;
//         }

//         scale = Math_Rand_ZeroOne();
//         Math_Rand_ZeroOne();
//         EffectSsKakera_Spawn(globalCtx, &spC4, &spB8, arg3, -247, temp, 3, 0, 0, (scale * 10.0f) + 30.0f, 2, 300, 30,
//                              KAKERA_COLOR_NONE, OBJECT_GEFF, D_06000EA0);
//         counter += 0x1555;
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097DD28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097DF70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097E1D4.s")
// End of very similar methods

void func_8097E454(GlobalContext* arg0, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, f32 arg4, f32 arg5, s32 arg6, s32 arg7,
                   s16 arg8);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097E454.s")
// void func_8097E454(GlobalContext* arg0, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, f32 arg4, f32 arg5, s32 arg6, s32
// arg7,
//                    s16 arg8) {
//     Vec3f sp7C;

//     s16 phi_s0;
//     s32 i;

//     if ((func_800C0D28(arg0) == 0) && (arg7 > 0) && (arg6 > 0)) {

//         if (ABS(arg0->gameplayFrames % arg7) < arg6) {
//             phi_s0 = arg0->gameplayFrames / arg6;

//             for (i = arg0->gameplayFrames; i < arg6; i += arg7) {

//                 sp7C.x = (Math_Sins(phi_s0) * arg4) + arg1->x;
//                 sp7C.y = arg1->y;
//                 sp7C.z = (Math_Coss(phi_s0) * arg4) + arg1->z;
//                 func_8097D74C(arg0, &sp7C, arg2, arg3, 300.0f * arg5, (15.0f * arg5), (s32)arg8);
//                 if (Math_Rand_ZeroOne() <= 0.05f) {
//                     func_8097E1D4(arg0, &sp7C, phi_s0);
//                 }
//                 phi_s0 = (s16)(phi_s0 + (s16)(0x10000 / arg6));
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

CsCmdActorAction* func_8097E6BC(GlobalContext* globalCtx, u32 actionIdx) {
    s32 pad[2];
    CsCmdActorAction* ret = NULL;

    if (!func_8097E69C(globalCtx)) {
        ret = globalCtx->csCtx.npcActions[actionIdx];
    }
    return ret;
}

u8 func_8097E704(GlobalContext* globalCtx, u16 arg1, s32 arg2) {
    CsCmdActorAction* action;

    action = func_8097E6BC(globalCtx, arg2);
    if (action != NULL && action->action == arg1) {
        return true;
    }
    return false;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097E744.s")
// void func_8097E744(DemoGt *this, GlobalContext *globalCtx, u32 actionIdx) {
//     // CsCmdActorAction *sp3C;
//     f32 floatVal;
//     CsCmdActorAction *cmdActorAction;

//     cmdActorAction = func_8097E6BC(globalCtx, actionIdx);
//     if (cmdActorAction != NULL) {
//         floatVal = func_8006F9BC(cmdActorAction->endFrame, cmdActorAction->startFrame, globalCtx->csCtx.frames,
//         (u16)8U, 0);

//         this->dyna.actor.posRot.pos.x =  ((( cmdActorAction->endPos.x -  cmdActorAction->startPos.x) * floatVal)
//         + cmdActorAction->startPos.x); this->dyna.actor.posRot.pos.y =  ((( cmdActorAction->endPos.y -
//         cmdActorAction->startPos.y) * floatVal) +  cmdActorAction->startPos.y); this->dyna.actor.posRot.pos.z =
//         ((( cmdActorAction->endPos.z -  cmdActorAction->startPos.z) * floatVal) +  cmdActorAction->startPos.z);
//     }
// }

void func_8097E824(DemoGt* this, s32 arg1);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097E824.s")
// void func_8097E824(DemoGt* this, s32 arg1) {
//     // f32 sp2C;
//     // f32 sp28;
//     // f32 sp24;
//     // f32 sp20;
//     // f32 sp1C;
//     // Vec3s* sp18;

//     // PosRot* temp_v0_10;
//     // Vec3s* temp_v0_9;
//     // f32 temp_f6;
//     s32 pad[4];
//     DemoGt** sp76;
//     s32 phi_a1;
//     s32 phi_a2;
//     s32 phi_a3;
//     f32 phi_f14;
//     f32 phi_f12;
//     f32 phi_f2;

//     if (arg1 == 1) {
//         phi_a1 = (s16)(kREG(19) + 0x8000);
//         phi_a2 = (s16)(kREG(20) + 0x8000);
//         phi_a3 = (s16)(kREG(21) + 0x8000);
//         phi_f14 = (f32)kREG(16) * 0.1f;
//         phi_f12 = ((f32)kREG(17) * 0.1f) + 0.5f;
//         phi_f2 = (f32)kREG(18) * 0.1f;
//     } else if (arg1 == 2) {
//         phi_a1 = (s16)(kREG(25) + 0x8000);
//         phi_a2 = (s16)(kREG(26) + 0x8000);
//         phi_a3 = (s16)(kREG(27) + 0x8000);
//         phi_f14 = (f32)kREG(22) * 0.1f;
//         phi_f12 = ((f32)kREG(23) * 0.1f) + 0.5f;
//         phi_f2 = (f32)kREG(24) * 0.1f;
//     } else if (arg1 == 3) {
//         phi_a1 = (s16)(kREG(31) + 0x8000);
//         phi_a2 = (s16)(kREG(32) + 0x8000);
//         phi_a3 = (s16)(kREG(33) + 0x8000);
//         phi_f14 = (f32)kREG(28) * 0.1f;
//         phi_f12 = ((f32)kREG(29) * 0.1f) + 0.5f;
//         phi_f2 = (f32)kREG(30) * 0.1f;
//     } else if (arg1 == 4) {
//         phi_a1 = (s16)(kREG(37) + 0x8000);
//         phi_a2 = (s16)(kREG(38) + 0x8000);
//         phi_a3 = (s16)(kREG(39) + 0x8000);
//         phi_f14 = (f32)kREG(34) * 0.1f;
//         phi_f12 = ((f32)kREG(35) * 0.1f) + 0.5f;
//         phi_f2 = (f32)kREG(36) * 0.1f;
//     } else if (arg1 == 5) {
//         phi_a1 = (s16)(kREG(43) + 0x8000);
//         phi_a2 = (s16)(kREG(44) + 0x8000);
//         phi_a3 = (s16)(kREG(45) + 0x8000);
//         phi_f14 = (f32)kREG(40) * 0.1f;
//         phi_f12 = ((f32)kREG(41) * 0.1f) + 0.5f;
//         phi_f2 = (f32)kREG(42) * 0.1f;
//     } else if (arg1 == 6) {
//         phi_a1 = (s16)(kREG(49) + 0x8000);
//         phi_a2 = (s16)(kREG(50) + 0x8000);
//         phi_a3 = (s16)(kREG(51) + 0x8000);
//         phi_f14 = (f32)kREG(46) * 0.1f;
//         phi_f12 = ((f32)kREG(47) * 0.1f) + 0.5f;
//         phi_f2 = (f32)kREG(48) * 0.1f;
//     } else if (arg1 == 7) {
//         phi_a1 = (s16)(kREG(85) + 0x8000);
//         phi_a2 = (s16)(kREG(86) + 0x8000);
//         phi_a3 = (s16)(kREG(87) + 0x8000);
//         phi_f14 = (f32)kREG(82) * 0.1f;
//         phi_f12 = ((f32)kREG(83) * 0.1f) + 0.5f;
//         phi_f2 = (f32)kREG(84) * 0.1f;
//     } else {
//         phi_a1 = (s16)(kREG(91) + 0x8000);
//         phi_a2 = (s16)(kREG(92) + 0x8000);
//         phi_a3 = (s16)(kREG(93) + 0x8000);
//         phi_f14 = (f32)kREG(88) * 0.1f;
//         phi_f12 = ((f32)kREG(89) * 0.1f) + 0.5f;
//         phi_f2 = (f32)kREG(90) * 0.1f;
//     }
//     new_var = &this;
//     (*new_var)->unk_16C.x = this->unk_16C.x + phi_a1;
//     (*new_var)->unk_16C.y = this->unk_16C.y + phi_a2;
//     (*new_var)->unk_16C.z = this->unk_16C.z + phi_a3;

//     (*new_var)->dyna.actor.posRot.pos.x = this->dyna.actor.posRot.pos.x + Math_Coss((*new_var)->unk_16C.x) *
//     phi_f2;
//     (*new_var)->dyna.actor.posRot.pos.z += this->dyna.actor.posRot.pos.z + Math_Coss((*new_var)->unk_16C.z) *
//     phi_f14;
//     (*new_var)->dyna.actor.posRot.pos.y += this->dyna.actor.posRot.pos.y + Math_Coss((*new_var)->unk_16C.y) *
//     phi_f12;
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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097F280.s")
// void func_8097F280(DemoGt* this, GlobalContext* globalCtx);

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

// Lots of GFX stuff
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097F508.s")

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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_8097FF9C.s")
// void func_8097FF9C(DemoGt* this, GlobalContext* globalCtx) {

//     OPEN_DISPS(globalCtx->state.gfxCtx, "../z_demo_gt_part2.c", 470);

//     func_80093D18(oGfxCtx);

//     // temp_v0 = temp_s0->polyOpa.p;
//     // temp_s0->polyOpa.p = (Gfx *) (temp_v0 + 8);
//     // temp_v0->words.w0 = 0xDB060020U;

//     // sp60 = temp_v0;
//     // sp60->words.w1 = Gfx_TwoTexScrollEnvColor(temp_s0, 0, 0U, (u32) this->unk_198.x, 0x20, 0x40, 1, 0,
//     // this->unk_198.y, 0x20, 0x40, this->unk_178.x, this->unk_178.y, this->unk_178.z, 0x80);
//     gSPSegment(oGfxCtx->polyOpa.p++, 0x08,
//                Gfx_TwoTexScrollEnvColor(oGfxCtx, 0, 0U, this->unk_198.x, 0x20, 0x40, 1, 0, this->unk_198.y, 0x20,
//                0x40,
//                                         this->unk_178.r, this->unk_178.g, this->unk_178.b, 0x80));

//     // temp_v0_2 = temp_s0->polyOpa.p;
//     // temp_s0->polyOpa.p = (Gfx*)(temp_v0_2 + 8);
//     // temp_v0_2->words.w0 = 0xDA380002U;
//     // sp5C = temp_v0_2;
//     // sp5C->words.w1 = Matrix_NewMtx(temp_s0, "../z_demo_gt_part2.c", 485);
//     gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_gt_part2.c", 485),
//               G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

//     // temp_v0_3 = temp_s0->polyOpa.p;
//     // temp_s0->polyOpa.p = (Gfx*)(temp_v0_3 + 8);
//     // temp_v0_3->words.w1 = 0x6004F90U;
//     // temp_v0_3->words.w0 = 0xDE000000U;

//     gSPDisplayList(oGfxCtx->polyOpa.p++, &D_06004F90);

//     // temp_v0_4 = temp_s0->polyOpa.p;
//     // temp_s0->polyOpa.p = (Gfx*)(temp_v0_4 + 8);
//     // temp_v0_4->words.w1 = 0x40U;
//     // temp_v0_4->words.w0 = 0xD8380002U;
//     gSPPopMatrixN(oGfxCtx->polyOpa.p++, G_MTX_MODELVIEW, 0x100000);

//     CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_demo_gt_part2.c", 489);
// }

void func_80980110(DemoGt* this, GlobalContext* globalCtx) {
    this->dyna.actor.scale.x *= 10.0f;
    this->dyna.actor.scale.y *= 10.0f;
    this->dyna.actor.scale.z *= 10.0f;
    func_8097EE44(this, globalCtx, 2, 3, &D_060091E4);
}

void func_8098016C(DemoGt* this, GlobalContext* globalCtx) {
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
    func_8098016C(this, globalCtx);
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

    func_80093D18(oGfxCtx);
    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(oGfxCtx, "../z_demo_gt_part3.c", 0x404),
              G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyOpa.p++, &D_06007630);
    gSPPopMatrixN(oGfxCtx->polyOpa.p++, G_MTX_MODELVIEW, 1);

    CLOSE_DISPS(oGfxCtx, "../z_demo_gt_part3.c", 1032);
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

        Matrix_MultVec3f(&sp58, &sp4C);
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

// GFX stuff
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_809811AC.s")
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
        gSPMatrix(oGfxCtx->polyOpa.p++, sp60, (G_MTX_PUSH | G_MTX_LOAD) | G_MTX_MODELVIEW);
        gSPDisplayList(oGfxCtx->polyOpa.p++, &D_06009610);
        gSPPopMatrixN(oGfxCtx->polyOpa.p++, G_MTX_MODELVIEW, 1);

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

        Matrix_MultVec3f(&sp58, &sp4C);
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

// GFX stuff
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80981694.s")

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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80981AA0.s")
// void func_80981AA0(DemoGt *this, GlobalContext *globalCtx) {
//     s16 sp7A;
//     f32 sp74;
//     f32 sp70;
//     s16 sp6E;
//     s16 sp6C;
//     void *sp64;
//     f32 sp60;
//     f32 sp5C;
//     f32 sp58;
//     f32 sp54;
//     f32 sp50;
//     f32 sp4C;
//     f32 sp48;
//     Gfx *sp34;
//     GameInfo *temp_v0;
//     Gfx *temp_v0_2;
//     Gfx *temp_v0_3;
//     Gfx *temp_v0_4;
//     GraphicsContext *temp_s0;
//     s16 temp_a3;
//     s16 temp_t8;

//     temp_a3 = this->unk_172;
//     temp_v0 = gGameInfo;
//     sp74 = fabsf((f32) temp_a3 * 0.0000958738f);
//     sp70 = (f32) temp_v0->unk14D2;
//     temp_t8 = temp_v0->unk14CC + 0x4000;
//     sp6E = temp_t8;
//     sp6C = temp_t8 + 0x4000;
//     temp_s0 = globalCtx->state.gfxCtx;
//     sp7A = temp_a3;
//     sp64 = Graph_Alloc(temp_s0, 0x40U);
//     sp48 = 1.0f - Math_Coss(sp7A);

//     Graph_OpenDisps(&sp34, temp_s0, (const char *) "../z_demo_gt_part4_3.c", 0x114);
//     sp58 = Math_Coss(sp6C);
//     sp5C = 0.0f;
//     sp60 = Math_Sins(sp6C);
//     sp4C = Math_Coss(sp6E) * sp70 * sp48;
//     sp50 = Math_Sins(sp7A) * sp70;
//     sp54 = Math_Sins(sp6E) * sp70 * sp48;

//     Matrix_Push();
//     func_800D23FC(sp74, (Vec3f *) &sp58, (u8)1U);
//     Matrix_Translate(sp4C, sp50, (bitwise f32) (bitwise s32) sp54, (u8)1U);
//     Matrix_ToMtx((Mtx *) sp64, (char *) "../z_demo_gt_part4_3.c", 0x123);
//     Matrix_Pull();

//     func_80093D18(temp_s0);
//     temp_v0_2 = temp_s0->polyOpa.p;
//     temp_s0->polyOpa.p = temp_v0_2 + 8;
//     temp_v0_2->words.w0 = 0xDA380002;
//     temp_v0_2->words.w1 = (u32) sp64;

//     temp_v0_3 = temp_s0->polyOpa.p;
//     temp_s0->polyOpa.p = temp_v0_3 + 8;
//     temp_v0_3->words.w1 = 0x6009610;
//     temp_v0_3->words.w0 = 0xDE000000;

//     temp_v0_4 = temp_s0->polyOpa.p;
//     temp_s0->polyOpa.p = temp_v0_4 + 8;
//     temp_v0_4->words.w1 = 0x40;
//     temp_v0_4->words.w0 = 0xD8380002;
//     Graph_CloseDisps(&sp34, temp_s0, (const char *) "../z_demo_gt_part4_3.c", 0x133);
// }

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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80981E84.s")
// void func_80981E84(DemoGt* this, GlobalContext* globalCtx);
// void func_80981E84(DemoGt* this, GlobalContext* globalCtx) {
//     GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
//     // s32 pad;
//     Mtx* mtx;
//     s16 sp6E;
//     f32 sp68;
//     f32 sp64;
//     s16 sp62;
//     s16 sp60;
//     Vec3f sp50;
//     Vec3f sp44;
//     f32 sp40;
//     s16 temp_t8;

//     sp68 = fabsf((this->unk_172) * 0.0000958738f);
//     sp64 = (f32)kREG(75);
//     sp6E = this->unk_172;
//     temp_t8 = kREG(74) + 0x7FEC;
//     sp62 = temp_t8;
//     sp60 = (s16)(temp_t8 + 0x4000);

//     mtx = Graph_Alloc(globalCtx->state.gfxCtx, 0x40);
//     sp40 = 1.0f - Math_Coss(sp6E);

//     OPEN_DISPS(gfxCtx, "../z_demo_gt_part5.c", 136);
//     sp50.x = Math_Coss(sp60);
//     sp50.y = 0.0f;
//     sp50.z = Math_Sins(sp60);
//     sp44.x = (Math_Coss(sp62) * sp64) * sp40;
//     sp44.y = Math_Sins(sp6E) * sp64;
//     sp44.z = (Math_Sins(sp62) * sp64) * sp40;

//     Matrix_Push();
//     func_800D23FC(sp68, &sp50, MTXMODE_APPLY);
//     Matrix_Translate(sp44.x, sp44.y, sp44.z, MTXMODE_APPLY);
//     Matrix_ToMtx(mtx, "../z_demo_gt_part5.c", 152);
//     Matrix_Pull();
//     func_80093D18(oGfxCtx);
//     gSPMatrix(oGfxCtx->polyOpa.p++, mtx,  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
//     gSPDisplayList(oGfxCtx->polyOpa.p++, &D_60099700);

//     CLOSE_DISPS(gfxCtx, "../z_demo_gt_part5.c", 160);
// }

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

// GFX
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Gt/func_80982244.s")

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

    function(this, globalCtx);
}
