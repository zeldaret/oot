.table table_item
entry item_map_select_cursor
entry item_sword_swing
entry item_sword_sheathe
entry item_sword_draw
entry item_arrow_shoot
entry item_boomerang_throw
entry item_shield_strike
entry item_bow_draw
entry item_shield_blade_bounce
entry item_arrow_strike
entry item_hammer_strike
entry item_hookshot_extend
entry item_mirror_fire
entry item_bomb_fuse
entry item_bomb_explode
entry item_bomb_defuse
entry item_boomerang_fly
entry item_sword_strike
entry item_hammer_swing
entry item_hookshot_strike
entry item_arrow_hit_enemy
entry item_arrow_hit_object
entry item_unused1
entry item_unused2
entry item_fishing_rod
entry env_bomb_rebound
entry item_sword_strike_wall
entry item_sword_strike_bwall
entry item_sword_strike_stone
entry item_stick_break
entry item_whip_epona
entry item_shield
entry item_slingshot_fly
entry item_slingshot_draw
entry item_sword_charge
entry item_sword_spin
entry item_sword_strike_unused
entry item_slingshot_reflect
entry item_shield_sheathe
entry item_hookshot_ready
entry item_hookshot_unused
entry item_hookshot_strike_object
entry item_sword_reflect
entry item_deku_nut_strike
entry item_jabu_struck
entry item_sword_unused
entry item_sword_spin_small
entry item_sword_spin_large
entry item_bow_empty
entry item_bombchu_fuse
entry item_shield_charge_1
entry item_shield_charge_2
entry item_shield_charge_3
entry item_slingshot_empty
entry item_sword_unused2
entry item_sword_strike_wood
entry item_shield_unused
entry item_arrow_magic_fly
entry item_arrow_fire_strike
entry item_arrow_ice_strike
entry item_arrow_light_strike
entry item_reel_slow
entry item_reel_fast
entry item_bow_draw
entry item_goddess_zoom
entry item_goddess_launch
entry item_goddess_boom
entry item_explosion_unused
entry env_horse_neigh
entry item_explosion_unused
entry item_explosive_flames
entry item_scarecrow_jump
entry item_flame_wall
entry env_triforce_glow
entry item_fishing_rod_strike
entry item_explosion_unused2
entry item_sword_break
entry item_unused4
entry item_sword_swing_magic
entry item_bomb_defuse

.channel item_map_select_cursor
instr FONT00_INSTR_SWORD_STRIKE
ldlayer 0, layer_F89
end

.layer layer_F89
notedv PITCH_F4, 0x18, 110
end

.channel item_sword_swing
ldlayer 0, layer_F91
end

.layer layer_F91
instr FONT00_INSTR_SWORD_MISS
portamento 0x81, 29, 255
notedv PITCH_D2, 0x2A, 100
end

.channel item_sword_sheathe
instr FONT00_INSTR_SWORD_SHEATHE
ldlayer 0, layer_FA1
end

.layer layer_FA1
notedv PITCH_A3, 0x30, 100
end

.channel item_sword_draw
instr FONT00_INSTR_SWORD_DRAW
ldlayer 0, layer_FAB
end

.layer layer_FAB
notedv PITCH_A3, 0x30, 100
end

.channel item_arrow_shoot
ldlayer 0, layer_FB3
end

.layer layer_FB3
instr FONT00_INSTR_SWORD_SWING
notedv PITCH_A3, 0x30, 100
end

.channel item_boomerang_throw
instr FONT00_INSTR_WHISTLE_AIR
ldlayer 0, layer_FBF
end

.layer layer_FBF
legato
portamento 0x85, 0, 255
notedv PITCH_A3, 0xC, 80
notedv PITCH_F2, 0x19, 80
end

.channel item_shield_strike
instr FONT00_INSTR_SWORD_HIT_SHIELD
envelope envelope_664C
ldlayer 0, layer_FD4
end

.layer layer_FD4
notedv PITCH_B3, 0x6, 82
notedv PITCH_E3, 0x0, 82
end

.channel item_bow_draw
instr FONT00_INSTR_BOW
ldlayer 0, layer_FE1
end

.layer layer_FE1
portamento 0x81, 43, 255
notedv PITCH_GF4, 0xE, 110
end

