.table table_system
entry system_menu_open
entry system_menu_close
entry system_puzzle_solved
entry system_rupee
entry system_timer_ding
entry system_error
entry system_error
entry system_treasure_appear
entry system_item_equipped
entry system_cursor
entry system_cursor_cancel
entry system_heart
entry system_z_shift
entry system_menu_unused_down
entry system_map_select_cursor_old
entry system_z_cancel
entry system_z_lock
entry system_menu_unused_down
entry system_menu_unused_up
entry system_camera_mode_toggle
entry system_minimap_toggle
entry system_camera_mode_toggle
entry system_camera_mode_toggle
entry system_z_shift_old
entry system_message_advance
entry system_countdown_caution
entry system_countdown_warn
entry system_low_health
entry system_explosive_boom
entry system_explosive_boom
entry system_navi_call
entry system_magic_refill
entry system_z_lock_old
entry system_unused21
entry system_unused22
entry system_title_screen
entry system_get_item
entry system_menu_scroll_left
entry system_menu_scroll_right
entry system_ocarina_system_error
entry system_camera_mode_toggle_old
entry system_minimap_toggle_old
entry system_lens_on
entry system_lens_off
entry system_gerudo_whistle
entry system_minigame_bell
entry system_message_done
entry system_rupee_increase
entry system_z_lock_enemy
entry system_get_treasure_item
entry system_long_whiteout
entry system_whiteout
entry system_warp_in
entry system_shotgun
entry system_metronome
entry system_z_shift_threat
entry system_metronome2
entry system_file_cursor
entry system_file_select
entry system_file_enter
entry system_file_cancel
entry system_file_error
entry system_equip_fire
entry system_equip_ice
entry system_equip_light
entry system_equip_magic_bow
entry system_metronome3
entry system_skulltula_token_appears
entry system_silver_rupee
entry system_carrot_recovered
entry system_metronome
entry system_z_shift_threat

.channel system_menu_open
instr FONTANY_INSTR_SAWTOOTH
env envelope_6660
releaserate 240
ldlayer 0, layer_57C7
ldlayer 1, layer_57DF
end

.layer layer_57C7
instr FONT00_INSTR_DING
transpose 12
releaserate 225
notepan 54
notedv PITCH_BF3, 0xC, 73
notedv PITCH_C4, 0xC, 73
notedv PITCH_D4, 0xC, 73
notedv PITCH_EF4, 0xC, 73
notedv PITCH_F4, 0x18, 73
end

.layer layer_57DF
instr FONT00_INSTR_DING
transpose 24
env envelope_65D8, 245
notepan 74
portamento 0x81, 20, 255
notedv PITCH_F3, 0x18, 73
ldelay 0x4
notedv PITCH_F3, 0x18, 73
end

.channel system_menu_close
instr FONTANY_INSTR_SAWTOOTH
env envelope_6660
releaserate 240
ldlayer 0, layer_5804
ldlayer 1, layer_581C
end

.layer layer_5804
instr FONT00_INSTR_DING
releaserate 225
transpose 12
notepan 54
notedv PITCH_F4, 0x4, 73
notedv PITCH_EF4, 0x4, 73
notedv PITCH_D4, 0x4, 73
notedv PITCH_C4, 0x4, 73
notedv PITCH_BF3, 0xC, 73
end

.layer layer_581C
instr FONT00_INSTR_DING
transpose 24
env envelope_65D8, 245
notepan 74
portamento 0x81, 20, 255
notedv PITCH_F3, 0xC, 73
ldelay 0x4
notedv PITCH_F3, 0xC, 73
end

.channel system_puzzle_solved
instr FONTANY_INSTR_SQUARE
env envelope_664C
releaserate 248
ldlayer 0, layer_5841
ldlayer 1, layer_5850
end

.layer layer_5841
notepan 54
notedv PITCH_G4, 0x18, 75
notedv PITCH_EF4, 0x18, 75
notedv PITCH_AF3, 0x18, 75
notedv PITCH_AF4, 0x30, 75
end

