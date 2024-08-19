#ifndef MESSAGE_DATA_FMT_H
#define MESSAGE_DATA_FMT_H

#include "z64save.h" // For highscores
#include "z64item.h" // For item ids
#include "sfx.h" // For sfx ids

/*
 * Text control characters
 */

// Non-Wide (nes/ger/fra)

#define MESSAGE_NEWLINE                    0x01
#define MESSAGE_END                        0x02
#define MESSAGE_BOX_BREAK                  0x04
#define MESSAGE_COLOR                      0x05
#define MESSAGE_SHIFT                      0x06
#define MESSAGE_TEXTID                     0x07
#define MESSAGE_QUICKTEXT_ENABLE           0x08
#define MESSAGE_QUICKTEXT_DISABLE          0x09
#define MESSAGE_PERSISTENT                 0x0A
#define MESSAGE_EVENT                      0x0B
#define MESSAGE_BOX_BREAK_DELAYED          0x0C
#define MESSAGE_AWAIT_BUTTON_PRESS         0x0D
#define MESSAGE_FADE                       0x0E
#define MESSAGE_NAME                       0x0F
#define MESSAGE_OCARINA                    0x10
#define MESSAGE_FADE2                      0x11
#define MESSAGE_SFX                        0x12
#define MESSAGE_ITEM_ICON                  0x13
#define MESSAGE_TEXT_SPEED                 0x14
#define MESSAGE_BACKGROUND                 0x15
#define MESSAGE_MARATHON_TIME              0x16
#define MESSAGE_RACE_TIME                  0x17
#define MESSAGE_POINTS                     0x18
#define MESSAGE_TOKENS                     0x19
#define MESSAGE_UNSKIPPABLE                0x1A
#define MESSAGE_TWO_CHOICE                 0x1B
#define MESSAGE_THREE_CHOICE               0x1C
#define MESSAGE_FISH_INFO                  0x1D
#define MESSAGE_HIGHSCORE                  0x1E
#define MESSAGE_TIME                       0x1F

// Wide (jpn)

#define MESSAGE_WIDE_NEWLINE               0x000A
#define MESSAGE_WIDE_END                   0x8170
#define MESSAGE_WIDE_BOX_BREAK             0x81A5
#define MESSAGE_WIDE_COLOR                 0x000B
#define MESSAGE_WIDE_SHIFT                 0x86C7
#define MESSAGE_WIDE_TEXTID                0x81CB
#define MESSAGE_WIDE_QUICKTEXT_ENABLE      0x8189
#define MESSAGE_WIDE_QUICKTEXT_DISABLE     0x818A
#define MESSAGE_WIDE_PERSISTENT            0x86C8
#define MESSAGE_WIDE_EVENT                 0x819F
#define MESSAGE_WIDE_BOX_BREAK_DELAYED     0x81A3
#define MESSAGE_WIDE_AWAIT_BUTTON_PRESS    0x81A4
#define MESSAGE_WIDE_FADE                  0x819E
#define MESSAGE_WIDE_NAME                  0x874F
#define MESSAGE_WIDE_OCARINA               0x81F0
#define MESSAGE_WIDE_FADE2                 0x81F4
#define MESSAGE_WIDE_SFX                   0x81F3
#define MESSAGE_WIDE_ITEM_ICON             0x819A
#define MESSAGE_WIDE_TEXT_SPEED            0x86C9
#define MESSAGE_WIDE_BACKGROUND            0x86B3
#define MESSAGE_WIDE_MARATHON_TIME         0x8791
#define MESSAGE_WIDE_RACE_TIME             0x8792
#define MESSAGE_WIDE_POINTS                0x879B
#define MESSAGE_WIDE_TOKENS                0x86A3
#define MESSAGE_WIDE_UNSKIPPABLE           0x8199
#define MESSAGE_WIDE_TWO_CHOICE            0x81BC
#define MESSAGE_WIDE_THREE_CHOICE          0x81B8
#define MESSAGE_WIDE_FISH_INFO             0x86A4
#define MESSAGE_WIDE_HIGHSCORE             0x869F
#define MESSAGE_WIDE_TIME                  0x81A1

/*
 * Message character constants
 */

// Non-Wide (nes/ger/fra)

