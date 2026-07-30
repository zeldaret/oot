/*
 * File: z_en_jj.c
 * Overlay: ovl_En_Jj
 * Description: Lord Jabu-Jabu
 */

#include "z_en_jj.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "segmented_address.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/objects/object_jj/object_jj.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

void EnJj_Init(Actor* thisx, PlayState* play);
void EnJj_Destroy(Actor* thisx, PlayState* play);
void EnJj_Update(Actor* thisx, PlayState* play);
void EnJj_Draw(Actor* thisx, PlayState* play);

void func_80A87BEC(EnJj* this, PlayState* play);
void func_80A87C30(EnJj* this, PlayState* play);
void func_80A87CEC(EnJj* this, PlayState* play);
void func_80A87EF0(EnJj* this, PlayState* play);
void func_80A87F44(Actor* thisx, PlayState* play);

ActorProfile En_Jj_Profile = {
    /**/ ACTOR_EN_JJ,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_JJ,
    /**/ sizeof(EnJj),
    /**/ EnJj_Init,
    /**/ EnJj_Destroy,
    /**/ EnJj_Update,
    /**/ EnJj_Draw,
};

static s32 sPad = 0;

static CutsceneData gJabuInhalingCs[0x2D4] = {
    { 0x1A },        { 0x65D },       { 0xA },         { 4 },           { 0x50000 },     { 0xF00000 },
    { 0x40000000 },  { -0x6C4 },      { 0x34 },        { -0x2C },       { -0x6C4 },      { 0x34 },
    { -0x2C },       { 0x0F671408 },  { 0 },           { 1 },           { 0x300F0 },     { 0xFF0000 },
    { 0x40000000 },  { -0x6C4 },      { 0x34 },        { -0x2C },       { -0x6C4 },      { 0x34 },
    { -0x2C },       { 0x0F671408 },  { 0 },           { 1 },           { 0x600FF },     { 0x011D0000 },
    { 0x40000000 },  { -0x6C4 },      { 0x34 },        { -0x2C },       { -0x6C4 },      { 0x34 },
    { -0x2C },       { 0x0F671408 },  { 0 },           { 1 },           { 0x20011D },    { 0x012C0000 },
    { 0xC0000000 },  { -0x6C4 },      { 0x34 },        { -0x2C },       { -0x601 },      { 0x6D },
    { -0x2C },       { 0x0F671408 },  { 0 },           { 1 },           { 0x44 },        { 4 },
    { 0x10000 },     { 0xEA0000 },    { 0x40000000 },  { -0x681 },      { 0x34 },        { -0x2C },
    { -0x681 },      { 0x34 },        { -0x2C },       { 0x0F671408 },  { 0 },           { 1 },
    { 0x200EA },     { 0xF141F8 },    { 0 },           { -0x681 },      { 0x34 },        { -0x2C },
    { -0x643 },      { 0x82 },        { -0x2F },       { 0x410DB6DB },  { 0x41324925 },  { -0x3EF24925 },
    { 0x200F1 },     { 0x01184031 },  { 0 },           { -0x643 },      { 0x82 },        { -0x2F },
    { -0x225 },      { 0x82 },        { -0x34 },       { 0x41D83483 },  { 0 },           { -0x3E27CB7D },
    { 0x30118 },     { 0x012C0000 },  { 0 },           { -0x225 },      { 0x82 },        { -0x34 },
    { -0x225 },      { 0x82 },        { -0x34 },       { 0 },           { 0 },           { 0 },
    { 0x43 },        { 5 },           { 0x10000 },     { 0x5D0000 },    { 0 },           { 0 },
    { 0x33 },        { 0x7C },        { 0 },           { 0x33 },        { 0x7C },        { 0 },
    { 0 },           { 0 },           { 0x3005D },     { 0x790000 },    { 0 },           { 0 },
    { 0x33 },        { 0x7C },        { 0 },           { 0x33 },        { 0x7C },        { 0 },
    { 0 },           { 0 },           { 0x10079 },     { 0x920000 },    { 0 },           { 0 },
    { 0x33 },        { 0x7C },        { 0 },           { 0x33 },        { 0x7C },        { 0 },
    { 0 },           { 0 },           { 0x20092 },     { 0xF10000 },    { 0 },           { 0 },
    { 0x33 },        { 0x7C },        { 0 },           { 0x33 },        { 0x7C },        { 0 },
    { 0 },           { 0 },           { 0x100F1 },     { 0x01B90000 },  { 0 },           { 0 },
    { 0x33 },        { 0x7C },        { 0 },           { 0x33 },        { 0x7C },        { 0 },
    { 0 },           { 0 },           { 0x45 },        { 3 },           { 0x10000 },     { 0x5A0000 },
    { 0 },           { 0 },           { -0x21 },       { 9 },           { 0 },           { -0x21 },
    { 9 },           { 0 },           { 0 },           { 0 },           { 0x2005A },     { 0x014A0000 },
    { 0 },           { 0 },           { -0x21 },       { 9 },           { 0 },           { -0x3E },
    { 0x16 },        { 0 },           { 0xBDF77777 },  { 0 },           { 0x3014A },     { 0x017C0000 },
    { 0 },           { 0 },           { -0x3E },       { 0x16 },        { 0 },           { -0x3E },
    { 0x16 },        { 0 },           { 0 },           { 0 },           { 3 },           { 1 },
    { 0xC0447 },     { 0x04890000 },  { 0 },           { -0x2E },       { 0 },           { -0x30 },
    { -0x2E },       { 0 },           { -0x30 },       { 0 },           { 0 },           { 0 },
    { 0x2D },        { 1 },           { 0x90000 },     { 0xA000A },     { 0xA },         { 1 },
    { 0x35012C },    { 0x065D0000 },  { 0 },           { -0x65E },      { 0x34 },        { -0x34 },
    { -0x65E },      { 0x34 },        { -0x34 },       { 0 },           { 0 },           { 0 },
    { 1 },           { 0x10000 },     { 0x04430000 },  { 0 },           { 0x4235998B },  { -0x0668FFA1 },
    { -0x28FEA4 },   { 0 },           { 0x4235998B },  { -0x0668FFA1 }, { -0x28FE93 },   { 0 },
    { 0x4235998B },  { -0x0668FFA1 }, { -0x28FE82 },   { 0 },           { 0x4235998B },  { -0x0668FFA1 },
    { -0x28FDDD },   { -0x01000000 }, { 0x4235998B },  { -0x0668FFA1 }, { -0x288F9B },   { 1 },
    { 0x1003C },     { 0x047F0000 },  { 0 },           { 0x4235998B },  { -0x05FBFF05 }, { 0xDE015C },
    { 0 },           { 0x4235998B },  { -0x05FBFF05 }, { 0xDE016D },    { 0 },           { 0x4235998B },
    { -0x05FBFF05 }, { 0xDE017E },    { 0 },           { 0x4235998B },  { -0x05FBFF05 }, { 0xDE0223 },
    { -0x01000000 }, { 0x4235998B },  { -0x05FBFF05 }, { 0xDE7065 },    { 1 },           { 0x1005A },
    { 0x015F0000 },  { 0 },           { 0x4235998B },  { -0x06A1FE82 }, { 0x01C70000 },  { 0 },
    { 0x4235998B },  { -0x06A1FE82 }, { 0x01C7AC34 },  { 0 },           { 0x4235998B },  { -0x06A1FE82 },
    { 0x01C74428 },  { 0 },           { 0x4235998B },  { -0x069DFE84 }, { 0x01C30000 },  { 0 },
    { 0x4203FFE5 },  { -0x069DFE84 }, { 0x01C3AC10 },  { 0 },           { 0x4203FFE5 },  { -0x069DFE84 },
    { 0x01C30000 },  { 0 },           { 0x4203FFE5 },  { -0x069DFE84 }, { 0x01C30000 },  { 0 },
    { 0x4203FFE5 },  { -0x069DFE84 }, { 0x01C30164 },  { -0x01000000 }, { 0x4203FFE5 },  { -0x069DFE84 },
    { 0x01C3AD78 },  { 1 },           { 0x100DC },     { 0x01880000 },  { 0 },           { 0x4235998B },
    { -0x0668FFA1 }, { -0x290000 },   { 0 },           { 0x4235998B },  { -0x0668FFA1 }, { -0x2853CC },
    { 0 },           { 0x4235998B },  { -0x0668FFA1 }, { -0x28BBD8 },   { 0 },           { 0x4235998B },
    { -0x0668FFA1 }, { -0x290000 },   { 0 },           { 0x4235998B },  { -0x0668FFA1 }, { -0x2853F0 },
    { 0 },           { 0x4235998B },  { -0x0668FFA1 }, { -0x290000 },   { -0x01000000 }, { 0x4235998B },
    { -0x0668FFA1 }, { -0x290000 },   { 1 },           { 0x100F0 },     { 0x05330000 },  { 0 },
    { 0x42366658 },  { -0x0711FFBF }, { -0xF0000 },    { 0 },           { 0x42366658 },  { -0x0711FFBF },
    { -0xE53CC },    { 0 },           { 0x42366658 },  { -0x0711FFBF }, { -0xEBBD8 },    { 0 },
    { 0x42366658 },  { -0x0711FFBF }, { -0xF0000 },    { -0x01000000 }, { 0x42366658 },  { -0x0711FFBF },
    { -0xE53F0 },    { 1 },           { 0x10118 },     { 0x055B0000 },  { 0 },           { 0x42366658 },
    { -0x05FAFFA1 }, { -0x70000 },    { 0 },           { 0x42366658 },  { -0x05FAFFA1 }, { -0x653CC },
    { 0 },           { 0x42366658 },  { -0x05FAFFA1 }, { -0x6BBD8 },    { 0 },           { 0x42366658 },
    { -0x05FAFFA1 }, { -0x70000 },    { -0x01000000 }, { 0x42366658 },  { -0x05FAFFA1 }, { -0x653F0 },
    { 1 },           { 0x10136 },     { 0x058D0000 },  { 0 },           { 0x4235998B },  { -0x06B4FFAD },
    { -0x3B0000 },   { 0 },           { 0x4235998B },  { -0x06B4FFAD }, { -0x3A53CC },   { 0 },
    { 0x4235998B },  { -0x0670FF4F }, { -0x3ABBD8 },   { 0 },           { 0x4235998B },  { -0x05FCFF20 },
    { -0x3B0000 },   { 0 },           { 0x4235998B },  { -0x04DAFF4C }, { -0x3A53F0 },   { 0 },
    { 0x4235998B },  { -0x03B8FFB9 }, { -0x370000 },   { 0 },           { 0x4235998B },  { -0x03B8FFB9 },
    { -0x370000 },   { 0 },           { 0x4235998B },  { -0x03B8FFB9 }, { -0x36FE9C },   { -0x01000000 },
    { 0x4235998B },  { -0x03B8FFB9 }, { -0x365288 },   { 1 },           { 0x10163 },     { 0x05BA0000 },
    { 0 },           { 0x42726667 },  { -0x0725FF99 }, { 0x120000 },    { 0 },           { 0x42726667 },
    { -0x0725FF99 }, { 0x12AC34 },    { 0 },           { 0x42726667 },  { -0x0725FF99 }, { 0x124428 },
    { 0 },           { 0x42726667 },  { -0x0725FF99 }, { 0x120000 },    { 0 },           { 0x42726667 },
    { -0x0725FF99 }, { 0x12AC10 },    { 0 },           { 0x42726667 },  { -0x0725FF99 }, { 0x120000 },
    { -0x01000000 }, { 0x42726667 },  { -0x0725FF99 }, { 0x120000 },    { 2 },           { 0x10000 },
    { 0x04600000 },  { 0x1E },        { 0x4235998B },  { -0x06BB0005 }, { -0x2D0000 },   { 0x1E },
    { 0x4235998B },  { -0x06BB0005 }, { -0x2C53CC },   { 0x3E8 },       { 0x4235998B },  { -0x06BB0005 },
    { -0x2CBBD8 },   { 0x1E },        { 0x4235998B },  { -0x06BB0005 }, { -0x2D0000 },   { -0xFFFFE2 },
    { 0x4235998B },  { -0x06BB0005 }, { -0x2C53F0 },   { 2 },           { 0x1003C },     { 0x049C0000 },
    { 0x1E },        { 0x4235998B },  { -0x059FFF0F }, { 0x860000 },    { 0x1E },        { 0x4235998B },
    { -0x059FFF0F }, { 0x86AC34 },    { 0x3E8 },       { 0x4235998B },  { -0x059FFF0F }, { 0x864428 },
    { 0x1E },        { 0x4235998B },  { -0x059FFF0F }, { 0x860000 },    { -0xFFFFE2 },   { 0x4235998B },
    { -0x059FFF0F }, { 0x86AC10 },    { 2 },           { 0x1005A },     { 0x017C0000 },  { 0x1E },
    { 0x4235998B },  { -0x0649FEA4 }, { 0x01750000 },  { 0x1E },        { 0x4235998B },  { -0x0649FEA4 },
    { 0x0175AC34 },  { 0x32 },        { 0x4235998B },  { -0x0649FEA4 }, { 0x01754428 },  { 0x1E },
    { 0x420D9981 },  { -0x064DFEAE }, { 0x016F0000 },  { 0x1E },        { 0x4203FFE5 },  { -0x064DFEAE },
    { 0x016FAC10 },  { 0x1E },        { 0x4203FFE5 },  { -0x064DFEAE }, { 0x016F0000 },  { 0x1E },
    { 0x4203FFE5 },  { -0x064DFEAE }, { 0x016F0000 },  { 0x1E },        { 0x4203FFE5 },  { -0x064DFEAE },
    { 0x016F0164 },  { -0xFFFFE2 },   { 0x4203FFE5 },  { -0x064DFEAE }, { 0x016FAD78 },  { 2 },
    { 0x100DC },     { 0x01A50000 },  { 0x1E },        { 0x4235998B },  { -0x06BB0005 }, { -0x2D0000 },
    { 0x46 },        { 0x4235998B },  { -0x06BB0005 }, { -0x2C53CC },   { 5 },           { 0x4235998B },
    { -0x06BB0005 }, { -0x2CBBD8 },   { 6 },           { 0x42373325 },  { -0x0638FF6A }, { -0x920000 },
    { 0x1E },        { 0x4235998B },  { -0x05FAFF68 }, { -0x4A53F0 },   { 0x1E },        { 0x4235998B },
    { -0x05FAFF68 }, { -0x4B0000 },   { -0xFFFFE2 },   { 0x4235998B },  { -0x05FAFF68 }, { -0x4B0000 },
    { 2 },           { 0x100F0 },     { 0x05500000 },  { 0x1E },        { 0x42366658 },  { -0x06AFFFB6 },
    { -0x250000 },   { 0x1E },        { 0x42366658 },  { -0x06AFFFB6 }, { -0x2453CC },   { 0x3E8 },
    { 0x42366658 },  { -0x06AFFFB6 }, { -0x24BBD8 },   { 0x1E },        { 0x42366658 },  { -0x06AFFFB6 },
    { -0x250000 },   { -0xFFFFE2 },   { 0x42366658 },  { -0x06AFFFB6 }, { -0x2453F0 },   { 2 },
    { 0x10118 },     { 0x05780000 },  { 0x1E },        { 0x42366658 },  { -0x0652FF9D }, { -0x320000 },
    { 0x1E },        { 0x42366658 },  { -0x0652FF9D }, { -0x3153CC },   { 0x3E8 },       { 0x42366658 },
    { -0x0652FF9D }, { -0x31BBD8 },   { 0x1E },        { 0x42366658 },  { -0x0652FF9D }, { -0x320000 },
    { -0xFFFFE2 },   { 0x42366658 },  { -0x0652FF9D }, { -0x3153F0 },   { 2 },           { 0x10136 },
    { 0x05AA0000 },  { 0xB001E },     { 0x42B5FFCC },  { -0x0649FF73 }, { -0x3B0000 },   { 0x9000A },
    { 0x42B59966 },  { -0x063EFF8E }, { -0x3853CC },   { 0xFC000A },    { 0x42B4CC9A },  { -0x05F7FF40 },
    { -0x35BBD8 },   { 0xA },         { 0x42B53300 },  { -0x0592FF5C }, { -0x360000 },   { 0xCB000A },
    { 0x42B4CC9A },  { -0x0471FF89 }, { -0x2453F0 },   { 0x20000A },    { 0x42B4CC9A },  { -0x033FFFCE },
    { -0x330000 },   { 0x3E8 },       { 0x4235998B },  { -0x0343FFDD }, { -0x330000 },   { 0x1E },
    { 0x4235998B },  { -0x0343FFDD }, { -0x32FE9C },   { -0xFFFFE2 },   { 0x4235998B },  { -0x0343FFDD },
    { -0x325288 },   { 2 },           { 0x10163 },     { 0x05D70000 },  { 0x1E },        { 0x42726667 },
    { -0x06A9FF91 }, { -0x60000 },    { 0x1E },        { 0x42726667 },  { -0x06A9FF91 }, { -0x553CC },
    { 0xA },         { 0x42726667 },  { -0x06A9FF91 }, { -0x5BBD8 },    { 0xA },         { 0x42726667 },
    { -0x06B8FFAE }, { -0x2A0000 },   { 0x3E8 },       { 0x42726667 },  { -0x06B8FFAE }, { -0x2953F0 },
    { 0x1E },        { 0x42726667 },  { -0x06B8FFAE }, { -0x2A0000 },   { -0xFFFFE2 },   { 0x42726667 },
    { -0x06B8FFAE }, { -0x2A0000 },   { 0x2D },        { 1 },           { 0xB014F },     { 0x01560156 },
    { 0x3E8 },       { 1 },           { 0x180159 },    { 0x018B018B },  { 0x3E },        { 1 },
    { 0x10131 },     { 0x01EE0000 },  { 0 },           { -0x577 },      { 0x1C4 },       { -0x35 },
    { -0x577 },      { 0x1C4 },       { -0x35 },       { 0 },           { 0 },           { 0 },
    { -1 },          { 0 },           { 0 },           { 0 },
};

