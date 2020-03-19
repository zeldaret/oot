#include <ultra64.h>
#include <global.h>
#include "z_en_tk.h"

typedef struct
{
    /* 0x0000 */ u8    health; /* SubActorStruct98.health */
    /* 0x0002 */ s16   h_2;    /* SubActorStruct98.unk_10 */
    /* 0x0004 */ s16   h_4;    /* SubActorStruct98.unk_12 */
    /* 0x0006 */ s16   h_6;    /* SubActorStruct98.unk_14 */
    /* 0x0008 */ u8    mass;   /* SubActorStruct98.mass */
    /* 0x000A */
} EnTk_SubActorStruct98Init;

#define ROOM 0x00
#define FLAGS 0x00000009

s32 EnTk_CheckNextSpot(EnTk *this, GlobalContext *ctxt);
void EnTk_Init(Actor *this, GlobalContext *ctxt);
void EnTk_Destroy(Actor *this, GlobalContext *ctxt);
void EnTk_Rest(EnTk *this, GlobalContext *ctxt);
void EnTk_Walk(EnTk *this, GlobalContext *ctxt);
void EnTk_Dig(EnTk *this, GlobalContext *ctxt);
void EnTk_Update(Actor *this, GlobalContext *ctxt);
void EnTk_Draw(Actor *this, GlobalContext *ctxt);

extern UNK_TYPE D_04051DB0;
extern UNK_TYPE D_040521B0;
extern UNK_TYPE D_040525B0;
extern UNK_TYPE D_040529B0;
extern UNK_TYPE D_04052DB0;
extern UNK_TYPE D_040531B0;
extern UNK_TYPE D_040535B0;
extern UNK_TYPE D_040539B0;
extern UNK_TYPE D_06001144;
extern UNK_TYPE D_06001FA8;
extern UNK_TYPE D_06002F84;
extern UNK_TYPE D_06003B40;
extern UNK_TYPE D_06004340;
extern UNK_TYPE D_06004B40;
extern UNK_TYPE D_0600ACE0;
extern UNK_TYPE D_0600BC90;
extern UNK_TYPE D_0600BCA0;
extern UNK_TYPE D_0600BE40;

const ActorInit En_Tk_InitVars =
{
    ACTOR_EN_TK,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_TK,
    sizeof(EnTk),
    EnTk_Init,
    EnTk_Destroy,
    EnTk_Update,
    EnTk_Draw,
};

void EnTkEff_Create(EnTk *this, Vec3f *pos, Vec3f *speed, Vec3f *accel,
                    u8 duration, f32 size, f32 growth)
{
    s16 i;
    EnTkEff *eff = this->eff;

    for (i = 0; i < ARRAY_COUNT(this->eff); i++)
    {
        if (eff->active != 1)
        {
            eff->size = size;
            eff->growth = growth;
            eff->time_total = eff->time_left = duration;
            eff->active = 1;
            eff->pos = *pos;
            eff->accel = *accel;
            eff->speed = *speed;
            break;
        }
        eff++;
    }
}

void EnTkEff_Update(EnTk *this)
{
    s16 i;
    EnTkEff *eff;

    eff = this->eff;
    for (i = 0; i < ARRAY_COUNT(this->eff); i++)
    {
        if (eff->active != 0)
        {
            eff->time_left--;
            if (eff->time_left == 0)
            {
                eff->active = 0;
            }
            eff->accel.x = Math_Rand_ZeroOne() * 0.4f - 0.2f;
            eff->accel.z = Math_Rand_ZeroOne() * 0.4f - 0.2f;
            VEC3_ADD(eff->pos, eff->speed)
            VEC3_ADD(eff->speed, eff->accel)
            eff->size += eff->growth;
        }
        eff++;
    }
}

