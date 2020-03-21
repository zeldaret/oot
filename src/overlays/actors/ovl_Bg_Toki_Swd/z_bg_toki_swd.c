#include "z_bg_toki_swd.h"

#define ROOM  0x00
#define FLAGS 0x00000010

void BgTokiSwd_Init(BgTokiSwd* this, GlobalContext* globalCtx);
void BgTokiSwd_Destroy(BgTokiSwd* this, GlobalContext* globalCtx);
void BgTokiSwd_Update(BgTokiSwd* this, GlobalContext* globalCtx);
void BgTokiSwd_Draw(BgTokiSwd* this, GlobalContext* globalCtx);
void func_808BAF40(BgTokiSwd* this, GlobalContext* globalCtx);
void func_808BB0AC(BgTokiSwd* this, GlobalContext* globalCtx);
/*
const ActorInit Bg_Toki_Swd_InitVars =
{
    ACTOR_BG_TOKI_SWD,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_TOKI_OBJECTS,
    sizeof(BgTokiSwd),
    (ActorFunc)BgTokiSwd_Init,
    (ActorFunc)BgTokiSwd_Destroy,
    (ActorFunc)BgTokiSwd_Update,
    (ActorFunc)BgTokiSwd_Draw,
};
*/
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Swd/BgTokiSwd_SetupAction.s")
void BgTokiSwd_SetupAction(BgTokiSwd* this, ActorFunc actionFunc)
{
   this->actionFunc = actionFunc;
}
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Swd/BgTokiSwd_Init.s")

extern InitChainEntry D_808BC414;
extern ColliderCylinderInit D_808BC3E0;
extern SubActor98Init D_808BC40C;
void BgTokiSwd_Init(BgTokiSwd* this, GlobalContext* globalCtx) 
{
   ColliderCylinderMain* collision;
   Actor* thisx = &this->actor;

   Actor_ProcessInitChain(thisx, &D_808BC414);
   this->actor.shape.unk_08 = 800.0f;
   BgTokiSwd_SetupAction(thisx, &func_808BAF40);
   collision = &this->collider;
   if (LINK_IS_ADULT) 
   { 
       thisx->draw = NULL;
   }
   if (gSaveContext.scene_setup_index == 5) 
   {
       globalCtx->unk_11D30[0] = 0xFF;
   }
   ActorCollider_AllocCylinder(globalCtx, collision);
   ActorCollider_InitCylinder(globalCtx, collision, thisx, &D_808BC3E0);
   ActorCollider_Cylinder_Update(thisx, collision);
   func_80061ED4(&thisx->sub_98, 0, &D_808BC40C);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Swd/BgTokiSwd_Destroy.s")
void BgTokiSwd_Destroy(BgTokiSwd* this, GlobalContext* globalCtx)
{
   ColliderCylinderMain* collider = &this->collider;
   ActorCollider_FreeCylinder(globalCtx, collider);
}
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Swd/func_808BAF40.s")
extern D_808BBD90;
extern D_808BB2F0;
extern D_808BB7A0;
void func_808BAF40(BgTokiSwd* this, GlobalContext* globalCtx) 
{
   if (((gSaveContext.event_chk_inf[4] & 0x8000) == 0) && (gSaveContext.scene_setup_index < 4) && 
        (func_8002E12C(&this->actor, 800.0f, 0x7530) != 0) && (func_800BFC84(globalCtx) == 0)) 
   {
       gSaveContext.event_chk_inf[4] |= 0x8000;
       globalCtx->csCtx.segment = &D_808BBD90;
       gSaveContext.cutscene_trigger = 1;
   } 
   if (LINK_IS_CHILD || ((gSaveContext.event_chk_inf[5] & 0x20) != 0)) 
   {
       if (func_8002F410(&this->actor, globalCtx) != 0) 
       {
           if (LINK_IS_CHILD) 
           {
               Item_Give(globalCtx, 0x3C);
               globalCtx->csCtx.segment = &D_808BB2F0;
           } 
           else 
           {
               globalCtx->csCtx.segment = &D_808BB7A0;
           }
           Audio_SetBGM(NA_BGM_STOP);
           Audio_SetBGM(NA_SE_PL_BOUND_DIRT);
           gSaveContext.cutscene_trigger = (u8)1;
           this->actor.attachedA = 0;
           BgTokiSwd_SetupAction(this, &func_808BB0AC);
       } 
       else 
       {
           if (func_8002E084(&this->actor, 0x2000) != 0) 
           {
               func_8002F580(&this->actor, globalCtx);
           }
       }
   } 
   if (gSaveContext.scene_setup_index == 5) 
   {
       if (globalCtx->unk_11D30[0] > 0) 
       {
           globalCtx->unk_11D30[0] = globalCtx->unk_11D30[0] - 1;
           return;
       }
       globalCtx->unk_11D30[0] = 0;
   }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Swd/func_808BB0AC.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Swd/func_808BB128.s")
void func_808BB128(BgTokiSwd* this, GlobalContext* globalCtx)
{
    if ((func_8006C4A4(globalCtx, 1) != 0) && (globalCtx->unk_11D30[0] < 0xFF))
    {
        globalCtx->unk_11D30[0] = globalCtx->unk_11D30[0] + 5;
    }
}
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Swd/BgTokiSwd_Update.s")
void BgTokiSwd_Update(BgTokiSwd* this, GlobalContext* globalCtx)
{
    this->actionFunc(&this->actor, globalCtx);
    Actor_CollisionCheck_SetOT(globalCtx, &globalCtx->sub_11E60, &this->collider);
}
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Toki_Swd/BgTokiSwd_Draw.s")
extern char D_808BC420[];
extern char D_808BC434[];
extern D_06001BD0;
extern char D_808BC448[];
void BgTokiSwd_Draw(BgTokiSwd* this, GlobalContext* globalCtx) {
   Gfx* gfxArr[7];
   GraphicsContext* gfxCtx;
   
    
    gfxCtx = globalCtx->state.gfxCtx;

    func_800C6AC4(gfxArr, globalCtx->state.gfxCtx, &D_808BC420, 0x2D7);
    func_80093D18(globalCtx->state.gfxCtx);
    func_8002EBCC(&this->actor, globalCtx, 0);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, Draw_TexScroll(globalCtx->state.gfxCtx, 0, -(globalCtx->gameplayFrames & 0x7F), 0x20, 0x20));
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, D_808BC434, 0x2E6), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, &D_06001BD0);
    func_800C6B54(gfxArr, globalCtx->state.gfxCtx, D_808BC448, 0x308);
}