static ColliderCylinderInit D_80A88CB4 = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
        { 0x00000004, HIT_BACKLASH_NONE, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 170, 150, 0, { 0, 0, 0 } },
};

static InitChainEntry D_80A88CE0[] = {
    ICHAIN_VEC3F_DIV1000(scale, 87, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 4000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 3300, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1100, ICHAIN_STOP),
};
static Vec3f D_80A88CF0 = { -1589.0f, 53.0f, -43.0f };
static s32 D_80A88CFC[5] = { 0x06007698, 0x06007A98, 0x06007E98, 0, 0 };

void func_80A87800(EnJj* this, void (*arg1)(EnJj*, PlayState*)) {
    this->unk2FC = arg1;
}

void EnJj_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    EnJj* this = (EnJj*)thisx;
    CollisionHeader* sp4C;

    sp4C = NULL;
    Actor_ProcessInitChain(&this->dyna.actor, D_80A88CE0);
    ActorShape_Init(&this->dyna.actor.shape, 0.0f, NULL, 0.0f);
    switch (this->dyna.actor.params) {
        case -1:
            SkelAnime_InitFlex(play, &this->unk164, &object_jj_00B9A8_Skel, &object_jj_001F4C_Anim, this->unk1A8,
                               this->unk22C, 22);
            Animation_PlayLoop(&this->unk164, &object_jj_001F4C_Anim);
            this->unk30A = 0;
            this->unk30E = 0;
            this->unk30F = 0;
            this->unk310 = 0;
            this->unk311 = 0;
            if (GET_EVENTCHKINF(EVENTCHKINF_OPENED_JABU_JABU)) {
                func_80A87800(this, func_80A87BEC);
            } else {
                func_80A87800(this, func_80A87C30);
            }
            this->unk300 = (EnJj*)Actor_SpawnAsChild(
                &play->actorCtx, &this->dyna.actor, play, ACTOR_EN_JJ, this->dyna.actor.world.pos.x - 10.0f,
                this->dyna.actor.world.pos.y, this->dyna.actor.world.pos.z, 0, this->dyna.actor.world.rot.y, 0, 0);
            DynaPolyActor_Init(&this->dyna, 0);
            CollisionHeader_GetVirtual(&object_jj_000A1C_Col, &sp4C);
            this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, sp4C);
            Collider_InitCylinder(play, &this->unk2B0);
            Collider_SetCylinder(play, &this->unk2B0, &this->dyna.actor, &D_80A88CB4);
            this->dyna.actor.colChkInfo.mass = MASS_IMMOVABLE;
            return;

        case 0:
            DynaPolyActor_Init(&this->dyna, 0);
            CollisionHeader_GetVirtual(&object_jj_001830_Col, &sp4C);
            this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, sp4C);
            DynaPoly_DisableCeilingCollision(play, &play->colCtx.dyna, this->dyna.bgId);
            this->dyna.actor.update = func_80A87F44;
            this->dyna.actor.draw = NULL;
            Actor_SetScale(&this->dyna.actor, 0.087f);
            return;

        case 1:
            DynaPolyActor_Init(&this->dyna, 0);
            CollisionHeader_GetVirtual(&object_jj_00BA8C_Col, &sp4C);
            this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, sp4C);
            this->dyna.actor.update = func_80A87F44;
            this->dyna.actor.draw = NULL;
            Actor_SetScale(&this->dyna.actor, 0.087f);
            return;
    }
}

