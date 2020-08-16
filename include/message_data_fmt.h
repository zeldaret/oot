#ifndef _MESSAGE_DATA_FMT_H_
#define _MESSAGE_DATA_FMT_H_

#include <ultra64.h>
#include <global.h>

/**********************************************\
 * 
 *   Control Codes
 * 
\**********************************************/ 

#define MSG_CHR_NEWLINE                 '\x01'
#define MSG_CHR_END                     '\x02'
#define MSG_CHR_BOX_BREAK               '\x04'
#define MSG_CHR_COLOR                   '\x05'
#define MSG_CHR_SHIFT                   '\x06'
#define MSG_CHR_TEXTID                  '\x07'
#define MSG_CHR_QUICKTEXT_ENABLE        '\x08'
#define MSG_CHR_QUICKTEXT_DISABLE       '\x09'
#define MSG_CHR_PERSISTENT              '\x0A'
#define MSG_CHR_EVENT                   '\x0B'
#define MSG_CHR_BOX_BREAK_DELAYED       '\x0C'
#define MSG_CHR_AWAIT_BUTTON_PRESS      '\x0D'
#define MSG_CHR_FADE                    '\x0E'
#define MSG_CHR_NAME                    '\x0F'
#define MSG_CHR_OCARINA                 '\x10'
#define MSG_CHR_FADE2                   '\x11'
#define MSG_CHR_SFX                     '\x12'
#define MSG_CHR_ITEM_ICON               '\x13'
#define MSG_CHR_TEXT_SPEED              '\x14'
#define MSG_CHR_BACKGROUND              '\x15'
#define MSG_CHR_MARATHON_TIME           '\x16'
#define MSG_CHR_RACE_TIME               '\x17'
#define MSG_CHR_SCORE                   '\x18'
#define MSG_CHR_TOKENS                  '\x19'
#define MSG_CHR_UNSKIPPABLE             '\x1A'
#define MSG_CHR_TWO_CHOICE              '\x1B'
#define MSG_CHR_THREE_CHOICE            '\x1C'
#define MSG_CHR_FISH_INFO               '\x1D'
#define MSG_CHR_HIGHSCORE               '\x1E'
#define MSG_CHR_TIME                    '\x1F'

#define ARG(x) x

// while a control code, newlines are handled in the charmap conversion 
// stage to allow normal newline \n usage
//#define NEWLINE                 "\x01" 
#define END                     "\x02"
#define BOX_BREAK               "\x04"
#define COLOR(x)                "\x05" ARG(x) // 1
#define SHIFT(x)                "\x06" ARG(x) // 1
#define TEXTID(x)               "\x07" ARG(x) // 2
#define QUICKTEXT_ENABLE        "\x08"
#define QUICKTEXT_DISABLE       "\x09"
#define PERSISTENT              "\x0A"
#define EVENT                   "\x0B"
#define BOX_BREAK_DELAYED(x)    "\x0C" ARG(x) // 1
#define AWAIT_BUTTON_PRESS      "\x0D"
#define FADE(x)                 "\x0E" ARG(x) // 1
#define NAME                    "\x0F"
#define OCARINA                 "\x10"
#define FADE2(x)                "\x11" ARG(x) // 2
#define SFX(x)                  "\x12" ARG(x) // 2
#define ITEM_ICON(x)            "\x13" ARG(x) // 1
#define TEXT_SPEED(x)           "\x14" ARG(x) // 1
#define BACKGROUND(x,y,z)       "\x15" ARG(x) ARG(y) ARG(z)
#define MARATHON_TIME           "\x16"
#define RACE_TIME               "\x17"
#define SCORE                   "\x18"
#define TOKENS                  "\x19"
#define UNSKIPPABLE             "\x1A"
#define TWO_CHOICE              "\x1B"
#define THREE_CHOICE            "\x1C"
#define FISH_INFO               "\x1D"
#define HIGHSCORE(x)            "\x1E" ARG(x) // 1
#define TIME                    "\x1F"

/**********************************************\
 * 
 *   Colors
 * The "Type" refers to the MessageBoxType of the textbox
 * 
 * US/PAL  JP      Default                 Type 1                  Type 5
 * 40      0C00    White       #FFFFFF                             Black   #000000
 * 41      0C01    Red         #FF3C3C     Orange      #FF7800 
 * 42      0C02    Green       #46FF50     Green       #46FF50 
 * 43      0C03    Blue        #505AFF     Blue        #506EFF 
 * 44      0C04    Light Blue  #64B4FF     Light Blue  #5AB4FF 
 * 45      0C05    Pink        #FF96B4     Purple      #D264FF 
 * 46      0C06    Yellow      #E1FF32     Yellow      #FFFF1E 
 * 47      0C07    Black       #000000     
\**********************************************/ 

/** Default Type Colors */

#define WHITE     "\x40"
#define RED       "\x41"
#define GREEN     "\x42"
#define BLUE      "\x43"
#define LIGHTBLUE "\x44"
#define PINK      "\x45"
#define YELLOW    "\x46"
#define BLACK     "\x47"

/** Type 1 Colors */

#define TYPE1_ORANGE    "\x41"
#define TYPE1_GREEN     "\x42"
#define TYPE1_BLUE      "\x43"
#define TYPE1_LIGHTBLUE "\x44"
#define TYPE1_PURPLE    "\x45"
#define TYPE1_YELLOW    "\x46"

/** Type 5 Colors */

#define TYPE5_BLACK "\x40"

/**********************************************\
 * 
 *   Highscores
 * 
\**********************************************/ 

#define HIGHSCORE_HORSE_ARCHERY "\x00"
#define HIGHSCORE_POE_POINTS    "\x01"
#define HIGHSCORE_LARGEST_FISH  "\x02"
#define HIGHSCORE_HORSE_RACE    "\x03"
#define HIGHSCORE_MARATHON      "\x04"
#define HIGHSCORE_DAMPE_RACE    "\x06"

/**********************************************\
 * 
 *   Message Declaration
 * 
 * Strings in message_data_static files have 
 * no null char, the sizeof(message) is there 
 * to remove it
 * 
\**********************************************/ 
#define DECLARE_MESSAGE(textId, lang, message) \
    const char _message_##textId##_##lang[sizeof(message)] = { message END }

#endif
