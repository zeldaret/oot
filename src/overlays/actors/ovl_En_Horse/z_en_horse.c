#include "z_en_horse.h"
#include "overlays/actors/ovl_En_In/z_en_in.h"

#define FLAGS 0x00000010

#define THIS ((EnHorse*)thisx)

// z_horse.c
void func_8006DD9C(Actor* actor, Vec3f* arg1, s16 arg2);

void EnHorse_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHorse_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHorse_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHorse_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A61058(EnHorse* this, GlobalContext* globalCtx);
void func_80A6140C(EnHorse* this);
void func_80A61A04(EnHorse* this);
void func_80A5F3A8(EnHorse* this);
void func_80A5F3A8(EnHorse* this);
void func_80A5F3DC(EnHorse* this);
void func_80A5F044(EnHorse* this);
void func_80A5FCAC(EnHorse* this);

void func_80A5C97C(EnHorse* this, GlobalContext* globalCtx);
void func_80A5F08C(EnHorse* this, GlobalContext* globalCtx);
void func_80A5F414(EnHorse* this, GlobalContext* globalCtx);
void func_80A5F890(EnHorse* this, GlobalContext* globalCtx);
void func_80A600E8(EnHorse* this, GlobalContext* globalCtx);
void func_80A5D0A0(EnHorse* this, GlobalContext* globalCtx);
void func_80A5D2C0(EnHorse* this, GlobalContext* globalCtx);
void func_80A5D468(EnHorse* this, GlobalContext* globalCtx);
void func_80A5D79C(EnHorse* this, GlobalContext* globalCtx);
void func_80A5DB58(EnHorse* this, GlobalContext* globalCtx);
void func_80A5DE38(EnHorse* this, GlobalContext* globalCtx);
void func_80A5E12C(EnHorse* this, GlobalContext* globalCtx);
void func_80A5E39C(EnHorse* this, GlobalContext* globalCtx);
void func_80A5E650(EnHorse* this, GlobalContext* globalCtx);
void func_80A5EB54(EnHorse* this, GlobalContext* globalCtx);
void func_80A5EE80(EnHorse* this, GlobalContext* globalCtx);
void func_80A627A4(EnHorse* this, GlobalContext* globalCtx);
void func_80A610C8(EnHorse* this, GlobalContext* globalCtx);
void func_80A61778(EnHorse* this, GlobalContext* globalCtx);
void func_80A61A28(EnHorse* this, GlobalContext* globalCtx);
void func_80A5E2A8(EnHorse *this, GlobalContext *globalCtx);

extern Vec3f D_80A66788, D_80A66794;

extern CutsceneData D_02000230[];
extern CutsceneData D_02002AC0[];
extern CutsceneData D_06006530[];

AnimationHeader* D_80A65E10[] = {
    0x06006D50, 0x06005584, 0x06004DEC, 0x06003CEC, 0x060075F0, 0x060032B0, 0x06001E2C, 0x06002470, 0x06002C38
};

AnimationHeader* D_80A65E34[] = {
    0x06009FC4, 0x0600A6B4, 0x0600901C, 0x060085E0, 0x0600AF60, 0x06007B54, 0x0600506C, 0x06005684, 0x06005E20
};
static AnimationHeader **sAnimationHeaders[] = {D_80A65E10, D_80A65E34};

static f32 sPlaybackSpeeds[] = {
    0.6666667f, 0.6666667f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.6666667f, 0.6666667f
};

static SkeletonHeader* D_80A65E84[] = {
    0x06009D74, 0x06004A24
};

const ActorInit En_Horse_InitVars = {
    ACTOR_EN_HORSE,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HORSE,
    sizeof(EnHorse),
    (ActorFunc)EnHorse_Init,
    (ActorFunc)EnHorse_Destroy,
    (ActorFunc)EnHorse_Update,
    (ActorFunc)EnHorse_Draw,
};

static ColliderCylinderInit sCylinderInit1 = 
{
    { COLTYPE_UNK10, 0x08, 0x00, 0x39, 0x12, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000400, 0x00, 0x04 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x19, 0x00, 0x01 },
    { 20, 70, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit sCylinderInit2 = 
{
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x12, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 20, 70, 0, { 0, 0, 0 } },
};
    

static ColliderJntSphItemInit sJntSphItemsInit[1] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x0001F824, 0x00, 0x00 }, 0x00, 0x79, 0x01 },
        { 13, { { 0, 0, 0 }, 20 }, 100 },
    },
};


static ColliderJntSphInit sJntSphInit = 
{
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x12, COLSHAPE_JNTSPH },
    1, sJntSphItemsInit,
};
    
CollisionCheckInfoInit D_80A65F38 = {
 0x0A, 0x23, 0x64, 0xFE
};

struct unk_80A665DC {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    s16 unkA;
    s16 unkC;
    s16 unkE;
    s16 unk10;
    s16 unk12;
};

typedef struct {
    s16 unk0;
    Vec3s unk2;
    s16 unk8;
} unk_80A65F40;

unk_80A65F40 D_80A65F40[] = {
    { 0x0051, 0x0010, 0x0000, 0x053D, 0x0000 },
    { 0x0051, 0xFAEF, 0x0000, 0x05B3, 0x0000 },
    { 0x0051, 0xEAD8, 0xFED4, 0x0510, 0x0000 },
    { 0x0051, 0xEDC5, 0xFED4, 0x0E24, 0x0000 },
    { 0x0051, 0xF103, 0x0051, 0x15A1, 0x0000 },
    { 0x0051, 0xEC1B, 0xFF1E, 0x1A05, 0x0000 },
    { 0x0051, 0xE644, 0xFFB1, 0x13BD, 0x0000 },
    { 0x0051, 0xE460, 0xFE0C, 0x1D72, 0x0000 },
    { 0x0051, 0xE805, 0xFE0C, 0x22CE, 0x0000 },
    { 0x0051, 0xDECF, 0xFED4, 0x1E7A, 0x0000 },
    { 0x0051, 0xEA97, 0xFE0D, 0x2F5F, 0x0000 },
    { 0x0051, 0xED38, 0xFD44, 0x350F, 0x0000 },
    { 0x0051, 0xF2A8, 0xFE16, 0x2F3C, 0x0000 },
    { 0x0051, 0xF49D, 0x0064, 0x2093, 0x0000 },
    { 0x0051, 0xF71B, 0xFE0C, 0x33BF, 0x0000 },
    { 0x0051, 0xFBFE, 0xFE0C, 0x2F45, 0x0000 },
    { 0x0051, 0x0593, 0xFE0C, 0x341D, 0x0000 },
    { 0x0051, 0xFF38, 0xFE1A, 0x27DD, 0x0000 },
    { 0x0051, 0xFA43, 0x0064, 0x1D48, 0x0000 },
    { 0x0051, 0xFC1D, 0x00A8, 0x1614, 0x0000 },
    { 0x0051, 0x0792, 0x0059, 0x1858, 0x0000 },
    { 0x0051, 0x056B, 0xFF97, 0x23F6, 0x0000 },
    { 0x0051, 0x0623, 0xFF21, 0x1E15, 0x0000 },
    { 0x0051, 0x0F35, 0xFF87, 0x1B9C, 0x0000 },
    { 0x0051, 0x0C6B, 0x0175, 0x1465, 0x0000 },
    { 0x0051, 0x1246, 0xFFEC, 0x0F1D, 0x0000 },
    { 0x0051, 0x0D84, 0x00F6, 0x106F, 0x0000 },
    { 0x0051, 0x0E66, 0x0080, 0x093E, 0x0000 },
    { 0x0051, 0x06FF, 0x0012, 0x0098, 0x0000 },
    { 0x0051, 0x0E53, 0xFFF0, 0x0577, 0x0000 },
    { 0x0051, 0x0723, 0xFFF1, 0x03D7, 0x0000 },
    { 0x0051, 0x0626, 0x018F, 0x10DE, 0x0000 },
    { 0x0051, 0x02CC, 0x005F, 0x0D3F, 0x0000 },
    { 0x0051, 0xFB5B, 0xFFD7, 0x1283, 0x0000 },
    { 0x0051, 0xF848, 0xFF55, 0x104C, 0x0000 },
    { 0x0051, 0x0522, 0x0187, 0x1621, 0x0000 },
    { 0x0051, 0x0070, 0x0000, 0x07A7, 0x0000 },
    { 0x0051, 0xF43D, 0xFF91, 0x24B5, 0x0000 },
    { 0x0051, 0xE9D6, 0xFEF2, 0x2189, 0x0000 },
    { 0x0051, 0xDD63, 0xFED4, 0x1E9C, 0x0000 },
    { 0x0051, 0xE858, 0xFE0C, 0x1E82, 0x0000 },
    { 0x0051, 0xE376, 0xFE0C, 0x176A, 0x0000 },
    { 0x0051, 0xE377, 0xFE0C, 0x1DB5, 0x0000 },
    { 0x0051, 0xE2F1, 0xFED4, 0x1DB0, 0x0000 },
    { 0x0051, 0xE2D8, 0xFED4, 0x187C, 0x0000 },
    { 0x0051, 0xE070, 0xFED4, 0x1D81, 0x0000 },
    { 0x0051, 0xE065, 0xFED4, 0x1CB5, 0x0000 },
    { 0x0051, 0xDDAF, 0xFED4, 0x1CD7, 0x0000 },
    { 0x0051, 0xDDD7, 0xFED4, 0x1D54, 0x0000 },
    { 0x0051, 0xDDB7, 0xFED4, 0x1E6C, 0x0000 },
    { 0x0051, 0xE090, 0xFED5, 0x1E3A, 0x0000 },
    { 0x0051, 0xE353, 0xFF48, 0x1E32, 0x0000 },
    { 0x0051, 0xE6F6, 0xFEE0, 0x1E90, 0x0000 },
    { 0x0051, 0xE74A, 0xFEDE, 0x200D, 0x0000 },
    { 0x0051, 0xE66E, 0xFEDC, 0x20D0, 0x0000 },
    { 0x0051, 0xE293, 0xFF4C, 0x210B, 0x0000 },
    { 0x0051, 0xE0A8, 0xFED9, 0x1EDF, 0x0000 },
    { 0x0051, 0xE072, 0xFECC, 0x1F3A, 0x0000 },
    { 0x0051, 0xDB2F, 0xFEE1, 0x1E10, 0x0000 },
    { 0x0051, 0xDB96, 0xFEDC, 0x1D99, 0x0000 },
    { 0x0051, 0xDA7E, 0xFF39, 0x1BF8, 0x0000 },
    { 0x0051, 0xDBA5, 0xFED4, 0x1E4E, 0x0000 },
    { 0x0051, 0xDBF2, 0xFED4, 0x1DDA, 0x0000 },
    { 0x0051, 0xE27C, 0xFE0D, 0x21F7, 0x0000 },
    { 0x0051, 0xE6DA, 0xFE0C, 0x219E, 0x0000 },
    { 0x0051, 0xE842, 0xFE0C, 0x2042, 0x0000 },
    { 0x0051, 0xE7A7, 0xFE0C, 0x1DBD, 0x0000 },
    { 0x0051, 0xEC55, 0xFF33, 0x1E86, 0x0000 },
    { 0x0051, 0xE8AD, 0xFE0C, 0x2135, 0x0000 },
    { 0x0051, 0xE9A4, 0xFE0E, 0x278B, 0x0000 },
    { 0x0051, 0xEC1A, 0xFE78, 0x2B62, 0x0000 },
    { 0x0051, 0xEC0F, 0xFE77, 0x2C30, 0x0000 },
    { 0x0051, 0xEE83, 0xFEC6, 0x2B7C, 0x0000 },
    { 0x0051, 0xF0E5, 0xFE84, 0x2C9B, 0x0000 },
    { 0x0051, 0xF478, 0xFE0C, 0x2EA8, 0x0000 },
    { 0x0051, 0xF4C9, 0xFE18, 0x2DDF, 0x0000 },
    { 0x0051, 0xF10B, 0xFE8C, 0x2C3F, 0x0000 },
    { 0x0051, 0xEEA9, 0xFEDB, 0x2AED, 0x0000 },
    { 0x0051, 0xEC6A, 0xFE83, 0x2B4E, 0x0000 },
    { 0x0051, 0xEC07, 0xFF44, 0x2AD8, 0x0000 },
    { 0x0051, 0xEB6B, 0xFF44, 0x2B94, 0x0000 },
    { 0x0051, 0xEA24, 0xFF4E, 0x26F4, 0x0000 },
    { 0x0051, 0xE957, 0xFEE0, 0x2146, 0x0000 },
    { 0x0051, 0xECD2, 0xFF4E, 0x1EFB, 0x0000 },
    { 0x0051, 0xF1FE, 0x0049, 0x1FCC, 0x0000 },
    { 0x0051, 0xEE79, 0xFF96, 0x2492, 0x0000 },
    { 0x0051, 0xEF0D, 0xFF90, 0x190C, 0x0000 },
    { 0x0051, 0xF2A7, 0x0069, 0x2002, 0x0000 },
    { 0x0051, 0xEE67, 0xFFEC, 0x19D0, 0x0000 },
    { 0x0051, 0xEC52, 0xFF39, 0x19CB, 0x0000 },
    { 0x0051, 0xEE7F, 0x0001, 0x1930, 0x0000 },
    { 0x0051, 0xEC58, 0xFF58, 0x1912, 0x0000 },
    { 0x0051, 0xEB78, 0xFD44, 0x37F9, 0x0000 },
    { 0x0051, 0xE98B, 0xFCCC, 0x3C14, 0x0000 },
    { 0x0051, 0xF3CE, 0xFD44, 0x3528, 0x0000 },
    { 0x0051, 0xF152, 0xFDF3, 0x33AC, 0x0000 },
    { 0x0051, 0xF1AA, 0xFE0C, 0x3343, 0x0000 },
    { 0x0051, 0xF494, 0xFE0C, 0x34D6, 0x0000 },
    { 0x0051, 0x056D, 0xFF8D, 0x249A, 0x0000 },
    { 0x0051, 0x0224, 0xFF8C, 0x22B9, 0x0000 },
    { 0x0051, 0xFF96, 0xFF95, 0x2152, 0x0000 },
    { 0x0051, 0xF9B8, 0x0055, 0x1DDE, 0x0000 },
    { 0x0051, 0xEB4C, 0xFD44, 0x35CC, 0x0000 },
    { 0x0051, 0xEC06, 0xFD44, 0x3458, 0x0000 },
    { 0x0051, 0xEE2F, 0xFD44, 0x3584, 0x0000 },
    { 0x0051, 0xED66, 0xFD44, 0x3704, 0x0000 },
    { 0x0051, 0xF476, 0x0064, 0x2018, 0x0000 },
    { 0x0051, 0x05B4, 0xFF98, 0x241E, 0x0000 },
    { 0x0051, 0x0275, 0xFF97, 0x2257, 0x0000 },
    { 0x0051, 0xFFF6, 0xFFA6, 0x20E3, 0x0000 },
    { 0x0051, 0xFA4A, 0x0064, 0x1D50, 0x0000 },
    { 0x0051, 0xF436, 0xFE0C, 0x30CD, 0x0000 },
    { 0x0051, 0xF44E, 0xFEC9, 0x285B, 0x0000 },
    { 0x0051, 0xF05A, 0xFD44, 0x3748, 0x0000 },
    { 0x0051, 0xEF0B, 0xFE0C, 0x31C7, 0x0000 },
    { 0x0051, 0xE909, 0xFE0F, 0x1A8F, 0x0000 },
    { 0x0051, 0x0016, 0xFE27, 0x2777, 0x0000 },
    { 0x0051, 0xFA93, 0xFF40, 0x22AA, 0x0000 },
    { 0x0051, 0xFFFC, 0x005C, 0x1AD2, 0x0000 },
    { 0x0051, 0x01E3, 0x0068, 0x19ED, 0x0000 },
    { 0x0051, 0x062C, 0x00B7, 0x1763, 0x0000 },
    { 0x0051, 0x060C, 0x0134, 0x13D5, 0x0000 },
    { 0x0051, 0x05E7, 0x018F, 0x10AB, 0x0000 },
    { 0x0051, 0x054E, 0x0181, 0x10AF, 0x0000 },
    { 0x0051, 0x0563, 0x018B, 0x13C7, 0x0000 },
    { 0x0051, 0x0550, 0x018A, 0x16EE, 0x0000 },
    { 0x0051, 0x032D, 0x011B, 0x1832, 0x0000 },
    { 0x0051, 0xFFC7, 0x0065, 0x1A57, 0x0000 },
    { 0x0051, 0x005B, 0x0145, 0x1417, 0x0000 },
    { 0x0051, 0x0591, 0xFF2A, 0x1DEB, 0x0000 },
    { 0x0051, 0x0D9F, 0xFFED, 0x0370, 0x0000 },
    { 0x0051, 0x0B75, 0x0098, 0x082E, 0x0000 },
    { 0x0051, 0x0B48, 0xFF6F, 0x1ACE, 0x0000 },
    { 0x0051, 0x05E7, 0x0043, 0x1947, 0x0000 },
    { 0x0051, 0x0FD3, 0xFFD1, 0x06BA, 0x0000 },
    { 0x0051, 0xE359, 0xFE0C, 0x21B3, 0x0000 },
    { 0x0051, 0xE1D0, 0xFE32, 0x2132, 0x0000 },
    { 0x0051, 0xE191, 0xFE42, 0x2280, 0x0000 },
    { 0x0051, 0xF49D, 0xFE4D, 0x2C46, 0x0000 },
    { 0x0051, 0x00A5, 0xFEEA, 0x0D18, 0x0000 },
    { 0x0057, 0xF7C3, 0xFC8E, 0x06BC, 0x0000 },
    { 0x0057, 0xFEB8, 0xFB2A, 0x0A91, 0x0000 },
    { 0x0057, 0xF3EC, 0xFBF7, 0x0DC7, 0x0000 },
    { 0x005A, 0x0A7F, 0xFEF3, 0x02F1, 0x0000 },
    { 0x005A, 0x0812, 0xFF7C, 0x013D, 0x0000 },
    { 0x005A, 0x020B, 0xFFF8, 0x027B, 0x0000 },
    { 0x005A, 0x022E, 0x0024, 0xFEBD, 0x0000 },
    { 0x005A, 0x0267, 0x0033, 0xFCB9, 0x0000 },
    { 0x005A, 0xFD9A, 0x0020, 0x001D, 0x0000 },
    { 0x005A, 0xFD81, 0xFFFD, 0x0229, 0x0000 },
    { 0x005A, 0xFDE4, 0x000A, 0xFC87, 0x0000 },
    { 0x005A, 0xF97E, 0x003A, 0x017A, 0x0000 },
    { 0x005A, 0xF41C, 0x00D2, 0xFD78, 0x0000 },
    { 0x005D, 0xFD5A, 0x0015, 0xFD91, 0x0000 },
    { 0x005D, 0x0095, 0x014D, 0xF63D, 0x0000 },
    { 0x005D, 0x01F3, 0x0245, 0xFDDD, 0x0000 },
    { 0x005D, 0x0C73, 0x0585, 0xF141, 0x0000 },
    { 0x005D, 0x0C7E, 0x0585, 0x0133, 0x0000 },
    { 0x005D, 0x0D34, 0x0585, 0xFB50, 0x0000 },
    { 0x005D, 0xFC3A, 0x0001, 0xFFC8, 0x0000 },
    { 0x005D, 0xFC3A, 0x0018, 0xFD07, 0x0000 },
    { 0x005D, 0xFD4A, 0x00AE, 0xF4FC, 0x0000 },
    { 0x0063, 0x040F, 0x0000, 0x0803, 0x0000 },
    { 0x0063, 0xFA5D, 0x0000, 0x0595, 0x0000 },
    { 0x0063, 0x0358, 0x0000, 0xFC6A, 0x0000 },
    { 0x0063, 0x0372, 0x0000, 0xF730, 0x0000 },
    { 0x0063, 0xFC15, 0x0000, 0xFD0D, 0x0000 },
    { 0x0063, 0xF732, 0x0000, 0xFD8B, 0x0000 },
    { 0x0063, 0x038B, 0x0000, 0xF6E0, 0x0000 },
};
struct unk_80A665DC D_80A665DC[] = {
    { 0xFF3D, 0xFFD8, 0x00E1, 0x0078, 0x0168, 0xC000, 0x07D0, 0xFEF2, 0xFFCC, 0xFF8B },
    { 0xFF3D, 0xFFD8, 0xFF10, 0xFF88, 0xFE98, 0x4000, 0x07D0, 0x010E, 0xFFCC, 0xFF8B }
};