.layer layer_5850
notepan 74
ldelay 0xC
notedv PITCH_GF4, 0x18, 75
notedv PITCH_A3, 0x18, 75
notedv PITCH_E4, 0x18, 75
notedv PITCH_C5, 0x30, 75
end

.channel system_rupee
ldlayer 0, layer_5868
ldlayer 1, layer_587A
end

.layer layer_5868
instr FONTANY_INSTR_SAWTOOTH
env envelope_6660, 250
transpose 24
notedv PITCH_BF4, 0x6, 80
notedv PITCH_F4, 0x6, 80
notedv PITCH_BF4, 0x18, 80
end

.layer layer_587A
instr FONT00_INSTR_RUPEE
notedv PITCH_C5, 0x24, 72
end

.channel system_timer_ding
ldlayer 0, layer_5884
end

.layer layer_5884
instr FONTANY_INSTR_TRIANGLE
env envelope_6720, 250
notedv PITCH_A4, 0x6, 60
end

.channel system_error
ldlayer 0, layer_5892
end

.layer layer_5892
instr FONTANY_INSTR_SAWTOOTH
env envelope_664C, 250
notedv PITCH_E2, 0x9, 80
notedv PITCH_E2, 0x24, 80
end

.channel system_treasure_appear
instr FONTANY_INSTR_SQUARE
env envelope_664C
releaserate 250
ldlayer 0, layer_58AD
ldlayer 1, layer_58C3
end

.layer layer_58AD
notedv PITCH_A4, 0xC, 70
notedv PITCH_B4, 0xC, 70
notedv PITCH_D5, 0xC, 70
notedv PITCH_E5, 0xC, 70
notedv PITCH_A5, 0x12, 70
notedv PITCH_A5, 0x12, 40
notedv PITCH_A5, 0x12, 15
end

.layer layer_58C3
ldelay 0x6
notepan 34
notedv PITCH_A4, 0xC, 40
notepan 94
notedv PITCH_B4, 0xC, 40
notepan 34
notedv PITCH_D5, 0xC, 40
notepan 94
notedv PITCH_E5, 0xC, 40
notepan 34
notedv PITCH_A5, 0x12, 40
notepan 94
notedv PITCH_A5, 0x12, 20
notepan 64
notedv PITCH_A5, 0x12, 10
end

.channel system_item_equipped
instr FONT00_INSTR_DING
env envelope_6660
releaserate 240
ldlayer 0, layer_58F7
ldlayer 1, layer_590D
end

.layer layer_58F7
notedv PITCH_A4, 0x6, 80
notedv PITCH_B4, 0x6, 80
notedv PITCH_D5, 0x6, 80
notedv PITCH_E5, 0x6, 80
notedv PITCH_A5, 0x9, 80
notedv PITCH_A5, 0x9, 50
notedv PITCH_A5, 0x9, 30
end

.layer layer_590D
ldelay 0x6
notepan 34
notedv PITCH_A4, 0x6, 55
notepan 94
notedv PITCH_B4, 0x6, 55
notepan 34
notedv PITCH_D5, 0x6, 55
notepan 94
notedv PITCH_E5, 0x6, 55
notepan 34
notedv PITCH_A5, 0x9, 55
notepan 94
notedv PITCH_A5, 0x9, 45
notepan 64
notedv PITCH_A5, 0x9, 30
end

.channel system_cursor
ldlayer 0, layer_5937
end

.layer layer_5937
instr FONTANY_INSTR_SQUARE
env envelope_6660, 242
portamento 0x81, 36, 72
notedv PITCH_D4, 0xA, 45
notedv PITCH_D4, 0x6, 45
end

.channel system_cursor_cancel
instr FONTANY_INSTR_TRIANGLE
env envelope_664C
ldlayer 0, layer_5951
end

.layer layer_5951
instr FONTANY_INSTR_TRIANGLE
env envelope_664C, 250
notedv PITCH_A4, 0x6, 60
notedv PITCH_E4, 0x6, 60
notedv PITCH_D4, 0x6, 60
notedv PITCH_B3, 0x6, 60
notedv PITCH_A3, 0x9, 60
notedv PITCH_B3, 0x6, 20
notedv PITCH_A3, 0x9, 20
end