void EnTkEff_Draw(EnTk *this, GlobalContext *ctxt)
{
    static u32 images[] =
    {
        (u32)&D_040539B0,
        (u32)&D_040535B0,
        (u32)&D_040531B0,
        (u32)&D_04052DB0,
        (u32)&D_040529B0,
        (u32)&D_040525B0,
        (u32)&D_040521B0,
        (u32)&D_04051DB0,
    };

    EnTkEff *eff = this->eff;
    GraphicsContext *gfx;
    s16 gfx_setup;
    s16 i;
    s16 alpha;
    s16 image_idx;
    Gfx *pgdl[4];

    /*
     *  This assignment always occurs before a call to func_800C6AC4 which
     *  makes me suspect that they're inside a macro where the function call
     *  is present only for debug builds. Same for func_800C6B54 most likely.
     */
    gfx = ctxt->state.gfxCtx;
    func_800C6AC4(pgdl, ctxt->state.gfxCtx, "../z_en_tk_eff.c", 114);

    gfx_setup = 0;

    /*
     *  Same code is generated without the if,
     *  but that would make the do...while redundant so there's probably an if.
     */
    do { if (1) { func_80093D84(ctxt->state.gfxCtx); } } while (0);

    for (i = 0; i < ARRAY_COUNT(this->eff); i++)
    {
        if (eff->active != 0)
        {
            if (gfx_setup == 0)
            {
                gfx->polyXlu.p = func_80093774(gfx->polyXlu.p, 0);
                gSPDisplayList(gfx->polyXlu.p++, &D_0600BC90);
                gDPSetEnvColor(gfx->polyXlu.p++, 0x64, 0x3C, 0x14, 0x00);
                gfx_setup = 1;
            }

            alpha = eff->time_left * (255.f / eff->time_total);
            gDPSetPrimColor(gfx->polyXlu.p++, 0, 0, 0xAA, 0x82, 0x5A, alpha);

            gDPPipeSync(gfx->polyXlu.p++);
            Matrix_Translate(eff->pos.x, eff->pos.y, eff->pos.z, 0);
            func_800D1FD4(&ctxt->mf_11DA0);
            Matrix_Scale(eff->size, eff->size, 1.f, 1);
            gSPMatrix(gfx->polyXlu.p++,
                      Matrix_NewMtx(ctxt->state.gfxCtx, "../z_en_tk_eff.c",
                                    140),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            image_idx = eff->time_left *
                       ((f32)ARRAY_COUNT(images) / eff->time_total);
            gSPSegment(gfx->polyXlu.p++, 0x08,
                       SEGMENTED_TO_VIRTUAL(images[image_idx]));

            gSPDisplayList(gfx->polyXlu.p++, &D_0600BCA0);
        }
        eff++;
    }

    func_800C6B54(pgdl, ctxt->state.gfxCtx, "../z_en_tk_eff.c", 154);
}

s32 EnTkEff_CreateDflt(EnTk *this, Vec3f *pos, u8 duration, f32 size,
                       f32 growth, f32 y_accel_max)
{
    Vec3f speed = {0.f, 0.f, 0.f};
    Vec3f accel = {0.f, 0.3f, 0.f};

    accel.y += Math_Rand_ZeroOne() * y_accel_max;

    EnTkEff_Create(this, pos, &speed, &accel, duration, size, growth);

    return 0;
}

/** z_en_tk_eff.c ends here probably **/

static ColliderCylinderInit D_80B1D508 =
{
    0x0A, 0x00, 0x00, 0x39,
    0x20, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00000000, 0x00, 0x00,
    0x00, 0x00, 0x00000000,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x01, 0x00,
    0x001E, 0x0034, 0x0000,
    0x0000, 0x0000, 0x0000,
};

static EnTk_SubActorStruct98Init D_80B1D534 =
{
    0x00,
    0x0000,
    0x0000,
    0x0000,
    0xFF,
};

void EnTk_RestAnim(EnTk *this, GlobalContext *ctxt)
{
    UNK_PTR anim = &D_06002F84;

    SkelAnime_ChangeAnimation(&this->skel_anim, (u32)anim, 1.f, 0.f,
                              SkelAnime_GetFrameCount((u32)&D_06002F84), 0,
                              -10.f);

    this->action_countdown = Math_Rand_S16Offset(60, 60);
    this->actor.speedXZ = 0.f;
}

void EnTk_WalkAnim(EnTk *this, GlobalContext *ctxt)
{
    UNK_PTR anim = &D_06001FA8;

    SkelAnime_ChangeAnimation(&this->skel_anim, (u32)anim, 1.f, 0.f,
                              SkelAnime_GetFrameCount((u32)&D_06002F84), 0,
                              -10.f);

    this->action_countdown = Math_Rand_S16Offset(240, 240);
}

void EnTk_DigAnim(EnTk *this, GlobalContext *ctxt)
{
    UNK_PTR anim = &D_06001144;

    SkelAnime_ChangeAnimation(&this->skel_anim, (u32)anim, 1.f, 0.f,
                              SkelAnime_GetFrameCount((u32)&D_06001144), 0,
                              -10.f);

    if (EnTk_CheckNextSpot(this, ctxt) >= 0)
    {
        this->valid_dig_here = 1;
    }
}

void EnTk_UpdateEyes(EnTk *this)
{
    if (DECR(this->blink_countdown) == 0)
    {
        this->eye_image_idx++;
        if (this->eye_image_idx > 2)
        {
            this->blink_cycles--;
            if (this->blink_cycles < 0)
            {
                this->blink_countdown = Math_Rand_S16Offset(30, 30);
                this->blink_cycles = 2;
                if (Math_Rand_ZeroOne() > 0.5f)
                {
                    this->blink_cycles++;
                }
            }
            this->eye_image_idx = 0;
        }
    }
}

s32 EnTk_CheckFacingPlayer(EnTk *this)
{
    s16 v0;
    s16 v1;

    if (this->actor.waterSurfaceDist > 10000.f)
    {
        return 0;
    }

    v0 = this->actor.shape.rot.y;
    v0 -= this->h_21E;
    v0 -= this->head_rot;

    v1 = this->actor.rotTowardsLinkY - v0;
    if (ABS(v1) < 0x1554)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

s32 EnTk_CheckNextSpot(EnTk *this, GlobalContext *ctxt)
{
    Actor *prop;
    f32 dxz;
    f32 dy;

    prop = ctxt->actorCtx.actorList[ACTORTYPE_PROP].first;

    while (prop != NULL)
    {
        if (prop->id != ACTOR_EN_IT)
        {
            prop = prop->next;
            continue;
        }

        if (prop == this->current_spot)
        {
            prop = prop->next;
            continue;
        }

        dy = prop->posRot.pos.y - this->actor.unk_80;
        dxz = func_8002DB8C(&this->actor, prop);
        if (dxz > 40.f || dy > 10.f)
        {
            prop = prop->next;
            continue;
        }

        this->current_spot = prop;
        return prop->params;
    }

    return -1;
}

void EnTk_CheckCurrentSpot(EnTk *this)
{
    f32 dxz;
    f32 dy;

    if (this->current_spot != NULL)
    {
        dy = this->current_spot->posRot.pos.y - this->actor.unk_80;
        dxz = func_8002DB8C(&this->actor, this->current_spot);
        if (dxz > 40.f || dy > 10.f)
        {
            this->current_spot = NULL;
        }
    }
}

f32 EnTk_Step(EnTk *this, GlobalContext *ctxt)
{
    f32 step_frames[] = {36.f, 10.f};
    f32 a1_;
    s32 i;

    if (this->skel_anim.animCurrentFrame == 0.f ||
        this->skel_anim.animCurrentFrame == 25.f)
    {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_MORIBLIN_WALK);
    }

    if (this->skel_anim.animCurrent != (u32)&D_06001FA8)
    {
        return 0.f;
    }

    a1_ = this->skel_anim.animCurrentFrame;
    for (i = 0; i < ARRAY_COUNT(step_frames); i++)
    {
        if (a1_ < step_frames[i] + 12.f && a1_ >= step_frames[i])
        {
            break;
        }
    }
    if (i >= ARRAY_COUNT(step_frames))
    {
        return 0.f;
    }
    else
    {
        a1_ = (0x8000 / 12.f) * (a1_ - step_frames[i]);
        return Math_Sins(a1_) * 2.f;
    }
}

s32 EnTk_Orient(EnTk *this, GlobalContext *ctxt)
{
    Path *path;
    Vec3s *point;
    f32 dx;
    f32 dz;

    if (this->actor.params < 0)
    {
        return 1;
    }

    path = &ctxt->setupPathList[0];
    point = SEGMENTED_TO_VIRTUAL(path->point_array);
    point += this->current_waypoint;

    dx = point->x - this->actor.posRot.pos.x;
    dz = point->z - this->actor.posRot.pos.z;

    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y,
                            func_800FD250(dx, dz) * (0x8000 / M_PI),
                            10, 1000, 1);
    this->actor.posRot.rot = this->actor.shape.rot;

    if (SQ(dx) + SQ(dz) < 10.f)
    {
        this->current_waypoint++;
        if (this->current_waypoint >= path->n_points)
        {
            this->current_waypoint = 0;
        }

        return 0;
    }
    else
    {
        return 1;
    }
}

