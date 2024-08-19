#ifndef Z64MESSAGE_H
#define Z64MESSAGE_H

#include "z64view.h"

struct OcarinaStaff;
struct Actor;

typedef enum TextBoxIcon {
    /* 0 */ TEXTBOX_ICON_TRIANGLE,
    /* 1 */ TEXTBOX_ICON_SQUARE,
    /* 2 */ TEXTBOX_ICON_ARROW
} TextBoxIcon;

// TODO get these properties from the textures themselves
#define FONT_CHAR_TEX_WIDTH  16
#define FONT_CHAR_TEX_HEIGHT 16
#define FONT_CHAR_TEX_SIZE ((FONT_CHAR_TEX_WIDTH * FONT_CHAR_TEX_HEIGHT) / 2) // 16x16 I4 texture

// TODO get these properties from the textures themselves
#define MESSAGE_STATIC_TEX_SIZE 0x1000

// TODO get these properties from the textures themselves
#define MESSAGE_TEXTURE_STATIC_TEX_SIZE 0x900

// Macros for generating characters in the filename encoding (specified by message 0xFFFC
// and loaded by Font_LoadOrderedFont). For example, FILENAME_UPPERCASE('A') will encode
// the character 'A'.
#if OOT_NTSC
#define FILENAME_DIGIT(c)                   ((c) - '0')
// 0x0A - 0x59: hiragana
// 0x5A - 0xAA: katakana
#define FILENAME_UPPERCASE(c)               ((c) - 'A' + 0xAB)
#define FILENAME_LOWERCASE(c)               ((c) - 'a' + 0xC5)
#define FILENAME_SPACE                      0xDF
// 0xE0: unknown
#define FILENAME_QUESTION_MARK              0xE1
#define FILENAME_EXCLAMATION_MARK           0xE2
#define FILENAME_COLON                      0xE3
#define FILENAME_DASH                       0xE4
#define FILENAME_LEFT_PARENTHESES           0xE5
#define FILENAME_RIGHT_PARENTHESES          0xE6
#define FILENAME_DAKUTEN                    0xE7
#define FILENAME_HANDAKUTEN                 0xE8
#define FILENAME_COMMA                      0xE9
#define FILENAME_PERIOD                     0xEA
#define FILENAME_SLASH                      0xEB
#else
#define FILENAME_DIGIT(c)                   ((c) - '0')
#define FILENAME_UPPERCASE(c)               ((c) - 'A' + 0x0A)
#define FILENAME_LOWERCASE(c)               ((c) - 'a' + 0x24)
#define FILENAME_SPACE                      0x3E
#define FILENAME_DASH                       0x3F
#define FILENAME_PERIOD                     0x40
#endif

