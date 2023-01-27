#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "nes_font_static.h"

u64 gMsgChar20SpaceTex[] = {
#include "assets/textures/nes_font_static/msg_char_20_space.i4.inc.c"
};

u64 gMsgChar21ExclamationMarkTex[] = {
#include "assets/textures/nes_font_static/msg_char_21_exclamation_mark.i4.inc.c"
};

u64 gMsgChar22QuotationMarkTex[] = {
#include "assets/textures/nes_font_static/msg_char_22_quotation_mark.i4.inc.c"
};

u64 gMsgChar23NumberSignTex[] = {
#include "assets/textures/nes_font_static/msg_char_23_number_sign.i4.inc.c"
};

u64 gMsgChar24DollarSignTex[] = {
#include "assets/textures/nes_font_static/msg_char_24_dollar_sign.i4.inc.c"
};

u64 gMsgChar25PercentSignTex[] = {
#include "assets/textures/nes_font_static/msg_char_25_percent_sign.i4.inc.c"
};

u64 gMsgChar26AmpersandTex[] = {
#include "assets/textures/nes_font_static/msg_char_26_ampersand.i4.inc.c"
};

u64 gMsgChar27ApostropheTex[] = {
#include "assets/textures/nes_font_static/msg_char_27_apostrophe.i4.inc.c"
};

u64 gMsgChar28LeftParenthesesTex[] = {
#include "assets/textures/nes_font_static/msg_char_28_left_parentheses.i4.inc.c"
};

u64 gMsgChar29RightParenthesesTex[] = {
#include "assets/textures/nes_font_static/msg_char_29_right_parentheses.i4.inc.c"
};

u64 gMsgChar2AAsteriskTex[] = {
#include "assets/textures/nes_font_static/msg_char_2a_asterisk.i4.inc.c"
};

u64 gMsgChar2BPlusSignTex[] = {
#include "assets/textures/nes_font_static/msg_char_2b_plus_sign.i4.inc.c"
};

u64 gMsgChar2CCommaTex[] = {
#include "assets/textures/nes_font_static/msg_char_2c_comma.i4.inc.c"
};

u64 gMsgChar2DHyphenMinusTex[] = {
#include "assets/textures/nes_font_static/msg_char_2d_hyphen_minus.i4.inc.c"
};

u64 gMsgChar2EFullStopTex[] = {
#include "assets/textures/nes_font_static/msg_char_2e_full_stop.i4.inc.c"
};

u64 gMsgChar2FSolidusTex[] = {
#include "assets/textures/nes_font_static/msg_char_2f_solidus.i4.inc.c"
};

u64 gMsgChar30Digit0Tex[] = {
#include "assets/textures/nes_font_static/msg_char_30_digit_0.i4.inc.c"
};

u64 gMsgChar31Digit1Tex[] = {
#include "assets/textures/nes_font_static/msg_char_31_digit_1.i4.inc.c"
};

u64 gMsgChar32Digit2Tex[] = {
#include "assets/textures/nes_font_static/msg_char_32_digit_2.i4.inc.c"
};

u64 gMsgChar33Digit3Tex[] = {
#include "assets/textures/nes_font_static/msg_char_33_digit_3.i4.inc.c"
};

u64 gMsgChar34Digit4Tex[] = {
#include "assets/textures/nes_font_static/msg_char_34_digit_4.i4.inc.c"
};

u64 gMsgChar35Digit5Tex[] = {
#include "assets/textures/nes_font_static/msg_char_35_digit_5.i4.inc.c"
};

u64 gMsgChar36Digit6Tex[] = {
#include "assets/textures/nes_font_static/msg_char_36_digit_6.i4.inc.c"
};

u64 gMsgChar37Digit7Tex[] = {
#include "assets/textures/nes_font_static/msg_char_37_digit_7.i4.inc.c"
};

u64 gMsgChar38Digit8Tex[] = {
#include "assets/textures/nes_font_static/msg_char_38_digit_8.i4.inc.c"
};

u64 gMsgChar39Digit9Tex[] = {
#include "assets/textures/nes_font_static/msg_char_39_digit_9.i4.inc.c"
};

u64 gMsgChar3AColonTex[] = {
#include "assets/textures/nes_font_static/msg_char_3a_colon.i4.inc.c"
};