struct unk_80A66604 {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
    s16 unk_08;
};

struct unk_80A66654
{
    s32 unk_00;
    struct unk_80A66604* unkstruct_04;

};

struct unk_80A66604 D_80A66604[] = {
    { 0x0420, 0x0001, 0xF9FC, 0x000B, 0x2A8D, },
    { 0x0639, 0x0001, 0xFC27, 0x000A, 0xFC27, },
    { 0x066D, 0x0001, 0xFF23, 0x000B, 0xE891, },
    { 0x03D9, 0x0001, 0x0193, 0x000A, 0xBB9C, },
    { 0xFC01, 0x0001, 0x0162, 0x000B, 0xA37D, },
    { 0xF971, 0x0001, 0xFF2B, 0x000A, 0x889C, },
    { 0xF9F0, 0x0001, 0xFC10, 0x000B, 0x638D, },
    { 0xFC4D, 0xFFFF, 0xF9BC, 0x000A, 0x4002, },
};
struct unk_80A66654 D_80A66654 = { 0x00000008, D_80A66604};
s32 D_80A6665C[] = {0, 16};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneScale, 600, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 300, ICHAIN_STOP),
};

u8 D_80A6666C[] = { 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0 };

s32 D_80A66678[] = {0x00000001, 0x00000003, 0x00000000, 0x00000003, 0x00000001, 0x00000000};

s16 D_80A66690[] = {0x0007, 0x0006, 0x0002, 0x0002, 1, 1, 0, 0, 0, 0};

void func_80A60294(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction *action);
void func_80A605A4(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction *action);
void func_80A60838(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction *action);
void func_80A60AFC(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction *action);
void func_80A60D28(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction *action);

void (*D_80A666A4[])(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action) = {
    NULL,
    func_80A60294,
    func_80A605A4,
    func_80A60838,
    func_80A60AFC,
    func_80A60D28,
};

void func_80A60300(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction *action);
void func_80A605E0(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction *action);
void func_80A60954(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction *action);
void func_80A60BDC(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction *action);
void func_80A60EB0(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction *action);

void (*D_80A666BC[])(EnHorse *this, GlobalContext* globalCtx, CsCmdActorAction *action) = {
    NULL,
    func_80A60300,
    func_80A605E0,
    func_80A60954,
    func_80A60BDC,
    func_80A60EB0,
};


typedef struct {
    s32 x;
    s32 y;
} Vec2i;
Vec2i D_80A666D4[] = {
    { 0x00000024, 0x00000001, },
    { 0x00000025, 0x00000002, },
    { 0x00000026, 0x00000003, },
    { 0x00000040, 0x00000004, },
    { 0x00000041, 0x00000005, },
};

struct unk_80A66604 D_80A666FC[] = {
    { 0x0E10, 0x0585, 0xEC41, 0x000B, 0x8001, },
    { 0x0D20, 0x0585, 0xEB9C, 0x0005, 0xC000, },
    { 0x0C1C, 0x0585, 0xECDC, 0x0005, 0x0000, },
    { 0x0E10, 0x0585, 0xEFFC, 0x000B, 0x0000, },
    { 0x0E10, 0x0585, 0x0168, 0x000B, 0x0000, },
};
struct unk_80A66654 D_80A66730 = {5, D_80A666FC};

void (*D_80A66738[])(EnHorse *this, GlobalContext* globalCtx) = {
    func_80A5C97C,
    func_80A5F08C,
    func_80A5F414,
    func_80A5F890,
    func_80A600E8,
    func_80A5D0A0,
    func_80A5D2C0,
    func_80A5D468,
    func_80A5D79C,
    func_80A5DB58,
    func_80A5DE38,
    func_80A5E12C,
    func_80A5E39C,
    func_80A5E650,
    func_80A5EB54,
    func_80A5EE80,
    func_80A627A4,
    func_80A610C8,
    func_80A61778,
    func_80A61A28,
};

s32 func_80A5B2F0(EnHorse *this, GlobalContext *globalCtx) {
    f32 min;
    f32 max;
    s32 i;

    if (globalCtx->sceneNum != 0x5A) {
        return 0;
    }
    if (this->actor.speedXZ < 12.8f) {
        return 0;
    }
    if ((gSaveContext.eventChkInf[9] & 0xF) == 0xF) {
        return 0;
    }

    for (i = 0; i < 2; i++){
        min = D_80A665DC[i].unk4;
        max = (min + D_80A665DC[i].unk6) + D_80A665DC[i].unk8;
        if (max < min) {
            f32 temp = min;
            min = max;
            max = temp;
        }
        if (D_80A665DC[i].unk0 < this->actor.posRot.pos.z && this->actor.posRot.pos.z < D_80A665DC[i].unk2) {
            if (min < this->actor.posRot.pos.x && this->actor.posRot.pos.x < max) {
                if (D_80A665DC[i].unkA - D_80A665DC[i].unkC < this->actor.posRot.rot.y && this->actor.posRot.rot.y < D_80A665DC[i].unkA + D_80A665DC[i].unkC) {
                    return 1;
                }
            }
        }
    }
    return 0;
}

void func_80A624AC(EnHorse *this, GlobalContext *globalCtx);
s32 func_80A5B450(EnHorse *this, GlobalContext *globalCtx) {
    f32 min;
    f32 max;
    s32 i;

    if (this->actor.speedXZ < 12.8f) {
        return 0;
    }

    for (i = 0; i != 2; i++) {
        min = D_80A665DC[i].unk4;
        max = D_80A665DC[i].unk6 + min;

        if (max < min) {
            f32 temp = min;
            min = max;
            max = temp;
        }

        if (D_80A665DC[i].unk0 < this->actor.posRot.pos.z && this->actor.posRot.pos.z < D_80A665DC[i].unk2) {
            if (min < this->actor.posRot.pos.x && this->actor.posRot.pos.x < max) {
                if (D_80A665DC[i].unkA - D_80A665DC[i].unkC < this->actor.posRot.rot.y && this->actor.posRot.rot.y < D_80A665DC[i].unkA + D_80A665DC[i].unkC) {
                    this->unk_3AC = i;
                    func_80A624AC(this, globalCtx);
                    return 1;
                }
            }
        }
    }

    return 0;
}

void func_80A5B590(struct unk_80A66604 *arg0, s32 arg1, Vec3f *vec) {

    vec->x = arg0[arg1].unk_00;
    vec->y = arg0[arg1].unk_02;
    vec->z = arg0[arg1].unk_04;
}

void func_80A5B5E0(EnHorse *this, GlobalContext *globalCtx, Vec3f *endPos, s16 arg3) {
    func_8006DD9C(&this->actor, endPos, arg3);
}

void func_80A5B61C(EnHorse *this, GlobalContext *globalCtx, struct unk_80A66654 *arg3) {
    Vec3f sp64;
    Vec3f sp58;
    f32 playerDist;
    f32 sp50;
    s16 sp4E;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    s32 phi_a1;

    func_80A5B590(arg3->unkstruct_04, this->unk_204, &sp64);
    Math3D_RotateXZPlane(&sp64, arg3->unkstruct_04[this->unk_204].unk_08, &sp48, &sp44, &sp40);
    if (((this->actor.posRot.pos.x * sp48) + (sp44 * this->actor.posRot.pos.z) + sp40) > 0.0f) {
        this->unk_204++;
        if (this->unk_204 >= arg3->unk_00) {
            this->unk_204 = 0;
        }
    }

    func_80A5B590(arg3->unkstruct_04, this->unk_204, &sp64);

    phi_a1 = this->unk_204 - 1;
    if (phi_a1 < 0) {
        phi_a1 = arg3->unk_00 - 1;
    }
    func_80A5B590(arg3->unkstruct_04, phi_a1, &sp58);
    Math3D_PointDistToLine2D(this->actor.posRot.pos.x, this->actor.posRot.pos.z, sp58.x, sp58.z, sp64.x, sp64.z, &sp3C);
    func_80A5B5E0(this, globalCtx, &sp64, (u16)0x190);

    if (sp3C < 90000.0f) {
        playerDist = this->actor.xzDistToLink;
        if ((playerDist < 130.0f) || ((this->jntSph.list->body.ocFlags & 2) != 0)) {
            if (Math_SinS((s16) (this->actor.yawTowardsLink - this->actor.posRot.rot.y)) > 0.0f) {
                this->actor.posRot.rot.y = this->actor.posRot.rot.y - 0x118;
            } else {
                this->actor.posRot.rot.y = this->actor.posRot.rot.y + 0x118;
            }
        } else if (playerDist < 300.0f) {
            if (Math_SinS((s16) (this->actor.yawTowardsLink - this->actor.posRot.rot.y)) > 0.0f) {
                this->actor.posRot.rot.y = this->actor.posRot.rot.y + 0x118;
            } else {
                this->actor.posRot.rot.y = this->actor.posRot.rot.y - 0x118;
            }
        }
        this->actor.shape.rot.y = this->actor.posRot.rot.y;
    }

    sp50 = func_8002DB8C((Actor *) this, PLAYER);
    sp4E = func_8002DA78((Actor *) this, PLAYER) - this->actor.posRot.rot.y;
    if (sp50 <= 200.0f || (fabsf(Math_SinS(sp4E)) < 0.8f && Math_CosS(sp4E) > 0.0f)) {
        if (this->actor.speedXZ < this->unk_398) {
            this->actor.speedXZ += 0.47f;
        } else {
            this->actor.speedXZ -= 0.47f;
        }
        this->unk_394 = this->unk_394 | 1;
        return;
    }

    if (this->actor.speedXZ < (f32) arg3->unkstruct_04[this->unk_204].unk_06) {
        this->actor.speedXZ = this->actor.speedXZ + 0.4f;
    } else {
        this->actor.speedXZ = this->actor.speedXZ - 0.4f;
    }
    this->unk_394 = this->unk_394 & 0xFFFE;
}