typedef enum MessageMode {
    /* 0x00 */ MSGMODE_NONE,
    /* 0x01 */ MSGMODE_TEXT_START,
    /* 0x02 */ MSGMODE_TEXT_BOX_GROWING,
    /* 0x03 */ MSGMODE_TEXT_STARTING,
    /* 0x04 */ MSGMODE_TEXT_NEXT_MSG,
    /* 0x05 */ MSGMODE_TEXT_CONTINUING,
    /* 0x06 */ MSGMODE_TEXT_DISPLAYING,
    /* 0x07 */ MSGMODE_TEXT_AWAIT_INPUT,
    /* 0x08 */ MSGMODE_TEXT_DELAYED_BREAK,
    /* 0x09 */ MSGMODE_OCARINA_STARTING,
    /* 0x0A */ MSGMODE_SONG_DEMONSTRATION_STARTING,
    /* 0x0B */ MSGMODE_SONG_PLAYBACK_STARTING,
    /* 0x0C */ MSGMODE_OCARINA_PLAYING,
    /* 0x0D */ MSGMODE_OCARINA_CORRECT_PLAYBACK,
    /* 0x0E */ MSGMODE_OCARINA_FAIL, // Failed to play a valid song after entering 8 notes
    /* 0x0F */ MSGMODE_OCARINA_FAIL_NO_TEXT, // Never set, only compared against
    /* 0x10 */ MSGMODE_OCARINA_NOTES_DROP,
    /* 0x11 */ MSGMODE_SONG_PLAYED, // Played a full named song correctly
    /* 0x12 */ MSGMODE_SETUP_DISPLAY_SONG_PLAYED,
    /* 0x13 */ MSGMODE_DISPLAY_SONG_PLAYED,
    /* 0x14 */ MSGMODE_DISPLAY_SONG_PLAYED_TEXT_BEGIN,
    /* 0x15 */ MSGMODE_DISPLAY_SONG_PLAYED_TEXT,
    /* 0x16 */ MSGMODE_SONG_PLAYED_ACT_BEGIN,
    /* 0x17 */ MSGMODE_SONG_PLAYED_ACT, // Act on a played song
    /* 0x18 */ MSGMODE_SONG_DEMONSTRATION_SELECT_INSTRUMENT,
    /* 0x19 */ MSGMODE_SONG_DEMONSTRATION,
    /* 0x1A */ MSGMODE_SONG_DEMONSTRATION_DONE,
    /* 0x1B */ MSGMODE_SONG_PLAYBACK,
    /* 0x1C */ MSGMODE_SONG_PLAYBACK_SUCCESS,
    /* 0x1D */ MSGMODE_SONG_PLAYBACK_FAIL,
    /* 0x1E */ MSGMODE_SONG_PLAYBACK_NOTES_DROP,
    /* 0x1F */ MSGMODE_OCARINA_AWAIT_INPUT,
    /* 0x20 */ MSGMODE_UNK_20, // Never set and does nothing
    /* 0x21 */ MSGMODE_SCARECROW_LONG_RECORDING_START,
    /* 0x22 */ MSGMODE_SCARECROW_LONG_RECORDING_ONGOING,
    /* 0x23 */ MSGMODE_SCARECROW_LONG_PLAYBACK,
    /* 0x24 */ MSGMODE_SCARECROW_SPAWN_RECORDING_START,
    /* 0x25 */ MSGMODE_SCARECROW_SPAWN_RECORDING_ONGOING,
    /* 0x26 */ MSGMODE_SCARECROW_SPAWN_RECORDING_FAILED,
    /* 0x27 */ MSGMODE_SCARECROW_SPAWN_RECORDING_DONE,
    /* 0x28 */ MSGMODE_SCARECROW_SPAWN_PLAYBACK,
    /* 0x29 */ MSGMODE_MEMORY_GAME_START,
    /* 0x2A */ MSGMODE_MEMORY_GAME_LEFT_SKULLKID_PLAYING,
    /* 0x2B */ MSGMODE_MEMORY_GAME_LEFT_SKULLKID_WAIT,
    /* 0x2C */ MSGMODE_MEMORY_GAME_RIGHT_SKULLKID_PLAYING,
    /* 0x2D */ MSGMODE_MEMORY_GAME_RIGHT_SKULLKID_WAIT,
    /* 0x2E */ MSGMODE_MEMORY_GAME_PLAYER_PLAYING,
    /* 0x2F */ MSGMODE_MEMORY_GAME_ROUND_SUCCESS,
    /* 0x30 */ MSGMODE_MEMORY_GAME_START_NEXT_ROUND,
    /* 0x31 */ MSGMODE_FROGS_START,
    /* 0x32 */ MSGMODE_FROGS_PLAYING,
    /* 0x33 */ MSGMODE_FROGS_WAITING,
    /* 0x34 */ MSGMODE_TEXT_AWAIT_NEXT,
    /* 0x35 */ MSGMODE_TEXT_DONE,
    /* 0x36 */ MSGMODE_TEXT_CLOSING,
    /* 0x37 */ MSGMODE_PAUSED // Causes the message system to do nothing until external code sets a new message mode or calls a public function
} MessageMode;