.channel system_heart
ldlayer 0, layer_5971
end

.layer layer_5971
instr FONTANY_INSTR_SINE
env envelope_6720, 246
portamento 0x81, 34, 127
notedv PITCH_A3, 0x8, 100
portamento 0x81, 46, 127
notedv PITCH_A4, 0x8, 100
portamento 0x81, 58, 127
notedv PITCH_A5, 0x8, 100
end

.channel system_z_shift
ldlayer 0, layer_5991
end

.layer layer_5991
instr FONT00_INSTR_DING
env envelope_6688, 251
portamento 0x81, 36, 192
notedv PITCH_A5, 0x38, 110
end

.channel chan_unused_599F
instr FONTANY_INSTR_SAWTOOTH
ldlayer 0, layer_59A5
end

.layer layer_59A5
notedv PITCH_A4, 0x60, 105
end

.channel system_map_select_cursor_old
ldlayer 0, layer_59AD
end

.layer layer_59AD
instr FONT00_INSTR_SWORD_STRIKE
env envelope_664C, 255
transpose -5
notedv PITCH_F4, 0x20, 105
end

.layer layer_unused_59B9
instr FONT00_INSTR_SWORD_HIT_SHIELD
env envelope_66B0, 250
legato
portamento 0x85, 46, 255
notedv PITCH_B4, 0x12, 90
notedv PITCH_E4, 0x8, 90
end

.channel system_z_cancel
ldlayer 0, layer_59CF
end

.layer layer_59CF
instr FONTANY_INSTR_SQUARE
transpose 9
env envelope_6660, 250
portamento 0x81, 24, 64
notedv PITCH_D3, 0x2, 65
notedv PITCH_A2, 0xC, 65
notedv PITCH_D3, 0x6, 35
end

.channel system_z_lock
ldlayer 0, layer_59E9
end

.layer layer_59E9
instr FONT00_INSTR_DING
env envelope_6660, 250
notedv PITCH_D4, 0x6, 90
notedv PITCH_G4, 0x6, 90
notedv PITCH_GF4, 0x6, 90
notedv PITCH_G4, 0xC, 90
notedv PITCH_G4, 0xC, 40
notedv PITCH_G4, 0xC, 20
end

.channel system_menu_unused_down
ldlayer 0, layer_5A06
end

.layer layer_5A06
instr FONT00_INSTR_DING
env envelope_6660, 250
transpose 12
notedv PITCH_GF4, 0xA, 78
notedv PITCH_D4, 0xA, 78
notedv PITCH_B3, 0xA, 78
notedv PITCH_A3, 0x14, 78
end

.channel system_menu_unused_up
ldlayer 0, layer_5A1F
end

.layer layer_5A1F
instr FONT00_INSTR_DING
env envelope_6660, 250
transpose 12
notedv PITCH_A3, 0xA, 78
notedv PITCH_B3, 0xA, 78
notedv PITCH_D4, 0xA, 78
notedv PITCH_GF4, 0x14, 78
end

.channel system_camera_mode_toggle
ldlayer 0, layer_5A38
end

.layer layer_5A38
instr FONT00_INSTR_DING
env envelope_6660, 250
transpose 12
notedv PITCH_D4, 0xA, 78
notedv PITCH_A3, 0x14, 78
end

.channel system_minimap_toggle
ldlayer 0, layer_5A4B
end

.layer layer_5A4B
instr FONT00_INSTR_DING
env envelope_6660, 250
transpose 12
notedv PITCH_A3, 0xA, 78
notedv PITCH_D4, 0x14, 78
end

.channel system_z_shift_old
instr FONT00_INSTR_DING
ldlayer 0, layer_5A60
end

.layer layer_5A60
notedv PITCH_EF4, 0xC, 70
end

.channel system_message_advance
ldlayer 0, layer_5A68
end

.layer layer_5A68
instr FONT00_INSTR_DING
env envelope_6660, 248
notedv PITCH_G4, 0x2E, 95
end

.channel system_countdown_caution
ldlayer 0, layer_5A76
end

