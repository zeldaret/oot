#include "text/message_data.h"

/*
 * The following two messages should be kept last and in this order.
 * Message 0xFFFD must be last to not break the message debugger (see R_MESSAGE_DEBUGGER_TEXTID).
 * Message 0xFFFC must be immediately before message 0xFFFD to not break Font_LoadOrderedFont.
 */
DEFINE_MESSAGE_NES(0xFFFC, TEXTBOX_TYPE_BLACK, TEXTBOX_POS_VARIABLE,
"0123456789\n"
"ABCDEFGHIJKLMN\n"
"OPQRSTUVWXYZ\n"
"abcdefghijklmn\n"
"opqrstuvwxyz\n"
" -.\n"
)
DEFINE_MESSAGE(0xFFFD, TEXTBOX_TYPE_BLACK, TEXTBOX_POS_VARIABLE, "", "", "")