void EnJj_Destroy(Actor* thisx, PlayState* play) {
    EnJj* this = (EnJj*)thisx;

    switch (this->dyna.actor.params) {
        case -1:
            DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
            Collider_DestroyCylinder(play, &this->unk2B0);
            return;

        case 0:
        case 1:
            DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
            return;
    }
}

void func_80A87B1C(EnJj* this) {
    if (this->unk30F > 0) {
        this->unk30F--;
    } else {
        this->unk30E++;
        if (this->unk30E >= 3) {
            this->unk30E = 0;
            if (this->unk310 > 0) {
                this->unk310--;
            } else {
                this->unk30F = Rand_S16Offset(0x14, 0x14);
                this->unk310 = this->unk311;
            }
        }
    }
}

void func_80A87B9C(EnJj* this, PlayState* play) {
    EnJj* unk300;

    unk300 = this->unk300;
    if (this->unk308 >= -0x1450) {
        this->unk308 -= 0x66;
        if (this->unk308 < -0xA28) {
            DynaPoly_DisableCollision(play, &play->colCtx.dyna, unk300->dyna.bgId);
        }
    }
}

void func_80A87BEC(EnJj* this, PlayState* play) {
    if (this->dyna.actor.xzDistToPlayer < 300.0f) {
        func_80A87800(this, func_80A87B9C);
    }
}