u16 func_80B1C54C(GlobalContext *ctxt, Actor *a1)
{
    u16 ret;

    ret = func_8006C360(ctxt, 14);
    if (ret != 0)
    {
        return ret;
    }

    if (gSaveContext.inf_table[13] & 0x0200)
    {
        /* "Do you want me to dig here? ..." */
        return 0x5019;
    }
    else
    {
        /* "Hey kid! ..." */
        return 0x5018;
    }
}

s16 func_80B1C5A0(GlobalContext *ctxt, Actor *actor)
{
    s32 ret = 1;

    switch (func_8010BDBC(&ctxt->msgCtx))
    {
        case 0:
        {
            break;
        }
        case 1:
        {
            break;
        }
        case 2:
        {
            /* "I am the boss of the carpenters ..." (wtf?) */
            if (actor->textId == 0x5028)
            {
                gSaveContext.inf_table[13] |= 0x0100;
            }
            ret = 0;
            break;
        }
        case 3:
        {
            break;
        }
        case 4:
        {
            if (func_80106BC8(ctxt) != 0 &&
                (actor->textId == 0x5018 || actor->textId == 0x5019))
            {
                if (ctxt->msgCtx.choiceIndex == 1)
                {
                    /* "Thanks a lot!" */
                    actor->textId = 0x0084;
                }
                else if (gSaveContext.rupees < 10)
                {
                    /* "You don't have enough Rupees!" */
                    actor->textId = 0x0085;
                }
                else
                {
                    ctxt->msgCtx.msgMode = 0x37;
                    Rupees_ChangeBy(-10);
                    gSaveContext.inf_table[13] |= 0x0200;
                    return 2;
                }
                func_8010B720(ctxt, actor->textId);
                gSaveContext.inf_table[13] |= 0x0200;
            }
            break;
        }
        case 5:
        {
            if (func_80106BC8(ctxt) != 0 &&
                (actor->textId == 0x0084 || actor->textId == 0x0085))
            {
                func_80106CCC(ctxt);
                ret = 0;
            }
            break;
        }
        case 6:
        {
            break;
        }
        case 7:
        {
            break;
        }
        case 8:
        {
            break;
        }
        case 9:
        {
            break;
        }
    }

    return ret;
}

