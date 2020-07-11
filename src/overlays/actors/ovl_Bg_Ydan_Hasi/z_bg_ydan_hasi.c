#include "z_bg_ydan_hasi.h"

#define FLAGS 0x00000030

#define THIS ((BgYdanHasi*)thisx)

void BgYdanHasi_Init(Actor* thisx, GlobalContext* globalCtx);
void BgYdanHasi_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgYdanHasi_Update(Actor* thisx, GlobalContext* globalCtx);
void BgYdanHasi_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808BE7C8(BgYdanHasi* this, GlobalContext* globalCtx);
void func_808BE690(BgYdanHasi* this, GlobalContext* globalCtx);
void func_808BE930(BgYdanHasi* this, GlobalContext* globalCtx);
WaterBox* func_808BE810(BgYdanHasi* this, GlobalContext* globalCtx);
void func_808BE8DC(BgYdanHasi* this, GlobalContext* globalCtx);
void func_808BE99C(BgYdanHasi* this, GlobalContext* globalCtx);
        
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

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/func_808BE690.s")
void func_808BE690(BgYdanHasi* this, GlobalContext* globalCtx) {
    
    u32 temp_t8;
    f32 sp20;
    f32 phi_f6;
    f32 temp_f0;
    WaterBox* waterBox;
    
    
    //s16 phi_v0;

    temp_t8 = ((u64)globalCtx->gameplayFrames & 0xFF);
   // temp_f6 = (f32)temp_t8;
    phi_f6 = temp_t8;
    //if(1){}
    sp20 = sinf(phi_f6 * 0.024543693f) * 165.0f;
    this->dyna.actor.posRot.pos.x = ((Math_Sins(this->dyna.actor.posRot.rot.y) * sp20) + this->dyna.actor.initPosRot.pos.x);
    this->dyna.actor.posRot.pos.z =((Math_Coss(this->dyna.actor.posRot.rot.y) * sp20) + this->dyna.actor.initPosRot.pos.z);
    //this->dyna.actor.posRot.pos.y = (globalCtx->colCtx.stat.colHeader->waterBoxes[1].unk_02 + 20.0f);
    waterBox = &globalCtx->colCtx.stat.colHeader->waterBoxes[1];
    this->dyna.actor.posRot.pos.y = waterBox->unk_02 + 20.0f;
    if (this->unk_16A != 0) {
        this->unk_16A--;
    }
    phi_f6 = temp_t8 + 4294967296.0f;
    if (this->unk_16A == 0) {
        this->unk_16A = 0x32;
    }
    temp_f0 = sinf(this->unk_16A * 0.12566371f);
    this->dyna.actor.posRot.pos.y = (f32)(this->dyna.actor.posRot.pos.y + (temp_f0 + temp_f0));
}



//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/func_808BE7C8.s")
void func_808BE7C8(BgYdanHasi* this, GlobalContext* globalCtx) { //First called if moving platform is loaded
    if (Flags_GetSwitch(globalCtx, (u8)this->unk_168)) {
        this->unk_16A = 0x258; //600
        this->actionFunc = &func_808BE810;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/func_808BE810.s")
WaterBox* func_808BE810(BgYdanHasi* this, GlobalContext* globalCtx) {
    WaterBox* temp;

    if (this->unk_16A == 0) {
        if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y, 1.0f) != 0) {
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
    temp = globalCtx->colCtx.stat.colHeader->waterBoxes;
    globalCtx->colCtx.stat.colHeader->waterBoxes[1].unk_02 = this->dyna.actor.posRot.pos.y;
    if (true) {}
    return temp+0x1;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/func_808BE8DC.s")
void func_808BE8DC(BgYdanHasi *this, GlobalContext* globalCtx) {
    if (this->unk_16A != 0) {
        this->unk_16A--; 
    }
    func_8002F994(this, this->unk_16A);
    if (this->unk_16A == 0) {
        this->actionFunc = &func_808BE810;
    }
}


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/func_808BE930.s")
void func_808BE930(BgYdanHasi* this, GlobalContext* globalCtx) {
   if (Flags_GetSwitch(globalCtx, this->unk_168) != 0) {
        this->unk_16A = 0x104;
        this->dyna.actor.draw = &BgYdanHasi_Draw;
        this->actionFunc = &func_808BE99C;
        func_800800F8(globalCtx, 0xBE0, 0x1E, &this->dyna.actor, 0);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/func_808BE99C.s")
void func_808BE99C(BgYdanHasi* this, GlobalContext* globalCtx) {
    BgYdanHasi* temp;
    this = this;
    if (this->unk_16A != 0) {
        this->unk_16A = (this->unk_16A - 1);
    }
    
    if (this->unk_16A == 0) {
        if ( Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y, 3.0f) !=0 ) {

            Flags_UnsetSwitch(globalCtx, this->unk_168);
            this->dyna.actor.draw = NULL;
            this->actionFunc = func_808BE930;
            return;
        }
        func_8002F948(&this->dyna.actor, 0x2024);
        return;
    }
    if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y + 120.0f, 3.0f) == 0) {
        func_8002F948(&this->dyna.actor, 0x2024);
        return;
    } 
    func_8002F994(&this->dyna.actor, this->unk_16A);
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/BgYdanHasi_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Hasi/BgYdanHasi_Draw.s")
