#ifndef _MESSAGE_DATA_FMT_H_
#define _MESSAGE_DATA_FMT_H_

/*
 * Macros to create both a constant and a string literal from a magic value
 *   The constants are used in code files when parsing text for various purposes
 *   The strings are used in the message_data_static files themselves, as you can only concat strings with other strings
 */

#define GLUE(a, b) a##b

#define STRINGIFY(s) #s
#define EXPAND_AND_STRINGIFY(s) STRINGIFY(s)

#define HEX(N) GLUE(0x, N)
#define STR(N) EXPAND_AND_STRINGIFY(GLUE(\x, N))

/*
 * Text control characters
 */

// Control character magic values, in 2-digit hex without prefix

#define MAGIC_NEWLINE                 01
#define MAGIC_END                     02
#define MAGIC_BOX_BREAK               04
#define MAGIC_COLOR                   05
#define MAGIC_SHIFT                   06
#define MAGIC_TEXTID                  07
#define MAGIC_QUICKTEXT_ENABLE        08
#define MAGIC_QUICKTEXT_DISABLE       09
#define MAGIC_PERSISTENT              0A
#define MAGIC_EVENT                   0B
#define MAGIC_BOX_BREAK_DELAYED       0C
#define MAGIC_AWAIT_BUTTON_PRESS      0D
#define MAGIC_FADE                    0E
#define MAGIC_NAME                    0F
#define MAGIC_OCARINA                 10
#define MAGIC_FADE2                   11
#define MAGIC_SFX                     12
#define MAGIC_ITEM_ICON               13
#define MAGIC_TEXT_SPEED              14
#define MAGIC_BACKGROUND              15
#define MAGIC_MARATHON_TIME           16
#define MAGIC_RACE_TIME               17
#define MAGIC_POINTS                  18
#define MAGIC_TOKENS                  19
#define MAGIC_UNSKIPPABLE             1A
#define MAGIC_TWO_CHOICE              1B
#define MAGIC_THREE_CHOICE            1C
#define MAGIC_FISH_INFO               1D
#define MAGIC_HIGHSCORE               1E
#define MAGIC_TIME                    1F

/*
 *  Colors
 * The "Type" refers to the MessageBoxType of the textbox
 * 
 * PAL      Default                 Type 1                  Type 5
 * 40       White       #FFFFFF                             Black   #000000
 * 41       Red         #FF3C3C     Orange      #FF7800
 * 42       Green       #46FF50     Green       #46FF50
 * 43       Blue        #505AFF     Blue        #506EFF
 * 44       Light Blue  #64B4FF     Light Blue  #5AB4FF
 * 45       Pink        #FF96B4     Purple      #D264FF
 * 46       Yellow      #E1FF32     Yellow      #FFFF1E
 * 47       Black       #000000
 */ 

#define COLOR_STR(N) EXPAND_AND_STRINGIFY(GLUE(\x4, N))

// Color magic values, in single-digit hex without prefix

// Default
#define MAGIC_WHITE     0
#define MAGIC_RED       1
#define MAGIC_GREEN     2
#define MAGIC_BLUE      3
#define MAGIC_LIGHTBLUE 4
#define MAGIC_PINK      5
#define MAGIC_YELLOW    6
#define MAGIC_BLACK     7

// MessageBoxType BOX_WOODEN
#define MAGIC_TYPE1_ORANGE    1
#define MAGIC_TYPE1_GREEN     2
#define MAGIC_TYPE1_BLUE      3
#define MAGIC_TYPE1_LIGHTBLUE 4
#define MAGIC_TYPE1_PURPLE    5
#define MAGIC_TYPE1_YELLOW    6

// MessageBoxType BOX_NONE_NO_SHADOW
#define MAGIC_TYPE5_BLACK 0
#define MAGIC_TYPE5_BLUE  4

#ifdef MESSAGE_DATA_STATIC
// For use in message_data_static files

#define ARG(x) x