void func_80A5B9C8(EnHorse *this) {
    if (D_80A6665C[this->unk_218] < this->unk_214) {
        if (this->unk_218 == 0 && (D_80A6665C[1] < this->unk_214)) {
            return;
        }

        Audio_PlaySoundGeneral(0x2803U, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->unk_218++;
        if (this->unk_218 >= 2) {
            this->unk_218 = 0;
        }
    }
}


void func_80A5BA84(EnHorse *this) {
    Audio_PlaySoundGeneral((u16)0x2804U, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
}

void func_80A5BACC(EnHorse *this) {
    Audio_PlaySoundGeneral((u16)0x2804U, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
}

f32 func_80A5BB14(EnHorse *this, GlobalContext *globalCtx) {
    f32 sp1C = 1.0f;

    if (Math_CosS(this->actor.shape.rot.x) < 0.939262f && Math_SinS(this->actor.shape.rot.x) < 0.0f) {
        sp1C = 0.7f;
    }
    return sp1C;
}

void func_80A5BB90(GlobalContext *globalCtx, Vec3f *vec, Vec3f *arg2, f32 *arg3) {
    SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, vec, arg2, arg3);
}

void func_80A5BB90(GlobalContext *globalCtx, Vec3f *vec, Vec3f *arg2, f32 *arg3);
s32 func_80A5BBBC(GlobalContext *globalCtx, EnHorse *this, Vec3f *vec) {
    Vec3f sp24;
    f32 sp20;
    f32 sp1C;

    func_80A5BB90(globalCtx, vec, &sp24, &sp20);
    if (fabsf(sp20) < 0.008f) {
        return 0;
    }
    sp1C = Math3D_Vec3f_DistXYZ(vec, &globalCtx->view.eye);
    return func_800314D4(globalCtx, (Actor *) this, &sp24, sp20) || sp1C < 100.0f;
}

void func_80A5BC68(EnHorse *this, GlobalContext *globalCtx) {

    if (this->unk_210 == 0) {
        if ((this->unk_214 > 35.0f && this->unk_158 == 0) ||
            (this->unk_214 > 28.0f && this->unk_158 == 1)) {
                if ((this->unk_1F0 & 0x1000) == 0) {
                    this->unk_1F0 |= 0x1000;
                    Audio_PlaySoundGeneral((u16)0x282CU, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
                    return;
                }
        }
    }
    if (this->unk_210 == 3 && this->unk_214 > 25.0f) {
        if (!(this->unk_1F0 & 0x800)) {
            this->unk_1F0 |= 0x800;
            Audio_PlaySoundGeneral((u16)0x282BU, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }
}

s32 func_80A5BBBC(GlobalContext *globalCtx,EnHorse * this, Vec3f* vec);
s32 func_80A5BD94(EnHorse *this, GlobalContext *globalCtx) {
    f32 minDist = 1e38f;
    s32 phi_s8 = 0;
    f32 dist;
    s32 i;
    Player* player;
    Vec3f vec;

    for (i = 0; i < 169; i++) {
        if (D_80A65F40[i].unk0 == globalCtx->sceneNum) {
            player = PLAYER;
            if (globalCtx->sceneNum != 0x63
                    //! Same flag checked twice
                    || (Flags_GetEventChkInf(0x18) != 0 && ((gSaveContext.eventInf[0] & 0xF) != 6 || Flags_GetEventChkInf(0x18) != 0))
                    || ((D_80A65F40[i].unk2.x == 0x358 && D_80A65F40[i].unk2.y == 0 && D_80A65F40[i].unk2.z == -0x396)
                    || (D_80A65F40[i].unk2.x == -0x3EB && D_80A65F40[i].unk2.y == 0 && D_80A65F40[i].unk2.z == -0x2F3))) {
                vec.x = D_80A65F40[i].unk2.x;
                vec.y = D_80A65F40[i].unk2.y;
                vec.z = D_80A65F40[i].unk2.z;
                dist = Math3D_Vec3f_DistXYZ(&player->actor.posRot.pos, &vec);
                if (globalCtx->sceneNum){}
                if (!(minDist < dist) && (func_80A5BBBC(globalCtx, this, &vec) == 0)) {
                    minDist = dist;
                    this->actor.posRot.pos.x = D_80A65F40[i].unk2.x;
                    this->actor.posRot.pos.y = D_80A65F40[i].unk2.y;
                    this->actor.posRot.pos.z = D_80A65F40[i].unk2.z;
                    this->actor.pos4 = this->actor.posRot.pos;
                    this->actor.posRot.rot.y = D_80A65F40[i].unk8;
                    this->actor.shape.rot.y = func_8002DA78((Actor *) this, PLAYER);
                    phi_s8 = 1;
                    SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &this->actor.posRot.pos, &this->actor.projectedPos, &this->actor.projectedW);
                }
            }
        }
    }
    return phi_s8;
}
void func_80A5BFD8(EnHorse *this, GlobalContext *globalCtx) {
    this->unk_380 = -1;
    this->unk_384 = 0;
}

void func_80A5BFEC(EnHorse *this, GlobalContext *globalCtx) {
    this->unk_388 = 0;
}

s32 func_80A5BFF8(EnHorse *this, GlobalContext *globalCtx) {
    Player *player = PLAYER;

    if ((player->stateFlags1 & 1) || func_8002DD78(PLAYER) == 1 || (player->stateFlags1 & 0x00100000)
            || ((this->unk_1F0 & 0x80000) && this->unk_388 == 0)
            || this->unk_14C == 0x12 || (player->actor.flags & 0x100) != 0 || globalCtx->csCtx.state != 0) {
        return 0;
    }
    return 1;
}

void func_80A5C0B4(EnHorse *this, GlobalContext *globalCtx) {
    this->unk_39C = 0;
    this->unk_3A0 = 0;
    this->unk_3A4 = 0;
}
void func_80A5C0C8(u16 *arg0) {
    *arg0 = 0;
}

void EnHorse_Init(Actor *thisx, GlobalContext *globalCtx) {
    EnHorse *this = THIS;
    GlobalContext *gc = globalCtx;

    AREG(6) = 0;
    Actor_ProcessInitChain((Actor *) this, sInitChain);
    func_80A5C0C8(&this->unk_3C8);
    DREG(53) = 0;
    this->unk_258 =  this->actor.posRot.pos;
    this->unk_150 = 0;
    this->unk_154 = 0;
    this->unk_258.y = this->unk_258.y + 70.0f;
    if (DREG(4) == 0) {
        DREG(4) = 0x46;
    }
    if ((this->actor.params & 0x8000) != 0) {
        s8 index;
        this->actor.params &= ~0x8000;
        this->unk_158 = 1;
        index = Object_GetIndex(&gc->objectCtx, 0xD2);
        this->unk_15C = index;
        if (index < 0) {
            Actor_Kill((Actor *) this);
            return;
        }
        do {} while(Object_IsLoaded(&gc->objectCtx, this->unk_15C) == 0);

        this->actor.objBankIndex = this->unk_15C;
        Actor_SetObjectDependency(gc, (Actor *) this);
        this->unk_208 = 0xC;
    } else {
        this->unk_158 = 0;
        this->unk_208 = 0xE;
    }
    if (this->actor.params == 0x7FFF) {
        this->actor.params = 1;
    }

    if (gc->sceneNum == 0x4C) {
        this->unk_1F0 = 0x10000;
    } else if ((gc->sceneNum == 0x5D) && (this->unk_158 == 1)) {
        this->unk_1F0 = 0x50000;
    } else {
        if (this->actor.params == 3) {
            this->unk_1F0 = 0xB0000;
        } else if (this->actor.params == 6) {
            this->unk_1F0 = 0xA0000;
            if ((Flags_GetEventChkInf(0x18) != 0) || (DREG(1) != 0)) {
                this->unk_1F0 &= ~0x20000;
                this->unk_1F0 |= 0x4000000;
            } else if ((gSaveContext.eventInf[0] & 0x40) && (this->unk_158 == 1)) {
                this->unk_1F0 |= 0x300000;
            }
        } else if (this->actor.params == 1) {
            this->unk_1F0 = 0x80;
        } else {
            this->unk_1F0 = 0;
        }
    }
    if ((gc->sceneNum == 0x63) && ((*gSaveContext.eventInf & 0xF) == 6) && (Flags_GetEventChkInf(0x18) == 0) && (DREG(1) == 0)) {
        this->unk_1F0 |= 0x2000000;
    }
    Actor_SetScale((Actor *) this, 0.01f);
    this->actor.gravity = -3.5f;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Squiggly, 20.0f);
    this->unk_14C = 2;
    this->actor.speedXZ = 0.0f;
    Collider_InitCylinder(gc, &this->cyl1);
    Collider_SetCylinder(gc, &this->cyl1, (Actor *) this, &sCylinderInit1);
    Collider_InitCylinder(gc, &this->cyl2);
    Collider_SetCylinder(gc, &this->cyl2, (Actor *) this, &sCylinderInit2);
    Collider_InitJntSph(gc,  &this->jntSph);
    Collider_SetJntSph(gc,  &this->jntSph, (Actor *) this, &sJntSphInit, &this->jntSphList);
    func_80061ED4(&this->actor.colChkInfo, DamageTable_Get(0xB), &D_80A65F38);
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 70.0f;
    this->unk_20C = 0;
    if ((gc->sceneNum == 0x63) && (gSaveContext.sceneSetupIndex < 4)) {
        if (this->unk_158 == 1) {
            if (this->actor.posRot.rot.z == 0 || gSaveContext.nightFlag) {
                Actor_Kill((Actor *) this);
                return;
            }
            if (Flags_GetEventChkInf(0x18) != 0) {
                Actor_Kill((Actor *) this);
                return;
            }
            if (this->actor.posRot.rot.z != 5) {
                Actor_Kill((Actor *) this);
                return;
            }
        } else if ((Flags_GetEventChkInf(0x18) == 0) && (DREG(1) == 0) && (gSaveContext.nightFlag != 0)) {
            Actor_Kill((Actor *) this);
            return;
        }
    } else if (gc->sceneNum == 0x36) {
        if (gSaveContext.nightFlag == 0 || Flags_GetEventChkInf(0x18) || DREG(1) != 0 || gSaveContext.linkAge != 0) {
            Actor_Kill((Actor *) this);
            return;
        }
        this->unk_1F0 |= 0x10000;
    }
    func_800A663C(gc, &this->unk_160, D_80A65E84[this->unk_158], *sAnimationHeaders[this->unk_158]);
    this->unk_210 = 0;
    Animation_PlayOnce(&this->unk_160.skelAnime, *sAnimationHeaders[this->unk_158]);
    this->unk_238 = 6;
    this->unk_37A = this->unk_244 = this->unk_23C = 0;
    func_80A5BFD8(this, gc);
    func_80A5BFEC(this, gc);
    func_80A5C0B4(this, gc);
    if (this->actor.params == 2) {
        func_80A5F044(this);
    } else if (this->actor.params == 3) {
        func_80A5FCAC(this);
        this->rider = Actor_Spawn(&gc->actorCtx, gc, 0xCB, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, this->actor.shape.rot.x, this->actor.shape.rot.y, 1, 1);
        if (this->rider == NULL) {
            __assert("this->race.rider != NULL", "../z_en_horse.c", 0xC05);
        }
        if ((gSaveContext.eventInf[0] & 0x40) == 0) {
            this->unk_398 = 12.07f;
        } else {
            this->unk_398 = 12.625f;
        }
    } else if (this->actor.params == 7) {
        func_80A61058(this, gc);
    } else if (this->actor.params == 8) {
        func_80A6140C(this);
        Interface_InitHorsebackArchery(gc);
    } else if ((gc->sceneNum == 0x63) && (Flags_GetEventChkInf(0x18) == 0) && (DREG(1) == 0)) {
        func_80A61A04(this);
    } else {
        if (gc->sceneNum == 0x4C) {
            func_80A5F3A8(this);
        } else if ((gc->sceneNum == 0x5D) && (this->unk_158 == 1)) {
            func_80A5F3A8(this);
        } else {
            func_80A5F3DC(this);
        }
    }
    this->actor.initPosRot.rot.z = this->actor.posRot.rot.z = this->actor.shape.rot.z = 0;
}

void EnHorse_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    EnHorse *this = THIS;
    if (this->unk_1F0 & 0x08000000) {
        func_800F89E8(&this->unk_21C);
    }
    func_800A6888(globalCtx, &this->unk_160);
    Collider_DestroyCylinder(globalCtx, &this->cyl1);
    Collider_DestroyCylinder(globalCtx, &this->cyl2);
    Collider_DestroyJntSph(globalCtx, &this->jntSph);
}

void func_80A5C888(EnHorse *this, GlobalContext *globalCtx) {
    func_80A5B5E0(this, globalCtx, &PLAYER->actor.posRot.pos, (u16)0x190);
    if (this->unk_1F0 & 0x4000) {
        this->actor.posRot.rot.y += 800.0f;
    }
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
}

void func_80A5C8FC(EnHorse *this) {
    if ((this->unk_14C != 0x11) && (this->unk_14C != 0x12)) {
        if (D_80A6666C[this->actor.params] != 0 && this->actor.params != 4) {
            this->unk_150 = 0;
            this->unk_154 = 0;
        }
        this->unk_254 = this->unk_14C;
        this->unk_14C = 0;
        this->cyl1.base.maskA &= ~1;
        this->cyl2.base.maskA &= ~1;
        this->jntSph.base.maskA &= ~1;
        this->unk_210 = 0;
    }
}

void func_80A5F380(EnHorse* this, s32 arg1, f32 arg2);
void func_80A5CF28(EnHorse* this);
void func_80A5CF64(EnHorse* this);
void func_80A5DCB0(EnHorse* this);
void func_80A5C97C(EnHorse *this, GlobalContext *globalCtx) {

    this->actor.speedXZ = 0.0f;
    this->unk_150--;
    if (this->unk_150 < 0) {
        this->cyl1.base.maskA |= 1;
        this->cyl2.base.maskA |= 1;
        this->jntSph.base.maskA |= 1;
        if (this->unk_20C == 1) {
            this->unk_1F0 &= ~0x80;
            if (this->actor.params == 4) {
                func_80A5CF28(this);
            } else if (this->actor.params == 9) {
                this->actor.params = 5;
                if (globalCtx->csCtx.state != 0) {
                    func_80A5CF64(this);
                } else {
                    this->actor.speedXZ = 8.0f;
                    func_80A5DCB0(this);
                }
            } else if (this->unk_254 == 2) {
                func_80A5CF64(this);
            } else {
                func_80A5CF28(this);
            }
            if (this->actor.params != 0) {
                this->actor.params = 0;
                return;
            }
        } else {
            if (this->unk_254 == 5) {
                func_80A5F380(this, 0, 0);
                return;
            }
            if (this->unk_254 == 6) {
                func_80A5F380(this, 0, 0);
                return;
            }
            func_80A5F380(this, 0, 0);
        }
    }
}

void func_80A63148(Vec2f* vec, f32* arg1, s16* arg2);
f32 func_80A5BB14(EnHorse *this, GlobalContext *globalCtx);

// fake
void func_80A5CAEC(EnHorse *this, GlobalContext *globalCtx, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, s16 arg7) {
    s16 *why_god;
    f32 sp40;
    s16 sp3E;
    f32 temp_f12;
    f32 temp_f14;
    s16 phi_v0;
    if (func_80A5BFF8(this, globalCtx) == 0) {
        if (this->actor.speedXZ > 8) {
            this->actor.speedXZ -= arg5;
        } else if (this->actor.speedXZ < 0) {
            this->actor.speedXZ = 0;
        }

        return;
    }

    why_god = &sp3E;

    arg6 *= func_80A5BB14(this, globalCtx);
    func_80A63148(&this->unk_264, &sp40, &sp3E);
    if (Math_CosS(sp3E) <= arg3) {
        this->actor.speedXZ -= arg2;
        this->actor.speedXZ = (this->actor.speedXZ < 0.0f) ? (0.0f) : (this->actor.speedXZ);
        return;
    }

    if (sp40 < arg4) {
        this->unk_1F0 &= ~1;
        this->unk_1F0 &= ~2;
        this->actor.speedXZ -= arg5;
        if (this->actor.speedXZ < 0.0f) {
            this->actor.speedXZ = 0.0f;
            return;
        }

        return;
    }

    if ((this->unk_1F0 & 1) != 0) {
        if ((0x10 - this->unk_240) > 0) {
            this->actor.speedXZ = (func_80A5BB14(this, globalCtx) * this->unk_208 - this->actor.speedXZ)
                                  / (0x10 - this->unk_240) + this->actor.speedXZ;
        } else {
            this->actor.speedXZ = func_80A5BB14(this, globalCtx) * this->unk_208;
        }

        if ((func_80A5BB14(this, globalCtx) * this->unk_208) <= this->actor.speedXZ) {
            this->unk_1F0 &= ~1;
            this->unk_1F0 |= 2;
        }

    } else if ((this->unk_1F0 & 2) != 0) {
        if (arg6 < this->actor.speedXZ) {
            temp_f12 = this->actor.speedXZ;
            this->actor.speedXZ = temp_f12 - 0.06f;
        } else if (this->actor.speedXZ < arg6) {
            this->actor.speedXZ = arg6;
            this->unk_1F0 &= ~2;
        }
    } else {
        this->actor.speedXZ += (this->actor.speedXZ <= arg6 * 0.018518519f * sp40 ? 1.0f : -1.0f) * 50.0f * 0.01f;
        if (arg6 < this->actor.speedXZ) {
            this->actor.speedXZ = this->actor.speedXZ - arg5;
            if (this->actor.speedXZ < arg6) {
                this->actor.speedXZ = arg6;
            }

        }

    }

    temp_f12 = *why_god * (1/32236.f);
    temp_f14 = 2.2f - (this->actor.speedXZ * (1.0f / this->unk_208));
    phi_v0 = *why_god * temp_f12 * temp_f12 * temp_f14;
    phi_v0 = CLAMP(phi_v0, -arg7 * temp_f14, arg7 * temp_f14);
    this->actor.posRot.rot.y += phi_v0;
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
}


void func_80A5CF28(EnHorse *this) {
    this->unk_160.skelAnime.curFrame = 0.0f;
    func_80A5CF64(this);
    this->unk_1F0 &= ~0x1000;
}

void func_80A5CF64(EnHorse *this) {
    f32 curFrame;

    this->unk_14C = 5;
    this->unk_210 = 0;
    if ((this->unk_214 > 35.0f && this->unk_158 == 0) || (this->unk_214 > 28.0f && this->unk_158 == 1)) {
        if ((this->unk_1F0 & 0x1000) == 0) {
            this->unk_1F0 |= 0x1000;
            Audio_PlaySoundGeneral((u16)0x282CU, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }
    curFrame = this->unk_160.skelAnime.curFrame;
    Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, curFrame, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 2, -3.0f);
}
s32 func_80A5BFF8(EnHorse* this, GlobalContext* globalCtx);
void func_80A5E588(EnHorse* this);
void func_80A5D3C0(EnHorse* this);
void func_80A5D628(EnHorse* this);
void func_80A5D1A0(EnHorse* this);
void func_80A5E5AC(EnHorse* this);
void func_80A5D678(EnHorse* this);
void func_80A5D1C4(EnHorse* this);
void func_80A5D69C(EnHorse* this);
void func_80A5BA84(EnHorse* this);
void func_80A5D0A0(EnHorse *this, GlobalContext *globalCtx) {
    f32 sp24;
    s16 sp22 = 0;

    this->actor.speedXZ = 0;
    func_80A63148(&this->unk_264, &sp24, &sp22);
    if ((sp24 > 10.0f) && (func_80A5BFF8(this, globalCtx) == 1)) {
        if (Math_CosS(sp22) <= -0.5f) {
            func_80A5E588(this);
        } else if ((f64) Math_CosS(sp22) <= 0.7071) {
            func_80A5D3C0(this);
        } else {
            func_80A5D628(this);
        }
    }
    if (SkelAnime_Update(&this->unk_160.skelAnime) != 0) {
        func_80A5D1A0(this);
    }
}

void func_80A5D1A0(EnHorse *this) {
    this->unk_160.skelAnime.curFrame = 0.0f;
    func_80A5D1C4(this);
}

void func_80A5D1C4(EnHorse *this) {
    f32 curFrame;

    this->unk_14C = 6;
    this->unk_210 = 1;
    curFrame = this->unk_160.skelAnime.curFrame;
    Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, curFrame, (f32) Animation_GetLastFrame(sAnimationHeaders[this->unk_158][1]), 2, -3.0f);
    this->unk_21C = this->unk_228;
    if (this->unk_1F0 & 0x08000000) {
        Audio_PlaySoundGeneral((u16)0x2816U, &this->unk_21C, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

void func_80A5D2C0(EnHorse *this, GlobalContext *globalCtx) {
    f32 sp24;
    s16 sp22;

    sp22 = 0;
    this->actor.speedXZ = 0;
    func_80A63148(&this->unk_264, &sp24, (s16 *) &sp22);
    if ((sp24 > 10.0f) && (func_80A5BFF8(this, globalCtx) == 1)) {
        if (Math_CosS(sp22) <= -0.5f) {
            func_80A5E588(this);
        } else if (Math_CosS(sp22) <= 0.7071) {
            func_80A5D3C0(this);
        } else {
            func_80A5D628(this);
        }
    }
    if (SkelAnime_Update(&this->unk_160.skelAnime) != 0) {
        func_80A5CF28(this);
    }
}

void func_80A5D3C0(EnHorse *this) {
    this->unk_14C = 7;
    this->unk_218 = 0;
    this->unk_210 = 4;
    Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, 0.0f, (f32) Animation_GetLastFrame((void *) sAnimationHeaders[this->unk_158][4]), 2, -3.0f);
}

void func_80A5D468(EnHorse *this, GlobalContext *globalCtx) {
    f32 sp2C;
    s16 clampedYaw;
    s16 yaw;

    this->actor.speedXZ = 0;
    func_80A5B9C8(this);
    func_80A63148(&this->unk_264, &sp2C, &yaw);
    if (sp2C > 10.0f) {
        if (func_80A5BFF8(this, globalCtx) == 0) {
            func_80A5CF28(this);
        } else if (Math_CosS(yaw) <= -0.5f) {
            func_80A5E588(this);
        } else if (Math_CosS(yaw) <= 0.7071) {
            clampedYaw = CLAMP(yaw, -800.0f, 800.0f);
            this->actor.posRot.rot.y = this->actor.posRot.rot.y + clampedYaw;
            this->actor.shape.rot.y = this->actor.posRot.rot.y;
        } else {
            func_80A5D678(this);
        }
    }

    if (SkelAnime_Update(&this->unk_160.skelAnime) != 0) {
        if (Math_CosS(yaw) <= 0.7071) {
            func_80A5D3C0(this);
        } else {
            func_80A5CF28(this);
        }
    }
}

void func_80A5D628(EnHorse *this) {
    func_80A5D678(this);

    if (((this->unk_1F0 & 0x100) == 0) && ((this->unk_1F0 & 0x200) == 0)) {
        this->unk_1F0 |= 0x200;
        this->unk_37C = (u16)8;
        return;
    }
    this->unk_37C = (u16)0;
}

void func_80A5D678(EnHorse *this) {
    this->unk_150 = 0;
    this->unk_154 = 0;
    func_80A5D69C(this);
}

void func_80A5D69C(EnHorse *this) {
    this->unk_14C = 8;
    this->unk_218 = 0;
    this->unk_210 = 4;
    this->unk_37C = 0;
    Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, 0.0f, (f32) Animation_GetLastFrame((void *) sAnimationHeaders[this->unk_158][4]), 2, -3.0f);
}

void func_80A5D748(EnHorse *this) {
    this->unk_14C = 8;
    this->unk_218 = 0;
    this->unk_210 = 4;
    this->unk_37C = 0;
    Animation_PlayOnce(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][4]);
}

void func_80A5D748(EnHorse* this);
void func_80A5DA68(EnHorse* this);
void func_80A5D79C(EnHorse *this, GlobalContext *globalCtx) {
    f32 sp3C;
    s16 sp3A;

    func_80A5B9C8(this);
    func_80A63148(&this->unk_264, &sp3C, &sp3A);
    if (this->unk_154 == 0.0f || (this->unk_150 > 0.0f && this->unk_150 < this->unk_154 - 20.0f)) {
        func_80A5CAEC(this, globalCtx, 0.3f, -0.5f, 10.0f, 0.06f, 3.0f, 0x190);
    } else {
        this->actor.speedXZ = 3.0f;
    }


    if (this->actor.speedXZ == 0.0f) {
        this->unk_1F0 = this->unk_1F0 & ~0x200;
        func_80A5CF28(this);
        this->unk_150 = 0;
        this->unk_154 = 0;
    } else if (this->actor.speedXZ > 3.0f) {
        this->unk_1F0 = this->unk_1F0 & ~0x200;
        func_80A5DA68(this);
        this->unk_150 = 0;
        this->unk_154 = 0;
    }

    if (this->unk_150 > 0.0f) {
        this->unk_150--;
        if (this->unk_150 <= 0.0f) {
            this->unk_154 = 0;
        }
    }

    if (this->unk_37C <= 0) {
        this->unk_1F0 = this->unk_1F0 & ~0x200;
        this->unk_160.skelAnime.playSpeed = this->actor.speedXZ * 0.75f;
        if ((SkelAnime_Update(&this->unk_160.skelAnime) != 0) || (this->actor.speedXZ == 0.0f)) {
            if (this->unk_150 <= 0.0f) {
                if ((this->actor.speedXZ > 3.0f)) {
                    func_80A5DA68(this);
                    this->unk_150 = 0;
                    this->unk_154 = 0;
                    return;
                }
                if ((sp3C < 10.0f) || (Math_CosS(sp3A) <= -0.5f)) {
                    func_80A5CF28(this);
                    this->unk_150 = 0;
                    this->unk_154 = 0;

                } else {
                    func_80A5D748(this);
                    return;
                }
            }
        }
    } else {
        this->actor.speedXZ = 0.0f;
        this->unk_37C = this->unk_37C - 1;
    }
}

void func_80A5DA68(EnHorse *this) {
    this->unk_14C = 9;
    this->unk_210 = 5;
    Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, 0.0f, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 2, -3.0f);
}

void func_80A5DB0C(EnHorse *this) {
    this->unk_14C = 9;
    this->unk_210 = 5;
    Animation_PlayOnce(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210]);
}

void func_80A5BA84(EnHorse* this);
void func_80A5DC8C(EnHorse* this);
void func_80A5DB58(EnHorse *this, GlobalContext *globalCtx) {
    f32 sp3C;
    s16 sp3A;

    func_80A5CAEC(this, globalCtx, 0.3f, -0.5f, 10.0f, 0.06f, 6.0f, 0x190);
    func_80A63148(&this->unk_264, &sp3C, (s16 *) &sp3A);
    if (this->actor.speedXZ < 3.0f) {
        func_80A5D678(this);
    }
    this->unk_160.skelAnime.playSpeed = this->actor.speedXZ * 0.375f;
    if (SkelAnime_Update(&this->unk_160.skelAnime) != 0) {
        func_80A5BA84(this);
        func_800AA000(0.0f, (u8)0x3CU, (u8)8U, (u8)0xFFU);
        if (this->actor.speedXZ >= 6.0f) {
            func_80A5DC8C(this);
            return;
        }
        if (this->actor.speedXZ < 3.0f) {
            func_80A5D678(this);
            return;
        }
        func_80A5DB0C(this);
    }
}

void func_80A5DC8C(EnHorse *this) {
    this->unk_154 = 0;
    this->unk_150 = 0;
    func_80A5DCB0(this);
}

void func_80A5DCB0(EnHorse *this) {
    this->unk_14C = 0xA;
    this->unk_210 = 6;
    this->unk_234 = 0;
    Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, 0.0f, (f32) Animation_GetLastFrame((void *) sAnimationHeaders[this->unk_158][6]), 2, -3.0f);
}