#define MESSAGE_CHAR_SPACE                               0x20 // ' '

// Wide (jpn)

#define MESSAGE_WIDE_CHAR_SPACE                          0x8140 // '　'
#define MESSAGE_WIDE_CHAR_TOUTEN                         0x8141 // '、'
#define MESSAGE_WIDE_CHAR_KUTEN                          0x8142 // '。'
#define MESSAGE_WIDE_CHAR_PERIOD                         0x8144 // '．'
#define MESSAGE_WIDE_CHAR_NAKATEN                        0x8145 // '・'
#define MESSAGE_WIDE_CHAR_QUESTION_MARK                  0x8148 // '？'
#define MESSAGE_WIDE_CHAR_EXCLAMATION_MARK               0x8149 // '！'
#define MESSAGE_WIDE_CHAR_CIRCUMFLEX_ACCENT              0x814F // '＾'
#define MESSAGE_WIDE_CHAR_DOUBLE_QUOTATION_MARK_LEFT     0x8167 // '“'
#define MESSAGE_WIDE_CHAR_DOUBLE_QUOTATION_MARK_RIGHT    0x8168 // '”'
#define MESSAGE_WIDE_CHAR_PARENTHESES_LEFT               0x8169 // '（'
#define MESSAGE_WIDE_CHAR_PARENTHESES_RIGHT              0x816A // '）'
#define MESSAGE_WIDE_CHAR_KAGIKAKKO_LEFT                 0x8175 // '「'
#define MESSAGE_WIDE_CHAR_KAGIKAKKO_RIGHT                0x8176 // '」'
#define MESSAGE_WIDE_CHAR_NUMBER_SIGN                    0x8194 // '＃'
#define MESSAGE_WIDE_CHAR_ASTERISK                       0x8196 // '＊'
#define MESSAGE_WIDE_CHAR_ZERO                           0x824F // '０'
#define MESSAGE_WIDE_CHAR_ONE                            0x8250 // '１'
#define MESSAGE_WIDE_CHAR_HOURS                          0x8E9E // '時'
#define MESSAGE_WIDE_CHAR_SECONDS                        0x9562 // '秒'
#define MESSAGE_WIDE_CHAR_MINUTES                        0x95AA // '分'

/*
 *  Colors
 */

typedef enum TextColor {
    TEXT_COLOR_DEFAULT,
    TEXT_COLOR_RED,
    TEXT_COLOR_ADJUSTABLE,
    TEXT_COLOR_BLUE,
    TEXT_COLOR_LIGHTBLUE,
    TEXT_COLOR_PURPLE,
    TEXT_COLOR_YELLOW,
    TEXT_COLOR_BLACK
} TextColor;

/*
 * Background
 */

typedef enum TextboxBackgroundIndex {
    TEXTBOX_BG_X_LEFT,
    TEXTBOX_BG_X_RIGHT
} TextboxBackgroundIndex;

typedef enum TextboxBackgroundForegroundColor {
    TEXTBOX_BG_FGCOL_WHITE,
    TEXTBOX_BG_FGCOL_DARK_RED,
    TEXTBOX_BG_FGCOL_ORANGE,
    TEXTBOX_BG_FGCOL_WHITE_3,
    TEXTBOX_BG_FGCOL_WHITE_4,
    TEXTBOX_BG_FGCOL_WHITE_5,
    TEXTBOX_BG_FGCOL_WHITE_6,
    TEXTBOX_BG_FGCOL_WHITE_7
} TextboxBackgroundForegroundColor;

typedef enum TextboxBackgroundBackgroundColor {
    TEXTBOX_BG_BGCOL_BLACK,
    TEXTBOX_BG_BGCOL_GOLD,
    TEXTBOX_BG_BGCOL_BLACK_2,
    TEXTBOX_BG_BGCOL_BLACK_3
} TextboxBackgroundBackgroundColor;

typedef enum TextboxBackgroundYOffsetIndex {
    TEXTBOX_BG_Y_OFFSET_1,
    TEXTBOX_BG_Y_OFFSET_2
} TextboxBackgroundYOffsetIndex;

#ifdef MESSAGE_DATA_STATIC
// For use in message_data_static files