.layer layer_5A76
instr FONTANY_INSTR_SAWTOOTH
env envelope_6660, 250
notedv PITCH_C4, 0x6, 60
notedv PITCH_C4, 0x4, 40
notedv PITCH_C4, 0x4, 20
end

.channel system_countdown_warn
reverb 10
ldlayer 0, layer_5A8C
end

.layer layer_5A8C
instr FONTANY_INSTR_SAWTOOTH
env envelope_6660, 250
notedv PITCH_C4, 0x6, 65
notepan 34
notedv PITCH_C5, 0x4, 45
notepan 94
notedv PITCH_C5, 0x4, 45
notepan 64
notedv PITCH_C5, 0x4, 30
end

.channel system_low_health
ldlayer 0, layer_5AA9
end

.layer layer_5AA9
instr FONTANY_INSTR_SAWTOOTH
env envelope_6660, 248
notedvg PITCH_DF5, 0xD, 60, 128
notedv PITCH_DF5, 0xD, 60
end

.channel system_explosive_boom
reverb 90
ldlayer 0, layer_5AC0
ldlayer 1, layer_5ACC
end

.layer layer_5AC0
instr FONT00_INSTR_EXPLOSION_0
env envelope_6610, 251
notepan 54
notedv PITCH_DF4, 0x60, 107
end

.layer layer_5ACC
instr FONT00_INSTR_FLAME_THUNDER
env envelope_6610, 251
notepan 54
notedv PITCH_A1, 0x60, 104
end

.channel system_navi_call
ldlayer 0, layer_5ADF
ldlayer 1, layer_5AED
end

.layer layer_5ADF
instr FONT00_INSTR_FAIRY_MAGIC
env envelope_66D0, 246
portamento 0x81, 58, 246
notedv PITCH_A4, 0x20, 49
end

.layer layer_5AED
instr FONTANY_INSTR_SINE
env envelope_6660, 248
notedv PITCH_A5, 0x9, 50
end

.channel system_magic_refill
ldi 0
stio 6
stseq 0, layer_5B19+1
ldlayer 0, layer_5B13
.channel chan_5B01
ldi 6
call delay_varyingvol
ldio 6
stseq 0, layer_5B19+1
sub 255
stio 6
sub 50
rbltz chan_5B01
end

.layer layer_5B13
instr FONTANY_INSTR_SQUARE
releaserate 251
notepan 34
.layer layer_5B19
transpose 0
notedv PITCH_C3, 0x3, 32
ldelay 0x3
rjump layer_5B19

.channel system_z_lock_old
instr FONTANY_INSTR_SINE
ldlayer 0, layer_5B28
end

.layer layer_5B28
legato
env envelope_6674, 245
portamento 0x81, 36, 255
notedv PITCH_F2, 0x8, 68
portamento 0x81, 20, 225
notedv PITCH_C4, 0x1C, 68
end

.channel system_unused21
instr FONTANY_INSTR_SINE
ldlayer 0, layer_5B42
end

.layer layer_5B42
ldelay 0x1
end

.layer layer_unused_5B45
env envelope_6674, 245
portamento 0x83, 32, 255
notedv PITCH_F2, 0xC, 80
notedv PITCH_F2, 0xC, 40
end

.channel system_unused22
ldlayer 0, layer_5B58
end

.layer layer_5B58
ldelay 0x1
end

.channel system_title_screen
instr FONTANY_INSTR_TRIANGLE
env envelope_664C
releaserate 240
ldlayer 0, layer_5B69
ldlayer 1, layer_5B88
end

.layer layer_5B69
notepan 84
ldelay 0x6
notedv PITCH_G3, 0xC, 80
notedv PITCH_C4, 0xC, 80
notedv PITCH_G4, 0xC, 80
notedv PITCH_C5, 0xC, 80
env envelope_6660, 222
notepan 44
notedv PITCH_E5, 0x18, 30
notepan 84
notedv PITCH_E5, 0x18, 20
end

.layer layer_5B88
notepan 44
notedv PITCH_E3, 0xC, 80
notedv PITCH_A3, 0xC, 80
notedv PITCH_E4, 0xC, 80
notedv PITCH_A4, 0xC, 80
notepan 64
notedv PITCH_E5, 0x60, 80
end