void func_80A5DD58(EnHorse *this) {
    this->unk_154 = 0;
    this->unk_150 = 0;
    this->unk_14C = 0xA;
    this->unk_210 = 6;
    this->unk_234 = 0;
    Animation_PlayOnce(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][6]);
}

void func_80A5DDB0(EnHorse *this, GlobalContext *globalCtx) {
    Vec3s *jointTable;
    float y;
    this->unk_14C = 0xA;
    this->unk_210 = 6;
    Animation_PlayOnce(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210]);
    jointTable = this->unk_160.skelAnime.jointTable;
    y = jointTable->y;
    this->unk_258.y += (y * 0.01f);
    this->unk_244 = NULL;
}

void func_80A5DD58(EnHorse *this);
void func_80A5DD58(EnHorse *this);
void func_80A5DE38(EnHorse *this, GlobalContext *globalCtx) {
    f32 sp3C;
    s16 sp3A;

    func_80A63148(&this->unk_264, &sp3C, &sp3A);

    if (this->unk_150 <= 0.0f) {
        func_80A5CAEC(this, globalCtx, 0.3f, -0.5f, 10.0f, 0.06f, 8.0f, 0x190);
    } else if (this->unk_150 > 0.0f) {
        this->unk_150 -= 1;
        this->actor.speedXZ = 8.0f;
    }
    if (this->actor.speedXZ < 6.0f) {
        func_80A5DA68(this);
    }

    this->unk_160.skelAnime.playSpeed = this->actor.speedXZ * 0.3f;
    if (SkelAnime_Update(&this->unk_160.skelAnime)) {
        func_80A5BACC(this);
        func_800AA000(0, (u8)0x78U, (u8)8U, (u8)0xFFU);
        if (func_80A5BFF8(this, globalCtx) == 1) {
            if (sp3C >= 10.0f && Math_CosS(sp3A) <= -0.5f) {
                func_80A5E2A8(this, globalCtx);
            } else if (this->actor.speedXZ < 6.0f) {
                func_80A5DA68(this);
            } else {
                func_80A5DD58(this);
            }
            return;
        }
        func_80A5DD58(this);
    }
}

void func_80A5E00C(EnHorse *this) {
    this->unk_14C = 0xB;
    this->unk_210 = 3;
    this->unk_1F0 &= ~0x800;
    this->unk_21C = this->unk_228;
    if (this->unk_1F0 & 0x08000000) {
        Audio_PlaySoundGeneral((u16)0x2805U, &this->unk_21C, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
    }
    func_800AA000(0.0f, (u8)0xB4U, (u8)0x14U, (u8)0x64U);
    Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, 0.0f, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 2, -3.0f);
}

void func_80A5E12C(EnHorse *this, GlobalContext *globalCtx) {
    f32 dist;
    s16 yaw;

    this->actor.speedXZ = 0;
    if (this->unk_214 > 25.0f) {
        if ((this->unk_1F0 & 0x800) == 0) {
            this->unk_1F0 |= 0x800;
            Audio_PlaySoundGeneral((u16)0x282BU, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
            func_800AA000(0, (u8)0xB4U, (u8)0x14U, (u8)0x64U);
        }
    }
    func_80A63148(&this->unk_264, &dist, &yaw);
    if (SkelAnime_Update(&this->unk_160.skelAnime) != 0) {
        if (func_80A5BFF8(this, globalCtx) == 1) {
            if (this->unk_1F0 & 0x10) {
                this->unk_150 = 0x64;
                this->unk_154 = 0x64;
                this->unk_1F0 = this->unk_1F0 & ~0x10;
                func_80A5E5AC(this);
            } else if (this->unk_1F0 & 0x20) {
                this->unk_150 = 0x64;
                this->unk_154 = 0x64;
                this->unk_1F0 = this->unk_1F0 & ~0x20;
                func_80A5D69C(this);
            } else if ((Math_CosS(yaw) <= -0.5f)) {
                func_80A5E588(this);
            } else {
                func_80A5CF28(this);
            }
            return;
        }
        func_80A5CF28(this);
    }
}

void func_80A5E2A8(EnHorse *this, GlobalContext *globalCtx) {
    u32 temp_t3;

    this->unk_14C = 0xC;
    this->unk_210 = 2;

    Audio_PlaySoundGeneral((u16)0x281AU, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
    Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.5f, 0.0f, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 2, -3.0f);

    this->unk_1F0 |= 0x400;
    this->unk_1F0 &= ~1;
}

void func_80A5E39C(EnHorse *this, GlobalContext *globalCtx) {
    if (this->actor.speedXZ > 0.0f) {
        this->actor.speedXZ = this->actor.speedXZ - 0.6f;
        if (this->actor.speedXZ < 0.0f) {
            this->actor.speedXZ = 0.0f;
        }
    }

    if (this->unk_1F0 & 0x400 && this->unk_160.skelAnime.curFrame > 29.0f) {
        this->actor.speedXZ = 0.0f;
        if (Rand_ZeroOne() > 0.5) {
            this->unk_21C = this->unk_228;
            if (this->unk_1F0 & 0x08000000) {
                Audio_PlaySoundGeneral((u16)0x2805U, &this->unk_21C, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
            }
            func_800AA000(0.0f, (u8)0xB4U, (u8)0x14U, (u8)0x64U);
            this->unk_1F0 = this->unk_1F0 & ~0x400;
        } else {
            func_80A5CF28(this);
        }
    }

    if (this->unk_160.skelAnime.curFrame > 29.0f) {
        this->actor.speedXZ = 0.0f;
    } else if (this->actor.speedXZ > 3.0f && this->unk_1F0 & 0x10) {
        this->actor.speedXZ = 3.0f;
    }

    if (SkelAnime_Update(&this->unk_160.skelAnime)) {
        if ((this->unk_1F0 & 0x10) != 0) {
            this->unk_150 = 0x64;
            this->unk_154 = 0x64;
            func_80A5E5AC(this);
            this->unk_1F0 = this->unk_1F0 & ~0x10;
            return;
        }
        func_80A5CF28(this);
    }
}

void func_80A5E588(EnHorse *this) {
    this->unk_154 = 0;
    this->unk_150 = 0;
    func_80A5E5AC(this);
}

void func_80A5E5AC(EnHorse *this) {
    this->unk_14C = 0xD;
    this->unk_210 = 4;
    this->unk_218 = 0;
    Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, 0.0f, (f32) Animation_GetLastFrame((void *) sAnimationHeaders[this->unk_158][4]), 0, -3.0f);
}

void func_80A5E650(EnHorse *this, GlobalContext *globalCtx) {
    f32 sp34;
    s16 sp32;
    s16 angle;
    Player *player = PLAYER;

    func_80A5B9C8(this);
    func_80A63148(&this->unk_264, &sp34, &sp32);
    if (func_80A5BFF8(this, globalCtx) == 1) {
        if (this->unk_154 == 0.0f || (this->unk_150 > 0.0f && this->unk_150 < this->unk_154 - 20.0f)) {
            if (sp34 < 10.0f && this->unk_150 <= 0.0f) {
                func_80A5CF28(this);
                this->actor.speedXZ = 0.0f;
                return;
            }
            if (sp34 < 10.0f) {
                sp32 = -0x7FFF;
            } else if (Math_CosS(sp32) > -0.5f) {
                this->unk_154 = 0;
                func_80A5CF28(this);
                this->actor.speedXZ = 0.0f;
                return;
            }
        } else if (sp34 < 10.0f) {
            sp32 = -0x7FFF;
        }
    } else if (player->actor.flags & 0x100) {
        func_80A5CF28(this);
        this->actor.speedXZ = 0.0f;
        return;
    } else {
        sp32 = -0x7FFF;
    }

    this->actor.speedXZ = -2.0f;
    angle = 0x7FFF - sp32;
    angle = CLAMP(angle, -1200.0f, 1200.0f);
    this->actor.posRot.rot.y += angle;
    this->actor.shape.rot.y = this->actor.posRot.rot.y;

    if (0.0f < this->unk_150) {
        this->unk_150--;
        if (this->unk_150 <= 0.0f) {
            this->unk_154 = 0;
        }
    }
    this->unk_160.skelAnime.playSpeed = this->actor.speedXZ * 0.5f * 1.5f;
    if ((SkelAnime_Update(&this->unk_160.skelAnime) != 0) && ((f32) this->unk_150 <= 0.0f) && (func_80A5BFF8(this, globalCtx) == 1)) {
        if ((sp34 > 10.0f) && (Math_CosS(sp32) <= -0.5f)) {
            this->unk_154 = 0;
            func_80A5E588(this);
            return;
        }
        if (sp34 < 10.0f) {
            this->unk_154 = 0;
            func_80A5CF28(this);
            return;
        }
        func_80A5E5AC(this);
    }
}

void func_80A5EA1C(EnHorse *this, GlobalContext *globalCtx);
void func_80A5E9F8(EnHorse *this, GlobalContext *globalCtx) {
    this->unk_160.skelAnime.curFrame = 0.0f;
    func_80A5EA1C(this, globalCtx);
}

void func_80A5EA1C(EnHorse *this, GlobalContext *globalCtx) {
    f32 sp34;
    Vec3s *jointTable;
    f32 y;

    this->unk_14C = 0xE;
    this->unk_210 = 7;
    sp34 = this->unk_160.skelAnime.curFrame;
    Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.5f, sp34, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][7]), 2, -3.0f);

    this->unk_244 = NULL;
    this->unk_274 = this->actor.posRot.pos.y;

    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0;

    jointTable = this->unk_160.skelAnime.jointTable;
    y = jointTable->y;
    this->unk_258.y -= (y * 0.01f);

    Audio_PlaySoundGeneral((u16)0x2818U, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
    func_800AA000(0.0f, (u8)0xAAU, (u8)0xAU, (u8)0xAU);
}

void func_80A5EB4C(EnHorse *this) {
}