typedef enum MaskReactionSet {
    /* 0x00 */ MASK_REACTION_SET_CARPENTER_BOSS,
    /* 0x01 */ MASK_REACTION_SET_CARPENTER_1,
    /* 0x02 */ MASK_REACTION_SET_CARPENTER_2,
    /* 0x03 */ MASK_REACTION_SET_CARPENTER_3,
    /* 0x04 */ MASK_REACTION_SET_CARPENTER_4,
    /* 0x05 */ MASK_REACTION_SET_HYRULIAN_GUARD,
    /* 0x06 */ MASK_REACTION_SET_HEISHI4_1,
    /* 0x07 */ MASK_REACTION_SET_HEISHI4_2,
    /* 0x08 */ MASK_REACTION_SET_CUCCO_LADY,
    /* 0x09 */ MASK_REACTION_SET_CARPENTERS_SON,
    /* 0x0A */ MASK_REACTION_SET_KAKARIKO_ROOF_MAN,
    /* 0x0B */ MASK_REACTION_SET_WINDMILL_MAN,
    /* 0x0C */ MASK_REACTION_SET_12, // Unused
    /* 0x0D */ MASK_REACTION_SET_CURSED_SKULLTULA_MAN,
    /* 0x0E */ MASK_REACTION_SET_DAMPE,
    /* 0x0F */ MASK_REACTION_SET_GRAVEYARD_KID,
    /* 0x10 */ MASK_REACTION_SET_SARIA,
    /* 0x11 */ MASK_REACTION_SET_MIDO,
    /* 0x12 */ MASK_REACTION_SET_FADO,
    /* 0x13 */ MASK_REACTION_SET_KOKIRI_1,
    /* 0x14 */ MASK_REACTION_SET_KOKIRI_2,
    /* 0x15 */ MASK_REACTION_SET_SKULL_KID,
    /* 0x16 */ MASK_REACTION_SET_ZELDA,
    /* 0x17 */ MASK_REACTION_SET_MALON,
    /* 0x18 */ MASK_REACTION_SET_TALON,
    /* 0x19 */ MASK_REACTION_SET_INGO,
    /* 0x1A */ MASK_REACTION_SET_LAKESIDE_PROFESSOR,
    /* 0x1B */ MASK_REACTION_SET_MAGIC_BEAN_SALESMAN,
    /* 0x1C */ MASK_REACTION_SET_RUNNING_MAN,
    /* 0x1D */ MASK_REACTION_SET_ZORA,
    /* 0x1E */ MASK_REACTION_SET_KING_ZORA,
    /* 0x1F */ MASK_REACTION_SET_RUTO,
    /* 0x20 */ MASK_REACTION_SET_GORON,
    /* 0x21 */ MASK_REACTION_SET_DARUNIA,
    /* 0x22 */ MASK_REACTION_SET_GERUDO_WHITE,
    /* 0x23 */ MASK_REACTION_SET_NABOORU,
    /* 0x24 */ MASK_REACTION_SET_DANCING_COUPLE,
    /* 0x25 */ MASK_REACTION_SET_37, // ENHY_TYPE_AOB
    /* 0x26 */ MASK_REACTION_SET_38, // ENHY_TYPE_COB
    /* 0x27 */ MASK_REACTION_SET_39, // ENHY_TYPE_AHG_2
    /* 0x28 */ MASK_REACTION_SET_40, // ENHY_TYPE_BOJ_3
    /* 0x29 */ MASK_REACTION_SET_41, // ENHY_TYPE_AHG_4
    /* 0x2A */ MASK_REACTION_SET_42, // ENHY_TYPE_BOJ_5
    /* 0x2B */ MASK_REACTION_SET_43, // ENHY_TYPE_BBA
    /* 0x2C */ MASK_REACTION_SET_44, // ENHY_TYPE_BJI_7
    /* 0x2D */ MASK_REACTION_SET_45, // ENHY_TYPE_CNE_8
    /* 0x2E */ MASK_REACTION_SET_46, // ENHY_TYPE_BOJ_9
    /* 0x2F */ MASK_REACTION_SET_47, // ENHY_TYPE_BOJ_10
    /* 0x30 */ MASK_REACTION_SET_48, // ENHY_TYPE_CNE_11
    /* 0x31 */ MASK_REACTION_SET_49, // ENHY_TYPE_BOJ_12
    /* 0x32 */ MASK_REACTION_SET_50, // ENHY_TYPE_AHG_13
    /* 0x33 */ MASK_REACTION_SET_51, // ENHY_TYPE_BOJ_14
    /* 0x34 */ MASK_REACTION_SET_52, // ENHY_TYPE_BJI_15
    /* 0x35 */ MASK_REACTION_SET_53, // ENHY_TYPE_BOJ_16
    /* 0x36 */ MASK_REACTION_SET_54, // ENHY_TYPE_AHG_17
    /* 0x37 */ MASK_REACTION_SET_55, // ENHY_TYPE_BOB_18
    /* 0x38 */ MASK_REACTION_SET_56, // ENHY_TYPE_BJI_19
    /* 0x39 */ MASK_REACTION_SET_57, // ENHY_TYPE_AHG_20
    /* 0x3A */ MASK_REACTION_SET_HAGGLING_TOWNSPEOPLE_1,
    /* 0x3B */ MASK_REACTION_SET_HAGGLING_TOWNSPEOPLE_2,
    /* 0x3C */ MASK_REACTION_SET_MAX
} MaskReactionSet;