s32 EnTk_ChooseReward(EnTk *this)
{
    f32 luck;
    s32 reward;

    luck = Math_Rand_ZeroOne();

    if (luck < 0.4f)
    {
        reward = 0;
    }
    else if (luck < 0.7)
    {
        reward = 1;
    }
    else if (luck < 0.9)
    {
        reward = 2;
    }
    else
    {
        reward = 3;
    }

    switch (reward)
    {
        case 0:
        {
            if (this->reward_count[0] < 8)
            {
                this->reward_count[0] += 1;
                return reward;
            }
            break;
        }
        case 1:
        {
            if (this->reward_count[1] < 4)
            {
                this->reward_count[1] += 1;
                return reward;
            }
            break;
        }
        case 2:
        {
            if (this->reward_count[2] < 2)
            {
                this->reward_count[2] += 1;
                return reward;
            }
            break;
        }
        case 3:
        {
            if (this->reward_count[3] < 1)
            {
                this->reward_count[3] += 1;
                return reward;
            }
            break;
        }
    }

    if (this->reward_count[0] < 8)
    {
        this->reward_count[0] += 1;
        reward = 0;
    }
    else if (this->reward_count[1] < 4)
    {
        this->reward_count[1] += 1;
        reward = 1;
    }
    else if (this->reward_count[2] < 2)
    {
        this->reward_count[2] += 1;
        reward = 2;
    }
    else if (this->reward_count[3] < 1)
    {
        this->reward_count[3] += 1;
        reward = 3;
    }
    else
    {
        reward = 0;
        this->reward_count[0] = 1;
        this->reward_count[1] = 0;
        this->reward_count[2] = 0;
        this->reward_count[3] = 0;
    }

    return reward;
}