.channel item_shield_blade_bounce
instr FONT00_INSTR_SWORD_HIT_SHIELD
envelope envelope_65E8
ldlayer 0, layer_FF5
ldlayer 1, layer_FF9
end

.layer layer_FF5
notedv PITCH_C4, 0x24, 105
end

.layer layer_FF9
instr FONT00_INSTR_SWORD_STRIKE
transpose 48
notedv PITCH_DF3, 0x0, 100
end

.channel item_arrow_strike
instr FONT00_INSTR_ARROW_WOOD
ldlayer 0, layer_1007
end

.layer layer_1007
notedv PITCH_C4, 0x45, 100
end

.channel item_hammer_strike
gain 20
ldlayer 0, layer_1011
end

.layer layer_1011
instr FONT00_INSTR_SWORD_STRIKE
releaserate 236
notedv PITCH_DF1, 0x6, 76
instr FONT00_INSTR_SLAM_HEAVY
envelope envelope_65E8, 240
notedv PITCH_B3, 0x24, 110
end

.channel item_hookshot_extend
ldlayer 0, layer_1033
ldlayer 1, layer_1029
end

.layer layer_1029
instr FONT00_INSTR_EXPLOSION_0
envelope envelope_664C, 255
notedv PITCH_B5, 0xC, 108
end

.layer layer_1033
instr FONT00_INSTR_CHAIN
.layer layer_1035
notedv PITCH_B4, 0x7, 93
rjump layer_1035

.channel item_mirror_fire
gain 15
ldlayer 0, layer_1045
ldlayer 1, layer_105C
end

.layer layer_1043
transpose -9

.layer layer_1045
instr FONT00_INSTR_SWORD_HIT_SHIELD
envelope envelope_65E8, 251
portamento 0x81, 16, 100
notedv PITCH_F4, 0x6, 102
portamento 0x81, 20, 100
notedv PITCH_E5, 0x28, 110
end

.layer layer_105A
transpose -9

.layer layer_105C
instr FONT00_INSTR_SYNTH_BUZZ
envelope envelope_6610, 251
portamento 0x81, 32, 208
notedv PITCH_B5, 0x28, 80
end

.channel item_bomb_fuse
instr FONT00_INSTR_BOMB
ldlayer 0, layer_1070
end

.layer layer_1070
legato
.layer layer_1071
notedv PITCH_A3, 0x30, 80
rjump layer_1071

.channel item_bomb_explode
ldlayer 0, layer_107A
end

.layer layer_107A
instr FONT00_INSTR_EXPLOSION_0
envelope envelope_66D0, 225
notedv PITCH_F4, 0xA0, 110
end

.channel item_bomb_defuse
ldlayer 0, layer_1089
end

.layer layer_1089
instr FONT00_INSTR_BOMB
envelope envelope_65E8, 245
portamento 0x85, 34, 255
notedv PITCH_E4, 0x8, 105
notedv PITCH_F3, 0x18, 105
end

.layer layer_unused_109A
portamento 0x81, 32, 255
notedv PITCH_F2, 0x1E, 105
end

.channel item_boomerang_fly
instr FONT00_INSTR_SWORD_SWING
envelope envelope_6688
ldlayer 0, layer_10AB
end

.layer layer_10AB
legato
portamento 0x85, 8, 255
notedv PITCH_F2, 0x18, 90
notedv PITCH_B3, 0xE, 90
nolegato
legato
portamento 0x85, 10, 255
notedv PITCH_G2, 0x14, 90
notedv PITCH_C4, 0xC, 90
nolegato
.layer layer_10C3
legato
portamento 0x85, 12, 255
notedv PITCH_A2, 0x11, 90
notedv PITCH_D4, 0xA, 90
nolegato
jump layer_10C3

.channel item_sword_strike
instr FONT00_INSTR_SOFT_HIT
envelope envelope_66C8
ldlayer 0, layer_10DB
end

.layer layer_10DB
notedv PITCH_GF2, 0x3, 110
portamento 0x2, 11, 12
notedv PITCH_AF3, 0x6, 110
end

.channel item_hammer_swing
ldlayer 0, layer_10EA
end

.layer layer_10EA
instr FONT00_INSTR_SWORD_MISS
portamento 0x81, 19, 255
notedv PITCH_E1, 0x60, 100
end

.channel item_hookshot_strike
ldlayer 0, layer_10F8
end