typedef enum TextState {
    /*  0 */ TEXT_STATE_NONE,
    /*  1 */ TEXT_STATE_DONE_HAS_NEXT,
    /*  2 */ TEXT_STATE_CLOSING,
    /*  3 */ TEXT_STATE_DONE_FADING,
    /*  4 */ TEXT_STATE_CHOICE,
    /*  5 */ TEXT_STATE_EVENT,
    /*  6 */ TEXT_STATE_DONE,
    /*  7 */ TEXT_STATE_SONG_DEMO_DONE,
    /*  8 */ TEXT_STATE_8,
    /*  9 */ TEXT_STATE_9,
    /* 10 */ TEXT_STATE_AWAITING_NEXT
} TextState;

typedef struct Font {
    /* 0x0000 */ u32 msgOffset;
    /* 0x0004 */ u32 msgLength;
    union {
        /* 0x0008 */ u8 charTexBuf[FONT_CHAR_TEX_SIZE * 120];
        /* 0x0008 */ u64 force_structure_alignment_charTex;
    };
    union {
        /* 0x3C08 */ u8 iconBuf[FONT_CHAR_TEX_SIZE];
        /* 0x3C08 */ u64 force_structure_alignment_icon;
    };
    union {
        /* 0x3C88 */ u8 fontBuf[FONT_CHAR_TEX_SIZE * 320];
        /* 0x3C88 */ u64 force_structure_alignment_font;
    };
    union {
        /* 0xDC88 */ char msgBuf[1280];
        /* 0xDC88 */ u16 msgBufWide[640];
        /* 0xDC88 */ u64 force_structure_alignment_msg;
    };
} Font; // size = 0xE188

#define TEXTBOX_ENDTYPE_DEFAULT     0x00
#define TEXTBOX_ENDTYPE_2_CHOICE    0x10
#define TEXTBOX_ENDTYPE_3_CHOICE    0x20
#define TEXTBOX_ENDTYPE_HAS_NEXT    0x30
#define TEXTBOX_ENDTYPE_PERSISTENT  0x40
#define TEXTBOX_ENDTYPE_EVENT       0x50
#define TEXTBOX_ENDTYPE_FADING      0x60