void EnTk_DigEff(EnTk *this)
{
    Vec3f pos = {0.f, 0.f, 0.f};
    Vec3f speed = {0.f, 0.f, 0.f};
    Vec3f accel = {0.f, 0.3f, 0.f};

    if (this->skel_anim.animCurrentFrame >= 32.f &&
        this->skel_anim.animCurrentFrame < 40.f)
    {
        pos.x = (Math_Rand_ZeroOne() - 0.5f) * 12.f + this->v3f_304.x;
        pos.y = (Math_Rand_ZeroOne() - 0.5f) * 8.f + this->v3f_304.y;
        pos.z = (Math_Rand_ZeroOne() - 0.5f) * 12.f + this->v3f_304.z;
        EnTkEff_CreateDflt(this, &pos, 12, 0.2f, 0.1f, 0.f);
    }
}

void EnTk_Init(Actor *this, GlobalContext *ctxt)
{
    EnTk *tk = (EnTk *)this;
    UNK_PTR anim = &D_06002F84;

    ActorShape_Init(&tk->actor.shape, 0, ActorShadow_DrawFunc_Circle, 24.f);

    func_800A46F8(ctxt, &tk->skel_anim, (u32)&D_0600BE40, 0, tk->hz_22A,
                  tk->hz_296, 18);
    SkelAnime_ChangeAnimation(&tk->skel_anim, (u32)anim, 1.f, 0.f,
                              SkelAnime_GetFrameCount((u32)&D_06002F84),
                              0, 0.f);

    ActorCollider_AllocCylinder(ctxt, &tk->collider);
    ActorCollider_InitCylinder(ctxt, &tk->collider, &tk->actor, &D_80B1D508);

    func_80061EFC(&tk->actor.sub_98, NULL, &D_80B1D534);

    if (gSaveContext.day_time <= 0xC000 ||
        gSaveContext.day_time >= 0xE000 ||
        !LINK_IS_CHILD ||
        ctxt->sceneNum != SCENE_SPOT02)
    {
        Actor_Kill(&tk->actor);
        return;
    }

    Actor_SetScale(&tk->actor, 0.01f);

    tk->actor.unk_1F = 6;
    tk->actor.gravity = -0.1f;
    tk->current_reward = -1;
    tk->current_spot = NULL;
    tk->action_func = EnTk_Rest;
}

void EnTk_Destroy(Actor *this, GlobalContext *ctxt)
{
    EnTk *tk = (EnTk *)this;
    ActorCollider_FreeCylinder(ctxt, &tk->collider);
}

