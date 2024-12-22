#include "text/message_data.h"

/*
 * The following two messages should be kept last and in this order.
 * Message 0xFFFD must be last to not break the message debugger (see R_MESSAGE_DEBUGGER_TEXTID).
 * Message 0xFFFC must be immediately before message 0xFFFD to not break Font_LoadOrderedFont.
 */
DEFINE_MESSAGE_FFFC(0xFFFC, TEXTBOX_TYPE_BLACK, TEXTBOX_POS_VARIABLE,
MSG(
"０１２３４５６７８９あいうえおかきくけこ\n"
"さしすせそたちつてとなにぬねのはひふへほ\n"
"まみむめもやゆよらりるれろわをんぁぃぅぇ\n"
"ぉっゃゅょがぎぐげござじずぜぞだぢづでど\n"
"ばびぶべぼぱぴぷぺぽアイウエオカキクケコ\n"
"サシスセソタチツテトナニヌネノハヒフヘホ\n"
"マミムメモヤユヨラリルレロワヲンァィゥェ\n"
"ォッャュョガギグゲゴザジズゼゾダヂヅデド\n"
"バビブベボパピプペポヴＡＢＣＤＥＦＧＨＩ\n"
"ＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺａｂｃ\n"
"ｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗ\n"
"ｘｙｚ　┯？！：−（）゛゜，．／"
)
,
MSG(
"0123456789\n"
"ABCDEFGHIJKLMN\n"
"OPQRSTUVWXYZ\n"
"abcdefghijklmn\n"
"opqrstuvwxyz\n"
" -.\n"
)
,
MSG(/* UNUSED */)
,
MSG(/* UNUSED */)
)
DEFINE_MESSAGE(0xFFFD, TEXTBOX_TYPE_BLACK, TEXTBOX_POS_VARIABLE, MSG(), MSG(), MSG(), MSG())