void func_80A5EB54(EnHorse *this, GlobalContext *globalCtx) {
    Vec3f pad;
    Vec3s *jointTable;
    f32 curFrame;
    f32 y;

    curFrame = this->unk_160.skelAnime.curFrame;
    this->unk_1F0 |= 4;
    this->actor.speedXZ = 12.0f;
    if (curFrame > 17.0f) {
        this->actor.gravity = -3.5f;
        if (this->actor.velocity.y == 0) {
            this->actor.velocity.y = -6.0f;
        }
        if (this->actor.posRot.pos.y < (this->actor.groundY + 90.0f)) {
            this->unk_160.skelAnime.playSpeed = 1.5f;
        } else {
            this->unk_160.skelAnime.playSpeed = 0;
        }
    } else {
        jointTable = this->unk_160.skelAnime.jointTable;
        y = jointTable->y;
        this->actor.posRot.pos.y = this->unk_274 + y * 0.01f;
    }

    if (SkelAnime_Update(&this->unk_160.skelAnime) || (curFrame > 17.0f && this->actor.posRot.pos.y < this->actor.groundY - this->actor.velocity.y + 80.0f)) {
        Audio_PlaySoundGeneral((u16)0x2819U, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
        func_800AA000(0.0f, (u8)0xFFU, (u8)0xAU, (u8)0x50U);
        this->unk_1F0 = this->unk_1F0 & ~4;
        this->actor.gravity = -3.5f;
        this->actor.posRot.pos.y = this->actor.groundY;
        func_80028A54(globalCtx, 25.0f, (Vec3f *) &this->actor.posRot);
        func_80A5DDB0(this, globalCtx);
    }

}

void func_80A5ED3C(EnHorse *this, GlobalContext *globalCtx);
void func_80A5ED18(EnHorse *this, GlobalContext *globalCtx) {
    this->unk_160.skelAnime.curFrame = 0.0f;
    func_80A5ED3C(this, globalCtx);
}

void func_80A5ED3C(EnHorse *this, GlobalContext *globalCtx) {
    f32 sp34;
    Vec3s *jointTable;
    f32 y;

    this->unk_14C = 0xF;
    this->unk_210 = 8;
    sp34 = this->unk_160.skelAnime.curFrame;
    Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.5f, sp34, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 2, -3.0f);

    this->unk_274 = this->actor.posRot.pos.y;
    this->unk_244 = NULL;

    this->actor.gravity = 0;
    this->actor.velocity.y = 0.0f;

    jointTable = this->unk_160.skelAnime.jointTable;
    y = jointTable->y;
    this->unk_258.y -= y * 0.01f;

    this->unk_1F0 |= 8;
    Audio_PlaySoundGeneral((u16)0x2818U, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
    func_800AA000(0.0f, (u8)0xAAU, (u8)0xAU, (u8)0xAU);
}

void func_80A5EE78(EnHorse *this) {

}

void func_80A5EE80(EnHorse *this, GlobalContext *globalCtx) {
    Vec3f pad;
    Vec3s *jointTable;
    f32 curFrame;
    f32 y;

    curFrame = this->unk_160.skelAnime.curFrame;
    this->unk_1F0 |= 4;
    this->actor.speedXZ = 13.0f;
    if (curFrame > 23.0f) {
        this->actor.gravity = -3.5f;
        if (this->actor.velocity.y == 0) {
            this->actor.velocity.y = -10.5f;
        }

        if (this->actor.posRot.pos.y < this->actor.groundY + 90.0f) {
            this->unk_160.skelAnime.playSpeed = 1.5f;
        } else {
            this->unk_160.skelAnime.playSpeed = 0;
        }
    } else {
        jointTable = this->unk_160.skelAnime.jointTable;
        y = jointTable->y;
        this->actor.posRot.pos.y = this->unk_274 + y * 0.01f;
    }

    if (SkelAnime_Update(&this->unk_160.skelAnime) || (curFrame > 23.0f && this->actor.posRot.pos.y < this->actor.groundY - this->actor.velocity.y + 80.0f)) {
        Audio_PlaySoundGeneral((u16)0x2819U, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
        func_800AA000(0.0f, (u8)0xFFU, (u8)0xAU, (u8)0x50U);
        this->unk_1F0 &= ~4;
        this->actor.gravity = -3.5f;
        this->actor.posRot.pos.y = this->actor.groundY;
        func_80028A54(globalCtx, 25.0f, &this->actor.posRot.pos);
        func_80A5DDB0(this, globalCtx);
    }
}

void func_80A5F044(EnHorse *this) {
    this->cyl1.base.maskA &= ~1;
    this->cyl2.base.maskA &= ~1;
    this->jntSph.base.maskA &= ~1;
    this->unk_14C = 1;
    this->unk_210 = 4;
    this->unk_1F0 |= 0x2000;
    this->unk_250 = 0;
}

s32 func_80A5BD94(EnHorse *this, GlobalContext* globalCtx);
void func_80A5F760(EnHorse *this, GlobalContext* globalCtx);
void func_80A5F08C(EnHorse *this, GlobalContext *globalCtx) {
    GlobalContext *gc = globalCtx;
    if ((DREG(53) != 0) && (this->unk_158 == 0)) {
        DREG(53) = (u16)0;
        if (func_80A5BD94(this, gc) != 0) {
            Audio_PlaySoundGeneral((u16)0x2805U, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
            this->unk_1F0 &= ~0x2000;
            gSaveContext.horseData.scene = gc->sceneNum;
            Camera_SetParam(gc->cameraPtrs[0], 8, (void *) this);
            Camera_ChangeSetting(gc->cameraPtrs[0], (u16)0x38);
            Camera_SetCameraData(gc->cameraPtrs[0], (u16)4, NULL, NULL, 0x51, 0, 0);
        }
    }
    if ((this->unk_1F0 & 0x2000) == 0) {
        this->unk_250 = 0;
        func_80A5F760(this, gc);
        this->actor.params = 0;
        this->cyl1.base.maskA |= 1;
        this->cyl2.base.maskA |= 1;
        this->jntSph.base.maskA |= 1;
    }
}

void func_80A5F1B0(EnHorse *this, s32 arg1, f32 arg2, f32 arg3) {
    this->unk_14C = 2;
    this->actor.speedXZ = 0.0f;
    if (arg1 != 0 && arg1 != 1 && arg1 != 3) {
        arg1 = 0;
    }
    if (arg1 != this->unk_210) {
        this->unk_210 = arg1;
        if (arg1 == 0) {
            this->unk_1F0 &= ~0x1000;
        } else if (this->unk_210 == 1) {
            this->unk_21C = this->unk_228;
            if (this->unk_1F0 & 0x08000000) {
                Audio_PlaySoundGeneral((u16)0x2816U, &this->unk_21C, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
            }
        } else if (this->unk_210 == 3) {
            this->unk_21C = this->unk_228;
            if (this->unk_1F0 & 0x08000000) {
                Audio_PlaySoundGeneral((u16)0x2805U, &this->unk_21C, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
            }
            this->unk_1F0 &= ~0x800;
        }

        Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, arg3, Animation_GetLastFrame((void *) sAnimationHeaders[this->unk_158][this->unk_210]), 2, arg2);
    }
}

void func_80A5F380(EnHorse *this, s32 arg1, f32 arg2) {
    func_80A5F1B0(this, arg1, arg2,  this->unk_214);
}

void func_80A5F3A8(EnHorse *this) {
    this->unk_210 = 4;
    func_80A5F1B0(this, 4, 0, 0);
}

void func_80A5F3DC(EnHorse *this) {
    func_80A5F3A8(this);
    this->unk_1F0 &= 0xFFFEFFFF;
}

void func_80A5BC68(EnHorse* this, GlobalContext *globalCtx);
void func_80A5F5F8(EnHorse* this, s32 arg1, f32 arg2, f32 arg3);
void func_80A5F414(EnHorse *this, GlobalContext *globalCtx) {

    this->actor.speedXZ = 0.0f;
    func_80A5BC68(this, globalCtx);
    if ((DREG(53) != 0) && (this->unk_158 == 0)) {
        DREG(53) = (u16)0;
        if (func_80A5BBBC(globalCtx, this, &this->actor.posRot.pos) == 0) {
            if (func_80A5BD94(this, globalCtx) != 0) {
                Audio_PlaySoundGeneral((u16)0x2805U, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
                this->unk_250 = 0;
                func_80A5F760(this, globalCtx);
                Camera_SetParam(globalCtx->cameraPtrs[0], 8, (void *) this);
                Camera_ChangeSetting(globalCtx->cameraPtrs[0], (u16)0x38);
                Camera_SetCameraData(globalCtx->cameraPtrs[0], (u16)4, NULL, NULL, 0x51, 0, 0);
            }
        } else {
            Audio_PlaySoundGeneral((u16)0x2805U, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
            this->unk_250 = 0;
            func_80A5F5F8(this, 6, -3.0f, 0.0f);
        }
    }
    if (SkelAnime_Update(&this->unk_160.skelAnime) != 0) {
        s32 phi_v1 = 0;
        if (this->unk_210 != 0) {
            if (this->unk_210 == 1) {
                phi_v1 = 1;
            } else if (this->unk_210 == 3) {
                phi_v1 = 2;
            }
        }
        func_80A5F1B0(this, D_80A66678[(Rand_ZeroOne() > 0.5f ? 0 : 1) + phi_v1 * 2], 0.0f, 0.0f);
    }
}

void func_80A5F5F8(EnHorse *this, s32 arg1, f32 arg2, f32 arg3) {

    this->unk_14C = 3;
    this->unk_1F0 &= 0xFFFF7FFF;
    if (arg1 != 5 && arg1 != 6 && arg1 != 4) {
        arg1 = 4;
    }
    if (this->unk_210 != arg1) {
        this->unk_210 = arg1;
        Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, arg3, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 2, arg2);
    } else {
        Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, arg3, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 2, 0.0f);
    }
}
void func_80A5F760(EnHorse *this, GlobalContext *globalCtx) {
    s32 phi_s0 = 4;
    f32 ret;

    ret = func_8002DB8C((Actor *) this, PLAYER);
    if (ret > 400.0f) {
        phi_s0 = 6;
    } else if (!(ret <= 300.0f)) {
        if (ret <= 400.0f) {
            phi_s0 = 5;
        }
    }


    if (this->unk_210 == 6) {
        if (ret > 400.0f) {
            phi_s0 = 6;
        } else {
            phi_s0 = 5;
        }
    } else if (this->unk_210 == 5) {
        if (ret > 400.0f) {
            phi_s0 = 6;
        } else if (ret < 300.0f) {
            phi_s0 = 4;
        } else {
            phi_s0 = 5;
        }
    } else if (this->unk_210 == 4) {
        if (300.0f < ret) {
            phi_s0 = 5;
        }
        else
        {
            phi_s0 = 4;
        }
    }
    func_80A5F5F8(this, phi_s0, -3.0f, 0.0f);
}

void func_80A5F890(EnHorse *this, GlobalContext *globalCtx) {
    f32 sp3C;
    f32 sp38;

    DREG(53) = 0;
    sp3C = func_8002DB8C(this, PLAYER);
    if ((this->unk_370 == 2 || this->unk_370 == 3) && (sp3C > 300.0f && (this->unk_1F0 & 0x8000) == 0)) {
        this->unk_210 = 3;
        this->unk_1F0 |= 0x8000;
        this->unk_376 = func_8002DA78((Actor *) this, PLAYER);
        sp38 = (f32) this->unk_376 - (f32) this->actor.posRot.rot.y;
        if (sp38 > 32767.f) {
            sp38 -= 32767.0f;
        } else if (sp38 < -32767) {
            sp38 += 32767;
        }

        this->unk_378 = sp38 / Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]);
        Animation_PlayOnce(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210]);
        this->unk_160.skelAnime.playSpeed = 1.0f;
        this->unk_1F0 &= ~0x800;
        this->unk_21C = this->unk_228;
    } else if ((this->unk_1F0 & 0x8000) != 0) {
        this->actor.posRot.rot.y = this->actor.posRot.rot.y + this->unk_378;
        this->actor.shape.rot.y = this->actor.posRot.rot.y;
        if (this->unk_214 > 25.0f) {
            if ((this->unk_1F0 & 0x800) == 0) {
                this->unk_1F0 |= 0x800;
                Audio_PlaySoundGeneral((u16)0x282BU, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
            }
        }
    } else {
        func_80A5C888(this, globalCtx);
    }


    if (this->unk_210 == 6) {
        this->actor.speedXZ = 8;
        this->unk_160.skelAnime.playSpeed = this->actor.speedXZ * 0.3f;
    } else if (this->unk_210 == 5) {
        this->actor.speedXZ = 6;
        this->unk_160.skelAnime.playSpeed = this->actor.speedXZ * 0.375f;
    } else if (this->unk_210 == 4) {
        this->actor.speedXZ = 3;
        func_80A5B9C8(this);
        this->unk_160.skelAnime.playSpeed = this->actor.speedXZ * 0.75f;
    } else {
        this->actor.speedXZ = 0;
        this->unk_160.skelAnime.playSpeed = 1.0f;
    }
    if ((this->unk_1F0 & 0x8000) == 0 && ++this->unk_250 >= 0x12D) {
        func_80A5F3DC(this);
        this->unk_21C = this->unk_228;

        if (this->unk_1F0 & 0x08000000) {
            Audio_PlaySoundGeneral((u16)0x2805U, &this->unk_21C, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
        }

    }

    if (SkelAnime_Update(&this->unk_160.skelAnime)) {
        if (this->unk_210 == 6) {
            func_80A5BACC(this);
        } else if (this->unk_210 == 5) {
            func_80A5BA84(this);
        }
        this->unk_1F0 &= 0xFFFF7FFF;
        if (sp3C < 100.0f) {
            func_80A5F3DC(this);
        } else {
            func_80A5F760(this, globalCtx);
        }
    }
}

void func_80A5FDD4(EnHorse* this);
void func_80A5FCAC(EnHorse *this) {
    this->unk_204 = 0;
    this->unk_218 = 0;
    this->actor.speedXZ = 0.0f;
    func_80A5FDD4(this);
    this->unk_21C = this->unk_228;
    if (this->unk_1F0 & 0x08000000) {
        Audio_PlaySoundGeneral(NA_SE_IT_INGO_HORSE_NEIGH, &this->unk_21C, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

void func_80A5FD30(s32 idx, f32 arg1, s32 arg2, s16 *arg3, f32 *arg4) {

    *arg3 = D_80A66690[idx];
    *arg4 = arg1;
    if (idx == 3 || idx == 7 || idx == 8 || idx == 4) {
        *arg4 = 0.0f;
    }
    if (arg2 == 1) {
        if (idx == 5) {
            *arg3 = 4;
            *arg4 = arg1;
        } else if (idx == 6) {
            *arg3 = 3;
            *arg4 = arg1;
        }
    }
}

void func_80A5FDD4(EnHorse *this) {
    s32 phi_v1 = 0;
    f32 sp30;

    this->unk_14C = 4;
    this->unk_1F0 &= ~0x1000;
    if (this->actor.speedXZ == 0.0f) {
        if (this->unk_210 != 0) {
            phi_v1 = 1;
        }
        this->unk_210 = 0;
    } else if (this->actor.speedXZ <= 3.0f) {
        if (this->unk_210 != 4) {
            phi_v1 = 1;
        }
        this->unk_210 = 4;
    } else if (this->actor.speedXZ <= 6.0f) {
        if (this->unk_210 != 5) {
            phi_v1 = 1;
        }
        this->unk_210 = 5;
    } else {
        if (this->unk_210 != 6) {
            phi_v1 = 1;
        }
        this->unk_210 = 6;
    }

    if (this->unk_210 == 4) {
        sp30 = this->actor.speedXZ * 0.5f;
    } else if (5 == this->unk_210) {
        sp30 = this->actor.speedXZ * 0.25f;
        Audio_PlaySoundGeneral((u16)0x2804U, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
    } else if (6 == this->unk_210) {
        sp30 = this->actor.speedXZ * 0.2f;
        Audio_PlaySoundGeneral((u16)0x2804U, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
    } else {
        sp30 = 1.0f;
    }

    if (phi_v1 == 1) {
        Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], sPlaybackSpeeds[this->unk_210] * sp30 * 1.5f, 0, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 2, -3);
    } else {
        Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], sPlaybackSpeeds[this->unk_210] * sp30 * 1.5f, 0, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 2, 0);
    }
}

void func_80A600E8(EnHorse *this, GlobalContext *globalCtx) {
    f32 newSpeed;

    if ((this->unk_210 == 0) || (this->unk_210 == 1)) {
        func_80A5BC68(this, globalCtx);
    } else if (this->unk_210 == 4) {
        func_80A5B9C8(this);
    }
    func_80A5B61C(this, globalCtx, &D_80A66654);
    if (this->unk_388 == 0) {
        this->actor.speedXZ = 0.0f;
        this->rider->speedXZ = 0.0f;
        if (this->unk_210 != 0) {
            func_80A5FDD4(this);
        }
    }

    if (this->unk_210 == 4) {
        newSpeed = this->actor.speedXZ * 0.5f;
    } else if (this->unk_210 == 5) {
        newSpeed = this->actor.speedXZ * 0.25f;
    } else if (this->unk_210 == 6) {
        newSpeed = this->actor.speedXZ * 0.2f;
    } else {
        newSpeed = 1.0f;
    }
    this->unk_160.skelAnime.playSpeed = newSpeed;
    if (SkelAnime_Update(&this->unk_160.skelAnime) || (this->unk_210 == 0 && this->actor.speedXZ != 0.0f)) {
        func_80A5FDD4(this);
    }

    if (this->unk_1F0 & 0x00800000) {
        ((EnIn*)this->rider)->unk_1E6 = 7;
        ((EnIn*)this->rider)->unk_1E0 = 0;
        return;
    }

    func_80A5FD30(this->unk_210, this->unk_160.skelAnime.curFrame, this->unk_394 & 1, (s16*)((u8*)this->rider + 0x1e6), (f32*)((u8*)this->rider + 0x1e0));
}

void func_80A60294(EnHorse *this, GlobalContext *globalCtx, CsCmdActorAction *action) {
    this->unk_210 = 6;
    this->unk_380 = 1;
    Animation_PlayOnceSetSpeed(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][6], this->actor.speedXZ * 0.3f);
}

void func_80A6044C(EnHorse* this, GlobalContext *globalCtx);
void func_80A60470(EnHorse* this, GlobalContext *globalCtx);
void func_80A5BACC(EnHorse* this);

void func_80A60300(EnHorse *this, GlobalContext *globalCtx, CsCmdActorAction *action) {
    Vec3f endPos;
    f32 speed = 8.0f;

    endPos.x = action->endPos.x;
    endPos.y = action->endPos.y;
    endPos.z = action->endPos.z;
    if (Math3D_Vec3f_DistXYZ(&endPos, &this->actor.posRot.pos) > speed) {
        func_80A5B5E0(this, globalCtx, &endPos, 0x190);
        this->actor.speedXZ = speed;
        this->unk_160.skelAnime.playSpeed = speed * 0.3f;
    } else {
        this->actor.posRot.pos = endPos;
        this->actor.speedXZ = 0.0f;
    }
    if (SkelAnime_Update(&this->unk_160.skelAnime) != 0) {
        func_80A5BACC(this);
        func_800AA000(0.0f, (u8)0x78U, (u8)8U, (u8)0xFFU);
        Animation_PlayOnceSetSpeed(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], this->actor.speedXZ * 0.3f);
    }
}

void func_80A6044C(EnHorse *this, GlobalContext *globalCtx) {
    this->unk_160.skelAnime.curFrame = 0.0f;
    func_80A60470(this, globalCtx);
}

void func_80A60470(EnHorse *this, GlobalContext *globalCtx) {
    f32 curFrame;
    f32 y;
    Vec3s *jointTable;

    this->unk_210 = 8;
    curFrame = this->unk_160.skelAnime.curFrame;
    Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.5f, curFrame, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 2, -3.0f);
    this->unk_244 = NULL;
    this->unk_274 = this->actor.posRot.pos.y;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0;

    jointTable = this->unk_160.skelAnime.jointTable;
    y = jointTable->y;
    this->unk_258.y -= (y * 0.01f);

    this->unk_1F0 |= 8;
    Audio_PlaySoundGeneral((u16)0x2818U, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
    func_800AA000(0.0f, (u8)0xAAU, (u8)0xAU, (u8)0xAU);
}

void func_80A605A4(EnHorse *this, GlobalContext *globalCtx, CsCmdActorAction *action) {
    func_80A6044C(this, globalCtx);
    this->unk_380 = 2;
    this->unk_384 &= 0xFFFE;
}

void func_80A605E0(EnHorse *this, GlobalContext *globalCtx, CsCmdActorAction *action) {
    f32 temp_f2;

    if (this->unk_384 & 1) {
        func_80A60300(this, globalCtx, action);
        return;
    }
    temp_f2 = this->unk_160.skelAnime.curFrame;
    this->unk_1F0 |= 4;
    this->actor.speedXZ = 13.0f;
    if (temp_f2 > 19.0f) {
        this->actor.gravity = -3.5f;
        if (this->actor.velocity.y == 0.0f) {
            this->actor.velocity.y = -10.5f;
        }
        if (this->actor.posRot.pos.y < (this->actor.groundY + 90.0f)) {
            this->unk_160.skelAnime.playSpeed = 1.5f;
        } else {
            this->unk_160.skelAnime.playSpeed = 0.0f;
        }
    } else {
        Vec3s *jointTable;
        float y;

        jointTable = this->unk_160.skelAnime.jointTable;
        y = jointTable->y;
        this->actor.posRot.pos.y = this->unk_274 + y * 0.01f;
    }
    if (SkelAnime_Update(&this->unk_160.skelAnime) || (temp_f2 > 19.0f && this->actor.posRot.pos.y < (this->actor.groundY - this->actor.velocity.y) + 80.0f)) {
        Vec3s *jointTable;
        float y;

        this->unk_384 |= 1;
        Audio_PlaySoundGeneral((u16)0x2819U, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
        func_800AA000(0.0f, (u8)0xFFU, (u8)0xAU, (u8)0x50U);
        this->unk_1F0 &= ~4;
        this->actor.gravity = -3.5f;
        this->actor.velocity.y = 0;
        this->actor.posRot.pos.y = this->actor.groundY;
        func_80028A54(globalCtx, 25.0f, &this->actor.posRot.pos);
        this->unk_210 = 6;
        Animation_PlayOnceSetSpeed(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], sPlaybackSpeeds[6]);
        jointTable = this->unk_160.skelAnime.jointTable;
        y = jointTable->y;
        this->unk_258.y += y * 0.01f;
        this->unk_244 = NULL;
    }
}

void func_80A60838(EnHorse *this, GlobalContext *globalCtx, CsCmdActorAction *action) {
    this->unk_210 = 3;
    this->unk_380 = 3;
    this->unk_384 &= 0xFFFB;
    this->unk_1F0 &= ~0x800;
    this->unk_21C = this->unk_228;
    if (this->unk_1F0 & 0x08000000) {
        Audio_PlaySoundGeneral((u16)0x2805U, &this->unk_21C, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
    }
    Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, 0.0f, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 2, -3.0f);
}

void func_80A60954(EnHorse *this, GlobalContext *globalCtx, CsCmdActorAction *action) {

    this->actor.speedXZ = 0.0f;
    if (this->unk_214 > 25.0f) {
        if (!(this->unk_1F0 & 0x800)) {
            this->unk_1F0 |= 0x800;
            Audio_PlaySoundGeneral((u16)0x282BU, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }
    if (SkelAnime_Update(&this->unk_160.skelAnime) != 0) {
        this->unk_210 = 0;
        if ((this->unk_384 & 4) == 0) {
            this->unk_384 |= 4;
            Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, 0.0f, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 2, -3.0f);
            return;
        }
        Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, 0.0f, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 0, 0.0f);
    }
}

void func_80A60AFC(EnHorse *this, GlobalContext *globalCtx, CsCmdActorAction *action) {
    this->actor.posRot.pos.x = action->startPos.x;
    this->actor.posRot.pos.y = action->startPos.y;
    this->actor.posRot.pos.z = action->startPos.z;
    this->actor.pos4 = this->actor.posRot.pos;
    this->actor.posRot.rot.y = action->urot.y;
    this->actor.shape.rot = this->actor.posRot.rot;
    this->unk_210 = 6;
    this->unk_380 = 4;
    Animation_PlayOnceSetSpeed(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][6], this->actor.speedXZ * 0.3f);
}

void func_80A60BDC(EnHorse *this, GlobalContext *globalCtx, CsCmdActorAction *action) {
    Vec3f vec;
    f32 speed = 8.0f;

    vec.x = action->endPos.x;
    vec.y = action->endPos.y;
    vec.z = action->endPos.z;
    if (Math3D_Vec3f_DistXYZ(&vec, &this->actor.posRot.pos) > speed) {
        func_80A5B5E0(this, globalCtx, &vec, 0x190);
        this->actor.speedXZ = speed;
        this->unk_160.skelAnime.playSpeed = speed * 0.3f;
    } else {
        this->actor.posRot.pos = vec;
        this->actor.speedXZ = 0.0f;
    }

    if (SkelAnime_Update(&this->unk_160.skelAnime) != 0) {
        func_80A5BACC(this);
        func_800AA000(0.0f, (u8)0x78U, (u8)8U, (u8)0xFFU);
        Animation_PlayOnceSetSpeed( &this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], this->actor.speedXZ * 0.3f);
    }
}

void func_80A60D28(EnHorse *this, GlobalContext *globalCtx, CsCmdActorAction *action) {
    this->actor.posRot.pos.x = (f32) action->startPos.x;
    this->actor.posRot.pos.y = (f32) action->startPos.y;
    this->actor.posRot.pos.z = (f32) action->startPos.z;
    this->actor.pos4 = this->actor.posRot.pos;
    this->actor.posRot.rot.y = action->urot.y;
    this->actor.shape.rot =  this->actor.posRot.rot;
    this->unk_210 = 3;
    this->unk_380 = 5;
    this->unk_384 &= 0xFFFB;
    this->unk_1F0 &= ~0x800;
    this->unk_21C = this->unk_228;
    if (this->unk_1F0 & 0x08000000) {
        Audio_PlaySoundGeneral((u16)0x2805U, &this->unk_21C, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
    }
    Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, 0.0f, Animation_GetLastFrame((void *) sAnimationHeaders[this->unk_158][this->unk_210]), 2, -3.0f);
}

void func_80A60EB0(EnHorse *this, GlobalContext *globalCtx, CsCmdActorAction *action) {
    this->actor.speedXZ = 0.0f;
    if (this->unk_214 > 25.0f) {
        if ((this->unk_1F0 & 0x800) == 0) {
            this->unk_1F0 |= 0x800;
            Audio_PlaySoundGeneral((u16)0x282BU, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }
    if (SkelAnime_Update(&this->unk_160.skelAnime) != 0) {
        this->unk_210 = 0;
        if ((this->unk_384 & 4) == 0) {
            this->unk_384 |= 4;
            Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, 0.0f, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 2, -3.0f);
        } else {
            Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, 0.0f, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 0, 0.0f);
        }
    }
}

void func_80A61058(EnHorse *this, GlobalContext *globalCtx) {
    this->unk_20C = 0;
    this->unk_14C = 0x11;
    this->unk_380 = 0;
    this->actor.speedXZ = 0.0f;
}

s32 func_80A61078(s32 arg0) {
    s32 v0 = 5;
    s32 i;
    Vec2i *v;

    for (i = 0, v = D_80A666D4; i < v0; i++, v++) {
        if (arg0 == v->x) {
            return v->y;
        }
        if (arg0 < v->x) {
            return 0;
        }
    }
    return 0;
}

void func_80A610C8(EnHorse *this, GlobalContext *globalCtx) {
    s32 index;
    CsCmdActorAction* linkAction = globalCtx->csCtx.linkAction;

    if (globalCtx->csCtx.state == 3) {
        this->unk_20C = 1;
        this->actor.params = 0xA;
        this->unk_14C = 2;
        func_80A5C8FC(this);
        return;
    }
    if (linkAction != 0) {
        index = func_80A61078(linkAction->action);
        if (index != 0) {
            if (index != this->unk_380) {
                if (this->unk_380 == 0) {
                    this->actor.posRot.pos.x = linkAction->startPos.x;
                    this->actor.posRot.pos.y = linkAction->startPos.y;
                    this->actor.posRot.pos.z = linkAction->startPos.z;
                    this->actor.posRot.rot.y = linkAction->urot.y;
                    this->actor.shape.rot = this->actor.posRot.rot;
                    this->actor.pos4 = this->actor.posRot.pos;
                }
                this->unk_380 = index;
                D_80A666A4[index](this, globalCtx, linkAction);
            }
           D_80A666BC[this->unk_380](this, globalCtx, linkAction);
        }
    }
}