// Encoded text consists of an array of bytes. Since it's in a macro it must be wrapped in a varargs macro so that each
// byte is not treated as a separate macro argument to DEFINE_MESSAGE. IDO doesn't support varargs macros, however we
// preprocess the message_data_static files with modern cpp instead. See the makefile rule for assets/text/
# define MSG(...)  { __VA_ARGS__ END }

// Encoding helpers
# define ARG2(x) (((x) >> 8) & 0xFF), (((x) >> 0) & 0xFF),
# ifdef MESSAGE_WCHAR
#  define ARG1(x) 0x00, (x),
#  define ARGC(x) 0x0C, (TEXT_COLOR_ ## x),
#  define CTRL_BASE(name) ARG2(MESSAGE_WIDE_ ## name)
# else
#  define ARG1(x) (x),
#  define ARGC(x) (0x40 | (TEXT_COLOR_ ## x)),
#  define CTRL_BASE(name) ARG1(MESSAGE_ ## name)
# endif
# define ARGB1(x) ARG1(TEXTBOX_BG_ ## x)
# define ARGB2(a,b,c,d) (((TEXTBOX_BG_FGCOL_ ## a) << 4) | ((TEXTBOX_BG_BGCOL_ ## b) << 0)), (((TEXTBOX_BG_Y_OFFSET_ ## c) << 4) | ((d) << 0)),

/*
 * Control characters
 */

// while a control character, newlines are handled in the charmap conversion
// stage to allow normal newline \n usage in message_data_static files
# define NEWLINE                                            CTRL_BASE(NEWLINE)
# define END                                                CTRL_BASE(END)
# define BOX_BREAK                                          CTRL_BASE(BOX_BREAK)
# define COLOR(color)                                       CTRL_BASE(COLOR)                ARGC(color)
# define SHIFT(amount)                                      CTRL_BASE(SHIFT)                ARG1(amount)
# define TEXTID(textId)                                     CTRL_BASE(TEXTID)               ARG2(textId)
# define QUICKTEXT_ENABLE                                   CTRL_BASE(QUICKTEXT_ENABLE)
# define QUICKTEXT_DISABLE                                  CTRL_BASE(QUICKTEXT_DISABLE)
# define PERSISTENT                                         CTRL_BASE(PERSISTENT)
# define EVENT                                              CTRL_BASE(EVENT)
# define BOX_BREAK_DELAYED(delay)                           CTRL_BASE(BOX_BREAK_DELAYED)    ARG1(delay)
# define AWAIT_BUTTON_PRESS                                 CTRL_BASE(AWAIT_BUTTON_PRESS)
# define FADE(delay)                                        CTRL_BASE(FADE)                 ARG1(delay)
# define NAME                                               CTRL_BASE(NAME)
# define OCARINA                                            CTRL_BASE(OCARINA)
# define FADE2(delay)                                       CTRL_BASE(FADE2)                ARG2(delay)
# define SFX(sfxId)                                         CTRL_BASE(SFX)                  ARG2(sfxId)
# define ITEM_ICON(itemId)                                  CTRL_BASE(ITEM_ICON)            ARG1(itemId)
# define TEXT_SPEED(amount)                                 CTRL_BASE(TEXT_SPEED)           ARG1(amount)
# define BACKGROUND(bgIdx, fgColor, bgColor, yOffset, unk)  CTRL_BASE(BACKGROUND)           ARGB1(bgIdx) ARGB2(fgColor, bgColor, yOffset, unk)
# define MARATHON_TIME                                      CTRL_BASE(MARATHON_TIME)
# define RACE_TIME                                          CTRL_BASE(RACE_TIME)
# define POINTS                                             CTRL_BASE(POINTS)
# define TOKENS                                             CTRL_BASE(TOKENS)
# define UNSKIPPABLE                                        CTRL_BASE(UNSKIPPABLE)
# define TWO_CHOICE                                         CTRL_BASE(TWO_CHOICE)
# define THREE_CHOICE                                       CTRL_BASE(THREE_CHOICE)
# define FISH_INFO                                          CTRL_BASE(FISH_INFO)
# define HIGHSCORE(highscore)                               CTRL_BASE(HIGHSCORE)            ARG1(highscore)
# define TIME                                               CTRL_BASE(TIME)

#endif

#endif