.layer layer_10F8
call layer_fn_1103
portamento 0x1, 34, 24
notedv PITCH_D4, 0x48, 100
end

.layer layer_fn_1103
instr FONT00_INSTR_SWORD_STRIKE
transpose -18
notedv PITCH_E3, 0x9, 100
end

.channel item_arrow_hit_enemy
instr FONT00_INSTR_SWORD_SWING
ldlayer 0, layer_1111
end

.layer layer_1111
portamento 0x81, 38, 127
notedv PITCH_E1, 0x14, 105
portamento 0x81, 3, 127
notedv PITCH_F3, 0xA, 105
end

.channel item_arrow_hit_object
jump item_arrow_strike

.channel item_unused1
ldlayer 0, layer_112A
ldlayer 1, layer_113A
end

.layer layer_112A
transpose -2
instr FONT00_INSTR_SWORD_SWING
legato
portamento 0x85, 3, 255
notedv PITCH_C2, 0x9, 90
notedv PITCH_BF3, 0x12, 90
end

.layer layer_113A
transpose -1
instr FONT00_INSTR_EGG_BREAK
portamento 0x81, 34, 255
notedv PITCH_C3, 0x1B, 80
end

.channel item_unused2
ldlayer 0, layer_114D
ldlayer 1, layer_115D
end

.layer layer_114D
transpose 4
instr FONT00_INSTR_SWORD_SWING
legato
portamento 0x85, 3, 255
notedv PITCH_F2, 0xC, 103
notedv PITCH_F4, 0x18, 103
end

.layer layer_115D
transpose 4
instr FONT00_INSTR_EGG_BREAK
portamento 0x81, 34, 255
notedv PITCH_C3, 0x28, 87
end

.channel item_fishing_rod
ldlayer 0, layer_1170
ldlayer 1, layer_117C
end

.layer layer_1170
instr FONT00_INSTR_SWORD_MISS
portamento 0x81, 32, 255
notedv PITCH_F2, 0x24, 105
ldelay 0x68
end

.layer layer_117C
instr FONT00_INSTR_WHOOSH
portamento 0x81, 46, 44
notedv PITCH_G3, 0x8C, 75
end

.channel item_sword_strike_wall
instr FONT00_INSTR_SWORD_STRIKE
envelope envelope_6674
ldlayer 0, layer_1196
.channel chan_118F
vibfreq 127
vibdepthgrad 0, 128, 56
end

.layer layer_1196
notedv PITCH_E2, 0x60, 110
end

.channel item_sword_strike_bwall
instr FONT00_INSTR_SWORD_STRIKE
ldlayer 0, layer_11A3
ldlayer 1, layer_11AF
end

.layer layer_11A3
envelope envelope_6674, 251
portamento 0x1, 27, 30
notedv PITCH_A3, 0x60, 100
end

.layer layer_11AF
notedv PITCH_C3, 0x60, 96
end

.channel item_sword_strike_stone
ldlayer 0, layer_11B7
end

.layer layer_11B7
instr FONT00_INSTR_SWORD_STRIKE
envelope envelope_6610, 251
notedv PITCH_A1, 0x8, 110
notedv PITCH_F1, 0x30, 110
end

.channel item_stick_break
instr FONT00_INSTR_WOOD_BREAK
envelope envelope_6660
ldlayer 0, layer_11CD
end

.layer layer_11CD
notedvg PITCH_AF2, 0x7, 93, 127
notedv PITCH_G3, 0x5, 90
end

.channel item_whip_epona
ldlayer 0, layer_11D9
end

.layer layer_11D9
instr FONT00_INSTR_SWORD_SWING
notedv PITCH_A3, 0x8, 105
instr FONT00_INSTR_WHIP_CORK
envelope envelope_6624, 255
notedv PITCH_GF3, 0x16, 87
end

.channel item_shield
ldlayer 0, layer_11EF
ldlayer 1, layer_11F5
end

.layer layer_11EF
instr FONT00_INSTR_SWORD_SHEATHE
notedv PITCH_F3, 0x12, 110
end

.layer layer_11F5
instr FONT00_INSTR_SWORD_STRIKE
transpose 48
envelope envelope_6720, 251
notedv PITCH_C3, 0xA, 75
notedvg PITCH_E3, 0x4, 75, 127
notedv PITCH_E3, 0x4, 75
end

