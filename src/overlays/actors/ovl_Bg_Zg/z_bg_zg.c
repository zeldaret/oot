#include "z_bg_zg.h"

#define ROOM  0x00
#define FLAGS 0x00000010

static void BgZg_Init(BgZg* this, GlobalContext* globalCtx);
static void BgZg_Destroy(BgZg* this, GlobalContext* globalCtx);
static void BgZg_Update(BgZg* this, GlobalContext* globalCtx);
static void BgZg_Draw(BgZg* this, GlobalContext* globalCtx);
static void func_808C0C50(BgZg* this);
static s32 func_808C0C98(BgZg* this, GlobalContext* globalCtx);
static s32 func_808C0CC8(BgZg* this);
static void func_808C0CD4(BgZg* this, GlobalContext* globalCtx);
static void func_808C0D08(BgZg* this, GlobalContext* globalCtx);
static void func_808C0EEC(BgZg* this, GlobalContext* globalCtx);

static const ActorFunc funcTbl[] = { (ActorFunc)func_808C0CD4, (ActorFunc)func_808C0D08 };

static InitChainEntry initChain[] =
{
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP)
};

static const ActorFunc funcTbl2[] = { (ActorFunc) func_808C0EEC };

const ActorInit Bg_Zg_InitVars =
{
    ACTOR_BG_ZG,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_ZG,
    sizeof(BgZg),
    (ActorFunc)BgZg_Init,
    (ActorFunc)BgZg_Destroy,
    (ActorFunc)BgZg_Update,
    (ActorFunc)BgZg_Draw,
};

extern u32 D_06001080;
extern u32 D_060011D4;

static void BgZg_Destroy(BgZg* this, GlobalContext* globalCtx)
{
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

static void func_808C0C50(BgZg* this)
{
    Audio_PlaySoundGeneral(NA_SE_EV_METALDOOR_OPEN, &this->dyna.actor.unk_E4, 4, 
                           &D_801333E0, &D_801333E0, &D_801333E8);
}

static s32 func_808C0C98(BgZg* this, GlobalContext* globalCtx)
{
    Actor* thisx = &this->dyna.actor;
    s32 flag;
    flag = (thisx->params >> 8) & 0xFF;
    return Flags_GetSwitch(globalCtx, flag);
}

static s32 func_808C0CC8(BgZg* this)
{
    s32 flag = this->dyna.actor.params & 0xFF;
    return flag;
}

static void func_808C0CD4(BgZg* this, GlobalContext* globalCtx)
{
    if (func_808C0C98(this, globalCtx) != 0)
    {
        this->funcIndex = 1;
        func_808C0C50(this);
    }
}

static void func_808C0D08(BgZg* this, GlobalContext* globalCtx)
{
    Actor* thisx = &this->dyna.actor;
    
    thisx->posRot.pos.y += (kREG(16) + 20.0f) * 1.2f;
    if ((((kREG(17) + 200.0f) * 1.2f) + thisx->initPosRot.pos.y) <= thisx->posRot.pos.y)
    {
        Actor_Kill(thisx);
    } 
}

static void BgZg_Update(BgZg *this,GlobalContext *globalCtx)
{
  s32 funcIndex = this->funcIndex;
  
  if (((funcIndex < 0) || (1 < funcIndex)) || (funcTbl[funcIndex] == NULL)) 
  {
    // Translates to: "Main Mode is wrong!!!!!!!!!!!!!!!!!!!!!!!!!"
    osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
  }
  else 
  {
     funcTbl[funcIndex](&this->dyna.actor, globalCtx);
  }

}

static void BgZg_Init(BgZg* this, GlobalContext* globalCtx) {
    s32 sp20[2];
    Actor* thisx = &this->dyna.actor;
    u32 local_c;
      
    Actor_ProcessInitChain(thisx, initChain);
    DynaPolyInfo_SetActorMove(thisx, DPM_UNK);
    local_c = 0;
    DynaPolyInfo_Alloc(&D_060011D4, &local_c);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, local_c);
    if ((func_808C0CC8(this) == 8) || (func_808C0CC8(this) == 9)) 
    {
        thisx->scale.x = thisx->scale.x * 1.3f;
        thisx->scale.z = thisx->scale.z * 1.3f;
        thisx->scale.y = thisx->scale.y * 1.2f;
    } 

    else 
    {

    }

    this->funcIndex = 0;
    this->unk_168 = 0;
    if (func_808C0C98(this, globalCtx) != 0) 
    {
        Actor_Kill(thisx);
    }
}

static void func_808C0EEC(BgZg* this, GlobalContext* globalCtx)
{

    GraphicsContext* gfxCtx;
    GraphicsContext* tempgfxCtx; // oddly needs this to match
    Gfx* gfxArr[4];

    tempgfxCtx = globalCtx->state.gfxCtx;
    gfxCtx = tempgfxCtx;
    func_800C6AC4(gfxArr, gfxCtx, "../z_bg_zg.c", 311);
    
    func_80093D18(gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(gfxCtx, "../z_bg_zg.c", 315), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(gfxCtx->polyOpa.p++, &D_06001080);
    func_800C6B54(gfxArr, gfxCtx, "../z_bg_zg.c", 320);
}

static void BgZg_Draw(BgZg* this, GlobalContext* globalCtx)
{
    s32 funcIndex = this->unk_168;

    if (((funcIndex < 0) || (0 < funcIndex)) || funcTbl2[funcIndex] == 0)
    {
        // Translates to: "Drawing mode is wrong !!!!!!!!!!!!!!!!!!!!!!!!!"
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    }
    else
    {
        funcTbl2[funcIndex](this, globalCtx);
    }
}