u64 gMsgChar3BSemicolonTex[] = {
#include "assets/textures/nes_font_static/msg_char_3b_semicolon.i4.inc.c"
};

u64 gMsgChar3CLessThanSignTex[] = {
#include "assets/textures/nes_font_static/msg_char_3c_less_than_sign.i4.inc.c"
};

u64 gMsgChar3DEqualsSignTex[] = {
#include "assets/textures/nes_font_static/msg_char_3d_equals_sign.i4.inc.c"
};

u64 gMsgChar3EGreaterThanSignTex[] = {
#include "assets/textures/nes_font_static/msg_char_3e_greater_than_sign.i4.inc.c"
};

u64 gMsgChar3FQuestionMarkTex[] = {
#include "assets/textures/nes_font_static/msg_char_3f_question_mark.i4.inc.c"
};

u64 gMsgChar40CommercialAtTex[] = {
#include "assets/textures/nes_font_static/msg_char_40_commercial_at.i4.inc.c"
};

u64 gMsgChar41LatinCapitalLetterATex[] = {
#include "assets/textures/nes_font_static/msg_char_41_latin_capital_letter_a.i4.inc.c"
};

u64 gMsgChar42LatinCapitalLetterBTex[] = {
#include "assets/textures/nes_font_static/msg_char_42_latin_capital_letter_b.i4.inc.c"
};

u64 gMsgChar43LatinCapitalLetterCTex[] = {
#include "assets/textures/nes_font_static/msg_char_43_latin_capital_letter_c.i4.inc.c"
};

u64 gMsgChar44LatinCapitalLetterDTex[] = {
#include "assets/textures/nes_font_static/msg_char_44_latin_capital_letter_d.i4.inc.c"
};

u64 gMsgChar45LatinCapitalLetterETex[] = {
#include "assets/textures/nes_font_static/msg_char_45_latin_capital_letter_e.i4.inc.c"
};

u64 gMsgChar46LatinCapitalLetterFTex[] = {
#include "assets/textures/nes_font_static/msg_char_46_latin_capital_letter_f.i4.inc.c"
};

u64 gMsgChar47LatinCapitalLetterGTex[] = {
#include "assets/textures/nes_font_static/msg_char_47_latin_capital_letter_g.i4.inc.c"
};

u64 gMsgChar48LatinCapitalLetterHTex[] = {
#include "assets/textures/nes_font_static/msg_char_48_latin_capital_letter_h.i4.inc.c"
};

u64 gMsgChar49LatinCapitalLetterITex[] = {
#include "assets/textures/nes_font_static/msg_char_49_latin_capital_letter_i.i4.inc.c"
};

u64 gMsgChar4ALatinCapitalLetterJTex[] = {
#include "assets/textures/nes_font_static/msg_char_4a_latin_capital_letter_j.i4.inc.c"
};

u64 gMsgChar4BLatinCapitalLetterKTex[] = {
#include "assets/textures/nes_font_static/msg_char_4b_latin_capital_letter_k.i4.inc.c"
};

u64 gMsgChar4CLatinCapitalLetterLTex[] = {
#include "assets/textures/nes_font_static/msg_char_4c_latin_capital_letter_l.i4.inc.c"
};

u64 gMsgChar4DLatinCapitalLetterMTex[] = {
#include "assets/textures/nes_font_static/msg_char_4d_latin_capital_letter_m.i4.inc.c"
};

u64 gMsgChar4ELatinCapitalLetterNTex[] = {
#include "assets/textures/nes_font_static/msg_char_4e_latin_capital_letter_n.i4.inc.c"
};

u64 gMsgChar4FLatinCapitalLetterOTex[] = {
#include "assets/textures/nes_font_static/msg_char_4f_latin_capital_letter_o.i4.inc.c"
};

u64 gMsgChar50LatinCapitalLetterPTex[] = {
#include "assets/textures/nes_font_static/msg_char_50_latin_capital_letter_p.i4.inc.c"
};

u64 gMsgChar51LatinCapitalLetterQTex[] = {
#include "assets/textures/nes_font_static/msg_char_51_latin_capital_letter_q.i4.inc.c"
};