.channel item_slingshot_fly
instr FONT00_INSTR_SWORD_SWING
ldlayer 0, layer_120E
end

.layer layer_120E
portamento 0x81, 48, 255
notedv PITCH_A0, 0x12, 100
end

.channel item_slingshot_draw
instr FONT00_INSTR_BOW
ldlayer 0, layer_121C
end

.layer layer_121C
portamento 0x81, 39, 127
notedv PITCH_B4, 0x7, 110
end

.channel item_sword_charge
ldi 24
stio 1
ldlayer 0, layer_124B
ldlayer 1, layer_1234
vibfreq 127
vibdepthgrad 0, 160, 9
end

.layer layer_1234
instr FONTANY_INSTR_8PULSE
portamento 0x81, 3, 255
notedv PITCH_G4, 0x64, 30
portamento 0x81, 15, 255
notedv PITCH_G5, 0x64, 30
legato
.layer layer_1245
notedv PITCH_G5, 0xC8, 30
rjump layer_1245

.layer layer_124B
instr FONT00_INSTR_SYNTH_BUZZ
legato
transpose 9
portamento 0x81, 3, 255
.layer layer_1254
notedv PITCH_G5, 0xC8, 50
rjump layer_1254

.channel item_sword_spin
ldlayer 0, layer_1266
ldlayer 1, layer_1264
ldlayer 2, layer_1170
end

.layer layer_1264
transpose -4

.layer layer_1266
instr FONT00_INSTR_WHOOSH
portamento 0x81, 51, 44
notedv PITCH_F3, 0x8C, 90
end

.channel item_sword_strike_unused
instr FONT00_INSTR_SOFT_HIT
envelope envelope_66C8
ldlayer 0, layer_127D
ldlayer 1, layer_113A
end

.layer layer_127D
notedv PITCH_A2, 0x3, 110
portamento 0x2, 14, 12
notedv PITCH_B3, 0x6, 110
ldelay 0x7
end

.channel item_slingshot_reflect
ldlayer 0, layer_128E
end

.layer layer_128E
instr FONT00_INSTR_SWORD_STRIKE
transpose 48
notedvg PITCH_A2, 0x3, 100, 127
releaserate 251
portamento 0x81, 15, 48
notedv PITCH_DF3, 0x24, 100
end

.channel item_shield_sheathe
ldlayer 0, layer_12A7
ldlayer 1, layer_12AD
end

.layer layer_12A7
instr FONT00_INSTR_SWORD_SHEATHE
notedv PITCH_A3, 0x12, 110
end

.layer layer_12AD
instr FONT00_INSTR_SWORD_STRIKE
transpose 48
envelope envelope_6720, 251
notedv PITCH_F3, 0xA, 75
notedvg PITCH_E3, 0x4, 75, 127
notedv PITCH_E2, 0x4, 75
end

.channel item_hookshot_ready
ldlayer 0, layer_12C7
ldlayer 1, layer_12CD
end

.layer layer_12C7
instr FONT00_INSTR_SWORD_SHEATHE
notedv PITCH_EF4, 0x10, 105
end

.layer layer_12CD
instr FONT00_INSTR_SWORD_STRIKE
envelope envelope_664C, 251
notedv PITCH_AF3, 0x4, 86
notedv PITCH_A2, 0x4, 64
end

.channel item_hookshot_unused
ldlayer 0, layer_12E7
ldlayer 1, layer_12E1
end

.layer layer_12E1
instr FONT00_INSTR_SWORD_SHEATHE
notedv PITCH_A2, 0x28, 105
end

.layer layer_12E7
instr FONT00_INSTR_CHAIN
releaserate 238
notedv PITCH_D5, 0x8, 86
instr 26
notedv PITCH_GF4, 0x18, 100
end

.channel item_hookshot_strike_object
ldlayer 0, layer_12FB
ldlayer 1, layer_1309
end

.layer layer_12FB
instr FONT00_INSTR_EXPLOSION_0
envelope envelope_6624, 251
portamento 0x81, 50, 144
notedv PITCH_B2, 0x20, 110
end

.layer layer_1309
instr FONT00_INSTR_SWORD_STRIKE
envelope envelope_664C, 241
notedv PITCH_AF2, 0x4, 64
notedv PITCH_A3, 0xC, 56
end