.channel system_get_item
instr FONTANY_INSTR_TRIANGLE
env envelope_664C
releaserate 240
ldlayer 0, layer_5BA7
end

.layer layer_5BA7
call layer_fn_5BB4
.layer layer_5BAA
notedv PITCH_AF4, 0xA, 75
notedv PITCH_AF4, 0x14, 55
notedv PITCH_AF4, 0x14, 35
end

.layer layer_fn_5BB4
notedv PITCH_AF4, 0xA, 75
notedv PITCH_F4, 0xA, 75
notedv PITCH_DF4, 0xA, 75
end

.channel system_menu_scroll_left
instr FONT00_INSTR_DING
env envelope_664C
releaserate 245
ldlayer 0, layer_5BCC
ldlayer 1, layer_5BE1
end

.layer layer_5BCC
notepan 24
.layer layer_5BCE
notedv PITCH_F4, 0x8, 70
notedv PITCH_BF4, 0x8, 70
notedv PITCH_A4, 0x8, 70
notedv PITCH_G4, 0x8, 70
notedv PITCH_F4, 0x10, 70
notedv PITCH_F4, 0x20, 35
end

.layer layer_5BE1
notedv PITCH_BF3, 0x20, 45
notedv PITCH_A3, 0x30, 45
end

.channel system_menu_scroll_right
instr FONT00_INSTR_DING
env envelope_664C
releaserate 245
ldlayer 0, layer_5BF6
ldlayer 1, layer_5BE1
end

.layer layer_5BF6
notepan 104
rjump layer_5BCE

.channel system_ocarina_system_error
instr FONT00_INSTR_FAIL_BELLS
env envelope_65E8
ldlayer 0, layer_5C03
end

.layer layer_5C03
notedv PITCH_G4, 0x43, 110
end

.channel system_camera_mode_toggle_old
ldlayer 0, layer_5C0B
end

.layer layer_5C0B
instr FONT00_INSTR_DING
releaserate 250
notedv PITCH_A3, 0x6, 90
env envelope_6674, 245
portamento 0x81, 36, 144
notedv PITCH_A4, 0x18, 90
end

.channel system_minimap_toggle_old
ldlayer 0, layer_5C22
end

.layer layer_5C22
instr FONT00_INSTR_DING
releaserate 250
notedv PITCH_A4, 0x6, 90
env envelope_6674, 245
portamento 0x82, 36, 144
notedv PITCH_E4, 0x18, 60
end

.channel system_lens_on
instr FONT00_INSTR_EYE_OF_TRUTH
env envelope_65D8
ldlayer 0, layer_5C3E
end

.layer layer_5C3E
legato
notedv PITCH_C4, 0x18, 100
notedv PITCH_D4, 0x60, 100
end

.channel system_lens_off
instr FONT00_INSTR_EYE_OF_TRUTH
env envelope_65D8
ldlayer 0, layer_5C4F
end

.layer layer_5C4F
legato
notedv PITCH_C4, 0x18, 100
notedv PITCH_BF3, 0x60, 100
end

.channel system_gerudo_whistle
instr FONT00_INSTR_WHISTLE
ldlayer 0, layer_5C5D
end

.layer layer_5C5D
notedv PITCH_EF4, 0x6, 100
notedv PITCH_F4, 0x60, 100
end

.channel system_minigame_bell
instr FONT00_INSTR_FAIL_BELLS
ldlayer 0, layer_5C6A
end

.layer layer_5C6A
transpose 48
loop 4
releaserate 250
notedv PITCH_C4, 0xC, 98
releaserate 216
notedv PITCH_C4, 0x28, 87
loopend
end

.channel system_message_done
instr FONT00_INSTR_DING
ldlayer 0, layer_5C80
end

.layer layer_5C80
notedv PITCH_E4, 0x6, 70
notedv PITCH_D4, 0x6, 70
notedv PITCH_C4, 0xC, 70
notepan 44
notedv PITCH_C4, 0x6, 36
notepan 84
notedv PITCH_C4, 0xC, 36
end