void EnTk_Rest(EnTk *this, GlobalContext *ctxt)
{
    s16 v1;
    s16 a1_;

    if (this->h_1E0 != 0)
    {
        v1 = this->actor.shape.rot.y;
        v1 -= this->h_21E;
        v1 = this->actor.rotTowardsLinkY - v1;

        if (this->h_1E0 == 2)
        {
            EnTk_DigAnim(this, ctxt);
            this->h_1E0 = 0;
            this->action_func = EnTk_Dig;
            return;
        }

        func_800343CC(ctxt, &this->actor, &this->h_1E0,
                      this->collider.dim.radius + 30.f,
                      func_80B1C54C, func_80B1C5A0);
    }
    else if (EnTk_CheckFacingPlayer(this) != 0)
    {
        v1 = this->actor.shape.rot.y;
        v1 -= this->h_21E;
        v1 = this->actor.rotTowardsLinkY - v1;

        this->action_countdown = 0;
        func_800343CC(ctxt, &this->actor, &this->h_1E0,
                      this->collider.dim.radius + 30.f,
                      func_80B1C54C, func_80B1C5A0);
    }
    else if (func_8002F194(&this->actor, ctxt) != 0)
    {
        v1 = this->actor.shape.rot.y;
        v1 -= this->h_21E;
        v1 = this->actor.rotTowardsLinkY - v1;

        this->action_countdown = 0;
        this->h_1E0 = 1;
    }
    else if (DECR(this->action_countdown) == 0)
    {
        EnTk_WalkAnim(this, ctxt);
        this->action_func = EnTk_Walk;

        /*! @bug v1 is uninitialized past this branch */
    }
    else
    {
        v1 = 0;
    }

    a1_ = CLAMP(-v1, 1270, 10730);
    Math_SmoothScaleMaxMinS(&this->head_rot, a1_, 6, 1000, 1);
}

void EnTk_Walk(EnTk *this, GlobalContext *ctxt)
{
    if (this->h_1E0 == 2)
    {
        EnTk_DigAnim(this, ctxt);
        this->h_1E0 = 0;
        this->action_func = EnTk_Dig;
    }
    else
    {
        this->actor.speedXZ = EnTk_Step(this, ctxt);
        EnTk_Orient(this, ctxt);
        Math_SmoothScaleMaxMinS(&this->head_rot, 0, 6, 1000, 1);
        EnTk_CheckCurrentSpot(this);

        DECR(this->action_countdown);
        if (EnTk_CheckFacingPlayer(this) != 0 || this->action_countdown == 0)
        {
            EnTk_RestAnim(this, ctxt);
            this->action_func = EnTk_Rest;
        }
    }
}

void EnTk_Dig(EnTk *this, GlobalContext *ctxt)
{
    Vec3f reward_origin;
    Vec3f reward_pos;
    s32 reward_params[] =
    {
        0x0000, /* Green rupee */
        0x0001, /* Blue rupee */
        0x0002, /* Red rupee */
        0x0014, /* Purple rupee */
        0x0006, /* Heart piece */
    };

    EnTk_DigEff(this);

    if (this->skel_anim.animCurrentFrame == 32.f)
    {
        /* What's gonna come out? */
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_DIG_UP);

        this->reward_timer = 0;

        if (this->valid_dig_here == 1)
        {
            reward_origin.x = 0.f;
            reward_origin.y = 0.f;
            reward_origin.z = -40.f;

            Matrix_RotateY(this->actor.shape.rot.y, 0);
            Matrix_MultVec3f(&reward_origin, &reward_pos);

            VEC3_ADD(reward_pos, this->actor.posRot.pos)

            this->current_reward = EnTk_ChooseReward(this);
            if (this->current_reward == 3)
            {
                /*
                 * Upgrade the purple rupee reward to the heart piece if this
                 * is the first grand prize dig.
                 */
                if ((gSaveContext.item_get_inf[1] & 0x1000) == 0)
                {
                    gSaveContext.item_get_inf[1] |= 0x1000;
                    this->current_reward = 4;
                }
            }

            Item_DropCollectible(ctxt, &reward_pos,
                                 reward_params[this->current_reward]);
        }
    }

    if (this->skel_anim.animCurrentFrame >= 32.f && this->reward_timer == 10)
    {
        /* Play a reward sound shortly after digging */
        if (this->valid_dig_here == 0)
        {
            /* Bad dig spot */
            Audio_PlayActorSound2(&this->actor, NA_SE_SY_ERROR);
        }
        else if (this->current_reward == 4)
        {
            /* Heart piece */
            Audio_PlaySoundGeneral(NA_SE_SY_CORRECT_CHIME, &D_801333D4, 4,
                                   &D_801333E0, &D_801333E0, &D_801333E8);
        }
        else
        {
            /* Rupee */
            Audio_PlayActorSound2(&this->actor, NA_SE_SY_TRE_BOX_APPEAR);
        }
    }
    this->reward_timer++;

    if (func_800A56C8(&this->skel_anim, this->skel_anim.animFrameCount) != 0)
    {
        if (this->current_reward < 0)
        {
            /* "Nope, nothing here!" */
            func_8010B680(ctxt, 0x501A, 0);
        }
        else
        {
            func_80106CCC(ctxt);
        }

        EnTk_RestAnim(this, ctxt);

        this->current_reward = -1;
        this->valid_dig_here = 0;
        this->action_func = EnTk_Rest;
    }
}