void func_80A87C30(EnJj* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if ((Math_Vec3f_DistXZ(&D_80A88CF0, &player->actor.world.pos) < 300.0f) && play->isPlayerDroppingFish(play)) {
        this->unk30C = 0x64;
        func_80A87800(this, func_80A87CEC);
    }
    this->unk2B0.dim.pos.x = -0x4DD;
    this->unk2B0.dim.pos.y = 0x14;
    this->unk2B0.dim.pos.z = -0x30;
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->unk2B0.base);
}

void func_80A87CEC(EnJj* this, PlayState* play) {
    EnJj* temp_v1;
    Actor* sp1C;

    temp_v1 = this->unk300;
    if (this->unk30C > 0) {
        this->unk30C--;
        return;
    }
    func_80A87800(this, func_80A87EF0);
    play->csCtx.script = gJabuInhalingCs;
    gSaveContext.cutsceneTrigger = 1;
    DynaPoly_DisableCollision(play, &play->colCtx.dyna, temp_v1->dyna.bgId);
    Camera_SetFinishedFlag(play->cameraPtrs[play->activeCamId]);
    SET_EVENTCHKINF(EVENTCHKINF_OPENED_JABU_JABU);
    Sfx_PlaySfxCentered(NA_SE_SY_CORRECT_CHIME);
}