.channel item_sword_reflect
ldi 24
stio 1
ldlayer 0, layer_1320
ldlayer 1, layer_117C
end

.layer layer_1320
instr FONT00_INSTR_SYNTH_BUZZ
legato
transpose 12
portamento 0x81, 56, 127
notedv PITCH_F4, 0x24, 80
end

.channel item_deku_nut_strike
ldlayer 0, layer_1334
ldlayer 1, layer_1344
end

.layer layer_1334
instr FONT00_INSTR_SWORD_STRIKE
transpose 48
envelope envelope_66D0, 232
portamento 0x81, 19, 72
notedv PITCH_GF2, 0x4, 83
end

.layer layer_1344
instr FONT00_INSTR_WHIP_CORK
releaserate 225
portamento 0x81, 45, 200
notedv PITCH_DF3, 0x4, 110
end

.channel item_jabu_struck
ldi 32
stio 1
ldlayer 0, layer_137F
ldlayer 1, layer_1373
ldlayer 2, layer_1361
.channel chan_135C
vibfreq 100
vibdepth 84
end

.layer layer_1361
legato
instr FONT00_INSTR_OCARINA_0
envelope envelope_6674, 251
portamento 0x85, 11, 255
notedv PITCH_AF2, 0x24, 60
notedv PITCH_AF1, 0x24, 60
end

.layer layer_1373
instr FONT00_INSTR_EGG_BREAK
portamento 0x82, 15, 255
notedv PITCH_C3, 0x3E, 105
end

.layer layer_137D
transpose -6

.layer layer_137F
ldelay 0x1
instr FONT00_INSTR_ROAR_BARK
envelope envelope_65D8, 251
portamento 0x81, 20, 255
notedv PITCH_AF2, 0x8, 85
portamento 0x81, 27, 255
notedv PITCH_C2, 0x60, 85
end

.channel item_sword_unused
instr FONT00_INSTR_SWORD_DRAW
ldlayer 0, layer_139C
end

.layer layer_139C
portamento 0x83, 32, 127
notedv PITCH_G3, 0x8, 100
notedv PITCH_EF4, 0x18, 100
end

.channel item_sword_spin_small
ldlayer 0, layer_13C5
ldlayer 1, layer_13B1
ldlayer 2, layer_1170
end

.layer layer_13B1
transpose 17
.layer layer_13B3
instr FONT00_INSTR_SYNTH_BUZZ
envelope envelope_6638, 251
legato
portamento 0x85, 44, 255
notedv PITCH_F5, 0x10, 68
notedv PITCH_D1, 0x2C, 68
end

.layer layer_13C5
transpose -2
jump layer_1266

.channel item_sword_spin_large
ldlayer 0, layer_1266
ldlayer 1, layer_13D4
ldlayer 2, layer_13D8
end

.layer layer_13D4
transpose 20
rjump layer_13B3

.layer layer_13D8
instr FONT00_INSTR_FLAME_THUNDER
releaserate 221
legato
portamento 0x85, 28, 255
notedv PITCH_DF4, 0x10, 74
notedv PITCH_A3, 0x44, 74
end

.channel item_bow_empty
gain 22
ldlayer 0, layer_13EE
end

.layer layer_13EE
instr FONT00_INSTR_BOW
envelope envelope_65D8, 251
transpose 48
portamento 0x81, 43, 127
notedv PITCH_AF4, 0x60, 95
end

.channel item_bombchu_fuse
ldlayer 0, layer_1402
end

.layer layer_1402
instr FONT00_INSTR_BOMB
transpose 48
legato
portamento 0x1, 36, 56
.layer layer_140B
notedv PITCH_E4, 0x7D00, 80
rjump layer_140B

.channel item_shield_charge_1
ldi 0
stio 6
.channel chan_1414
ldseq addr_142D
stseq 0, layer_fn_145A+1
ldio 6
ldseq addr_1431
stseq 0, layer_1455+1
ldi 24
stio 1
ldlayer 0, layer_1448
ldlayer 1, layer_1435
end

.array addr_142D
byte 0x0
byte 0x4
byte 0x8
byte 0x0

.array addr_1431
byte 0x60
byte 0x30
byte 0x18
byte 0x60

.layer layer_1435
call layer_fn_145A