typedef struct MessageContext {
    /* 0x0000 */ View view;
    /* 0x0128 */ Font font;
    /* 0xE2B0 */ u8* textboxSegment; // original name: "fukidashiSegment"
    /* 0xE2B4 */ char unk_E2B4[0x4];
    /* 0xE2B8 */ struct OcarinaStaff* ocarinaStaff; // original name : "info"
    /* 0xE2BC */ char unk_E2BC[0x3C];
    /* 0xE2F8 */ u16 textId;
    /* 0xE2FA */ u16 choiceTextId;
    /* 0xE2FC */ u8 textBoxProperties; // original name : "msg_disp_type"
    /* 0xE2FD */ u8 textBoxType; // "Text Box Type"
    /* 0xE2FE */ u8 textBoxPos; // text box position
    /* 0xE300 */ s32 msgLength; // original name : "msg_data"
    /* 0xE304 */ u8 msgMode; // original name: "msg_mode"
    /* 0xE306 */ union {
        u8 msgBufDecoded[200];
        u16 msgBufDecodedWide[100];
    };
    /* 0xE3CE */ u16 msgBufPos; // original name : "rdp"
    /* 0xE3D0 */ u16 unk_E3D0; // unused, only ever set to 0
    /* 0xE3D2 */ u16 textDrawPos; // draw all decoded characters up to this buffer position
    /* 0xE3D4 */ u16 decodedTextLen; // decoded message buffer length
    /* 0xE3D6 */ u16 textUnskippable;
    /* 0xE3D8 */ s16 textPosX;
    /* 0xE3DA */ s16 textPosY;
    /* 0xE3DC */ s16 textColorR;
    /* 0xE3DE */ s16 textColorG;
    /* 0xE3E0 */ s16 textColorB;
    /* 0xE3E2 */ s16 textColorAlpha;
    /* 0xE3E4 */ u8 textboxEndType; // original name : "select"
    /* 0xE3E5 */ u8 choiceIndex;
    /* 0xE3E6 */ u8 choiceNum; // textboxes that are not choice textboxes have a choiceNum of 1
    /* 0xE3E7 */ u8 stateTimer;
    /* 0xE3E8 */ u16 textDelayTimer;
    /* 0xE3EA */ u16 textDelay;
    /* 0xE3EA */ u16 lastPlayedSong; // original references : "Ocarina_Flog" , "Ocarina_Free"
    /* 0xE3EE */ u16 ocarinaMode; // original name : "ocarina_mode"
    /* 0xE3F0 */ u16 ocarinaAction; // original name : "ocarina_no"
    /* 0xE3F2 */ u16 unk_E3F2; // this is like "lastPlayedSong" but set less often, original name : "chk_ocarina_no"
    /* 0xE3F4 */ u16 unk_E3F4; // unused, only set to 0 in z_actor
    /* 0xE3F6 */ u16 textboxBackgroundIdx;
    /* 0xE3F8 */ u8 textboxBackgroundForeColorIdx;
    /* 0xE3F8 */ u8 textboxBackgroundBackColorIdx;
    /* 0xE3F8 */ u8 textboxBackgroundYOffsetIdx;
    /* 0xE3F8 */ u8 textboxBackgroundUnkArg; // unused, set by the textbox background control character arguments
    /* 0xE3FC */ char unk_E3FC[0x2];
    /* 0xE3FE */ s16 textboxColorRed;
    /* 0xE400 */ s16 textboxColorGreen;
    /* 0xE402 */ s16 textboxColorBlue;
    /* 0xE404 */ s16 textboxColorAlphaTarget;
    /* 0xE406 */ s16 textboxColorAlphaCurrent;
    /* 0xE408 */ struct Actor* talkActor;
    /* 0xE40C */ s16 disableWarpSongs; // disables ability to warp with warp songs
    /* 0xE40E */ s16 disableSunsSong; // disables Suns Song effect from occurring after song is played
    /* 0xE410 */ u8 lastOcarinaButtonIndex;
} MessageContext; // size = 0xE418

#endif