// while a control character, newlines are handled in the charmap conversion 
// stage to allow normal newline \n usage in message_data_static files
#define NEWLINE                 STR(MAGIC_NEWLINE)
#define END                     STR(MAGIC_END)
#define BOX_BREAK               STR(MAGIC_BOX_BREAK)
#define COLOR(x)                STR(MAGIC_COLOR)                ARG(x) // 1
#define SHIFT(x)                STR(MAGIC_SHIFT)                ARG(x) // 1
#define TEXTID(x)               STR(MAGIC_TEXTID)               ARG(x) // 2
#define QUICKTEXT_ENABLE        STR(MAGIC_QUICKTEXT_ENABLE)
#define QUICKTEXT_DISABLE       STR(MAGIC_QUICKTEXT_DISABLE)
#define PERSISTENT              STR(MAGIC_PERSISTENT)
#define EVENT                   STR(MAGIC_EVENT)
#define BOX_BREAK_DELAYED(x)    STR(MAGIC_BOX_BREAK_DELAYED)    ARG(x) // 1
#define AWAIT_BUTTON_PRESS      STR(MAGIC_AWAIT_BUTTON_PRESS)
#define FADE(x)                 STR(MAGIC_FADE)                 ARG(x) // 1
#define NAME                    STR(MAGIC_NAME)
#define OCARINA                 STR(MAGIC_OCARINA)
#define FADE2(x)                STR(MAGIC_FADE2)                ARG(x) // 2
#define SFX(x)                  STR(MAGIC_SFX)                  ARG(x) // 2
#define ITEM_ICON(x)            STR(MAGIC_ITEM_ICON)            ARG(x) // 1
#define TEXT_SPEED(x)           STR(MAGIC_TEXT_SPEED)           ARG(x) // 1
#define BACKGROUND(x,y,z)       STR(MAGIC_BACKGROUND)           ARG(x) ARG(y) ARG(z)
#define MARATHON_TIME           STR(MAGIC_MARATHON_TIME)
#define RACE_TIME               STR(MAGIC_RACE_TIME)
#define POINTS                  STR(MAGIC_POINTS)
#define TOKENS                  STR(MAGIC_TOKENS)
#define UNSKIPPABLE             STR(MAGIC_UNSKIPPABLE)
#define TWO_CHOICE              STR(MAGIC_TWO_CHOICE)
#define THREE_CHOICE            STR(MAGIC_THREE_CHOICE)
#define FISH_INFO               STR(MAGIC_FISH_INFO)
#define HIGHSCORE(x)            STR(MAGIC_HIGHSCORE)            ARG(x) // 1
#define TIME                    STR(MAGIC_TIME)

/*
 * Highscore values as strings, for code references the HighScores
 * enum should be used.
 */

#define HS_HORSE_ARCHERY "\x00"
#define HS_POE_POINTS    "\x01"
#define HS_LARGEST_FISH  "\x02"
#define HS_HORSE_RACE    "\x03"
#define HS_MARATHON      "\x04"
#define HS_DAMPE_RACE    "\x06"

/*
 * Color values as strings
 */

#define WHITE       COLOR_STR(MAGIC_WHITE)
#define RED         COLOR_STR(MAGIC_RED)
#define GREEN       COLOR_STR(MAGIC_GREEN)
#define BLUE        COLOR_STR(MAGIC_BLUE)
#define LIGHTBLUE   COLOR_STR(MAGIC_LIGHTBLUE)
#define PINK        COLOR_STR(MAGIC_PINK)
#define YELLOW      COLOR_STR(MAGIC_YELLOW)
#define BLACK       COLOR_STR(MAGIC_BLACK)

#define TYPE1_ORANGE    COLOR_STR(MAGIC_TYPE1_ORANGE)
#define TYPE1_GREEN     COLOR_STR(MAGIC_TYPE1_GREEN)
#define TYPE1_BLUE      COLOR_STR(MAGIC_TYPE1_BLUE)
#define TYPE1_LIGHTBLUE COLOR_STR(MAGIC_TYPE1_LIGHTBLUE)
#define TYPE1_PURPLE    COLOR_STR(MAGIC_TYPE1_PURPLE)
#define TYPE1_YELLOW    COLOR_STR(MAGIC_TYPE1_YELLOW)

#define TYPE5_BLUE  COLOR_STR(MAGIC_TYPE5_BLUE)
#define TYPE5_BLACK COLOR_STR(MAGIC_TYPE5_BLACK)