.layer layer_1438
instr FONT00_INSTR_SYNTH
legato
portamento 0x85, 24, 255
notedv PITCH_C2, 0x6, 90
notedv PITCH_B4, 0x50, 90
ldelay 0x21
end

.layer layer_1448
call layer_fn_145A
instr FONT00_INSTR_SYNTH
envelope envelope_66C8, 251
.layer layer_1451
portamento 0x81, 3, 255
.layer layer_1455
notedv PITCH_A2, 0x60, 88
rjump layer_1451

.layer layer_fn_145A
transpose 0
end

.channel item_shield_charge_2
ldi 1
stio 6
rjump chan_1414

.channel item_shield_charge_3
ldi 2
stio 6
rjump chan_1414

.channel item_slingshot_empty
instr FONT00_INSTR_BOW
envelope envelope_67BC
gain 8
ldlayer 0, layer_1472
end

.layer layer_1472
transpose 48
portamento 0x81, 48, 127
notedv PITCH_DF5, 0x30, 105
end

.channel item_sword_unused2
ldlayer 0, layer_1483
ldlayer 1, layer_148D
end

.layer layer_1483
instr FONT00_INSTR_EXPLOSION_0
portamento 0x81, 48, 144
notedv PITCH_F2, 0xE, 96
end

.layer layer_148D
instr FONT00_INSTR_SWORD_STRIKE
notedv PITCH_BF2, 0xE, 72
end

.channel item_sword_strike_wood
ldlayer 0, layer_149A
ldlayer 1, layer_14A4
end

.layer layer_149A
instr FONT00_INSTR_STICK_ATTACK
envelope envelope_65E8, 244
notedv PITCH_GF4, 0x8, 110
end

.layer layer_14A4
instr FONT00_INSTR_STEP_BRIDGE
ldelay 0x3
envelope envelope_65E8, 244
notedv PITCH_GF2, 0x5, 110
end

.channel item_shield_unused
gain 15
ldlayer 0, layer_1043
ldlayer 1, layer_105A
end

.channel item_arrow_magic_fly
ldlayer 0, layer_14C0
ldlayer 1, layer_FB3
end

.layer layer_14C0
instr FONT00_INSTR_WHOOSH
portamento 0x81, 15, 40
notedv PITCH_F4, 0x40, 80
end

.channel item_arrow_fire_strike
ldlayer 0, layer_14D6
.channel chan_14CD
ldlayer 1, layer_14E0
ldlayer 2, layer_15B1
gain 20
end

.layer layer_14D6
instr FONT00_INSTR_IGNITE
envelope envelope_6688, 200
notedv PITCH_C3, 0x44, 100
end

.layer layer_14E0
transpose 48
jump layer_2A06

.channel item_arrow_ice_strike
ldlayer 0, layer_14EA
rjump chan_14CD

.layer layer_14EA
instr FONT00_INSTR_WARP
transpose 10
envelope envelope_6688, 200
notedv PITCH_C5, 0x44, 100
end

.channel item_arrow_light_strike
ldlayer 0, layer_14FB
rjump chan_14CD

.layer layer_14FB
instr FONT00_INSTR_FAIRY
envelope envelope_667C, 200
notedv PITCH_A4, 0x44, 54
end

.channel item_reel_slow
instr FONT00_INSTR_BOW
ldlayer 0, layer_150B
end

.layer layer_150B
notedv PITCH_F4, 0x6, 102
rjump layer_150B

.channel item_reel_fast
instr FONT00_INSTR_BOW
ldlayer 0, layer_1516
end

.layer layer_1516
notedv PITCH_A4, 0x3, 102
rjump layer_1516

.channel item_goddess_zoom
call chan_fn_2823
ldlayer 0, layer_1528
ldlayer 1, layer_1532
ldlayer 2, layer_153C
end

.layer layer_1528
instr FONT00_INSTR_SHIMMER
portamento 0x81, 55, 255
notedv PITCH_E3, 0x48, 65
end

.layer layer_1532
instr FONT00_INSTR_MECH_CHARGE
portamento 0x81, 55, 231
notedv PITCH_E4, 0x48, 58
end

.layer layer_153C
instr FONT00_INSTR_EXPLOSION_0
envelope envelope_66D0, 231
portamento 0x81, 51, 255
notedv PITCH_A2, 0x30, 72
end

.channel item_goddess_launch
call chan_fn_2823
ldlayer 0, layer_1557
ldlayer 1, layer_1561
ldlayer 2, layer_156F
end