void func_80A87D94(EnJj* this, PlayState* play) {
    switch (play->csCtx.actorCues[2]->id) {
        case 1:
            if (this->unk30A & 2) {
                this->unk30E = 0;
                this->unk30F = Rand_S16Offset(0x14, 0x14);
                this->unk310 = 0;
                this->unk311 = 0;
                this->unk30A ^= 2;
            }
            break;

        case 2:
            this->unk30A |= 1;
            if (!(this->unk30A & 8)) {
                this->unk304 = Actor_SpawnAsChild(&play->actorCtx, &this->dyna.actor, play, ACTOR_EFF_DUST, -1100.0f,
                                                  105.0f, -27.0f, 0, 0, 0, 0);
                this->unk30A |= 8;
            }
            break;

        case 3:
            if (!(this->unk30A & 2)) {
                this->unk30E = 0;
                this->unk30F = 0;
                this->unk310 = 1;
                this->unk311 = 0;
                this->unk30A |= 2;
            }
            break;
    }
    if (this->unk30A & 1) {
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_JABJAB_BREATHE - SFX_FLAG);
        if (this->unk308 >= -0x1450) {
            this->unk308 -= 0x66;
        }
    }
}

void func_80A87EF0(EnJj* this, PlayState* play) {
    if (!(this->unk30A & 4)) {
        this->unk30A |= 4;
        if (this->unk304 != NULL) {
            Actor_Kill(this->unk304);
            this->dyna.actor.child = NULL;
        }
    }
}