void EnTk_Update(Actor *this, GlobalContext *ctxt)
{
    EnTk *tk = (EnTk *)this;
    ColliderCylinderMain *collider = &tk->collider;

    ActorCollider_Cylinder_Update(&tk->actor, collider);
    Actor_CollisionCheck_SetOT(ctxt, &ctxt->sub_11E60, collider);

    SkelAnime_FrameUpdateMatrix(&tk->skel_anim);

    Actor_MoveForward(&tk->actor);

    func_8002E4B4(ctxt, &tk->actor, 40.f, 10.f, 0.f, 5);

    tk->action_func(tk, ctxt);

    EnTkEff_Update(tk);

    EnTk_UpdateEyes(tk);
}

void func_80B1D200(GlobalContext *ctxt)
{
    GraphicsContext *gfx;
    Gfx *pgdl[4];

    gfx = ctxt->state.gfxCtx;
    func_800C6AC4(pgdl, ctxt->state.gfxCtx, "../z_en_tk.c", 1188);

    gSPDisplayList(gfx->polyOpa.p++, &D_0600ACE0);

    func_800C6B54(pgdl, ctxt->state.gfxCtx, "../z_en_tk.c", 1190);
}

s32 func_80B1D278(s16 a0, UNK_TYPE a1, UNK_TYPE a2, UNK_TYPE a3, Vec3s *sp10,
                  Actor *actor)
{
    EnTk *tk = (EnTk *)actor;

    switch (a1)
    {
        /* Limb 15 - Head */
        case 15:
        {
            tk->h_21E = sp10->y;
            break;
        }
        /* Limb 16 - Jaw */
        case 16:
        {
            tk->h_21E += sp10->y;
            sp10->y += tk->head_rot;
            break;
        }
    }

    return 0;
}

void func_80B1D2E4(GlobalContext *ctxt, UNK_TYPE a1, UNK_TYPE a2, UNK_TYPE a3,
                   Actor *actor)
{
    EnTk *this = (EnTk *)actor;
    Vec3f sp28 = {0.f, 0.f, 4600.f};
    Vec3f sp1C = {0.f, 0.f, 0.f};

    /* Limb 16 - Jaw */
    if (a1 == 16)
    {
        Matrix_MultVec3f(&sp1C, &this->actor.posRot2.pos);
    }

    /* Limb 14 - Neck */
    if (a1 == 14)
    {
        Matrix_MultVec3f(&sp28, &this->v3f_304);
        func_80B1D200(ctxt);
    }
}

void EnTk_Draw(Actor *this, GlobalContext *ctxt)
{
    static u32 eye_images[] =
    {
        (u32)&D_06003B40,
        (u32)&D_06004340,
        (u32)&D_06004B40,
    };

    EnTk *tk = (EnTk *)this;
    GraphicsContext *gfx;
    Gfx *pgdl[4];

    Matrix_Push();
    EnTkEff_Draw(tk, ctxt);
    Matrix_Pull();

    gfx = ctxt->state.gfxCtx;
    func_800C6AC4(pgdl, ctxt->state.gfxCtx, "../z_en_tk.c", 1294);

    func_80093D18(ctxt->state.gfxCtx);

    gSPSegment(gfx->polyOpa.p++, 0x08,
               SEGMENTED_TO_VIRTUAL(eye_images[tk->eye_image_idx]));

    func_800A1AC8(ctxt, tk->skel_anim.limbIndex,
                  tk->skel_anim.actorDrawTbl, tk->skel_anim.dListCount,
                  func_80B1D278, func_80B1D2E4, &tk->actor);

    func_800C6B54(pgdl, ctxt->state.gfxCtx, "../z_en_tk.c", 1312);
}