u64 gMsgChar52LatinCapitalLetterRTex[] = {
#include "assets/textures/nes_font_static/msg_char_52_latin_capital_letter_r.i4.inc.c"
};

u64 gMsgChar53LatinCapitalLetterSTex[] = {
#include "assets/textures/nes_font_static/msg_char_53_latin_capital_letter_s.i4.inc.c"
};

u64 gMsgChar54LatinCapitalLetterTTex[] = {
#include "assets/textures/nes_font_static/msg_char_54_latin_capital_letter_t.i4.inc.c"
};

u64 gMsgChar55LatinCapitalLetterUTex[] = {
#include "assets/textures/nes_font_static/msg_char_55_latin_capital_letter_u.i4.inc.c"
};

u64 gMsgChar56LatinCapitalLetterVTex[] = {
#include "assets/textures/nes_font_static/msg_char_56_latin_capital_letter_v.i4.inc.c"
};

u64 gMsgChar57LatinCapitalLetterWTex[] = {
#include "assets/textures/nes_font_static/msg_char_57_latin_capital_letter_w.i4.inc.c"
};

u64 gMsgChar58LatinCapitalLetterXTex[] = {
#include "assets/textures/nes_font_static/msg_char_58_latin_capital_letter_x.i4.inc.c"
};

u64 gMsgChar59LatinCapitalLetterYTex[] = {
#include "assets/textures/nes_font_static/msg_char_59_latin_capital_letter_y.i4.inc.c"
};

u64 gMsgChar5ALatinCapitalLetterZTex[] = {
#include "assets/textures/nes_font_static/msg_char_5a_latin_capital_letter_z.i4.inc.c"
};

u64 gMsgChar5BLeftSquareBracketTex[] = {
#include "assets/textures/nes_font_static/msg_char_5b_left_square_bracket.i4.inc.c"
};

u64 gMsgChar5CYenSignTex[] = {
#include "assets/textures/nes_font_static/msg_char_5c_yen_sign.i4.inc.c"
};

u64 gMsgChar5DRightSquareBracketTex[] = {
#include "assets/textures/nes_font_static/msg_char_5d_right_square_bracket.i4.inc.c"
};

u64 gMsgChar5ECircumflexAccentTex[] = {
#include "assets/textures/nes_font_static/msg_char_5e_circumflex_accent.i4.inc.c"
};

u64 gMsgChar5FLowLineTex[] = {
#include "assets/textures/nes_font_static/msg_char_5f_low_line.i4.inc.c"
};

u64 gMsgChar60GraveAccentTex[] = {
#include "assets/textures/nes_font_static/msg_char_60_grave_accent.i4.inc.c"
};

u64 gMsgChar61LatinSmallLetterATex[] = {
#include "assets/textures/nes_font_static/msg_char_61_latin_small_letter_a.i4.inc.c"
};

u64 gMsgChar62LatinSmallLetterBTex[] = {
#include "assets/textures/nes_font_static/msg_char_62_latin_small_letter_b.i4.inc.c"
};

u64 gMsgChar63LatinSmallLetterCTex[] = {
#include "assets/textures/nes_font_static/msg_char_63_latin_small_letter_c.i4.inc.c"
};

u64 gMsgChar64LatinSmallLetterDTex[] = {
#include "assets/textures/nes_font_static/msg_char_64_latin_small_letter_d.i4.inc.c"
};

u64 gMsgChar65LatinSmallLetterETex[] = {
#include "assets/textures/nes_font_static/msg_char_65_latin_small_letter_e.i4.inc.c"
};

u64 gMsgChar66LatinSmallLetterFTex[] = {
#include "assets/textures/nes_font_static/msg_char_66_latin_small_letter_f.i4.inc.c"
};

u64 gMsgChar67LatinSmallLetterGTex[] = {
#include "assets/textures/nes_font_static/msg_char_67_latin_small_letter_g.i4.inc.c"
};

u64 gMsgChar68LatinSmallLetterHTex[] = {
#include "assets/textures/nes_font_static/msg_char_68_latin_small_letter_h.i4.inc.c"
};

u64 gMsgChar69LatinSmallLetterITex[] = {
#include "assets/textures/nes_font_static/msg_char_69_latin_small_letter_i.i4.inc.c"
};