#else
// For use in code files
#define MSGCOL_WHITE        HEX(MAGIC_WHITE)
#define MSGCOL_RED          HEX(MAGIC_RED)
#define MSGCOL_GREEN        HEX(MAGIC_GREEN)
#define MSGCOL_BLUE         HEX(MAGIC_BLUE)
#define MSGCOL_LIGHTBLUE    HEX(MAGIC_LIGHTBLUE)
#define MSGCOL_PINK         HEX(MAGIC_PINK)
#define MSGCOL_YELLOW       HEX(MAGIC_YELLOW)
#define MSGCOL_BLACK        HEX(MAGIC_BLACK)

#define MSGCOL_TYPE1_ORANGE     HEX(MAGIC_TYPE1_ORANGE)
#define MSGCOL_TYPE1_GREEN      HEX(MAGIC_TYPE1_GREEN)
#define MSGCOL_TYPE1_BLUE       HEX(MAGIC_TYPE1_BLUE)
#define MSGCOL_TYPE1_LIGHTBLUE  HEX(MAGIC_TYPE1_LIGHTBLUE)
#define MSGCOL_TYPE1_PURPLE     HEX(MAGIC_TYPE1_PURPLE)
#define MSGCOL_TYPE1_YELLOW     HEX(MAGIC_TYPE1_YELLOW)

#define MSGCOL_TYPE5_BLUE       HEX(MAGIC_TYPE5_BLUE)
#define MSGCOL_TYPE5_BLACK      HEX(MAGIC_TYPE5_BLACK)

#define MESSAGE_NEWLINE                 HEX(MAGIC_NEWLINE)
#define MESSAGE_END                     HEX(MAGIC_END)
#define MESSAGE_BOX_BREAK               HEX(MAGIC_BOX_BREAK)
#define MESSAGE_COLOR                   HEX(MAGIC_COLOR)
#define MESSAGE_SHIFT                   HEX(MAGIC_SHIFT)
#define MESSAGE_TEXTID                  HEX(MAGIC_TEXTID)
#define MESSAGE_QUICKTEXT_ENABLE        HEX(MAGIC_QUICKTEXT_ENABLE)
#define MESSAGE_QUICKTEXT_DISABLE       HEX(MAGIC_QUICKTEXT_DISABLE)
#define MESSAGE_PERSISTENT              HEX(MAGIC_PERSISTENT)
#define MESSAGE_EVENT                   HEX(MAGIC_EVENT)
#define MESSAGE_BOX_BREAK_DELAYED       HEX(MAGIC_BOX_BREAK_DELAYED)
#define MESSAGE_AWAIT_BUTTON_PRESS      HEX(MAGIC_AWAIT_BUTTON_PRESS)
#define MESSAGE_FADE                    HEX(MAGIC_FADE)
#define MESSAGE_NAME                    HEX(MAGIC_NAME)
#define MESSAGE_OCARINA                 HEX(MAGIC_OCARINA)
#define MESSAGE_FADE2                   HEX(MAGIC_FADE2)
#define MESSAGE_SFX                     HEX(MAGIC_SFX)
#define MESSAGE_ITEM_ICON               HEX(MAGIC_ITEM_ICON)
#define MESSAGE_TEXT_SPEED              HEX(MAGIC_TEXT_SPEED)
#define MESSAGE_BACKGROUND              HEX(MAGIC_BACKGROUND)
#define MESSAGE_MARATHON_TIME           HEX(MAGIC_MARATHON_TIME)
#define MESSAGE_RACE_TIME               HEX(MAGIC_RACE_TIME)
#define MESSAGE_POINTS                  HEX(MAGIC_POINTS)
#define MESSAGE_TOKENS                  HEX(MAGIC_TOKENS)
#define MESSAGE_UNSKIPPABLE             HEX(MAGIC_UNSKIPPABLE)
#define MESSAGE_TWO_CHOICE              HEX(MAGIC_TWO_CHOICE)
#define MESSAGE_THREE_CHOICE            HEX(MAGIC_THREE_CHOICE)
#define MESSAGE_FISH_INFO               HEX(MAGIC_FISH_INFO)
#define MESSAGE_HIGHSCORE               HEX(MAGIC_HIGHSCORE)
#define MESSAGE_TIME                    HEX(MAGIC_TIME)
#endif

#endif