s32 func_80A6121C(EnHorse *this, GlobalContext *globalCtx, struct unk_80A66654 *D_80A66730) {
    Vec3f sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;

    func_80A5B590(D_80A66730->unkstruct_04, this->unk_204, &sp3C);
    Math3D_RotateXZPlane(&sp3C, D_80A66730->unkstruct_04[this->unk_204].unk_08, &sp38, &sp34, &sp30);
    if ((this->unk_204 >= (D_80A66730->unk_00 - 1)) && Math3D_Vec3f_DistXYZ(&sp3C, &this->actor.posRot.pos) < (f32) DREG(8)) {
        this->unk_3A4 = this->unk_3A4 | 2;
    }
    if (((this->actor.posRot.pos.x * sp38) + (sp34 * this->actor.posRot.pos.z) + sp30) > 0.0f) {
        this->unk_204++;
        if (this->unk_204 >= D_80A66730->unk_00) {
            this->unk_3A4 = this->unk_3A4 | 1;
            return 1;
        }
    }
    if ((this->unk_3A4 & 1) == 0) {
        func_80A5B5E0(this, globalCtx, &sp3C, (u16)0x320);
    }
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
    if (this->actor.speedXZ < D_80A66730->unkstruct_04[this->unk_204].unk_06 && (this->unk_3A4 & 1) == 0) {
        this->actor.speedXZ += 0.4f;
    } else {
        this->actor.speedXZ -= 0.4f;
        if (this->actor.speedXZ < 0.0f) {
            this->actor.speedXZ = 0.0f;
        }
    }
    return 0;
}

void func_80A61440(EnHorse* this);
void func_80A6140C(EnHorse* this) {
    this->unk_3A0 = 0;
    this->unk_218 = 0;
    this->unk_204 = 0;
    this->unk_3A8 = 0;
    this->actor.speedXZ = 0.0f;
    func_80A61440(this);
}

void func_80A61440(EnHorse *this) {
    s32 phi_v1 = 0;
    f32 sp30;

    this->unk_14C = 0x12;
    if (this->actor.speedXZ == 0.0f) {
        if (this->unk_210 != 0) {
            phi_v1 = 1;
        }
        this->unk_210 = 0;
    } else if (this->actor.speedXZ <= 3.0f) {
        if (this->unk_210 != 4) {
            phi_v1 = 1;
        }
        this->unk_210 = 4;
    } else if (this->actor.speedXZ <= 6.0f) {
        if (this->unk_210 != 5) {
            phi_v1 = 1;
        }
        this->unk_210 = 5;
    } else {
        if (this->unk_210 != 6) {
            phi_v1 = 1;
        }
        this->unk_210 = 6;
    }
    if (this->unk_210 == 4) {
        sp30 = this->actor.speedXZ * 0.5f;
    } else if (this->unk_210 == 5) {
        sp30 = this->actor.speedXZ * 0.25f;
        Audio_PlaySoundGeneral((u16)0x2804U, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
        func_800AA000(0.0f, (u8)0x3CU, (u8)8U, (u8)0xFFU);
    } else if (this->unk_210 == 6) {
        sp30 = this->actor.speedXZ * 0.2f;
        Audio_PlaySoundGeneral((u16)0x2804U, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
        func_800AA000(0.0f, (u8)0x78U, (u8)8U, (u8)0xFFU);
    } else {
        sp30 = 1.0f;
    }
    if (phi_v1 == 1) {
        Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], sPlaybackSpeeds[this->unk_210] * sp30 * 1.5f, 0, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 2, -3.0f);
    } else {
    Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], sPlaybackSpeeds[this->unk_210] * sp30 * 1.5f, 0, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 2, 0);
    }
}

void func_80A61778(EnHorse *this, GlobalContext *globalCtx) {
    f32 phi_f0;
    s32 sp20;

    if (this->unk_210 == 4) {
        func_80A5B9C8(this);
    }
    if (globalCtx->interfaceCtx.hbaAmmo == 0) {
        this->unk_3A8 = this->unk_3A8 + 1;
    }

    sp20 = func_800F5A58(0x41, globalCtx);
    func_80A6121C(this, globalCtx, &D_80A66730);
    if (((this->unk_3A4 & 1) != 0) || (this->unk_3A8 >= 0x2E)) {
        if ((sp20 != 1) && (gSaveContext.minigameState != 3)) {
            gSaveContext.cutsceneIndex = 0;
            globalCtx->nextEntranceIndex = 0x3B0;
            globalCtx->sceneLoadFlag = 0x14;
            globalCtx->fadeTransition = 0x20;
        }
    }

    if (globalCtx->interfaceCtx.hbaAmmo != 0) {
        if ((this->unk_3A4 & 2) == 0) {
            if ((gSaveContext.infTable[25] & 1) != 0) {
                if ((s32) gSaveContext.minigameScore >= 0x5DC) {
                    this->unk_3A4 |= 4;
                }
            } else {
                if ((s32) gSaveContext.minigameScore >= 0x3E8) {
                    this->unk_3A4 |= 4;
                }
            }
        }
    }

    if ((globalCtx->interfaceCtx.hbaAmmo == 0) || ((this->unk_3A4 & 2) != 0)) {
        if ((this->unk_3A4 & 4) != 0) {
            this->unk_3A4 = this->unk_3A4 & ~4;
            Audio_SetBGM(0x41U);
        }
    }

    if (this->unk_3A0 == 0) {
        this->actor.speedXZ = 0.0f;
        if (this->unk_210 != 0) {
            func_80A61440(this);
        }
    }

    if (this->unk_210 == 4) {
        phi_f0 = this->actor.speedXZ * 0.5f;
    } else if (this->unk_210 == 5) {
        phi_f0 = this->actor.speedXZ * 0.25f;
    } else if (this->unk_210 == 6) {
        phi_f0 = this->actor.speedXZ * 0.2f;
    } else {
        phi_f0 = 1.0f;
    }

    this->unk_160.skelAnime.playSpeed = phi_f0;
    if (SkelAnime_Update(&this->unk_160.skelAnime) || (this->unk_210 == 0 && this->actor.speedXZ != 0.0f)) {
        func_80A61440(this);
    }
}

void func_80A61A04(EnHorse *this) {
    this->unk_14C = 0x13;
    this->unk_1F0 |= 0x10000;
    this->actor.speedXZ = 0.0f;
}

void func_80A62278(EnHorse* this, GlobalContext* globalCtx);
void func_80A5B9C8(EnHorse* this);
void func_80A61A28(EnHorse *this, GlobalContext *globalCtx) {
    Player *player = PLAYER;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    s32 phi_a2 = this->unk_210; // sp4C
    s32 ret;    // sp48
    s16 phi_v1; // sp46

    if ((DREG(53) != 0) || (this->unk_158 == 1)) {
        func_80A5F3DC(this);
        Audio_PlaySoundGeneral((u16)0x2805U, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
    }

    sp58 = Math3D_Vec3f_DistXYZ(&this->actor.initPosRot.pos, &this->actor.posRot.pos);
    sp54 = Math3D_Vec3f_DistXYZ(&player->actor.posRot.pos, &this->actor.initPosRot.pos);
    sp50 = Math3D_Vec3f_DistXYZ(&player->actor.posRot.pos, &this->actor.posRot.pos);
    if (sp54 > 300.0f) {
        if (sp58 > 150.0f) {
            this->actor.speedXZ += 0.4f;
            if (this->actor.speedXZ > 8.0f) {
                this->actor.speedXZ = 8.0f;
            }
        } else {
            this->actor.speedXZ -= 0.47f;
            if (this->actor.speedXZ < 0.0f) {
                this->actor.speedXZ = 0.0f;
            }
        }
    } else {
        if (sp50 < 300.0f) {
            this->actor.speedXZ += 0.4f;
            if (this->actor.speedXZ > 8.0f) {
                this->actor.speedXZ = 8.0f;
            }
        } else {
            this->actor.speedXZ -= 0.47f;
            if (this->actor.speedXZ < 0.0f) {
                this->actor.speedXZ = 0.0f;
            }
        }
    }

    if (this->actor.speedXZ >= 6.0f) {
        this->unk_160.skelAnime.playSpeed = this->actor.speedXZ * 0.3f;
        phi_a2 = 6;
    } else if (this->actor.speedXZ >= 3.0f) {
        this->unk_160.skelAnime.playSpeed = this->actor.speedXZ * 0.375f;
        phi_a2 = 5;
    } else if (this->actor.speedXZ > 0.1f) {
        this->unk_160.skelAnime.playSpeed = this->actor.speedXZ * 0.75f;
        phi_a2 = 4;
        func_80A5B9C8(this);
    } else {
        phi_a2 = Rand_ZeroOne() > 0.5f ? 1 : 0;
        func_80A5BC68(this, globalCtx);
        this->unk_160.skelAnime.playSpeed = 1.0f;
    }

    if (phi_a2 == 6 || phi_a2 == 5 || phi_a2 == 4) {
        if (sp54 < 300.0f) {
            phi_v1 = player->actor.shape.rot.y;
            phi_v1 += (func_8002DA78(this, player) > 0 ? 1 : -1) * 0x3FFF;
        } else {
            phi_v1 = Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->actor.initPosRot.pos) - this->actor.posRot.rot.y;
        }
        if (phi_v1 >= 0x191) {
            this->actor.posRot.rot.y += 0x190;
        } else if (phi_v1 < -0x190) {
            this->actor.posRot.rot.y -= 0x190;
        } else {
            this->actor.posRot.rot.y += phi_v1;
        }
        this->actor.shape.rot.y = this->actor.posRot.rot.y;
    }

    ret = SkelAnime_Update(&this->unk_160.skelAnime);
    if ((this->unk_210 == 0) || (this->unk_210 == 1)) {
        if (phi_a2 == 6 || phi_a2 == 5 || phi_a2 == 4) {
            this->unk_210 = phi_a2;
            Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, 0.0f, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 2, -3.0f);
            if (this->unk_210 == 6) {
                func_80A5BACC(this);
            }
            else if (this->unk_210 == 5) {
                func_80A5BA84(this);
            }
            return;
        }
    }

    if (ret != 0) {
        if (phi_a2 == 6) {
            func_80A5BACC(this);
        } else if (phi_a2 == 5) {
            func_80A5BA84(this);
        }

        if ((this->unk_210 == 0) || (this->unk_210 == 1)) {
            if (phi_a2 != this->unk_210) {
                this->unk_210 = phi_a2;
                Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, 0.0f, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 2, -3.0f);
                return;
            } else {
                if (Rand_ZeroOne() > 0.5f) {
                    this->unk_210 = 0;
                    this->unk_1F0 &= ~0x1000;
                } else {
                    this->unk_210 = 1;
                    this->unk_21C = this->unk_228;
                    if (this->unk_1F0 & 0x08000000) {
                        Audio_PlaySoundGeneral((u16)0x2816U, &this->unk_21C, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
                    }
                }
                Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, 0.0f, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 2, -3.0f);
                return;
            }
        }
        if (phi_a2 != this->unk_210) {
            this->unk_210 = phi_a2;
            Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, 0.0f, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 2, -3.0f);
        } else {
            Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, 0.0f, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 2, 0.0f);
        }
        return;
    }

    if (this->unk_210 == 4) {
        if ((phi_a2 == 0) || (phi_a2 == 1)) {
            this->unk_210 = phi_a2;
            Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.0f, 0.0f, Animation_GetLastFrame(sAnimationHeaders[this->unk_158][this->unk_210]), 2, -3.0f);
        }
    }
}

