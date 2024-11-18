#ifndef SEGMENT_SYMBOLS_H
#define SEGMENT_SYMBOLS_H

#include "versions.h"
#include "ultra64/ultratypes.h"

#define DECLARE_SEGMENT(name)          \
    extern u8 _##name##SegmentStart[]; \
    extern u8 _##name##SegmentEnd[];

#define DECLARE_ROM_SEGMENT(name)         \
    extern u8 _##name##SegmentRomStart[]; \
    extern u8 _##name##SegmentRomEnd[];

#define DECLARE_BSS_SEGMENT(name)         \
    extern u8 _##name##SegmentBssStart[]; \
    extern u8 _##name##SegmentBssEnd[];

#define DECLARE_OVERLAY_SEGMENT(name) \
    DECLARE_SEGMENT(ovl_##name)       \
    DECLARE_ROM_SEGMENT(ovl_##name)

DECLARE_SEGMENT(boot)
DECLARE_ROM_SEGMENT(boot)

DECLARE_SEGMENT(dmadata)
DECLARE_ROM_SEGMENT(dmadata)

DECLARE_ROM_SEGMENT(Audiobank)
DECLARE_ROM_SEGMENT(Audioseq)
DECLARE_ROM_SEGMENT(Audiotable)

#if OOT_NTSC
DECLARE_SEGMENT(kanji)
DECLARE_ROM_SEGMENT(kanji)
#endif

DECLARE_SEGMENT(link_animetion)
DECLARE_ROM_SEGMENT(link_animetion)

DECLARE_ROM_SEGMENT(icon_item_static)
DECLARE_ROM_SEGMENT(icon_item_24_static)
DECLARE_ROM_SEGMENT(icon_item_field_static)
DECLARE_ROM_SEGMENT(icon_item_dungeon_static)
DECLARE_ROM_SEGMENT(icon_item_gameover_static)

#if OOT_NTSC
DECLARE_ROM_SEGMENT(icon_item_jpn_static)
DECLARE_ROM_SEGMENT(icon_item_nes_static)
#else
DECLARE_ROM_SEGMENT(icon_item_nes_static)
DECLARE_ROM_SEGMENT(icon_item_ger_static)
DECLARE_ROM_SEGMENT(icon_item_fra_static)
#endif

DECLARE_ROM_SEGMENT(item_name_static)
DECLARE_ROM_SEGMENT(map_name_static)
DECLARE_ROM_SEGMENT(do_action_static)
DECLARE_ROM_SEGMENT(message_static)
DECLARE_ROM_SEGMENT(message_texture_static)
DECLARE_ROM_SEGMENT(nes_font_static)

#if OOT_NTSC
DECLARE_SEGMENT(jpn_message_data_static)
DECLARE_ROM_SEGMENT(jpn_message_data_static)
DECLARE_SEGMENT(nes_message_data_static)
DECLARE_ROM_SEGMENT(nes_message_data_static)
#else
DECLARE_SEGMENT(nes_message_data_static)
DECLARE_ROM_SEGMENT(nes_message_data_static)
DECLARE_SEGMENT(ger_message_data_static)
DECLARE_ROM_SEGMENT(ger_message_data_static)
DECLARE_SEGMENT(fra_message_data_static)
DECLARE_ROM_SEGMENT(fra_message_data_static)
#endif

DECLARE_SEGMENT(staff_message_data_static)
DECLARE_ROM_SEGMENT(staff_message_data_static)

DECLARE_ROM_SEGMENT(map_grand_static)
DECLARE_ROM_SEGMENT(map_i_static)
DECLARE_ROM_SEGMENT(map_48x85_static)

DECLARE_SEGMENT(code)
DECLARE_ROM_SEGMENT(code)
DECLARE_BSS_SEGMENT(code)

// N64-only, these are not wrapped in an `#if PLATFORM_N64`
// so that the N64DD code can always be built.
DECLARE_SEGMENT(n64dd)
DECLARE_ROM_SEGMENT(n64dd)
DECLARE_BSS_SEGMENT(n64dd)

DECLARE_OVERLAY_SEGMENT(kaleido_scope)
DECLARE_OVERLAY_SEGMENT(player_actor)
DECLARE_OVERLAY_SEGMENT(map_mark_data)

DECLARE_ROM_SEGMENT(z_select_static)
DECLARE_ROM_SEGMENT(nintendo_rogo_static)
DECLARE_ROM_SEGMENT(title_static)
DECLARE_ROM_SEGMENT(parameter_static)
DECLARE_ROM_SEGMENT(vr_fine0_static)
DECLARE_ROM_SEGMENT(vr_fine0_pal_static)
DECLARE_ROM_SEGMENT(vr_fine1_static)
DECLARE_ROM_SEGMENT(vr_fine1_pal_static)
DECLARE_ROM_SEGMENT(vr_fine2_static)
DECLARE_ROM_SEGMENT(vr_fine2_pal_static)
DECLARE_ROM_SEGMENT(vr_fine3_static)
DECLARE_ROM_SEGMENT(vr_fine3_pal_static)
DECLARE_ROM_SEGMENT(vr_cloud0_static)
DECLARE_ROM_SEGMENT(vr_cloud0_pal_static)
DECLARE_ROM_SEGMENT(vr_cloud1_static)
DECLARE_ROM_SEGMENT(vr_cloud1_pal_static)
DECLARE_ROM_SEGMENT(vr_cloud2_static)
DECLARE_ROM_SEGMENT(vr_cloud2_pal_static)
DECLARE_ROM_SEGMENT(vr_cloud3_static)
DECLARE_ROM_SEGMENT(vr_cloud3_pal_static)
DECLARE_ROM_SEGMENT(vr_holy0_static)
DECLARE_ROM_SEGMENT(vr_holy0_pal_static)
DECLARE_ROM_SEGMENT(vr_holy1_static)
DECLARE_ROM_SEGMENT(vr_holy1_pal_static)
DECLARE_ROM_SEGMENT(vr_MDVR_static)
DECLARE_ROM_SEGMENT(vr_MDVR_pal_static)
DECLARE_ROM_SEGMENT(vr_MNVR_static)
DECLARE_ROM_SEGMENT(vr_MNVR_pal_static)
DECLARE_ROM_SEGMENT(vr_RUVR_static)
DECLARE_ROM_SEGMENT(vr_RUVR_pal_static)
DECLARE_ROM_SEGMENT(vr_LHVR_static)
DECLARE_ROM_SEGMENT(vr_LHVR_pal_static)
DECLARE_ROM_SEGMENT(vr_KHVR_static)
DECLARE_ROM_SEGMENT(vr_KHVR_pal_static)
DECLARE_ROM_SEGMENT(vr_K3VR_static)
DECLARE_ROM_SEGMENT(vr_K3VR_pal_static)
DECLARE_ROM_SEGMENT(vr_K4VR_static)
DECLARE_ROM_SEGMENT(vr_K4VR_pal_static)
DECLARE_ROM_SEGMENT(vr_K5VR_static)
DECLARE_ROM_SEGMENT(vr_K5VR_pal_static)
DECLARE_ROM_SEGMENT(vr_SP1a_static)
DECLARE_ROM_SEGMENT(vr_SP1a_pal_static)
DECLARE_ROM_SEGMENT(vr_MLVR_static)
DECLARE_ROM_SEGMENT(vr_MLVR_pal_static)
DECLARE_ROM_SEGMENT(vr_KKRVR_static)
DECLARE_ROM_SEGMENT(vr_KKRVR_pal_static)
DECLARE_ROM_SEGMENT(vr_KR3VR_static)
DECLARE_ROM_SEGMENT(vr_KR3VR_pal_static)
DECLARE_ROM_SEGMENT(vr_IPVR_static)
DECLARE_ROM_SEGMENT(vr_IPVR_pal_static)
DECLARE_ROM_SEGMENT(vr_KSVR_static)
DECLARE_ROM_SEGMENT(vr_KSVR_pal_static)
DECLARE_ROM_SEGMENT(vr_GLVR_static)
DECLARE_ROM_SEGMENT(vr_GLVR_pal_static)
DECLARE_ROM_SEGMENT(vr_ZRVR_static)
DECLARE_ROM_SEGMENT(vr_ZRVR_pal_static)
DECLARE_ROM_SEGMENT(vr_DGVR_static)
DECLARE_ROM_SEGMENT(vr_DGVR_pal_static)
DECLARE_ROM_SEGMENT(vr_ALVR_static)
DECLARE_ROM_SEGMENT(vr_ALVR_pal_static)
DECLARE_ROM_SEGMENT(vr_NSVR_static)
DECLARE_ROM_SEGMENT(vr_NSVR_pal_static)
DECLARE_ROM_SEGMENT(vr_LBVR_static)
DECLARE_ROM_SEGMENT(vr_LBVR_pal_static)
DECLARE_ROM_SEGMENT(vr_TTVR_static)
DECLARE_ROM_SEGMENT(vr_TTVR_pal_static)
DECLARE_ROM_SEGMENT(vr_FCVR_static)
DECLARE_ROM_SEGMENT(vr_FCVR_pal_static)
DECLARE_ROM_SEGMENT(elf_message_field)
DECLARE_ROM_SEGMENT(elf_message_ydan)

DECLARE_ROM_SEGMENT(ydan_room_0)
DECLARE_ROM_SEGMENT(ydan_room_1)
DECLARE_ROM_SEGMENT(ydan_room_2)
DECLARE_ROM_SEGMENT(ydan_room_3)
DECLARE_ROM_SEGMENT(ydan_room_4)
DECLARE_ROM_SEGMENT(ydan_room_5)
DECLARE_ROM_SEGMENT(ydan_room_6)
DECLARE_ROM_SEGMENT(ydan_room_7)
DECLARE_ROM_SEGMENT(ydan_room_8)
DECLARE_ROM_SEGMENT(ydan_room_9)
DECLARE_ROM_SEGMENT(ydan_room_10)
DECLARE_ROM_SEGMENT(ydan_room_11)

DECLARE_ROM_SEGMENT(ddan_room_0)
DECLARE_ROM_SEGMENT(ddan_room_1)
DECLARE_ROM_SEGMENT(ddan_room_2)
DECLARE_ROM_SEGMENT(ddan_room_3)
DECLARE_ROM_SEGMENT(ddan_room_4)
DECLARE_ROM_SEGMENT(ddan_room_5)
DECLARE_ROM_SEGMENT(ddan_room_6)
DECLARE_ROM_SEGMENT(ddan_room_7)
DECLARE_ROM_SEGMENT(ddan_room_8)
DECLARE_ROM_SEGMENT(ddan_room_9)
DECLARE_ROM_SEGMENT(ddan_room_10)
DECLARE_ROM_SEGMENT(ddan_room_11)
DECLARE_ROM_SEGMENT(ddan_room_12)
DECLARE_ROM_SEGMENT(ddan_room_13)
DECLARE_ROM_SEGMENT(ddan_room_14)
DECLARE_ROM_SEGMENT(ddan_room_15)
DECLARE_ROM_SEGMENT(ddan_room_16)

DECLARE_ROM_SEGMENT(bdan_room_0)
DECLARE_ROM_SEGMENT(bdan_room_1)
DECLARE_ROM_SEGMENT(bdan_room_2)
DECLARE_ROM_SEGMENT(bdan_room_3)
DECLARE_ROM_SEGMENT(bdan_room_4)
DECLARE_ROM_SEGMENT(bdan_room_5)
DECLARE_ROM_SEGMENT(bdan_room_6)
DECLARE_ROM_SEGMENT(bdan_room_7)
DECLARE_ROM_SEGMENT(bdan_room_8)
DECLARE_ROM_SEGMENT(bdan_room_9)
DECLARE_ROM_SEGMENT(bdan_room_10)
DECLARE_ROM_SEGMENT(bdan_room_11)
DECLARE_ROM_SEGMENT(bdan_room_12)
DECLARE_ROM_SEGMENT(bdan_room_13)
DECLARE_ROM_SEGMENT(bdan_room_14)
DECLARE_ROM_SEGMENT(bdan_room_15)

DECLARE_ROM_SEGMENT(Bmori1_room_0)
DECLARE_ROM_SEGMENT(Bmori1_room_1)
DECLARE_ROM_SEGMENT(Bmori1_room_2)
DECLARE_ROM_SEGMENT(Bmori1_room_3)
DECLARE_ROM_SEGMENT(Bmori1_room_4)
DECLARE_ROM_SEGMENT(Bmori1_room_5)
DECLARE_ROM_SEGMENT(Bmori1_room_6)
DECLARE_ROM_SEGMENT(Bmori1_room_7)
DECLARE_ROM_SEGMENT(Bmori1_room_8)
DECLARE_ROM_SEGMENT(Bmori1_room_9)
DECLARE_ROM_SEGMENT(Bmori1_room_10)
DECLARE_ROM_SEGMENT(Bmori1_room_11)
DECLARE_ROM_SEGMENT(Bmori1_room_12)
DECLARE_ROM_SEGMENT(Bmori1_room_13)
DECLARE_ROM_SEGMENT(Bmori1_room_14)
DECLARE_ROM_SEGMENT(Bmori1_room_15)
DECLARE_ROM_SEGMENT(Bmori1_room_16)
DECLARE_ROM_SEGMENT(Bmori1_room_17)
DECLARE_ROM_SEGMENT(Bmori1_room_18)
DECLARE_ROM_SEGMENT(Bmori1_room_19)
DECLARE_ROM_SEGMENT(Bmori1_room_20)
DECLARE_ROM_SEGMENT(Bmori1_room_21)
DECLARE_ROM_SEGMENT(Bmori1_room_22)

DECLARE_ROM_SEGMENT(HIDAN_room_0)
DECLARE_ROM_SEGMENT(HIDAN_room_1)
DECLARE_ROM_SEGMENT(HIDAN_room_2)
DECLARE_ROM_SEGMENT(HIDAN_room_3)
DECLARE_ROM_SEGMENT(HIDAN_room_4)
DECLARE_ROM_SEGMENT(HIDAN_room_5)
DECLARE_ROM_SEGMENT(HIDAN_room_6)
DECLARE_ROM_SEGMENT(HIDAN_room_7)
DECLARE_ROM_SEGMENT(HIDAN_room_8)
DECLARE_ROM_SEGMENT(HIDAN_room_9)
DECLARE_ROM_SEGMENT(HIDAN_room_10)
DECLARE_ROM_SEGMENT(HIDAN_room_11)
DECLARE_ROM_SEGMENT(HIDAN_room_12)
DECLARE_ROM_SEGMENT(HIDAN_room_13)
DECLARE_ROM_SEGMENT(HIDAN_room_14)
DECLARE_ROM_SEGMENT(HIDAN_room_15)
DECLARE_ROM_SEGMENT(HIDAN_room_16)
DECLARE_ROM_SEGMENT(HIDAN_room_17)
DECLARE_ROM_SEGMENT(HIDAN_room_18)
DECLARE_ROM_SEGMENT(HIDAN_room_19)
DECLARE_ROM_SEGMENT(HIDAN_room_20)
DECLARE_ROM_SEGMENT(HIDAN_room_21)
DECLARE_ROM_SEGMENT(HIDAN_room_22)
DECLARE_ROM_SEGMENT(HIDAN_room_23)
DECLARE_ROM_SEGMENT(HIDAN_room_24)
DECLARE_ROM_SEGMENT(HIDAN_room_25)
DECLARE_ROM_SEGMENT(HIDAN_room_26)

DECLARE_ROM_SEGMENT(MIZUsin_room_0)
DECLARE_ROM_SEGMENT(MIZUsin_room_1)
DECLARE_ROM_SEGMENT(MIZUsin_room_2)
DECLARE_ROM_SEGMENT(MIZUsin_room_3)
DECLARE_ROM_SEGMENT(MIZUsin_room_4)
DECLARE_ROM_SEGMENT(MIZUsin_room_5)
DECLARE_ROM_SEGMENT(MIZUsin_room_6)
DECLARE_ROM_SEGMENT(MIZUsin_room_7)
DECLARE_ROM_SEGMENT(MIZUsin_room_8)
DECLARE_ROM_SEGMENT(MIZUsin_room_9)
DECLARE_ROM_SEGMENT(MIZUsin_room_10)
DECLARE_ROM_SEGMENT(MIZUsin_room_11)
DECLARE_ROM_SEGMENT(MIZUsin_room_12)
DECLARE_ROM_SEGMENT(MIZUsin_room_13)
DECLARE_ROM_SEGMENT(MIZUsin_room_14)
DECLARE_ROM_SEGMENT(MIZUsin_room_15)
DECLARE_ROM_SEGMENT(MIZUsin_room_16)
DECLARE_ROM_SEGMENT(MIZUsin_room_17)
DECLARE_ROM_SEGMENT(MIZUsin_room_18)
DECLARE_ROM_SEGMENT(MIZUsin_room_19)
DECLARE_ROM_SEGMENT(MIZUsin_room_20)
DECLARE_ROM_SEGMENT(MIZUsin_room_21)
DECLARE_ROM_SEGMENT(MIZUsin_room_22)

DECLARE_ROM_SEGMENT(jyasinzou_room_0)
DECLARE_ROM_SEGMENT(jyasinzou_room_1)
DECLARE_ROM_SEGMENT(jyasinzou_room_2)
DECLARE_ROM_SEGMENT(jyasinzou_room_3)
DECLARE_ROM_SEGMENT(jyasinzou_room_4)
DECLARE_ROM_SEGMENT(jyasinzou_room_5)
DECLARE_ROM_SEGMENT(jyasinzou_room_6)
DECLARE_ROM_SEGMENT(jyasinzou_room_7)
DECLARE_ROM_SEGMENT(jyasinzou_room_8)
DECLARE_ROM_SEGMENT(jyasinzou_room_9)
DECLARE_ROM_SEGMENT(jyasinzou_room_10)
DECLARE_ROM_SEGMENT(jyasinzou_room_11)
DECLARE_ROM_SEGMENT(jyasinzou_room_12)
DECLARE_ROM_SEGMENT(jyasinzou_room_13)
DECLARE_ROM_SEGMENT(jyasinzou_room_14)
DECLARE_ROM_SEGMENT(jyasinzou_room_15)
DECLARE_ROM_SEGMENT(jyasinzou_room_16)
DECLARE_ROM_SEGMENT(jyasinzou_room_17)
DECLARE_ROM_SEGMENT(jyasinzou_room_18)
DECLARE_ROM_SEGMENT(jyasinzou_room_19)
DECLARE_ROM_SEGMENT(jyasinzou_room_20)
DECLARE_ROM_SEGMENT(jyasinzou_room_21)
DECLARE_ROM_SEGMENT(jyasinzou_room_22)
DECLARE_ROM_SEGMENT(jyasinzou_room_23)
DECLARE_ROM_SEGMENT(jyasinzou_room_24)
DECLARE_ROM_SEGMENT(jyasinzou_room_25)
DECLARE_ROM_SEGMENT(jyasinzou_room_26)
DECLARE_ROM_SEGMENT(jyasinzou_room_27)
DECLARE_ROM_SEGMENT(jyasinzou_room_28)

DECLARE_ROM_SEGMENT(HAKAdan_room_0)
DECLARE_ROM_SEGMENT(HAKAdan_room_1)
DECLARE_ROM_SEGMENT(HAKAdan_room_2)
DECLARE_ROM_SEGMENT(HAKAdan_room_3)
DECLARE_ROM_SEGMENT(HAKAdan_room_4)
DECLARE_ROM_SEGMENT(HAKAdan_room_5)
DECLARE_ROM_SEGMENT(HAKAdan_room_6)
DECLARE_ROM_SEGMENT(HAKAdan_room_7)
DECLARE_ROM_SEGMENT(HAKAdan_room_8)
DECLARE_ROM_SEGMENT(HAKAdan_room_9)
DECLARE_ROM_SEGMENT(HAKAdan_room_10)
DECLARE_ROM_SEGMENT(HAKAdan_room_11)
DECLARE_ROM_SEGMENT(HAKAdan_room_12)
DECLARE_ROM_SEGMENT(HAKAdan_room_13)
DECLARE_ROM_SEGMENT(HAKAdan_room_14)
DECLARE_ROM_SEGMENT(HAKAdan_room_15)
DECLARE_ROM_SEGMENT(HAKAdan_room_16)
DECLARE_ROM_SEGMENT(HAKAdan_room_17)
DECLARE_ROM_SEGMENT(HAKAdan_room_18)
DECLARE_ROM_SEGMENT(HAKAdan_room_19)
DECLARE_ROM_SEGMENT(HAKAdan_room_20)
DECLARE_ROM_SEGMENT(HAKAdan_room_21)
DECLARE_ROM_SEGMENT(HAKAdan_room_22)

DECLARE_ROM_SEGMENT(HAKAdanCH_room_0)
DECLARE_ROM_SEGMENT(HAKAdanCH_room_1)
DECLARE_ROM_SEGMENT(HAKAdanCH_room_2)
DECLARE_ROM_SEGMENT(HAKAdanCH_room_3)
DECLARE_ROM_SEGMENT(HAKAdanCH_room_4)
DECLARE_ROM_SEGMENT(HAKAdanCH_room_5)
DECLARE_ROM_SEGMENT(HAKAdanCH_room_6)

DECLARE_ROM_SEGMENT(ice_doukutu_room_0)
DECLARE_ROM_SEGMENT(ice_doukutu_room_1)
DECLARE_ROM_SEGMENT(ice_doukutu_room_2)
DECLARE_ROM_SEGMENT(ice_doukutu_room_3)
DECLARE_ROM_SEGMENT(ice_doukutu_room_4)
DECLARE_ROM_SEGMENT(ice_doukutu_room_5)
DECLARE_ROM_SEGMENT(ice_doukutu_room_6)
DECLARE_ROM_SEGMENT(ice_doukutu_room_7)
DECLARE_ROM_SEGMENT(ice_doukutu_room_8)
DECLARE_ROM_SEGMENT(ice_doukutu_room_9)
DECLARE_ROM_SEGMENT(ice_doukutu_room_10)
DECLARE_ROM_SEGMENT(ice_doukutu_room_11)

DECLARE_ROM_SEGMENT(ganon_room_0)
DECLARE_ROM_SEGMENT(ganon_room_1)
DECLARE_ROM_SEGMENT(ganon_room_2)
DECLARE_ROM_SEGMENT(ganon_room_3)
DECLARE_ROM_SEGMENT(ganon_room_4)
DECLARE_ROM_SEGMENT(ganon_room_5)
DECLARE_ROM_SEGMENT(ganon_room_6)
DECLARE_ROM_SEGMENT(ganon_room_7)
DECLARE_ROM_SEGMENT(ganon_room_8)
DECLARE_ROM_SEGMENT(ganon_room_9)

DECLARE_ROM_SEGMENT(men_room_0)
DECLARE_ROM_SEGMENT(men_room_1)
DECLARE_ROM_SEGMENT(men_room_2)
DECLARE_ROM_SEGMENT(men_room_3)
DECLARE_ROM_SEGMENT(men_room_4)
DECLARE_ROM_SEGMENT(men_room_5)
DECLARE_ROM_SEGMENT(men_room_6)
DECLARE_ROM_SEGMENT(men_room_7)
DECLARE_ROM_SEGMENT(men_room_8)
DECLARE_ROM_SEGMENT(men_room_9)
DECLARE_ROM_SEGMENT(men_room_10)

DECLARE_ROM_SEGMENT(gerudoway_room_0)
DECLARE_ROM_SEGMENT(gerudoway_room_1)
DECLARE_ROM_SEGMENT(gerudoway_room_2)
DECLARE_ROM_SEGMENT(gerudoway_room_3)
DECLARE_ROM_SEGMENT(gerudoway_room_4)
DECLARE_ROM_SEGMENT(gerudoway_room_5)

DECLARE_ROM_SEGMENT(ganontika_room_0)
DECLARE_ROM_SEGMENT(ganontika_room_1)
DECLARE_ROM_SEGMENT(ganontika_room_2)
DECLARE_ROM_SEGMENT(ganontika_room_3)
DECLARE_ROM_SEGMENT(ganontika_room_4)
DECLARE_ROM_SEGMENT(ganontika_room_5)
DECLARE_ROM_SEGMENT(ganontika_room_6)
DECLARE_ROM_SEGMENT(ganontika_room_7)
DECLARE_ROM_SEGMENT(ganontika_room_8)
DECLARE_ROM_SEGMENT(ganontika_room_9)
DECLARE_ROM_SEGMENT(ganontika_room_10)
DECLARE_ROM_SEGMENT(ganontika_room_11)
DECLARE_ROM_SEGMENT(ganontika_room_12)
DECLARE_ROM_SEGMENT(ganontika_room_13)
DECLARE_ROM_SEGMENT(ganontika_room_14)
DECLARE_ROM_SEGMENT(ganontika_room_15)
DECLARE_ROM_SEGMENT(ganontika_room_16)
DECLARE_ROM_SEGMENT(ganontika_room_17)
DECLARE_ROM_SEGMENT(ganontika_room_18)
DECLARE_ROM_SEGMENT(ganontika_room_19)

DECLARE_ROM_SEGMENT(ganon_sonogo_room_0)
DECLARE_ROM_SEGMENT(ganon_sonogo_room_1)
DECLARE_ROM_SEGMENT(ganon_sonogo_room_2)
DECLARE_ROM_SEGMENT(ganon_sonogo_room_3)
DECLARE_ROM_SEGMENT(ganon_sonogo_room_4)

DECLARE_ROM_SEGMENT(ganontikasonogo_room_0)
DECLARE_ROM_SEGMENT(ganontikasonogo_room_1)

DECLARE_ROM_SEGMENT(takaraya_room_0)
DECLARE_ROM_SEGMENT(takaraya_room_1)
DECLARE_ROM_SEGMENT(takaraya_room_2)
DECLARE_ROM_SEGMENT(takaraya_room_3)
DECLARE_ROM_SEGMENT(takaraya_room_4)
DECLARE_ROM_SEGMENT(takaraya_room_5)
DECLARE_ROM_SEGMENT(takaraya_room_6)

DECLARE_ROM_SEGMENT(ydan_boss_room_0)
DECLARE_ROM_SEGMENT(ydan_boss_room_1)

DECLARE_ROM_SEGMENT(ddan_boss_room_0)
DECLARE_ROM_SEGMENT(ddan_boss_room_1)

DECLARE_ROM_SEGMENT(bdan_boss_room_0)
DECLARE_ROM_SEGMENT(bdan_boss_room_1)

DECLARE_ROM_SEGMENT(moribossroom_room_0)
DECLARE_ROM_SEGMENT(moribossroom_room_1)

DECLARE_ROM_SEGMENT(FIRE_bs_room_0)
DECLARE_ROM_SEGMENT(FIRE_bs_room_1)

DECLARE_ROM_SEGMENT(MIZUsin_bs_room_0)
DECLARE_ROM_SEGMENT(MIZUsin_bs_room_1)

DECLARE_ROM_SEGMENT(jyasinboss_room_0)
DECLARE_ROM_SEGMENT(jyasinboss_room_1)
DECLARE_ROM_SEGMENT(jyasinboss_room_2)
DECLARE_ROM_SEGMENT(jyasinboss_room_3)

DECLARE_ROM_SEGMENT(HAKAdan_bs_room_0)
DECLARE_ROM_SEGMENT(HAKAdan_bs_room_1)

DECLARE_ROM_SEGMENT(ganon_boss_room_0)

DECLARE_ROM_SEGMENT(ganon_final_room_0)

DECLARE_ROM_SEGMENT(entra_room_0)

DECLARE_ROM_SEGMENT(entra_n_room_0)

DECLARE_ROM_SEGMENT(enrui_room_0)

DECLARE_ROM_SEGMENT(market_alley_room_0)

DECLARE_ROM_SEGMENT(market_alley_n_room_0)

DECLARE_ROM_SEGMENT(market_day_room_0)

DECLARE_ROM_SEGMENT(market_night_room_0)

DECLARE_ROM_SEGMENT(market_ruins_room_0)

DECLARE_ROM_SEGMENT(shrine_room_0)

DECLARE_ROM_SEGMENT(shrine_n_room_0)

DECLARE_ROM_SEGMENT(shrine_r_room_0)

DECLARE_ROM_SEGMENT(kokiri_home_room_0)

DECLARE_ROM_SEGMENT(kokiri_home3_room_0)

DECLARE_ROM_SEGMENT(kokiri_home4_room_0)

DECLARE_ROM_SEGMENT(kokiri_home5_room_0)

DECLARE_ROM_SEGMENT(kakariko_room_0)

DECLARE_ROM_SEGMENT(kakariko3_room_0)

DECLARE_ROM_SEGMENT(shop1_room_0)

DECLARE_ROM_SEGMENT(kokiri_shop_room_0)

DECLARE_ROM_SEGMENT(golon_room_0)

DECLARE_ROM_SEGMENT(zoora_room_0)

DECLARE_ROM_SEGMENT(drag_room_0)

DECLARE_ROM_SEGMENT(alley_shop_room_0)

DECLARE_ROM_SEGMENT(night_shop_room_0)

DECLARE_ROM_SEGMENT(face_shop_room_0)

DECLARE_ROM_SEGMENT(link_home_room_0)

DECLARE_ROM_SEGMENT(impa_room_0)

DECLARE_ROM_SEGMENT(malon_stable_room_0)

DECLARE_ROM_SEGMENT(labo_room_0)

DECLARE_ROM_SEGMENT(hylia_labo_room_0)

DECLARE_ROM_SEGMENT(tent_room_0)

DECLARE_ROM_SEGMENT(hut_room_0)

DECLARE_ROM_SEGMENT(daiyousei_izumi_room_0)

DECLARE_ROM_SEGMENT(yousei_izumi_tate_room_0)

DECLARE_ROM_SEGMENT(yousei_izumi_yoko_room_0)

DECLARE_ROM_SEGMENT(kakusiana_room_0)
DECLARE_ROM_SEGMENT(kakusiana_room_1)
DECLARE_ROM_SEGMENT(kakusiana_room_2)
DECLARE_ROM_SEGMENT(kakusiana_room_3)
DECLARE_ROM_SEGMENT(kakusiana_room_4)
DECLARE_ROM_SEGMENT(kakusiana_room_5)
DECLARE_ROM_SEGMENT(kakusiana_room_6)
DECLARE_ROM_SEGMENT(kakusiana_room_7)
DECLARE_ROM_SEGMENT(kakusiana_room_8)
DECLARE_ROM_SEGMENT(kakusiana_room_9)
DECLARE_ROM_SEGMENT(kakusiana_room_10)
DECLARE_ROM_SEGMENT(kakusiana_room_11)
DECLARE_ROM_SEGMENT(kakusiana_room_12)
DECLARE_ROM_SEGMENT(kakusiana_room_13)

DECLARE_ROM_SEGMENT(hakaana_room_0)

DECLARE_ROM_SEGMENT(hakaana2_room_0)

DECLARE_ROM_SEGMENT(hakaana_ouke_room_0)
DECLARE_ROM_SEGMENT(hakaana_ouke_room_1)
DECLARE_ROM_SEGMENT(hakaana_ouke_room_2)

DECLARE_ROM_SEGMENT(syatekijyou_room_0)

DECLARE_ROM_SEGMENT(tokinoma_room_0)
DECLARE_ROM_SEGMENT(tokinoma_room_1)

DECLARE_ROM_SEGMENT(kenjyanoma_room_0)

DECLARE_ROM_SEGMENT(hairal_niwa_room_0)

DECLARE_ROM_SEGMENT(hairal_niwa_n_room_0)

DECLARE_ROM_SEGMENT(hiral_demo_room_0)

DECLARE_ROM_SEGMENT(hakasitarelay_room_0)
DECLARE_ROM_SEGMENT(hakasitarelay_room_1)
DECLARE_ROM_SEGMENT(hakasitarelay_room_2)
DECLARE_ROM_SEGMENT(hakasitarelay_room_3)
DECLARE_ROM_SEGMENT(hakasitarelay_room_4)
DECLARE_ROM_SEGMENT(hakasitarelay_room_5)
DECLARE_ROM_SEGMENT(hakasitarelay_room_6)

DECLARE_ROM_SEGMENT(turibori_room_0)

DECLARE_ROM_SEGMENT(nakaniwa_room_0)

DECLARE_ROM_SEGMENT(bowling_room_0)

DECLARE_ROM_SEGMENT(souko_room_0)
DECLARE_ROM_SEGMENT(souko_room_1)
DECLARE_ROM_SEGMENT(souko_room_2)

DECLARE_ROM_SEGMENT(miharigoya_room_0)

DECLARE_ROM_SEGMENT(mahouya_room_0)

DECLARE_ROM_SEGMENT(ganon_demo_room_0)

DECLARE_ROM_SEGMENT(kinsuta_room_0)

DECLARE_ROM_SEGMENT(spot00_room_0)

DECLARE_ROM_SEGMENT(spot01_room_0)

DECLARE_ROM_SEGMENT(spot02_room_0)
DECLARE_ROM_SEGMENT(spot02_room_1)

DECLARE_ROM_SEGMENT(spot03_room_0)
DECLARE_ROM_SEGMENT(spot03_room_1)

DECLARE_ROM_SEGMENT(spot04_room_0)
DECLARE_ROM_SEGMENT(spot04_room_1)
DECLARE_ROM_SEGMENT(spot04_room_2)

DECLARE_ROM_SEGMENT(spot05_room_0)

DECLARE_ROM_SEGMENT(spot06_room_0)

DECLARE_ROM_SEGMENT(spot07_room_0)
DECLARE_ROM_SEGMENT(spot07_room_1)

DECLARE_ROM_SEGMENT(spot08_room_0)

DECLARE_ROM_SEGMENT(spot09_room_0)

DECLARE_ROM_SEGMENT(spot10_room_0)
DECLARE_ROM_SEGMENT(spot10_room_1)
DECLARE_ROM_SEGMENT(spot10_room_2)
DECLARE_ROM_SEGMENT(spot10_room_3)
DECLARE_ROM_SEGMENT(spot10_room_4)
DECLARE_ROM_SEGMENT(spot10_room_5)
DECLARE_ROM_SEGMENT(spot10_room_6)
DECLARE_ROM_SEGMENT(spot10_room_7)
DECLARE_ROM_SEGMENT(spot10_room_8)
DECLARE_ROM_SEGMENT(spot10_room_9)

DECLARE_ROM_SEGMENT(spot11_room_0)

DECLARE_ROM_SEGMENT(spot12_room_0)
DECLARE_ROM_SEGMENT(spot12_room_1)

DECLARE_ROM_SEGMENT(spot13_room_0)
DECLARE_ROM_SEGMENT(spot13_room_1)

DECLARE_ROM_SEGMENT(spot15_room_0)

DECLARE_ROM_SEGMENT(spot16_room_0)

DECLARE_ROM_SEGMENT(spot17_room_0)
DECLARE_ROM_SEGMENT(spot17_room_1)

DECLARE_ROM_SEGMENT(spot18_room_0)
DECLARE_ROM_SEGMENT(spot18_room_1)
DECLARE_ROM_SEGMENT(spot18_room_2)
DECLARE_ROM_SEGMENT(spot18_room_3)

DECLARE_ROM_SEGMENT(spot20_room_0)

DECLARE_ROM_SEGMENT(ganon_tou_room_0)

// Room symbols for compiling test scenes.
// These are not wrapped in an `#if DEBUG_ASSETS` so that debug ROMs
// can be built with DEBUG_ASSETS=0 (e.g. when DEBUG_FEATURES=0)

DECLARE_ROM_SEGMENT(test01_room_0)

DECLARE_ROM_SEGMENT(besitu_room_0)

DECLARE_ROM_SEGMENT(depth_test_room_0)

DECLARE_ROM_SEGMENT(syotes_room_0)

DECLARE_ROM_SEGMENT(syotes2_room_0)

DECLARE_ROM_SEGMENT(sutaru_room_0)

DECLARE_ROM_SEGMENT(hairal_niwa2_room_0)

DECLARE_ROM_SEGMENT(sasatest_room_0)

DECLARE_ROM_SEGMENT(testroom_room_0)
DECLARE_ROM_SEGMENT(testroom_room_1)
DECLARE_ROM_SEGMENT(testroom_room_2)
DECLARE_ROM_SEGMENT(testroom_room_3)
DECLARE_ROM_SEGMENT(testroom_room_4)

#endif