u64 gMsgChar6ALatinSmallLetterJTex[] = {
#include "assets/textures/nes_font_static/msg_char_6a_latin_small_letter_j.i4.inc.c"
};

u64 gMsgChar6BLatinSmallLetterKTex[] = {
#include "assets/textures/nes_font_static/msg_char_6b_latin_small_letter_k.i4.inc.c"
};

u64 gMsgChar6CLatinSmallLetterLTex[] = {
#include "assets/textures/nes_font_static/msg_char_6c_latin_small_letter_l.i4.inc.c"
};

u64 gMsgChar6DLatinSmallLetterMTex[] = {
#include "assets/textures/nes_font_static/msg_char_6d_latin_small_letter_m.i4.inc.c"
};

u64 gMsgChar6ELatinSmallLetterNTex[] = {
#include "assets/textures/nes_font_static/msg_char_6e_latin_small_letter_n.i4.inc.c"
};

u64 gMsgChar6FLatinSmallLetterOTex[] = {
#include "assets/textures/nes_font_static/msg_char_6f_latin_small_letter_o.i4.inc.c"
};

u64 gMsgChar70LatinSmallLetterPTex[] = {
#include "assets/textures/nes_font_static/msg_char_70_latin_small_letter_p.i4.inc.c"
};

u64 gMsgChar71LatinSmallLetterQTex[] = {
#include "assets/textures/nes_font_static/msg_char_71_latin_small_letter_q.i4.inc.c"
};

u64 gMsgChar72LatinSmallLetterRTex[] = {
#include "assets/textures/nes_font_static/msg_char_72_latin_small_letter_r.i4.inc.c"
};

u64 gMsgChar73LatinSmallLetterSTex[] = {
#include "assets/textures/nes_font_static/msg_char_73_latin_small_letter_s.i4.inc.c"
};

u64 gMsgChar74LatinSmallLetterTTex[] = {
#include "assets/textures/nes_font_static/msg_char_74_latin_small_letter_t.i4.inc.c"
};

u64 gMsgChar75LatinSmallLetterUTex[] = {
#include "assets/textures/nes_font_static/msg_char_75_latin_small_letter_u.i4.inc.c"
};

u64 gMsgChar76LatinSmallLetterVTex[] = {
#include "assets/textures/nes_font_static/msg_char_76_latin_small_letter_v.i4.inc.c"
};

u64 gMsgChar77LatinSmallLetterWTex[] = {
#include "assets/textures/nes_font_static/msg_char_77_latin_small_letter_w.i4.inc.c"
};

u64 gMsgChar78LatinSmallLetterXTex[] = {
#include "assets/textures/nes_font_static/msg_char_78_latin_small_letter_x.i4.inc.c"
};

u64 gMsgChar79LatinSmallLetterYTex[] = {
#include "assets/textures/nes_font_static/msg_char_79_latin_small_letter_y.i4.inc.c"
};

u64 gMsgChar7ALatinSmallLetterZTex[] = {
#include "assets/textures/nes_font_static/msg_char_7a_latin_small_letter_z.i4.inc.c"
};

u64 gMsgChar7BLeftCurlyBracketTex[] = {
#include "assets/textures/nes_font_static/msg_char_7b_left_curly_bracket.i4.inc.c"
};

u64 gMsgChar7CVerticalLineTex[] = {
#include "assets/textures/nes_font_static/msg_char_7c_vertical_line.i4.inc.c"
};

u64 gMsgChar7DRightCurlyBracketTex[] = {
#include "assets/textures/nes_font_static/msg_char_7d_right_curly_bracket.i4.inc.c"
};

u64 gMsgChar7ETildeTex[] = {
#include "assets/textures/nes_font_static/msg_char_7e_tilde.i4.inc.c"
};

u64 gMsgChar7FBlankTex[] = {
#include "assets/textures/nes_font_static/msg_char_7f_blank.i4.inc.c"
};

u64 gMsgChar80LatinCapitalLetterAWithGraveTex[] = {
#include "assets/textures/nes_font_static/msg_char_80_latin_capital_letter_a_with_grave.i4.inc.c"
};

u64 gMsgChar81LatinCapitalLetterIWithCircumflexTex[] = {
#include "assets/textures/nes_font_static/msg_char_81_latin_capital_letter_i_with_circumflex.i4.inc.c"
};

