#include "z_en_heishi2.h"

#define FLAGS 0x00000009

void EnHeishi2_Init(EnHeishi2* this, GlobalContext* globalCtx);
void EnHeishi2_Destroy(EnHeishi2* this, GlobalContext* globalCtx);
void EnHeishi2_Update(EnHeishi2* this, GlobalContext* globalCtx);
void EnHeishi2_Draw(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A531CC(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A531D8(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A531E4(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A53278(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A5344C(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A54954(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A53538(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A535BC(EnHeishi2* this, GlobalContext* globalCtx);
void func_80A5399C(EnHeishi2* this, GlobalContext* globalCtx);
extern AnimationHeader D_06005C30;

/*
const ActorInit En_Heishi2_InitVars = {
    ACTOR_EN_HEISHI2,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_SD,
    sizeof(EnHeishi2),
    (ActorFunc)EnHeishi2_Init,
    (ActorFunc)EnHeishi2_Destroy,
    (ActorFunc)EnHeishi2_Update,
    (ActorFunc)EnHeishi2_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/EnHeishi2_Init.s")

void EnHeishi2_Destroy(EnHeishi2* this, GlobalContext* globalCtx)
{
    if ((this->collider.dim.radius != 0) || (this->collider.dim.height != 0))
    {
        ActorCollider_FreeCylinder(globalCtx, &this->collider);
    }
}

void func_80A531CC(EnHeishi2* this, GlobalContext* globalCtx)
{

}

void func_80A531D8(EnHeishi2* this, GlobalContext* globalCtx)
{

}


void func_80A531E4(EnHeishi2* this, GlobalContext* globalCtx)
{
    SkelAnime_ChangeAnim(&this->skelAnime,  &D_06005C30, 1.0f, 0.0f, (s16)(f32)SkelAnime_GetFrameCount(&D_06005C30.genericHeader), 0, -10.0f);
    this->actionFunc = func_80A53278;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53278.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A5344C.s")

void func_80A5344C(EnHeishi2 *this, GlobalContext *globalCtx) {
    Actor* thisx = &this->actor;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_8010BDBC(&globalCtx->msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {

            this->unk_300 = (u16)5;
            switch (globalCtx->msgCtx.choiceIndex)
            {
                case 0:
                    if (gSaveContext.rupees >= 10)
                    {
                        Rupees_ChangeBy(-10);
                        thisx->textId = 0x7098;
                        this->actionFunc = func_80A53538;
                        break;
                    }

                    else
                    {
                        thisx->textId = 0x7097;
                        this->actionFunc = func_80A54954;
                        break;
                    }
                case 1:
                    thisx->textId = 0x7096;
                    this->actionFunc = func_80A54954;
                    break;
                
                default:
                    break;
            }
            func_8010B720(globalCtx, thisx->textId);
        }
}
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53538.s")
void func_80A53538(EnHeishi2 *this, GlobalContext *globalCtx) {

    Actor* thisx = &this->actor;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_300 == func_8010BDBC(&globalCtx->msgCtx)) {
        if (func_80106BC8(globalCtx) != 0) {
            func_8002DF54(globalCtx, NULL, 8);
            globalCtx->msgCtx.msgMode = 0x37;
            this->actionFunc = func_80A535BC;
        }
    }
}
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A535BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53638.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A5372C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53850.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53908.s")
void func_80A53908(EnHeishi2* this, GlobalContext* globalCtx)
{
    f32 frameCount = SkelAnime_GetFrameCount(&D_06005C30.genericHeader);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, 1.0f, 0.0f, (s16) frameCount, 0, -10.0f);
    this->actionFunc = func_80A5399C;
}
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A5399C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53AD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53C0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53C90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53D0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53DF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53F30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A54038.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A540C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A541FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A5427C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A54320.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A543A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A544AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A5455C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A546DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A5475C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A54954.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A549E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/EnHeishi2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A54BC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A54C34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A54C6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/EnHeishi2_Draw.s")
