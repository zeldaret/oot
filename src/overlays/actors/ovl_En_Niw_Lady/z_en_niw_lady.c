#include "z_en_niw_lady.h"
#include "vt.h"

#define FLAGS 0x00000019

#define THIS ((EnNiwLady*)thisx)

void EnNiwLady_Init(Actor* thisx, GlobalContext* globalCtx);
void EnNiwLady_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnNiwLady_Update(Actor* thisx, GlobalContext* globalCtx);

void func_80AB9F24(EnNiwLady* this, GlobalContext* globalCtx);
void func_80ABB228(EnNiwLady* this, GlobalContext* globalCtx);
void func_80ABA21C(EnNiwLady* this, GlobalContext* globalCtx);
void func_80ABA778(EnNiwLady* this, GlobalContext* globalCtx);
void func_80ABAD38(EnNiwLady* this, GlobalContext* globalCtx);

const ActorInit En_Niw_Lady_InitVars = {
    ACTOR_EN_NIW_LADY,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_ANE,
    sizeof(EnNiwLady),
    (ActorFunc)EnNiwLady_Init,
    (ActorFunc)EnNiwLady_Destroy,
    (ActorFunc)EnNiwLady_Update,
    NULL,
};

s32 D_80ABB3A0[] = {
    0x50365070, 0x50725037, 0x50385039, 0x503A503B, 0x503D503C,
};

s32 D_80ABB3B4[] = {
    0x02000400,
    0x08001000,
    0x20004000,
    0x80000000,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 10, 10, 0, { 0, 0, 0 } },
};

s16 D_80ABB3F0[] = {
    0x503E, 0x503F, 0x5047, 0x5040, 0x5042, 0x5043, 0x5044, 0x00CF,
};

s32 D_80ABB400[] = {
    0x50455042,
    0x50270000,
};

s32 D_80ABB408[] = {
    0x060008C8, 0x060010C8, 0x060018C8, 0x00000000, 0x00000000, 0x00000000,
};

extern AnimationHeader D_060000F0;
extern SkeletonHeader D_0600A630;
extern SkeletonHeader D_060007D0;

void EnNiwLady_Init(Actor* thisx, GlobalContext* globalCtx) {
    // s16 this->skelAnime;
    s32 pad;
    EnNiwLady* this = THIS;
    this->ObjectAneIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_ANE);
    this->ObjectOsAnimeIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_OS_ANIME);
    if ((this->ObjectOsAnimeIndex < 0) || (this->ObjectAneIndex < 0)) {
        Actor_Kill(thisx);
        return;
    }

    this->unk_278 = 0;
    if (globalCtx->sceneNum == SCENE_LABO) {
        this->unk_278 = 1;
    }
    // this->skelAnime = this->unk_278;
    if ((this->unk_278 != 0) && (gSaveContext.nightFlag == 0)) {
        Actor_Kill(thisx);
        return;
    }
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ ねぇちゃんうっふん ☆☆☆☆☆ %d\n" VT_RST, this->unk_278);
    osSyncPrintf("\n\n");
    this->actionFunc = func_80AB9F24;
    thisx->uncullZoneForward = 600.0f;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/EnNiwLady_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80AB9D60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80AB9F24.s")
/*void func_80AB9F24(EnNiwLady* this, GlobalContext* globalCtx) {
    if ((Object_IsLoaded(&globalCtx->objectCtx, this->ObjectAneIndex) != 0) &&
        (Object_IsLoaded(&globalCtx->objectCtx, this->ObjectOsAnimeIndex) != 0)) {

        gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->ObjectAneIndex].segment);
        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_060000F0, NULL, &this->limbDrawTable,
                         &this->transitionDrawTable, 16);
        gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->ObjectOsAnimeIndex].segment);
        this->unk_27E = (u16)1;
        this->actor.gravity = -3.0f;
        Actor_SetScale(&this->actor, 0.01f);
        ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 20.0f);
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
        this->unk_272 = 0;
        this->actor.unk_1F = 6;
        this->actor.draw = func_80ABB228;
        if (this->unk_278 != 0) {
            if (!(gSaveContext.itemGetInf[0] & 0x1000) && LINK_IS_CHILD) {
                SkelAnime_ChangeAnim(&this->skelAnime, &D_0600A630, 1.0f, 0.0f,
                                     (f32)(s16)(s32)(f32)SkelAnime_GetFrameCount(&D_0600A630), 0, 0.0f);
            } else {
                SkelAnime_ChangeAnim(&this->skelAnime, &D_060007D0, 1.0f, 0.0f,
                                     (f32)(s16)(s32)(f32)SkelAnime_GetFrameCount(&D_060007D0), 0, 0.0f);
            }
            if (LINK_IS_ADULT) {
                this->actionFunc = func_80ABA778;
            } else {
                this->actionFunc = func_80ABA21C;
            }
        } else if (this->unk_278 != 1) {
            SkelAnime_ChangeAnim(&this->skelAnime, &D_060007D0, 1.0f, 0.0f,
                                 (f32)(s16)(s32)(f32)SkelAnime_GetFrameCount(&D_060007D0), 0, 0.0f);
            this->actionFunc = func_80ABAD38;
        }
    }
}*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABA21C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABA244.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABA654.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABA778.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABA878.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABA9B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABAA9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABAB08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABAC00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABAC84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABAD38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABAD7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/EnNiwLady_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABB0A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABB0CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Lady/func_80ABB228.s")