void func_80A87F44(Actor* thisx, PlayState* play) {
}

void EnJj_Update(Actor* thisx, PlayState* play) {
    EnJj* this = (EnJj*)thisx;

    if ((play->csCtx.state != CS_STATE_IDLE) && (play->csCtx.actorCues[2] != NULL)) {
        func_80A87D94(this, play);
    } else {
        this->unk2FC(this, play);
        if (this->unk164.curFrame == 41.0f) {
            Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_JABJAB_GROAN);
        }
    }
    func_80A87B1C(this);
    SkelAnime_Update(&this->unk164);
    Actor_SetScale(&this->dyna.actor, 0.087f);
    this->unk164.jointTable[10].z = (s16)this->unk308;
}

void EnJj_Draw(Actor* thisx, PlayState* play) {
    EnJj* this = (EnJj*)thisx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_jj.c", 879);
    Gfx_SetupDL_37Opa(play->state.gfxCtx);
    Matrix_Translate(0.0f, (cosf(this->unk164.curFrame * 0.076624215f) * 10.0f) - 10.0f, 0.0f, MTXMODE_APPLY);
    Matrix_Scale(10.0f, 10.0f, 10.0f, MTXMODE_APPLY);
    gSPSegment(POLY_OPA_DISP++, 8, SEGMENTED_TO_VIRTUAL(D_80A88CFC[this->unk30E]));
    SkelAnime_DrawFlexOpa(play, this->unk164.skeleton, this->unk164.jointTable, (s32)this->unk164.dListCount, NULL,
                          NULL, this);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_jj.c", 898);
}
