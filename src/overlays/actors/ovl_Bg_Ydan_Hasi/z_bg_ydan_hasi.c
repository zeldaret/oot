#include "z_bg_ydan_hasi.h"

#define FLAGS 0x00000030

#define THIS ((BgYdanHasi*)thisx)

void BgYdanHasi_Init(Actor* thisx, GlobalContext* globalCtx);
void BgYdanHasi_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgYdanHasi_Update(Actor* thisx, GlobalContext* globalCtx);
void BgYdanHasi_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808BE7C8(BgYdanHasi* this, GlobalContext* globalCtx);
void func_808BE690(BgYdanHasi*);
void func_808BE930(BgYdanHasi*);
void func_808BE810(BgYdanHasi* this, GlobalContext* globalCtx);
void func_808BE8DC(BgYdanHasi*);

        
const ActorInit Bg_Ydan_Hasi_InitVars = {
    ACTOR_BG_YDAN_HASI,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_YDAN_OBJECTS,
    sizeof(BgYdanHasi),
    (ActorFunc)BgYdanHasi_Init,
    (ActorFunc)BgYdanHasi_Destroy,
    (ActorFunc)BgYdanHasi_Update,
    (ActorFunc)BgYdanHasi_Draw,
};


static InitChainEntry sInitChain[] = { //D_808BEC20
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

//extern Gfx     D_808BEC24[];
extern UNK_PTR D_06005780;
extern UNK_TYPE D_06007798;

    //#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/BgYdanHasi_Init.s")
void BgYdanHasi_Init(Actor* thisx, GlobalContext* globalCtx) {
    s16 pad1;
    BgYdanHasi* this = THIS;
    s32 localConst;
    WaterBox* waterBox;
    s16 pad2;
    localConst = 0;
    
    Actor_ProcessInitChain(thisx, sInitChain);
    this->unk_168 = (u8)((thisx->params >> 8) & 0x3F);
    thisx->params = thisx->params & 0xFF;
    waterBox = globalCtx->colCtx.stat.colHeader->waterBoxes + 0x1;
    DynaPolyInfo_SetActorMove(&this->dyna, 1);
    if (thisx->params == 1) { // Water the moving platform floats on in B1
        thisx->initPosRot.pos.y = (thisx->initPosRot.pos.y + -5.0f);
        thisx->posRot.pos.y = thisx->initPosRot.pos.y;
        waterBox->unk_02 = thisx->initPosRot.pos.y;
        this->actionFunc = func_808BE7C8;
       
    } else {
        if (thisx->params == 0) {  //Moving platform on the water in B1
            DynaPolyInfo_Alloc(&D_06007798, (void*)&localConst);
            thisx->scale.z = 0.15f;
            thisx->scale.x = 0.15f;
            thisx->posRot.pos.y = (waterBox->unk_02 + 20.0f);
            
            this->actionFunc = func_808BE690;
            
        } else { // 3 platforms on 2F
            DynaPolyInfo_Alloc(&D_06005780, (void*)&localConst);
            thisx->draw = NULL;
            this->actionFunc = func_808BE930;
            Actor_SetHeight(thisx, 40.0f);
        }
        this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, localConst);
    }
    this->unk_16A = (u16)0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/BgYdanHasi_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/func_808BE690.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/func_808BE7C8.s")
void func_808BE7C8(BgYdanHasi* this, GlobalContext* globalCtx) { //First called if moving platform is loaded
    if (Flags_GetSwitch(globalCtx, (u8)this->unk_168)) {
        this->unk_16A = 0x258;
        this->actionFunc = &func_808BE810;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/func_808BE810.s")
void func_808BE810(BgYdanHasi* this, GlobalContext* globalCtx) {

    if (this->unk_16A == 0) {
        if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y,
                         1.0f) != 0) {
            Flags_UnsetSwitch(globalCtx, this->unk_168);
            this->actionFunc = &func_808BE7C8;
        }
        func_8002F948(&this->dyna.actor, 0x205E);
    } else {
        if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y - 47.0f, 0.5f)) {
            this->actionFunc = &func_808BE8DC;
        }
        func_8002F948(&this->dyna.actor, 0x205E);
    }
    globalCtx->colCtx.stat.colHeader->waterBoxes[1].unk_02 = this->dyna.actor.posRot.pos.y;
    //waterBox = globalCtx->colCtx.stat.colHeader->waterBoxes + 0x1;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/func_808BE8DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/func_808BE930.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/func_808BE99C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/BgYdanHasi_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/BgYdanHasi_Draw.s")