.channel system_rupee_increase
ldlayer 0, layer_5C9B
ldlayer 1, layer_5CA1
end

.layer layer_5C9B
instr FONT00_INSTR_RUPEE
notedv PITCH_G5, 0xE, 66
end

.layer layer_5CA1
transpose 24
instr FONTANY_INSTR_SAWTOOTH
env envelope_6660, 250
notedv PITCH_F4, 0x3, 52
end

.channel system_z_lock_enemy
ldlayer 0, layer_5CB1
end

.layer layer_5CB1
instr FONT00_INSTR_Z_TARGET
transpose 48
notedv PITCH_C4, 0x61, 100
end

.channel system_get_treasure_item
instr FONTANY_INSTR_TRIANGLE
env envelope_664C
releaserate 240
ldlayer 0, layer_5CC4
end

.layer layer_5CC4
call layer_fn_5BB4
notedv PITCH_BF4, 0xA, 75
notedv PITCH_G4, 0xA, 75
notedv PITCH_EF4, 0xA, 75
jump layer_5BAA

.channel system_long_whiteout
reverb 25
ldlayer 0, layer_5CEB
ldlayer 1, layer_5CDC
end

.layer layer_5CDC
ldelay 0x64
instr FONT00_INSTR_WHISTLE_PERSON
env envelope_67CC, 221
transpose 24
notedv PITCH_B5, 0x96, 100
end

.layer layer_5CEB
instr FONT00_INSTR_SLIDE_HEAVY
env envelope_67D8, 221
transpose 12
portamento 0x81, 2, 255
notedv PITCH_B5, 0xFA, 85
end

.channel system_whiteout
reverb 25
ldlayer 0, layer_5D12
ldlayer 1, layer_5D05
end

.layer layer_5D05
instr FONT00_INSTR_WHISTLE_PERSON
env envelope_67D8, 200
transpose 24
notedv PITCH_B5, 0xC8, 100
end

.layer layer_5D12
instr FONT00_INSTR_SLIDE_HEAVY
env envelope_67D8, 200
transpose 12
notedv PITCH_B5, 0xC8, 85
end

.channel system_warp_in
reverb 25
ldlayer 0, layer_5D28
ldlayer 1, layer_5D34
end

.layer layer_5D28
instr FONT00_INSTR_WARP
env envelope_6638, 221
transpose 24
notedv PITCH_B5, 0x40, 95
end

.layer layer_5D34
instr FONT00_INSTR_DISTORTION
env envelope_66D0, 224
transpose 12
notedv PITCH_B5, 0x20, 65
end

.channel system_shotgun
instr FONT00_INSTR_SLAM_GUNSHOT
gain 25
ldlayer 0, layer_5D4B
ldlayer 1, layer_5D51
end

.layer layer_5D4B
ldelay 0x2A
env envelope_66A0, 251

.layer layer_5D51
transpose 48
notedv PITCH_C4, 0x0, 115
end

.channel system_metronome
ldlayer 0, layer_5D5B
end

.layer layer_5D5B
instr FONTANY_INSTR_DRUM
notedv FONT00_DRUM_TAMBO_H, 0x48, 70
end

.channel system_z_shift_threat
instr FONT00_INSTR_Z_TARGET
ldlayer 0, layer_5D67
end

.layer layer_5D67
notedv PITCH_C4, 0x39, 110
end

.channel system_metronome2
instr FONTANY_INSTR_DRUM
ldlayer 0, layer_5D71
end

.layer layer_5D71
notedv FONT00_DRUM_TAMBO, 0x48, 70
rjump layer_5D71

.channel system_file_cursor
ldlayer 0, layer_5D84
ldlayer 1, layer_5D7D
end

.layer layer_5D7D
call layer_fn_5D95
notedv PITCH_C3, 0x10, 100
end

.layer layer_5D84
call layer_fn_5D8E
notedv PITCH_C3, 0x8, 46
notedv PITCH_C4, 0x1C, 36
end

.layer layer_fn_5D8E
instr FONTANY_INSTR_SINE
env envelope_664C, 251
end

