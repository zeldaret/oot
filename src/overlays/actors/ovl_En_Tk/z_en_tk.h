#ifndef _Z_EN_TK_H_
#define _Z_EN_TK_H_

#include <ultra64.h>
#include <global.h>

/* Dust particle effect */
typedef struct
{
    /* 0x0000 */ u8         active;
    /* 0x0001 */ u8         time_left;
    /* 0x0002 */ u8         time_total;
    /* 0x0004 */ f32        size;
    /* 0x0008 */ f32        growth;
    /* 0x000C */ char       unk_C[0x8];
    /* 0x0014 */ Vec3f      pos;
    /* 0x0020 */ Vec3f      speed;
    /* 0x002C */ Vec3f      accel;
    /* 0x0038 */
} EnTkEff;

typedef struct EnTk EnTk;

typedef void EnTkFunc(EnTk *this, GlobalContext *ctxt);

struct EnTk
{
    /* 0x0000 */ Actor      actor;
    /* 0x014C */ SkelAnime  skel_anim;
    /* 0x018C */ char       unk_18C[0x4];
    /* 0x0190 */ EnTkFunc  *action_func;
    /* 0x0194 */ ColliderCylinderMain
                            collider;
    /* 0x01E0 */ s16        h_1E0;
    /* 0x01E2 */ char       unk_1E2[0x26];
    /* 0x0208 */ u8         valid_dig_here;
    /* 0x0209 */ u8         reward_count[4];
    /* 0x0210 */ Actor     *current_spot;
    /* 0x0214 */ s32        current_reward;
    /* 0x0218 */ s16        blink_cycles;
    /* 0x021A */ s16        reward_timer;
    /* 0x021C */ s16        action_countdown;
    /* 0x021E */ s16        h_21E;
    /* 0x0220 */ char       unk_220[0x2];
    /* 0x0222 */ s16        eye_image_idx;
    /* 0x0224 */ s16        blink_countdown;
    /* 0x0226 */ s16        head_rot;
    /* 0x0228 */ s16        current_waypoint;
    /* 0x022A */ u16        hz_22A[54];
    /* 0x022A */ u16        hz_296[55];
    /* 0x0304 */ Vec3f      v3f_304;
    /* 0x0310 */ EnTkEff    eff[20];
    /* 0x0770 */
};

extern const ActorInit En_Tk_InitVars;

#endif