.layer layer_1557
instr FONT00_INSTR_SHIMMER
portamento 0x82, 44, 231
notedv PITCH_E2, 0x48, 85
end

.layer layer_1561
instr FONT00_INSTR_MECH_CHARGE
envelope envelope_66F4, 231
portamento 0x82, 51, 255
notedv PITCH_D4, 0x48, 112
end

.layer layer_156F
instr FONT00_INSTR_EXPLOSION_0
envelope envelope_66D0, 231
portamento 0x82, 51, 255
notedv PITCH_A2, 0x30, 85
end

.channel item_goddess_boom
ldi 30
stio 1
ldlayer 0, layer_158A
ldlayer 1, layer_15A2
ldlayer 2, layer_15B1
end

.layer layer_158A
instr FONT00_INSTR_SHIMMER
portamento 0x81, 48, 231
notedv PITCH_A2, 0x18, 75
instr 77
envelope envelope_6740, 231
portamento 0x81, 38, 255
notedv PITCH_B2, 0xE8, 105
end

.layer layer_15A2
instr FONT00_INSTR_DISTORTION
envelope envelope_67CC, 231
portamento 0x81, 14, 255
notedv PITCH_B2, 0xE8, 95
end

.layer layer_15B1
instr FONT00_INSTR_EXPLOSION_0
envelope envelope_6610, 231
notedv PITCH_A3, 0x48, 105
end

.channel item_explosion_unused
ldlayer 0, layer_15C7
ldlayer 1, layer_15C5
ldlayer 2, layer_2185
end

.layer layer_15C5
transpose -18

.layer layer_15C7
instr FONT00_INSTR_EXPLOSION_0
releaserate 221
notedv PITCH_B4, 0xC8, 85
end

.channel item_explosive_flames
ldlayer 0, layer_15D7
ldlayer 1, layer_1EF0
end

.layer layer_15D7
instr FONT00_INSTR_EXPLOSION_0
releaserate 240
notedv PITCH_B4, 0x7F, 85
end

.channel item_scarecrow_jump
ldlayer 0, layer_15E3
end

.layer layer_15E3
instr FONT00_INSTR_BOW
envelope envelope_65D8, 251
transpose 48
portamento 0x81, 19, 255
notedv PITCH_AF4, 0x30, 80
end

.channel item_flame_wall
ldlayer 0, layer_2C60
ldlayer 1, layer_1BEF
end

.channel item_fishing_rod_strike
ldlayer 0, layer_1601
ldlayer 1, layer_160C
end

.layer layer_1601
instr FONT00_INSTR_WHIP_CORK
releaserate 224
notedv PITCH_G4, 0x6, 100
notedv PITCH_AF3, 0x0, 100
end

.layer layer_160C
instr FONT00_INSTR_WHOOSH
notedv PITCH_EF4, 0x14, 76
instr 33
notedv PITCH_EF5, 0xA, 102
end

.channel item_explosion_unused2
instr FONT00_INSTR_EXPLOSION_0
envelope envelope_66D0
ldlayer 0, layer_1620
end

.layer layer_1620
notedv PITCH_G3, 0x0, 95
end

.channel item_sword_break
instr FONT00_INSTR_SWORD_HIT_SHIELD
envelope envelope_6610
ldlayer 0, layer_1633
ldlayer 1, layer_105A
ldlayer 2, layer_11B7
end

.layer layer_1633
instr FONT00_INSTR_SWORD_STRIKE
transpose 36
notedv PITCH_E3, 0x8, 100
notedv PITCH_A3, 0x0, 100
end

.channel item_unused4
ldlayer 0, layer_1642
end

.layer layer_1642
instr FONT00_INSTR_WHIP_CORK
notedv PITCH_G3, 0xD, 96
end

.channel item_sword_swing_magic
ldi 16
stio 1
ldlayer 1, layer_1651
jump item_hammer_swing

.layer layer_1651
instr FONT00_INSTR_SHIMMER
envelope envelope_6610, 235
portamento 0x82, 29, 127
notedv PITCH_GF2, 0x28, 74
end

.filter filter_item0
filter 0, 0, 0, 0, 0, 0, 0, 0

.filter filter_item1
filter 0, 0, 0, 0, 0, 0, 0, 0