.layer layer_fn_5D95
instr FONT00_INSTR_WARP
env envelope_667C, 232
transpose 36
end

.channel system_file_select
ldlayer 0, layer_5DA5
ldlayer 1, layer_5DB1
end

.layer layer_5DA5
instr FONT00_INSTR_WARP
env envelope_6610, 232
transpose 36
notedv PITCH_E3, 0x1E, 95
end

.layer layer_5DB1
call layer_fn_5D8E
notedv PITCH_D4, 0x6, 50
notedv PITCH_E4, 0x18, 50
end

.channel system_file_enter
ldlayer 0, layer_5DC2
ldlayer 1, layer_5DCE
end

.layer layer_5DC2
transpose 36
.layer layer_5DC4
instr FONT00_INSTR_WARP
env envelope_6610, 232
notedv PITCH_A3, 0x60, 112
end

.layer layer_5DCE
call layer_fn_5D8E
notedv PITCH_D4, 0x6, 50
notedv PITCH_G4, 0x6, 50
notedv PITCH_A4, 0x18, 50
end

.channel system_file_cancel
ldlayer 0, layer_5DE2
ldlayer 1, layer_5DE6
end

.layer layer_5DE2
transpose 24
rjump layer_5DC4

.layer layer_5DE6
call layer_fn_5D8E
notedv PITCH_A4, 0x6, 50
notedv PITCH_E4, 0x6, 50
notedv PITCH_A3, 0x18, 50
end

.channel system_file_error
ldlayer 0, layer_5DF7
end

.layer layer_5DF7
instr FONTANY_INSTR_SINE
env envelope_6718, 240
notedv PITCH_BF2, 0x9, 70
notedv PITCH_A2, 0x9, 70
notedv PITCH_BF2, 0x9, 70
notedv PITCH_A2, 0x18, 70
end

.channel system_equip_fire
ldlayer 0, layer_1438
ldlayer 1, layer_B1D
ldlayer 2, layer_A6E
end

.channel system_equip_ice
ldlayer 0, layer_1438
ldlayer 1, layer_B47
ldlayer 2, layer_B41
end

.channel system_equip_light
ldlayer 0, layer_1438
ldlayer 1, layer_B6D
ldlayer 2, layer_B67
end

.channel system_equip_magic_bow
ldlayer 0, layer_5E2C
end

.layer layer_5E2C
transpose 12
jump layer_1438

.channel system_metronome3
ldlayer 0, layer_5E35
end

.layer layer_5E35
instr FONTANY_INSTR_DRUM
releaserate 150
notedv FONT00_DRUM_TAMBO_H, 0x24, 70
end

.channel system_skulltula_token_appears
instr FONT00_INSTR_DING
env envelope_6660
releaserate 250
ldlayer 0, layer_5E51
ldlayer 1, layer_5E4B
end

.layer layer_5E4B
ldelay 0x5
notepan 94
rjump layer_5E53

.layer layer_5E51
notepan 34
.layer layer_5E53
transpose 12
notedv PITCH_F4, 0xC, 85
notedv PITCH_BF4, 0xC, 85
notedv PITCH_EF5, 0xC, 85
notedv PITCH_BF5, 0xC, 85
notedv PITCH_F5, 0x18, 85
notedv PITCH_F5, 0x18, 45
notedv PITCH_F5, 0x18, 25
end

.channel system_silver_rupee
ldlayer 0, layer_5E6F
end

.layer layer_5E6F
instr FONTANY_INSTR_SINE
env envelope_66D0, 248
notedv PITCH_BF3, 0xC, 80
notedv PITCH_F3, 0xC, 80
notedv PITCH_D4, 0xC, 80
notedv PITCH_EF4, 0xC, 80
notedv PITCH_F4, 0x18, 80
notedv PITCH_F4, 0x18, 40
end

.channel system_carrot_recovered
ldlayer 0, layer_5E8C
end

.layer layer_5E8C
instr FONTANY_INSTR_SINE
env envelope_6720, 246
portamento 0x83, 32, 127
notedv PITCH_C4, 0x8, 80
notedv PITCH_C5, 0xC, 80
end