void func_80A62278(EnHorse *this, GlobalContext *globalCtx) {
    f32 y;

    func_80028A54(globalCtx, 25.0f, &this->actor.posRot.pos);
    this->unk_14C = 0x10;
    this->unk_1F0 |= 4;
    this->unk_210 = 8;
    y = this->unk_160.skelAnime.jointTable->y;
    y = y * 0.01f;
    this->unk_3B0 = this->actor.posRot.pos;
    this->unk_3B0.y += y;
    this->unk_3C0 = (((D_80A665DC[this->unk_3AC].unk10 + 48.7f) - this->unk_3B0.y) - -360.0f) / 30.0f;
    this->unk_258.y -= y;
    this->unk_1F0 |= 8;
    this->unk_3C4 = this->actor.posRot.rot.y - D_80A665DC[this->unk_3AC].unkA;
    this->unk_3BC = 0;
    this->actor.gravity = 0.0f;
    this->actor.speedXZ = 0;
    Animation_Change(&this->unk_160.skelAnime, sAnimationHeaders[this->unk_158][this->unk_210], 1.5f, 0.0f, (f32) Animation_GetLastFrame((void *) sAnimationHeaders[this->unk_158][this->unk_210]), 2, -3.0f);
    this->unk_21C = this->unk_228;
    if (this->unk_1F0 & 0x08000000) {
        Audio_PlaySoundGeneral((u16)0x2805U, &this->unk_21C, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
    }
    Audio_PlaySoundGeneral((u16)0x2818U, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
    func_800AA000(0.0f, (u8)0xAAU, (u8)0xAU, (u8)0xAU);
    this->unk_244 = NULL;
}

void func_80A624AC(EnHorse *this, GlobalContext *globalCtx) {
    this->unk_244 = func_80A62278;
    if (this->unk_3AC == 0) {
        globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(D_02002AC0);
        gSaveContext.cutsceneTrigger = (u8)1U;
    }
    else
    {
        globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(D_02000230);
        gSaveContext.cutsceneTrigger = (u8)1U;
    }
}

void func_80A6255C(EnHorse *this, GlobalContext *globalCtx) {
    f32 temp_f14;
    f32 temp_f2;
    s16 temp_a2;

    temp_f14 = this->unk_3BC / 30.0f;
    temp_f2 = (this->unk_3BC * this->unk_3BC);

    this->actor.posRot.pos.x = ((D_80A665DC[this->unk_3AC].unkE - this->unk_3B0.x) * temp_f14) + this->unk_3B0.x;
    this->actor.posRot.pos.z = ((D_80A665DC[this->unk_3AC].unk12 - this->unk_3B0.z) * temp_f14) + this->unk_3B0.z;

    this->actor.posRot.pos.y = (this->unk_3B0.y + (this->unk_3C0 * this->unk_3BC) + (-0.4f * temp_f2));

    this->actor.posRot.rot.y = this->actor.shape.rot.y = (D_80A665DC[this->unk_3AC].unkA + ((1.0f - temp_f14) * this->unk_3C4));
    this->unk_160.skelAnime.curFrame = 23.0f * temp_f14;
    SkelAnime_Update(&this->unk_160.skelAnime);
    if (this->unk_3BC < 0x1E) {
        this->unk_1F0 |= 0x1000000;
    }
}

void func_80028A54(GlobalContext* globalCtx, f32 arg1, Vec3f* vec);
void func_80A5DDB0(EnHorse* this, GlobalContext* globalCtx);
void func_80A626B8(EnHorse *this, GlobalContext *globalCtx) {
    SkelAnime *temp_a0;

    temp_a0 = &this->unk_160.skelAnime;
    this->actor.speedXZ = 8.0f;
    this->unk_160.skelAnime.playSpeed = 1.5f;
    if (SkelAnime_Update(&this->unk_160.skelAnime) != 0) {
        this->unk_1F0 &= ~4;
        this->actor.gravity = -3.5f;
        this->actor.posRot.pos.y = D_80A665DC[this->unk_3AC].unk10;
        func_80028A54(globalCtx, 25.0f, &this->actor.posRot.pos);
        func_80A5DDB0(this, globalCtx);
        Audio_PlaySoundGeneral((u16)0x2819U, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
        func_800AA000(0.0f, (u8)0xFFU, (u8)0xAU, (u8)0x50U);
    }
}

void func_80A6255C(EnHorse* this, GlobalContext* globalCtx);
void func_80A626B8(EnHorse* this, GlobalContext* globalCtx);
void func_80A627A4(EnHorse *this, GlobalContext *globalCtx) {
    this->unk_3BC++;
    if (this->unk_3BC < 0x1E) {
        func_80A6255C(this, globalCtx);
        return;
    }
    func_80A626B8(this, globalCtx);
}

void func_80A627E8(Vec3f *src, s16 yaw, f32 dist, f32 height, Vec3f *dst) {
    dst->x = src->x + Math_SinS(yaw) * dist;
    dst->y = src->y + height;
    dst->z = src->z + Math_CosS(yaw) * dist;
}

s32 func_80A62868(EnHorse *this, GlobalContext *globalCtx, Vec3f *vec, CollisionPoly **floorPoly, f32 *arg4) {
    u32 sp3C;
    f32 sp38;
    WaterBox* sp34;

    *floorPoly = NULL;
    *arg4 = BgCheck_EntityRaycastFloor3(&globalCtx->colCtx, floorPoly,  &sp3C, vec);

    if (*arg4 == -32000.0f) {
        return 1;
    }

    if ((WaterBox_GetSurfaceImpl(globalCtx, &globalCtx->colCtx, vec->x, vec->z, &sp38, &sp34) == 1) && (*arg4 < sp38)) {
        return 2;
    }

    if ((*floorPoly)->normal.y * 0.00003051851f < 0.81915206f || SurfaceType_IsHorseBlocked(&globalCtx->colCtx, *floorPoly, sp3C) || func_80041D4C(&globalCtx->colCtx, *floorPoly, sp3C) == 7) {
        return 3;
    }
    return 0;
}

void func_80A629A4(EnHorse *this, GlobalContext *globalCtx, s32 arg3, s32 arg4) {
    if (this->unk_14C == 0x11 || func_80A5B2F0(this, globalCtx)) {
        return;
    }

    this->actor.posRot.pos = this->unk_1F4;
    this->actor.shape.rot.y = this->unk_200;
    this->actor.posRot.rot.y = this->unk_200;
    this->unk_1F0 |= 0x4000;

    if (this->unk_20C == 0) {
        if (this->unk_210 != 3) {
            return;
        }
    } else if (this->unk_14C != 0xB) {
        if (this->unk_1F0 & 4) {
            this->unk_1F0 &= ~4;
            this->actor.gravity = -3.5f;
            this->actor.posRot.pos.y = this->actor.groundY;
        }
        if (arg3 == 1 || arg3 == 4) {
            this->unk_1F0 |= 0x10;
        } else if (arg3 == 2 || arg3 == 5) {
            this->unk_1F0 |= 0x20;
        }
        if (arg4 == 1) {
            func_80A5E00C(this);
        }
    }
}

s32 func_80A62868(EnHorse* this, GlobalContext *globalCtx, Vec3f* sp6C, CollisionPoly** floorPoly, f32 *arg4);

void func_80A629A4(EnHorse *this, GlobalContext *globalCtx, s32 arg3, s32 arg4);
void func_80A62ACC(EnHorse *this, GlobalContext *globalCtx) {
    s32 status;
    CollisionPoly *sp80;
    CollisionPoly *sp7C;
    s16 sp7A;
    Vec3f sp6C;
    Vec3f sp60;
    Vec3f sp54;
    f32 nx;
    f32 ny;
    f32 nz;
    s32 sp44 = this->actor.speedXZ > 8;
    f32 dist;
    f32 ySurface;
    WaterBox* waterBox;
    u32 pad;

    if (WaterBox_GetSurfaceImpl(globalCtx, &globalCtx->colCtx, this->actor.posRot.pos.x, this->actor.posRot.pos.z, &ySurface, &waterBox) == 1 && this->actor.groundY < ySurface) {
        func_80A629A4(this, globalCtx, 1, sp44);
        return;
    }
    func_80A627E8(&this->actor.posRot.pos, this->actor.shape.rot.y, 30.0f, 60.0f, &sp6C);
    status = func_80A62868(this, globalCtx, &sp6C, &sp80, &this->unk_248);
    if (status == 1) {
        this->actor.shape.rot.x = 0;
        func_80A629A4(this, globalCtx, 4, sp44);
        return;
    }
    if (status == 2) {
        func_80A629A4(this, globalCtx, 4, sp44);
        return;
    }
    if (status == 3) {
        func_80A629A4(this, globalCtx, 4, sp44);
        return;
    }
    func_80A627E8(&this->actor.posRot.pos, this->actor.shape.rot.y, -30.0f, 60.0f, &sp60);
    status = func_80A62868(this, globalCtx, &sp60, &sp7C, &this->unk_24C);
    if (status == 1) {
        this->actor.shape.rot.x = 0;
        func_80A629A4(this, globalCtx, 5, sp44);
        return;
    }
    if (status == 2) {
        func_80A629A4(this, globalCtx, 5, sp44);
        return;
    }
    if (status == 3) {
        func_80A629A4(this, globalCtx, 5, sp44);
        return;
    }
    sp7A = Math_FAtan2F(this->unk_24C - this->unk_248, 60.0f) * 10430.378f;
    if (this->actor.floorPoly != 0) {
        nx = this->actor.floorPoly->normal.x * COLPOLY_NORMAL_FRAC;
        ny = this->actor.floorPoly->normal.y * COLPOLY_NORMAL_FRAC;
        nz = this->actor.floorPoly->normal.z * COLPOLY_NORMAL_FRAC;
        sp54 =  sp6C;
        sp54.y = this->unk_248;
        dist = Math3D_DistPlaneToPos(nx, ny, nz, this->actor.floorPoly->dist, &sp54);
        if ((sp80 != this->actor.floorPoly) && (this->actor.speedXZ >= 0.0f)) {
            if (((this->unk_1F0 & 4) == 0 && dist < -40.0f) || (this->unk_1F0 & 4 && dist < -200.0f)) {
                func_80A629A4(this, globalCtx, 4, sp44);
                return;
            }
        }
        sp54 = sp60;
        sp54.y = this->unk_24C;
        dist = Math3D_DistPlaneToPos(nx, ny, nz, this->actor.floorPoly->dist, &sp54);
        if (((sp7C != this->actor.floorPoly) && (this->actor.speedXZ <= 0.0f) && ((this->unk_1F0 & 4) == 0) && (dist < -40.0f)) || (((this->unk_1F0 & 4) != 0) && (dist < -200.0f))) {
            func_80A629A4(this, globalCtx, 5, sp44);
            return;
        }
        if (ny < 0.81915206f || SurfaceType_IsHorseBlocked(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource) || func_80041D4C(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource) == 7) {
            if ((this->actor.speedXZ >= 0.0f)) {
                func_80A629A4(this, globalCtx, 4, sp44);
            } else {
                func_80A629A4(this, globalCtx, 5, sp44);
            }
            return;
        }
        if ((this->unk_1F0 & 4) != 0) {
            this->actor.shape.rot.x = 0;
            return;
        }
        if ((this->actor.groundY + 4.0f) < this->actor.posRot.pos.y) {
            this->actor.shape.rot.x = 0;
            return;
        }
        if ((fabsf(sp7A) > 8191.0f)) {
            return;
        }
        this->actor.shape.rot.x = sp7A;
        this->actor.shape.unk_08 = (this->unk_248 + (((this->unk_24C - this->unk_248) * 20.0f) / 45.0f)) - this->actor.groundY;

    }
}

s32 func_80A65014(EnHorse* this, GlobalContext* globalCtx);
void func_80A6304C(Actor *thisx, GlobalContext *globalCtx) {
    EnHorse* this = THIS;
    GlobalContext *gc = globalCtx;
    s32 temp_v0;
    Player* player = PLAYER;
    s32 v1 = 1;

    temp_v0 = func_80A65014(this, gc);
    if ((temp_v0 != 0) && !(this->unk_1F0 & 0x00010000) && (player->rideActor == 0)) {
        func_8002F63C(gc, (Actor *) this, temp_v0);
    }
    if ((this->unk_20C == 0) && (Actor_HasChild(gc, (Actor *) this) == 1)) {
        this->unk_150 = 0x37;
        this->unk_154 = 0x37;
        this->unk_20C = v1;
        func_80A5C8FC(this);
    }
    else if ((this->unk_20C == 1) && (Actor_HasNoChild(gc, (Actor *) this) == 1)) {
        this->unk_150 = 0x23;
        this->unk_154 = 0x23;
        this->unk_1F0 &= ~0x10000;
        this->unk_20C = 0;
        func_80A5C8FC(this);
    }
}

void func_80A63148(Vec2f *vec, f32 *arg1, s16 *arg2) {
    f32 dist;
    f32 y;
    f32 x;

    x = vec->x;
    y = vec->y;
    dist = sqrtf(SQ(x) + SQ(y));

    *arg1 = dist;
    if (dist > 60.0f) {
        *arg1 = 60.0f;
    } else {
        *arg1 = (f32) *arg1;
    }

    *arg2 = Math_FAtan2F(-vec->x, vec->y) * (32768.0f / M_PI);
}

void func_80A631D4(EnHorse *this, GlobalContext *globalCtx) {
    this->unk_26C = this->unk_264;
    this->unk_264.x = globalCtx->state.input[0].rel.stick_x;
    this->unk_264.y = globalCtx->state.input[0].rel.stick_y;
}

void func_80A63210(EnHorse *this, GlobalContext *globalCtx, CollisionPoly *arg2) {
    f32 dist;
    f32 nx;
    f32 ny;
    f32 nz;
    f32 temp_f2;

    nx = arg2->normal.x * 0.00003051851f;
    ny = arg2->normal.y * 0.00003051851f;
    nz = arg2->normal.z * 0.00003051851f;
    if (Math_CosS(this->actor.posRot.rot.y - (s16) (Math_FAtan2F(arg2->normal.x, arg2->normal.z) * 10430.378f) - 0x7FFF) < 0.7071f) {
        return;
    }

    dist = Math3D_DistPlaneToPos(nx, ny, nz, arg2->dist, &this->actor.posRot.pos);
    temp_f2 = (1.0f / sqrtf(SQ(nx) + SQ(nz)));
    temp_f2 = (30.0f - dist) * temp_f2;
    this->actor.posRot.pos.x += temp_f2 * nx;
    this->actor.posRot.pos.z += temp_f2 * nz;
}

void func_80A63364(EnHorse *this, GlobalContext *globalCtx) {
    f32 yOffset;
    Vec3f sp60;
    Vec3f sp54;
    Vec3f sp48;
    CollisionPoly *sp44;
    u32 sp40;

    if (globalCtx->sceneNum == 0x63) {
        yOffset = 19.0f;
    } else {
        yOffset = 40.0f;
    }
    Math_Vec3f_Copy(&sp60, &this->actor.posRot.pos);
    sp60.y = sp60.y + yOffset;

    Math_Vec3f_Copy(&sp54, (Vec3f *) &sp60);
    sp54.x += 30.0f * Math_SinS(this->actor.posRot.rot.y);
    sp54.y += 30.0f * Math_SinS(-this->actor.shape.rot.x);
    sp54.z += 30.0f * Math_CosS(this->actor.posRot.rot.y);
    if (BgCheck_EntityLineTest1(&globalCtx->colCtx, &sp60, &sp54, &sp48, &sp44, 1, 0, 0, 1, &sp40) != 0) {
        func_80A63210(this, globalCtx, sp44);
    }
}

void func_80A5ED18(EnHorse* this, GlobalContext* globalCtx);
void func_80A5EE78(EnHorse *this);
void func_80A5EB4C(EnHorse *this);

s32 func_80A5B2F0(EnHorse *this, GlobalContext *globalCtx);
void func_80A63210(EnHorse *this, GlobalContext *globalCtx, CollisionPoly *arg2);

void func_80A634A0(EnHorse *this, GlobalContext *globalCtx) {
    u32 pad;
    u32 pad2;
    Vec3f spAC;
    Vec3f spA0;
    Vec3f sp94;
    f32 pad3;
    f32 sp8C;
    CollisionPoly *sp88 = NULL;
    CollisionPoly *sp84 = NULL;
    u32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 ny;
    s32 sp70;
    u32 pad5;
    DynaPolyActor *dynaPoly;
    Vec3f sp5C;
    Vec3f sp50;

    func_8002E4B4(globalCtx, (Actor *) this, globalCtx->sceneNum == 99 ? 19.0f : 40.0f, 35.0f, 100.0f, 29);

    if (func_80A5B2F0(this, globalCtx))
        return;

    if (this->actor.bgCheckFlags & 8 && Math_CosS(this->actor.wallPolyRot - (0,this->actor.posRot).rot.y) < -0.3f) {
        if (this->actor.speedXZ > 4.0f) {
            this->actor.speedXZ -= 1.0f;
            Audio_PlaySoundGeneral((u16)0x282CU, &this->actor.projectedPos, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }

    if ((this->unk_1F0 & 4) != 0 || this->unk_20C == 0)
        return;
    if ((this->actor.speedXZ < 0.0f))
        return;
    if ((this->unk_14C == 0xC) || (this->unk_14C == 0xB))
        return;

    if ((this->actor.speedXZ > 8.0f)) {
        if (this->actor.speedXZ < 12.8f) {
            sp8C = 160.0f;
            sp70 = 0;
        } else {
            sp8C = 230.0f;
            sp70 = 1;
        }
    } else {
        func_80A63364(this, globalCtx);
        return;
    }

    spAC = this->actor.posRot.pos;
    spAC.y += 19.0f;
    spA0 = spAC;
    spA0.x += (sp8C * Math_SinS(this->actor.posRot.rot.y));
    spA0.y += (sp8C * Math_SinS(-this->actor.shape.rot.x));
    spA0.z += (sp8C * Math_CosS(this->actor.posRot.rot.y));
    sp5C = spA0;
    sp88 = NULL;
    if (BgCheck_EntityLineTest1(&globalCtx->colCtx, &spAC, &spA0, &sp5C, &sp88, 1, 0, 0, 1, &sp80) == 1) {
        sp8C = sqrt(Math3D_Vec3fDistSq( &spAC, &sp5C));
        this->unk_1F0 |= 0x4000;
    }
    if (sp88 != 0) {
        if (sp8C < 30.0f) {
            func_80A63210(this, globalCtx, sp88);
        }
        if ((Math_CosS(this->actor.posRot.rot.y - (s16)(Math_FAtan2F(sp88->normal.x, sp88->normal.z) * 10430.378f) - 0x7FFF) < 0.5f) || SurfaceType_IsHorseBlocked(&globalCtx->colCtx, sp88, sp80) != 0) {
            return;
        }
        if ((sp70 == 0 && sp8C < 80.0f) || (sp70 == 1 && sp8C < 150.0f)) {
            if (sp70 == 0) {
                this->unk_1F0 |= 0x10;
            }
            else if (sp70 == 1) {
                this->unk_1F0 |= 0x10;
                func_80A5E2A8(this, globalCtx);
            }
            return;
        }
        dynaPoly = DynaPoly_GetActor(&globalCtx->colCtx, sp80);
        if ((this->unk_1F0 & 0x4000000) && ((dynaPoly && dynaPoly->actor.id != 0x108) || dynaPoly == 0)) {
            if (sp70 == 0) {
                this->unk_1F0 |= 0x10;
            } else if (sp70 == 1) {
                this->unk_1F0 |= 0x10;
                func_80A5E2A8(this, globalCtx);
            }
            return;
        }
    }

    sp8C += 5.0f;
    sp94 = spAC;
    sp94.x += (sp8C * Math_SinS(this->actor.posRot.rot.y));
    sp94.y = this->actor.posRot.pos.y + 120.0f;
    sp94.z += (sp8C * Math_CosS(this->actor.posRot.rot.y));
    sp50 = sp94;
    sp50.y = BgCheck_EntityRaycastFloor3(&globalCtx->colCtx, &sp84, &sp80, &sp94);
    if (sp50.y == -32000.0f)
        return;
    sp7C = sp50.y - this->actor.posRot.pos.y;
    if ((this->actor.floorPoly == 0) || (sp84 == 0))
        return;

    if (Math3D_DistPlaneToPos(this->actor.floorPoly->normal.x * COLPOLY_NORMAL_FRAC,
                this->actor.floorPoly->normal.y * COLPOLY_NORMAL_FRAC,
                this->actor.floorPoly->normal.z * COLPOLY_NORMAL_FRAC,
                this->actor.floorPoly->dist, &sp50) < -40.0f
            && Math3D_DistPlaneToPos(sp84->normal.x * COLPOLY_NORMAL_FRAC,
                sp84->normal.y * COLPOLY_NORMAL_FRAC,
                sp84->normal.z * COLPOLY_NORMAL_FRAC,
                sp84->dist, &this->actor.posRot.pos) > 40.0f) {
        if ((sp70 == 1) && (this->unk_14C != 0xC)) {
            this->unk_1F0 |= 0x10;
            func_80A5E2A8(this, globalCtx);
        }
        this->unk_1F0 |= 0x4000;
        return;
    }

    ny = sp84->normal.y * COLPOLY_NORMAL_FRAC;
    if (ny < 0.81915206f || (SurfaceType_IsHorseBlocked(&globalCtx->colCtx, sp84, sp80) != 0) || (func_80041D4C(&globalCtx->colCtx, sp84, sp80) == 7)) {
        if ((sp70 == 1) && (this->unk_14C != 0xC)) {
            this->unk_1F0 |= 0x10;
            func_80A5E2A8(this, globalCtx);
        }
        return;
    }

    if ((sp88 == 0) || (sp50.y < sp5C.y) || (this->unk_1F0 & 0x00020000))
        return;

    sp94 = spAC;
    sp94.y = this->actor.posRot.pos.y + 120.0f;
    if (sp70 == 0) {
        sp94.x += (276.0f * Math_SinS(this->actor.posRot.rot.y));
        sp94.z += (276.0f * Math_CosS(this->actor.posRot.rot.y));
    } else {
        sp94.x += (390.0f * Math_SinS(this->actor.posRot.rot.y));
        sp94.z += (390.0f * Math_CosS(this->actor.posRot.rot.y));
    }

    sp50 = sp94;
    sp50.y = BgCheck_EntityRaycastFloor3(&globalCtx->colCtx, &sp84, &sp80, &sp94);
    if (sp50.y == -32000.0f)
        return;

    sp78 = sp50.y - this->actor.posRot.pos.y;

    if (sp84 == 0)
        return;

    ny = sp84->normal.y * COLPOLY_NORMAL_FRAC;
    if ((ny < 0.81915206f) || SurfaceType_IsHorseBlocked(&globalCtx->colCtx, sp84, sp80) || func_80041D4C(&globalCtx->colCtx, sp84, sp80) == 7) {
        if ((sp70 == 1) && (this->unk_14C != 0xC)) {
            this->unk_1F0 |= 0x10;
            func_80A5E2A8(this, globalCtx);
        }
    } else if (sp78 < -DREG(4)) {
        if ((sp70 == 1) && (this->unk_14C != 0xC)) {
            this->unk_1F0 |= 0x10;
            func_80A5E2A8(this, globalCtx);
        }
    } else if ((sp70 == 0) && (sp7C > 19.0f) && (sp7C <= 40.0f)) {
        func_80A5EB4C(this);
        this->unk_244 = &func_80A5E9F8;
    } else if ((sp70 == 1 && this->actor.speedXZ < 13.8f && sp7C > 19.0f && sp7C <= 72.0f) ||
            (this->actor.speedXZ > 13.8f && sp7C <= 112.0f)) {

        func_80A5EE78(this);
        this->unk_244 = &func_80A5ED18;
    }
}

void func_80A63FA8(Actor* thisx, GlobalContext *globalCtx) {
    EnHorse* this = THIS;
    GlobalContext *gc = globalCtx;
    u32 pad;

    if ((this->unk_14C == 8) || (this->unk_14C == 9) || (this->unk_14C == 0xA)) {
        if ((~(gc->state.input[0].press.button | 0xFFFF7FFF) == 0) && (gc->interfaceCtx.unk_1EE == 8)) {
            if (((this->unk_1F0 & 1) == 0) && ((this->unk_1F0 & 0x100) == 0) && ((this->unk_1F0 & 0x200) == 0)) {
                if (this->unk_238 > 0) {
                    func_800AA000(0.0f, (u8)0xB4U, (u8)0x14U, (u8)0x64U);
                    this->unk_1F0 |= 1;
                    this->unk_1F0 |= 0x400000;
                    this->unk_1F0 |= 0x100;
                    this->unk_238--;
                    this->unk_240 = 0;
                    if (this->unk_238 == 0) {
                        this->unk_23C = 0x8C;
                        return;
                    }
                    if (this->unk_158 == 0) {
                        if ((this->unk_1F0 & 0x400000)) {
                            this->unk_23C = 0x3C;
                            this->unk_1F0 &= ~0x400000;
                        } else {
                            this->unk_23C = 8;
                        }
                    } else {
                        this->unk_23C = 0x46;
                    }
                    return;
                }
                this->unk_21C = this->unk_228;
                if (this->unk_1F0 & 0x08000000) {
                    if (Rand_ZeroOne() < 0.1f) {
                        Audio_PlaySoundGeneral((u16)0x2805U, &this->unk_21C, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
                    }
                }
            }
        }
    }
}

void func_80A64150(EnHorse *this, GlobalContext *globalCtx) {
    s32 phi_v0;

    if (((s32) this->unk_238 < 6) && ((s32) this->unk_238 > 0)) {
        this->unk_23C--;
        this->unk_240 = this->unk_240 + 1;
        if ((s32) this->unk_23C <= 0) {
            this->unk_238 = this->unk_238 + 1;
            if ((this->unk_14C == 5 || this->unk_14C == 0 || this->unk_14C == 6)
                    && !(this->unk_1F0 & 0x00080000) && !(this->unk_1F0 & 0x02000000)) {
                phi_v0 = 1;
            } else {
                phi_v0 = 0;
            }
            if (phi_v0 == 0) {
                Audio_PlaySoundGeneral((u16)0x4845U, &D_801333D4, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
            }
            if ((s32) this->unk_238 < 6) {
                this->unk_23C = 0xB;
            }
        }
    } else if (this->unk_238 == 0) {
        this->unk_23C--;
        this->unk_240++;
        if ((s32) this->unk_23C <= 0) {
            this->unk_23C = 0;
            this->unk_238 = 6;
            if ((this->unk_14C == 5 || this->unk_14C == 0 || this->unk_14C == 6)
                    && !(this->unk_1F0 & 0x00080000) && !(this->unk_1F0 & 0x02000000)) {
                    phi_v0 = 1;
            } else {
                    phi_v0 = 0;
            }
            if (phi_v0 == 0) {
                Audio_PlaySoundGeneral((u16)0x4845U, &D_801333D4, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
            }
        }
    }
    if ((this->unk_240 == 8) && (Rand_ZeroOne() < 0.25f)) {
        this->unk_21C = this->unk_228;
        if ((this->unk_1F0 & 0x08000000)) {
            Audio_PlaySoundGeneral((u16)0x2805U, &this->unk_21C, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }
    globalCtx->interfaceCtx.unk_23A = this->unk_238;
}

void func_80A62ACC(EnHorse* this, GlobalContext* globalCtx);

void func_80A6437C(EnHorse *this, GlobalContext *globalCtx) {
    EnHorse* pad;
    s16 angle;
    f32 s;
    f32 c;

    angle = func_8002DA78(this, PLAYER) - this->actor.posRot.rot.y;
    s = Math_SinS(angle);
    c = Math_CosS(angle);
    if (s > 0.8660254f) {
        this->unk_370 = 5;
        return;
    }
    if (s < -0.8660254f) {
        this->unk_370 = 4;
        return;
    }
    if (c > 0.0f) {
        if (s > 0)
            this->unk_370 = 1;
        else
            this->unk_370 = 0;
    } else {
        if (s > 0)
            this->unk_370 = 3;
        else
            this->unk_370 = 2;
    }
}

void func_80A64480(EnHorse *this, GlobalContext *globalCtx) {
    f32 spd;
    f32 unk_roll;
    s32 temp;
    s16 v0;

    spd = this->actor.speedXZ / this->unk_208;
    v0 = (this->actor.shape.rot.y - this->unk_200);
    temp = -((s16)((1820.0f * spd) * (v0 / 480.00003f)));
    unk_roll = temp - this->actor.posRot.rot.z;
    if (fabsf(temp) < 100.0f) {
        this->actor.posRot.rot.z = 0;
    } else if (fabsf(unk_roll) < 100.0f) {
        this->actor.posRot.rot.z = temp;
    } else if (unk_roll > 0.0f) {
        this->actor.posRot.rot.z = this->actor.posRot.rot.z + 0x64;
    } else {
        this->actor.posRot.rot.z = this->actor.posRot.rot.z - 0x64;
    }

    this->actor.shape.rot.z = this->actor.posRot.rot.z;
}


s32 func_80A64578(EnHorse *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    s16 ret;

    if ((this->actor.floorPoly == NULL) && (this != (EnHorse*)player->rideActor)) {
        return 0;
    }
    ret = SurfaceType_GetConveyorDirection(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource);
    ret = (ret << 0xA) - this->actor.posRot.rot.y;
    if (ret > 800.0f) {
        this->actor.posRot.rot.y += 800.0f;
    } else if (ret < -800.0f) {
        this->actor.posRot.rot.y -= 800.0f;
    } else {
        this->actor.posRot.rot.y += ret;
    }
    this->actor.shape.rot.y = this->actor.posRot.rot.y;

    return 1;
}

s32 func_80A6467C(f32 arg0) {
    return Rand_ZeroOne() * arg0;
}

void EnHorse_Update(Actor *thisx, GlobalContext *globalCtx) {
    EnHorse *this = THIS;
    GlobalContext *gc = globalCtx;
    Vec3f sp5C = {0.0f, 0.0f, 0.0f};
    Vec3f sp50 = {0.0f, 1.0f, 0.0f};
    Player *player = PLAYER;

    this->unk_200 = thisx->shape.rot.y;
    func_80A631D4(this, gc);
    func_80A6437C(this, gc);
    if ((this->unk_1F0 & 0x2000) == 0) {
        func_80A6304C(thisx, gc);
    }
    if (this->unk_1F0 & 0x80000) {
        if ((this->unk_1F0 & 0x100000) && (this->unk_388 == 1)) {
            this->unk_1F0 &= 0xFFEFFFFF;
            func_80A5E00C(this);
        } else if (((this->unk_1F0 & 0x100000) == 0) && (this->unk_1F0 & 0x200000) && (this->unk_14C != 0xB) && (this->unk_388 == 1)) {
            this->unk_1F0 &= 0xFFDFFFFF;
            func_80A5E00C(this);
        }
    }
    D_80A66738[this->unk_14C](this, gc);
    this->unk_1F0 &= ~0x4000;
    this->unk_214 = this->unk_160.skelAnime.curFrame;
    this->unk_1F4 = thisx->posRot.pos;
    if ((this->unk_1F0 & 0x2000) == 0) {
        if ((this->unk_14C == 0xA) || (this->unk_14C == 9) || (this->unk_14C == 8)) {
            func_80A63FA8(this, gc);
        }
        if (this->unk_20C == 1) {
            func_80A64150(this, gc);
        }
        Actor_MoveForward((Actor *) this);
        if (this->unk_14C == 4) {
            if (this->rider != 0) {
                this->rider->posRot.pos.x = thisx->posRot.pos.x;
                this->rider->posRot.pos.y = thisx->posRot.pos.y + 10.0f;
                this->rider->posRot.pos.z = thisx->posRot.pos.z;
                this->rider->shape.rot.x = thisx->shape.rot.x;
                this->rider->shape.rot.y = thisx->shape.rot.y;
            }
        }
        if (this->jntSph.list->body.ocFlags & 2) {
            if (thisx->speedXZ > 6.0f) {
                thisx->speedXZ -= 1.0f;
            }
        }
        if (this->jntSph.base.acFlags & 2) {
            this->unk_21C = this->unk_228;
            if (this->unk_1F0 & 0x08000000) {
                Audio_PlaySoundGeneral((u16)0x2805U, &this->unk_21C, (u8)4U, &D_801333E0, &D_801333E0, &D_801333E8);
            }
        }
        if (this->unk_14C != 4) {
            func_80A64480(this, gc);
        }
        Collider_CylinderUpdate((Actor *) this, &this->cyl1);
        Collider_CylinderUpdate((Actor *) this, &this->cyl2);
        this->cyl1.dim.pos.x = this->cyl1.dim.pos.x + (s16)(Math_SinS(thisx->shape.rot.y) * 11.0f);
        this->cyl1.dim.pos.z = this->cyl1.dim.pos.z + (s16)(Math_CosS(thisx->shape.rot.y) * 11.0f);
        this->cyl2.dim.pos.x = this->cyl2.dim.pos.x + (s16)(Math_SinS(thisx->shape.rot.y) * -18.0f);
        this->cyl2.dim.pos.z = this->cyl2.dim.pos.z + (s16)(Math_CosS(thisx->shape.rot.y) * -18.0f);
        CollisionCheck_SetAT(gc, &gc->colChkCtx, &this->cyl1.base);
        CollisionCheck_SetOC(gc, &gc->colChkCtx, &this->cyl1.base);
        CollisionCheck_SetOC(gc, &gc->colChkCtx, &this->cyl2.base);
        if (((player->stateFlags1 & 1) != 0) && (player->rideActor != 0)) {
            if (gc->sceneNum != 0x63 || (gc->sceneNum == 0x63 && (thisx->posRot.pos.z < -2400.0f))) {
                    func_80A64578(this, gc);
            }
        }
        if (!(this->unk_1F0 & 0x01000000)) {
            func_80A634A0(this, gc);
            func_80A62ACC(this, gc);
            if (thisx->posRot.pos.y < this->unk_248) {
                if (thisx->posRot.pos.y < this->unk_24C) {
                    if (this->unk_24C < this->unk_248) {
                        thisx->posRot.pos.y = this->unk_24C;
                    } else {
                        thisx->posRot.pos.y = this->unk_248;
                    }
                }
            }
        } else {
            this->unk_1F0 &= 0xFEFFFFFF;
        }
        if ((gc->sceneNum == 0x5A) && (((gSaveContext.eventChkInf[9]) & 0xF) != 0xF)) {
            func_80A5B450(this, gc);
        }
        thisx->posRot2.pos = thisx->posRot.pos;
        thisx->posRot2.pos.y += 70.0f;
        if ((Rand_ZeroOne() < 0.025f) && this->unk_37A == 0) {
            this->unk_37A++;
        } else {
            if (this->unk_37A > 0) {
                this->unk_37A++;
                if ((this->unk_37A) >= 4) {
                    this->unk_37A = 0;
                }
            }
        }
        if ((thisx->speedXZ == 0.0f) && !(this->unk_1F0 & 0x00080000)) {
            thisx->colChkInfo.mass = 0xFF;
        } else {
            thisx->colChkInfo.mass = 0xFE;
        }
        if (thisx->speedXZ >= 5.0f) {
            this->cyl1.base.atFlags |= 1;
        } else {
            this->cyl1.base.atFlags &= 0xFFFE;
        }
        if ((gSaveContext.entranceIndex != 0x157) || (gSaveContext.sceneSetupIndex != 9)) {
            if ((this->unk_3C8 & 1) != 0) {
                this->unk_3C8 &= 0xFFFE;
                func_800287AC(gc, &this->unk_3CC, &sp50, &sp5C, func_80A6467C(100) + 0xC8, func_80A6467C(10) + 0x1E, func_80A6467C(20) + 0x1E);
            } else if ((this->unk_3C8 & 2) != 0) {
                this->unk_3C8 &= 0xFFFD;
                func_800287AC(gc, &this->unk_3D8, &sp50, &sp5C, func_80A6467C(100) + 0xC8, func_80A6467C(10) + 0x1E, func_80A6467C(20) + 0x1E);
            } else if ((this->unk_3C8 & 4) != 0) {
                this->unk_3C8 &= 0xFFFB;
                func_800287AC(gc, &this->unk_3E4, &sp50, &sp5C, func_80A6467C(100) + 0xC8, func_80A6467C(10) + 0x1E, func_80A6467C(20) + 0x1E);
            } else if ((this->unk_3C8 & 8) != 0) {
                this->unk_3C8 &= 0xFFF7;
                func_800287AC(gc, &this->unk_3F0, &sp50, &sp5C, func_80A6467C(100) + 0xC8, func_80A6467C(10) + 0x1E, func_80A6467C(20) + 0x1E);
            }
        }
        this->unk_1F0 &= 0xF7FFFFFF;
    }
}

s32 func_80A64ED4(EnHorse *this, GlobalContext *globalCtx, Player *player) {
    if (this->unk_370 == 5) {
        return -1;
    }
    if (this->unk_370 == 4) {
        return 1;
    }
    return 0;
}

s32 func_80A64F14(EnHorse *this, GlobalContext *globalCtx, Player *player) {
    s32 ret;

    if (func_8002DB8C((Actor *) this, (Actor *) player) > 75.0f) {
        return 0;
    } else if (fabsf(this->actor.posRot.pos.y - player->actor.posRot.pos.y) > 30.0f) {
        return 0;
    } else if (Math_CosS((s16) (func_8002DA78((Actor *) player, (Actor *) this) - player->actor.posRot.rot.y)) < 0.17364818f) {
        return 0;
    } else {
        ret = func_80A64ED4(this, globalCtx, player);
        if (ret == -1) {
            return -1;
        }
        if (ret == 1) {
            return 1;
        }
    }
    return 0;
}

s32 func_80A65014(EnHorse *this, GlobalContext *globalCtx) {
    if (this->unk_14C != 2) {
        return 0;
    }
    if ((this->unk_210 != 0) && (this->unk_210 != 1)) {
        return 0;
    }
    return func_80A64F14(this, globalCtx, PLAYER);
}

void func_80A6506C(Vec3f *vec1, f32 arg2, Vec3f *vec2) {
    vec2->x = ((Rand_ZeroOne() * (arg2 + arg2)) + vec1->x) - arg2;
    vec2->y = ((Rand_ZeroOne() * (arg2 + arg2)) + vec1->y) - arg2;
    vec2->z = ((Rand_ZeroOne() * (arg2 + arg2)) + vec1->z) - arg2;
}

void func_80A65108(Actor *thisx, GlobalContext *globalCtx, PSkinAwb *skin) {
    EnHorse* this = THIS;
    u32 pad;
    Vec3f sp94 = {0.0f, 0.0f, 0.0f};
    Vec3f sp88 = {5.0f, -4.0f, 5.0f};
    Vec3f sp7C = {600.0f, -1670.0f, 0.0f};
    Vec3f sp70;
    Vec3f sp64 = {0.0f, 0.0f, 0.0f};
    Vec3f sp58 = {0.0f, -1.0f, 0.0f};

    f32 frame = this->unk_160.skelAnime.curFrame;
    Vec3f center;
    Vec3f newCenter;
    s32 i;
    Vec3f sp2C;
    f32 sp28;


    if ((this->unk_1F0 & 8) == 0) {
        func_800A6408(skin, (u8)0x1EU, &sp7C, &this->unk_258);
        this->unk_258.x = this->unk_258.x - this->actor.posRot.pos.x;
        this->unk_258.y = this->unk_258.y - this->actor.posRot.pos.y;
        this->unk_258.z = this->unk_258.z - this->actor.posRot.pos.z;
    } else {
        this->unk_1F0 &= ~8;
    }
    func_800A6408(skin, (u8)0xDU, &sp94, &sp2C);
    SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &sp2C, &this->unk_228, &sp28);
    if ((this->unk_210 == 0 && this->unk_14C != 0)
            && ((frame > 40.0f && frame < 45.0f && this->unk_158 == 0) || (frame > 28.0f && frame < 33.0f && this->unk_158 == 1))) {
        if (Rand_ZeroOne() < 0.6f) {
            this->unk_3C8 |= 1;
            func_800A6408(skin, (u8)0x1CU, &sp88, &this->unk_3CC);
            this->unk_3CC.y = this->unk_3CC.y - 5.0f;
        }
    } else {
        if (this->unk_14C == 12) {
            if ((frame > 10.0f && frame < 13.0f) || (frame > 25.0f && frame < 33.0f)) {
                if (Rand_ZeroOne() < 0.7f) {
                    this->unk_3C8 |= 2;
                    func_800A6408(skin, (u8)0x14U, &sp88, &sp70);
                    func_80A6506C(&sp70, 10.0f, &this->unk_3D8);
                }
                if (Rand_ZeroOne() < 0.7f) {
                    this->unk_3C8 |= 1;
                    func_800A6408(skin, (u8)0x1CU, &sp88, &sp70);
                    func_80A6506C(&sp70, 10.0f, &this->unk_3CC);
                }
            }

            if ((frame > 6.0f && frame < 10.0f) || (frame > 23.0f && frame < 29.0f)) {
                if (Rand_ZeroOne() < 0.7f) {
                    this->unk_3C8 |= 8;
                    func_800A6408(skin, (u8)0x25U, &sp88, &sp70);
                    func_80A6506C(&sp70, 10.0f, &this->unk_3F0);
                }
            }

            if ((frame > 7.0f && frame < 14.0f)  || (frame > 26.0f && frame < 30.0f)) {
                if (Rand_ZeroOne() < 0.7f) {
                    this->unk_3C8 |= 4;
                    func_800A6408(skin, (u8)0x2DU, &sp88, &sp70);
                    func_80A6506C(&sp70, 10.0f, &this->unk_3E4);
                }
            }
        } else if (this->unk_210 == 6) {
            if ((frame > 14.0f) && (frame < 16.0f)) {
                this->unk_3C8 |= 1;
                func_800A6408(skin, (u8)0x1CU, &sp88, &sp70);
                func_80A6506C(&sp70, 5.0f, &this->unk_3CC);
            } else if (frame > 8.0f && frame < 10.0f) {
                this->unk_3C8 |= 2;
                func_800A6408(skin, (u8)0x14U, &sp88, &sp70);
                func_80A6506C(&sp70, 10.0f, &this->unk_3D8);
            } else if (frame > 1.0f && frame < 3.0f) {
                this->unk_3C8 |= 4;
                func_800A6408(skin, (u8)0x2DU, &sp88, &sp70);
                func_80A6506C(&sp70, 10.0f, &this->unk_3E4);
            } else if ((frame > 26.0f) && (frame < 28.0f)) {
                this->unk_3C8 |= 8;
                func_800A6408(skin, (u8)0x25U, &sp88, &sp70);
                func_80A6506C(&sp70, 10.0f, &this->unk_3F0);
            }
        } else if (this->unk_14C == 0xE && frame > 6.0f && Rand_ZeroOne() < 1.0f - (frame - 6.0f) * 0.05882353f) {
            if (Rand_ZeroOne() < 0.5f) {
                this->unk_3C8 |= 8;
                func_800A6408(skin, (u8)0x25U, &sp88, &sp70);
                func_80A6506C(&sp70, 10.0f, &this->unk_3F0);
            }
            if (Rand_ZeroOne() < 0.5f) {
                this->unk_3C8 |= 4;
                func_800A6408(skin, (u8)0x2DU, &sp88, &sp70);
                func_80A6506C(&sp70, 10.0f, &this->unk_3E4);
            }
        } else if (this->unk_14C == 0xF && frame > 5.0f && Rand_ZeroOne() < 1.0f - (frame - 5.0f) * 0.04f) {
            if (Rand_ZeroOne() < 0.5f) {
                this->unk_3C8 |= 8;
                func_800A6408(skin, (u8)0x25U, &sp88, &sp70);
                func_80A6506C(&sp70, 10.0f, &this->unk_3F0);
            }
            if (Rand_ZeroOne() < 0.5f) {
                this->unk_3C8 |= 4;
                func_800A6408(skin, (u8)0x2DU, &sp88, &sp70);
                func_80A6506C(&sp70, 10.0f, &this->unk_3E4);
            }
        } else if (this->unk_14C == 0x10 && Rand_ZeroOne() < 0.5f) {
            if (Rand_ZeroOne() < 0.5f) {
                this->unk_3C8 |= 8;
                func_800A6408(skin, (u8)0x25U, &sp88, &sp70);
                func_80A6506C(&sp70, 10.0f, &this->unk_3F0);
            } else {
                this->unk_3C8 |= 4;
                func_800A6408(skin, (u8)0x2DU, &sp88, &sp70);
                func_80A6506C(&sp70, 10.0f, &this->unk_3E4);
            }
        }
    }

    for (i = 0; i < this->jntSph.count; i++) {
        center.x = this->jntSph.list[i].dim.modelSphere.center.x;
        center.y = this->jntSph.list[i].dim.modelSphere.center.y;
        center.z = this->jntSph.list[i].dim.modelSphere.center.z;

        func_800A6408(skin, this->jntSph.list[i].dim.joint, &center, &newCenter);
        this->jntSph.list[i].dim.worldSphere.center.x = newCenter.x;
        this->jntSph.list[i].dim.worldSphere.center.y = newCenter.y;
        this->jntSph.list[i].dim.worldSphere.center.z = newCenter.z;
        this->jntSph.list[i].dim.worldSphere.radius = this->jntSph.list[i].dim.modelSphere.radius * this->jntSph.list[i].dim.scale;
    }

    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->jntSph.base);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->jntSph.base);
}
static s32 unk_80A667DC[] = {0, 3, 7, 14};
static UNK_PTR D_80A667EC[] = { 0x06009F80, 0x0600A180, 0x0600A380 };
static u8 D_80A667F8[] = { 0, 1, 2, 1 };

s32 func_80A65C00(Actor* thisx, GlobalContext* globalCtx, s32 arg2, s32 arg3) {
    EnHorse* this = THIS;
    s32 sp48;

    sp48 = 1;
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_horse.c", 8582);
    if ((arg2 == 0xD) && (this->unk_158 == 0)) {
        u8 index = D_80A667F8[this->unk_37A];
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80A667EC[index]));
    } else if ((this->unk_158 == 1) && (this->unk_1F0 & 0x40000) && (arg2 == 0x1E)) {
        func_800A5F60(globalCtx->state.gfxCtx, &this->unk_160, arg2, D_06006530, 0);
        sp48 = 0;
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_horse.c", 8601);
    return sp48;
}

void EnHorse_Draw(Actor* thisx, GlobalContext *globalCtx) {
    EnHorse* this = THIS;

    if ((this->unk_1F0 & 0x2000) == 0) {
        func_80093D18(globalCtx->state.gfxCtx);
        this->unk_1F0 |= 0x8000000;
        if ((this->unk_1F0 & 4) != 0) {
            func_800A6360(this, globalCtx, &this->unk_160, &func_80A65108, &func_80A65C00, 0);
        } else {
            func_800A6360(this, globalCtx, &this->unk_160, &func_80A65108, &func_80A65C00, 1);
        }
        if (this->unk_244 != 0) {
            this->unk_244(this, globalCtx);
        }
    }
}