u64 gMsgChar82LatinCapitalLetterAWithCircumflexTex[] = {
#include "assets/textures/nes_font_static/msg_char_82_latin_capital_letter_a_with_circumflex.i4.inc.c"
};

u64 gMsgChar83LatinCapitalLetterAWithDiaeresisTex[] = {
#include "assets/textures/nes_font_static/msg_char_83_latin_capital_letter_a_with_diaeresis.i4.inc.c"
};

u64 gMsgChar84LatinCapitalLetterCWithCedillaTex[] = {
#include "assets/textures/nes_font_static/msg_char_84_latin_capital_letter_c_with_cedilla.i4.inc.c"
};

u64 gMsgChar85LatinCapitalLetterEWithGraveTex[] = {
#include "assets/textures/nes_font_static/msg_char_85_latin_capital_letter_e_with_grave.i4.inc.c"
};

u64 gMsgChar86LatinCapitalLetterEWithAcuteTex[] = {
#include "assets/textures/nes_font_static/msg_char_86_latin_capital_letter_e_with_acute.i4.inc.c"
};

u64 gMsgChar87LatinCapitalLetterEWithCircumflexTex[] = {
#include "assets/textures/nes_font_static/msg_char_87_latin_capital_letter_e_with_circumflex.i4.inc.c"
};

u64 gMsgChar88LatinCapitalLetterEWithDiaeresisTex[] = {
#include "assets/textures/nes_font_static/msg_char_88_latin_capital_letter_e_with_diaeresis.i4.inc.c"
};

u64 gMsgChar89LatinCapitalLetterIWithDiaeresisTex[] = {
#include "assets/textures/nes_font_static/msg_char_89_latin_capital_letter_i_with_diaeresis.i4.inc.c"
};

u64 gMsgChar8ALatinCapitalLetterOWithCircumflexTex[] = {
#include "assets/textures/nes_font_static/msg_char_8a_latin_capital_letter_o_with_circumflex.i4.inc.c"
};

u64 gMsgChar8BLatinCapitalLetterOWithDiaeresisTex[] = {
#include "assets/textures/nes_font_static/msg_char_8b_latin_capital_letter_o_with_diaeresis.i4.inc.c"
};

u64 gMsgChar8CLatinCapitalLetterUWithGraveTex[] = {
#include "assets/textures/nes_font_static/msg_char_8c_latin_capital_letter_u_with_grave.i4.inc.c"
};

u64 gMsgChar8DLatinCapitalLetterUWithCircumflexTex[] = {
#include "assets/textures/nes_font_static/msg_char_8d_latin_capital_letter_u_with_circumflex.i4.inc.c"
};

u64 gMsgChar8ELatinCapitalLetterUWithDiaeresisTex[] = {
#include "assets/textures/nes_font_static/msg_char_8e_latin_capital_letter_u_with_diaeresis.i4.inc.c"
};

u64 gMsgChar8FLatinSmallLetterSharpSTex[] = {
#include "assets/textures/nes_font_static/msg_char_8f_latin_small_letter_sharp_s.i4.inc.c"
};

u64 gMsgChar90LatinSmallLetterAWithGraveTex[] = {
#include "assets/textures/nes_font_static/msg_char_90_latin_small_letter_a_with_grave.i4.inc.c"
};

u64 gMsgChar91LatinSmallLetterAWithAcuteTex[] = {
#include "assets/textures/nes_font_static/msg_char_91_latin_small_letter_a_with_acute.i4.inc.c"
};

u64 gMsgChar92LatinSmallLetterAWithCircumflexTex[] = {
#include "assets/textures/nes_font_static/msg_char_92_latin_small_letter_a_with_circumflex.i4.inc.c"
};

u64 gMsgChar93LatinSmallLetterAWithDiaeresisTex[] = {
#include "assets/textures/nes_font_static/msg_char_93_latin_small_letter_a_with_diaeresis.i4.inc.c"
};

u64 gMsgChar94LatinSmallLetterCWithCedillaTex[] = {
#include "assets/textures/nes_font_static/msg_char_94_latin_small_letter_c_with_cedilla.i4.inc.c"
};

u64 gMsgChar95LatinSmallLetterEWithGraveTex[] = {
#include "assets/textures/nes_font_static/msg_char_95_latin_small_letter_e_with_grave.i4.inc.c"
};

u64 gMsgChar96LatinSmallLetterEWithAcuteTex[] = {
#include "assets/textures/nes_font_static/msg_char_96_latin_small_letter_e_with_acute.i4.inc.c"
};

u64 gMsgChar97LatinSmallLetterEWithCircumflexTex[] = {
#include "assets/textures/nes_font_static/msg_char_97_latin_small_letter_e_with_circumflex.i4.inc.c"
};

u64 gMsgChar98LatinSmallLetterEWithDiaeresisTex[] = {
#include "assets/textures/nes_font_static/msg_char_98_latin_small_letter_e_with_diaeresis.i4.inc.c"
};

u64 gMsgChar99LatinSmallLetterIWithDiaeresisTex[] = {
#include "assets/textures/nes_font_static/msg_char_99_latin_small_letter_i_with_diaeresis.i4.inc.c"
};

u64 gMsgChar9ALatinSmallLetterOWithCircumflexTex[] = {
#include "assets/textures/nes_font_static/msg_char_9a_latin_small_letter_o_with_circumflex.i4.inc.c"
};

u64 gMsgChar9BLatinSmallLetterOWithDiaeresisTex[] = {
#include "assets/textures/nes_font_static/msg_char_9b_latin_small_letter_o_with_diaeresis.i4.inc.c"
};

u64 gMsgChar9CLatinSmallLetterUWithGraveTex[] = {
#include "assets/textures/nes_font_static/msg_char_9c_latin_small_letter_u_with_grave.i4.inc.c"
};

u64 gMsgChar9DLatinSmallLetterUWithCircumflexTex[] = {
#include "assets/textures/nes_font_static/msg_char_9d_latin_small_letter_u_with_circumflex.i4.inc.c"
};

u64 gMsgChar9ELatinSmallLetterUWithDiaeresisTex[] = {
#include "assets/textures/nes_font_static/msg_char_9e_latin_small_letter_u_with_diaeresis.i4.inc.c"
};

u64 gMsgChar9FButtonATex[] = {
#include "assets/textures/nes_font_static/msg_char_9f_button_a.i4.inc.c"
};

u64 gMsgCharA0ButtonBTex[] = {
#include "assets/textures/nes_font_static/msg_char_a0_button_b.i4.inc.c"
};

u64 gMsgCharA1ButtonCTex[] = {
#include "assets/textures/nes_font_static/msg_char_a1_button_c.i4.inc.c"
};

u64 gMsgCharA2ButtonLTex[] = {
#include "assets/textures/nes_font_static/msg_char_a2_button_l.i4.inc.c"
};

u64 gMsgCharA3ButtonRTex[] = {
#include "assets/textures/nes_font_static/msg_char_a3_button_r.i4.inc.c"
};

u64 gMsgCharA4ButtonZTex[] = {
#include "assets/textures/nes_font_static/msg_char_a4_button_z.i4.inc.c"
};

u64 gMsgCharA5ButtonCUpTex[] = {
#include "assets/textures/nes_font_static/msg_char_a5_button_c_up.i4.inc.c"
};

u64 gMsgCharA6ButtonCDownTex[] = {
#include "assets/textures/nes_font_static/msg_char_a6_button_c_down.i4.inc.c"
};

u64 gMsgCharA7ButtonCLeftTex[] = {
#include "assets/textures/nes_font_static/msg_char_a7_button_c_left.i4.inc.c"
};

u64 gMsgCharA8ButtonCRightTex[] = {
#include "assets/textures/nes_font_static/msg_char_a8_button_c_right.i4.inc.c"
};

u64 gMsgCharA9ZTargetSignTex[] = {
#include "assets/textures/nes_font_static/msg_char_a9_z_target_sign.i4.inc.c"
};

u64 gMsgCharAAControlStickTex[] = {
#include "assets/textures/nes_font_static/msg_char_aa_control_stick.i4.inc.c"
};

u64 gMsgCharABControlPadTex[] = {
#include "assets/textures/nes_font_static/msg_char_ab_control_pad.i4.inc.c"
};

