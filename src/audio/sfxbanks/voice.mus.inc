.table table_voice
entry voice_link_old_attack
entry voice_link_old_attack_long
entry voice_link_old_epona
entry voice_link_old_ledge_grab
entry voice_link_old_ledge_climb
entry voice_link_old_hurt
entry voice_link_old_frozen
entry voice_link_old_fall_short
entry voice_link_old_fall_long
entry voice_link_old_low_health
entry voice_link_old_drink_gasp
entry voice_link_old_death
entry voice_link_old_wallmaster
entry voice_link_old_grabbed
entry voice_link_old_sneeze
entry voice_link_old_sweat
entry voice_link_old_drink
entry voice_link_old_idle
entry voice_link_old_sword_swing_unused
entry voice_link_kid_shiver
entry voice_link_old_jump
entry voice_link_old_cast_spell1
entry voice_link_old_shock
entry voice_link_old_cast_spell2
entry voice_link_old_push_block
entry voice_link_old_hookshot_hang
entry voice_link_old_knockback
entry voice_link_old_unused
entry voice_link_old_cast_spell3
entry voice_link_old_fall_long
entry voice_link_old_knockback_unused
entry voice_link_old_attack
entry voice_link_kid_attack
entry voice_link_kid_attack_long
entry voice_link_old_epona
entry voice_link_kid_ledge_grab
entry voice_link_kid_ledge_climb
entry voice_link_kid_hurt
entry voice_link_kid_frozen
entry voice_link_kid_fall_short
entry voice_link_kid_fall_long
entry voice_link_kid_low_health
entry voice_link_kid_drink_gasp
entry voice_link_kid_death
entry voice_link_kid_wallmaster
entry voice_link_kid_grabbed
entry voice_link_kid_sneeze
entry voice_link_kid_sweat
entry voice_link_kid_drink
entry voice_link_kid_idle
entry voice_link_kid_sword_swing_unused
entry voice_link_kid_shiver
entry voice_link_kid_jump
entry voice_link_kid_cast_spell1
entry voice_link_kid_shock
entry voice_link_kid_cast_spell2
entry voice_link_kid_push_block
entry voice_link_kid_hookshot_hang
entry voice_link_kid_knockback
entry voice_link_kid_unused
entry voice_link_kid_cast_spell3
entry voice_link_kid_fall_long
entry voice_link_kid_cutscene_attacked
entry voice_link_old_attack
entry voice_navi_unused
entry voice_navi_unused
entry voice_navi_unused
entry voice_navi_target
entry voice_navi_greeting
entry voice_navi_target
entry voice_navi_target
entry voice_navi_target
entry voice_navi_target
entry voice_navi_target
entry voice_navi_target
entry voice_navi_target
entry voice_navi_target
entry voice_navi_target
entry voice_navi_target
entry voice_navi_target
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs
entry voice_other_npcs
entry voice_other_npcs
entry voice_other_npcs
entry voice_other_npcs
entry voice_other_npcs
entry voice_other_npcs
entry voice_npcs
entry voice_npcs
entry voice_npcs

# Play a random voice clip, but not two equal in a row.
.channel play_random_voice
stseq 0, getrand+1
stseq 0, random_voice_cmpmax_instr+1
ldi 0
stseq 0, layer_play_voice+1  # overwrite delay = 0
call getrand
subio 6
rbeqz random_voice_same
call getrand
rjump random_voice_store_last
.channel random_voice_same
call getrand
sub 255
stio 6
.channel random_voice_cmpmax_instr
sub 0
rbeqz random_voice_store_last
ldio 6
.channel random_voice_store_last
# Store the last index for both channel 14 and 15
stcio 14, 6
stcio 15, 6
.channel play_voice_readtone_instr
ldseq addr_616D  # read tone at index. source gets overwritten by caller
stseq 64, layer_play_voice  # overwrite "notedv tone"
ldio 6
.channel play_voice_readvelocity_instr
ldseq addr_6171  # read velocity (~volume) at index. source gets overwritten by caller
.channel play_voice_with_velocity
stseq 0, layer_play_voice+2  # overwrite velocity
ldlayer 0, layer_play_voice

.channel voice_navi_unused
end

.layer layer_play_voice
notedv PITCH_A0, 0x0, 127
end

.channel getrand
rand 0
end

.channel play_dynamic_voice
stio 6
ldi 0
stseq 0, layer_play_voice+1  # overwrite delay = 0
ldio 6
rjump play_voice_readtone_instr

.channel play_single_voice
ldi 0
stseq 0, layer_play_voice+1  # overwrite delay = 0
ptrtodyntbl
ldi 0
dyntblv  # read tone from large[0]
stseq 64, layer_play_voice  # overwrite "notedv tone"
ldi 1
dyntblv  # read velocity from large[1]
rjump play_voice_with_velocity

# Same as play_random_voice but only supports two voice clips.
.channel play_alternating_voice
stseq 0, layer_play_voice+1  # overwrite delay = argument
ldio 6
sub 255
and 1
stio 6
rjump play_voice_readtone_instr

.channel voice_link_old_attack
ldptr addr_616D
stptrtoseq play_voice_readtone_instr+1
ldptr addr_6171
stptrtoseq play_voice_readvelocity_instr+1
ldi 4
rjump play_random_voice

.array addr_616D
byte FONT00_EFFECT_LINK_OLD_ATTACK_0
byte FONT00_EFFECT_LINK_OLD_ATTACK_1
byte FONT00_EFFECT_LINK_OLD_ATTACK_2
byte FONT00_EFFECT_LINK_OLD_ATTACK_3

.array addr_6171
byte 105
byte 105
byte 105
byte 105

.channel voice_link_old_attack_long
ldptr addr_6197
stptrtoseq play_voice_readtone_instr+1
ldptr addr_6199
stptrtoseq play_voice_readvelocity_instr+1
rand 2
rjump play_dynamic_voice

.channel chan_unused_6185
subio 6
rbeqz chan_618C
rand 2
rjump chan_6196
.channel chan_618C
rand 2
sub 255
stio 6
sub 2
rbeqz chan_6196
ldio 6
.channel chan_6196
stio 6

.array addr_6197
byte FONT00_EFFECT_LINK_OLD_MAJOR_0
byte FONT00_EFFECT_LINK_OLD_MAJOR_1

.array addr_6199
byte 110
byte 110

.channel voice_link_old_epona
ldptr addr_61BD
stptrtoseq play_voice_readtone_instr+1
ldptr addr_61BF
stptrtoseq play_voice_readvelocity_instr+1
rand 2
rjump play_dynamic_voice

.channel chan_unused_61AB
subio 6
rbeqz chan_61B2
rand 2
rjump chan_61BC
.channel chan_61B2
rand 2
sub 255
stio 6
sub 2
rbeqz chan_61BC
ldio 6
.channel chan_61BC
stio 6

.array addr_61BD
byte FONT00_EFFECT_LINK_OLD_SPUR_0
byte FONT00_EFFECT_LINK_OLD_SPUR_1

.array addr_61BF
byte 105
byte 105

.channel voice_link_old_ledge_grab
ldptr addr_61D1
stptrtoseq play_voice_readtone_instr+1
ldptr addr_61D3
stptrtoseq play_voice_readvelocity_instr+1
ldi 0
rjump play_alternating_voice

.array addr_61D1
byte FONT00_EFFECT_LINK_OLD_LEDGE_0
byte FONT00_EFFECT_LINK_OLD_LEDGE_2

.array addr_61D3
byte 95
byte 105

.channel voice_link_old_ledge_climb
ldptr addr_61E6
stptrtoseq play_voice_readtone_instr+1
ldptr addr_61E8
stptrtoseq play_voice_readvelocity_instr+1
rand 2
jump play_dynamic_voice

.array addr_61E6
byte FONT00_EFFECT_LINK_OLD_CLIMB
byte FONT00_EFFECT_LINK_OLD_LEDGE_1

.array addr_61E8
byte 72
byte 80

.channel voice_link_old_hurt
ldptr addr_61FB
stptrtoseq play_voice_readtone_instr+1
ldptr addr_61FE
stptrtoseq play_voice_readvelocity_instr+1
ldi 3
jump play_random_voice

.array addr_61FB
byte FONT00_EFFECT_LINK_OLD_HURT_0
byte FONT00_EFFECT_LINK_OLD_HURT_1
byte FONT00_EFFECT_LINK_OLD_HURT_2

.array addr_61FE
byte 117
byte 117
byte 117

.channel voice_link_old_frozen
ldptr addr_6212
stptrtoseq play_voice_readtone_instr+1
ldptr addr_6215
stptrtoseq play_voice_readvelocity_instr+1
ldi 3
jump play_random_voice

.array addr_6212
byte FONT00_EFFECT_LINK_OLD_HURT_3
byte FONT00_EFFECT_LINK_OLD_KNOCKBACK
byte FONT00_EFFECT_LINK_OLD_HURT_4

.array addr_6215
byte 113
byte 113
byte 113

.channel voice_link_old_fall_short
ldptr addr_6229
stptrtoseq play_voice_readtone_instr+1
ldptr addr_622B
stptrtoseq play_voice_readvelocity_instr+1
rand 2
jump play_dynamic_voice

.array addr_6229
byte FONT00_EFFECT_LINK_OLD_GASP_0
byte FONT00_EFFECT_LINK_OLD_GASP_1

.array addr_622B
byte 100
byte 100

.channel voice_link_old_fall_long
ldptr addr_623E
stptrtoseq play_voice_readtone_instr+1
ldptr addr_6240
stptrtoseq play_voice_readvelocity_instr+1
rand 2
jump play_dynamic_voice

.array addr_623E
byte FONT00_EFFECT_LINK_OLD_FALL_0
byte FONT00_EFFECT_LINK_OLD_FALL_1

.array addr_6240
byte 110
byte 110

.channel voice_link_old_low_health
ldptr addr_6253
stptrtoseq play_voice_readtone_instr+1
ldptr addr_6255
stptrtoseq play_voice_readvelocity_instr+1
rand 2
jump play_dynamic_voice

.array addr_6253
byte FONT00_EFFECT_LINK_OLD_PANT_0
byte FONT00_EFFECT_LINK_OLD_PANT_1

.array addr_6255
byte 90
byte 90

.channel voice_link_old_drink_gasp
ldlayer 0, layer_625B
end

.layer layer_625B
notedv PITCH_F5, 0x0, 96
end

.channel voice_link_old_death
ldlayer 0, layer_6263
end

.layer layer_6263
transpose 1
notedv PITCH_BF1, 0x57, 100
notedv PITCH_B1, 0x61, 100
notedv PITCH_C2, 0x47, 100
end

.channel voice_link_old_wallmaster
ldptr addr_6280
stptrtoseq play_voice_readtone_instr+1
ldptr addr_6282
stptrtoseq play_voice_readvelocity_instr+1
rand 2
jump play_dynamic_voice

.array addr_6280
byte FONT00_EFFECT_LINK_OLD_FALL_0
byte FONT00_EFFECT_LINK_OLD_FALL_1

.array addr_6282
byte 105
byte 105

.channel voice_link_old_grabbed
jump voice_link_old_hurt

.channel voice_link_old_sneeze
ldlayer 0, layer_628B
end

.layer layer_628B
transpose 1
notedv PITCH_DF2, 0x7F, 100
notedv PITCH_D2, 0x118, 100
notedv PITCH_EF2, 0x13E, 100
end

.channel voice_link_old_sweat
ldlayer 0, layer_629D
end

.layer layer_629D
transpose 1
notedv PITCH_E2, 0x122, 100
notedv PITCH_F2, 0xA3, 100
notedv PITCH_GF2, 0x35, 100
end

.channel voice_link_old_drink
ldlayer 0, layer_62AF
end

.layer layer_62AF
notedv PITCH_E5, 0x50, 80
rjump layer_62AF

.channel voice_link_old_idle
ldlayer 0, layer_62B8
end

.layer layer_62B8
transpose 1
notedv PITCH_G2, 0xB9, 100
notedv PITCH_AF2, 0x86, 100
notedv PITCH_A2, 0x74, 100
end

.channel voice_link_old_sword_swing_unused
ldptr addr_62CC
jump play_single_voice

.array addr_62CC
byte FONT00_EFFECT_LINK_OLD_ATTACK_0
byte 100

.channel voice_link_old_jump
ldio 6
sub 255
stio 6
and 1
ldseq addr_62E8
stseq 64, layer_64BF
rand 2
ldseq addr_62EA
stseq 0, layer_64BF+2
ldlayer 0, layer_64BF
end

.array addr_62E8
byte FONT00_EFFECT_LINK_OLD_JUMP
byte FONT00_EFFECT_LINK_OLD_GASP_2

.array addr_62EA
byte 80
byte 85

.channel voice_link_old_cast_spell1
ldptr addr_62F2
jump play_single_voice

.array addr_62F2
byte FONT00_EFFECT_LINK_OLD_MAJOR_1
byte 110

.channel voice_link_old_shock
ldlayer 0, layer_62F8
end

.layer layer_62F8
transpose 2
notedv PITCH_EF1, 0x0, 85
end

.channel voice_link_old_cast_spell2
ldptr addr_6304
jump play_single_voice

.array addr_6304
byte FONT00_EFFECT_LINK_OLD_MAJOR_0
byte 95

.channel voice_link_old_push_block
ldptr addr_630C
jump play_single_voice

.array addr_630C
byte FONT00_EFFECT_LINK_OLD_CLIMB
byte 82

.channel voice_link_old_hookshot_hang
ldptr addr_6314
jump play_single_voice

.array addr_6314
byte FONT00_EFFECT_LINK_OLD_LEDGE_0
byte 95

.channel voice_link_old_knockback
ldptr addr_631C
jump play_single_voice

.array addr_631C
byte FONT00_EFFECT_LINK_OLD_FALL_DMG
byte 110

.channel voice_link_old_unused
ldptr addr_6324
jump play_single_voice

.array addr_6324
byte FONT00_EFFECT_LINK_OLD_LIFT
byte 100

.channel voice_link_old_cast_spell3
ldptr addr_632C
jump play_single_voice

.array addr_632C
byte FONT00_EFFECT_LINK_OLD_SPELL
byte 110

.channel voice_link_old_knockback_unused
ldptr addr_6334
jump play_single_voice

.array addr_6334
byte FONT00_EFFECT_LINK_OLD_KNOCKBACK
byte 113

.channel voice_link_kid_attack
ldptr addr_6347
stptrtoseq play_voice_readtone_instr+1
ldptr addr_634B
stptrtoseq play_voice_readvelocity_instr+1
ldi 4
jump play_random_voice

.array addr_6347
byte FONT00_EFFECT_LINK_KID_ATTACK_0
byte FONT00_EFFECT_LINK_KID_ATTACK_1
byte FONT00_EFFECT_LINK_KID_ATTACK_2
byte FONT00_EFFECT_LINK_KID_ATTACK_3

.array addr_634B
byte 110
byte 110
byte 110
byte 110

.channel voice_link_kid_attack_long
ldptr addr_6372
stptrtoseq play_voice_readtone_instr+1
ldptr addr_6374
stptrtoseq play_voice_readvelocity_instr+1
rand 2
jump play_dynamic_voice

.channel chan_unused_6360
subio 6
rbeqz chan_6367
rand 2
rjump chan_6371
.channel chan_6367
rand 2
sub 255
stio 6
sub 2
rbeqz chan_6371
ldio 6
.channel chan_6371
stio 6

.array addr_6372
byte FONT00_EFFECT_LINK_KID_STRONG_0
byte FONT00_EFFECT_LINK_KID_STRONG_1

.array addr_6374
byte 110
byte 110

.channel voice_link_kid_ledge_grab
ldio 6
sub 255
stio 6
and 1
ldseq addr_6396
stseq 64, layer_6390
rand 2
ldseq addr_6398
stseq 0, layer_6390+2
ldlayer 0, layer_6390
end

.layer layer_6390
notedv PITCH_A0, 0x0, 100
ldelay 0x30
end

.array addr_6396
byte FONT00_EFFECT_LINK_KID_LEDGE_0
byte FONT00_EFFECT_LINK_KID_LEDGE_1

.array addr_6398
byte 100
byte 100

.channel voice_link_kid_ledge_climb
ldptr addr_63AB
stptrtoseq play_voice_readtone_instr+1
ldptr addr_63AD
stptrtoseq play_voice_readvelocity_instr+1
rand 2
jump play_dynamic_voice

.array addr_63AB
byte FONT00_EFFECT_LINK_KID_SIGH_0
byte FONT00_EFFECT_LINK_KID_SIGH_1

.array addr_63AD
byte 90
byte 70

.channel voice_link_kid_hurt
ldptr addr_63C0
stptrtoseq play_voice_readtone_instr+1
ldptr addr_63C3
stptrtoseq play_voice_readvelocity_instr+1
ldi 3
jump play_random_voice

.array addr_63C0
byte FONT00_EFFECT_LINK_KID_HURT_0
byte FONT00_EFFECT_LINK_KID_HURT_1
byte FONT00_EFFECT_LINK_KID_HURT_2

.array addr_63C3
byte 110
byte 110
byte 110

.channel voice_link_kid_frozen
ldptr addr_63D7
stptrtoseq play_voice_readtone_instr+1
ldptr addr_63DA
stptrtoseq play_voice_readvelocity_instr+1
ldi 3
jump play_random_voice

.array addr_63D7
byte FONT00_EFFECT_LINK_KID_HURT_3
byte FONT00_EFFECT_LINK_KID_KNOCKBACK
byte FONT00_EFFECT_LINK_KID_HURT_4

.array addr_63DA
byte 110
byte 110
byte 110

.channel voice_link_kid_fall_short
ldptr addr_63EE
stptrtoseq play_voice_readtone_instr+1
ldptr addr_63F0
stptrtoseq play_voice_readvelocity_instr+1
rand 2
jump play_dynamic_voice

.array addr_63EE
byte FONT00_EFFECT_LINK_KID_GASP_0
byte FONT00_EFFECT_LINK_KID_GASP_1

.array addr_63F0
byte 100
byte 100

.channel voice_link_kid_fall_long
ldptr addr_6403
stptrtoseq play_voice_readtone_instr+1
ldptr addr_6405
stptrtoseq play_voice_readvelocity_instr+1
rand 2
jump play_dynamic_voice

.array addr_6403
byte FONT00_EFFECT_LINK_KID_FALL_0
byte FONT00_EFFECT_LINK_KID_FALL_1

.array addr_6405
byte 100
byte 100

.channel voice_link_kid_low_health
ldptr addr_6418
stptrtoseq play_voice_readtone_instr+1
ldptr addr_641A
stptrtoseq play_voice_readvelocity_instr+1
rand 2
jump play_dynamic_voice

.array addr_6418
byte FONT00_EFFECT_LINK_KID_WHEEZE
byte FONT00_EFFECT_LINK_KID_PANT

.array addr_641A
byte 85
byte 85

.channel voice_link_kid_drink_gasp
ldlayer 0, layer_6420
end

.layer layer_6420
notedv PITCH_DF5, 0x0, 96
end

.channel voice_link_kid_death
ldlayer 0, layer_6428
end

.layer layer_6428
transpose 1
notedv PITCH_A0, 0x62, 100
notedv PITCH_BF0, 0x6A, 100
notedv PITCH_B0, 0x3A, 100
end

.channel voice_link_kid_wallmaster
ldptr addr_6445
stptrtoseq play_voice_readtone_instr+1
ldptr addr_6447
stptrtoseq play_voice_readvelocity_instr+1
rand 2
jump play_dynamic_voice

.array addr_6445
byte FONT00_EFFECT_LINK_KID_FALL_0
byte FONT00_EFFECT_LINK_KID_FALL_1

.array addr_6447
byte 100
byte 100

.channel voice_link_kid_grabbed
ldptr addr_644F
jump play_single_voice

.array addr_644F
byte FONT00_EFFECT_LINK_KID_DEATH_0
byte 100

.channel voice_link_kid_sneeze
ldlayer 0, layer_6455
end

.layer layer_6455
transpose 1
notedv PITCH_C1, 0x10B, 50
notedv PITCH_C1, 0xC5, 50
notedv PITCH_D1, 0x87, 100
notedv PITCH_EF1, 0x21, 100
end

.channel voice_link_kid_sweat
ldlayer 0, layer_646B
end

.layer layer_646B
transpose 1
notedv PITCH_E1, 0xD9, 100
notedv PITCH_F1, 0x62, 100
notedv PITCH_GF1, 0x109, 100
end

.channel voice_link_kid_drink
ldlayer 0, layer_647D
end

.layer layer_647D
notedv PITCH_C5, 0x50, 80
rjump layer_647D

.channel voice_link_kid_idle
ldlayer 0, layer_6486
end

.layer layer_6486
transpose 1
notedv PITCH_G1, 0x41, 100
notedv PITCH_AF1, 0x10A, 100
notedv PITCH_A1, 0x53, 100
end

.channel voice_link_kid_sword_swing_unused
ldptr addr_6499
jump play_single_voice

.array addr_6499
byte FONT00_EFFECT_LINK_KID_ATTACK_0
byte 100

.channel voice_link_kid_shiver
ldlayer 0, layer_649F
end

.layer layer_649F
transpose 1
notedv PITCH_C1, 0x0, 50
end

.channel voice_link_kid_jump
ldio 6
sub 255
stio 6
and 1
ldseq addr_64C5
stseq 64, layer_64BF
rand 2
ldseq addr_64C7
stseq 0, layer_64BF+2
ldlayer 0, layer_64BF
end

.layer layer_64BF
notedv PITCH_A0, 0x0, 100
ldelay 0x30
end

.array addr_64C5
byte FONT00_EFFECT_LINK_KID_JUMP_0
byte FONT00_EFFECT_LINK_OLD_JUMP_1

.array addr_64C7
byte 80
byte 80

.channel voice_link_kid_cast_spell1
ldptr addr_64CF
jump play_single_voice

.array addr_64CF
byte FONT00_EFFECT_LINK_KID_STRONG_1
byte 110

.channel voice_link_kid_shock
ldlayer 0, layer_64D5
end

.layer layer_64D5
transpose 2
notedv PITCH_E1, 0x0, 85
end

.channel voice_link_kid_cast_spell2
ldptr addr_64E1
jump play_single_voice

.array addr_64E1
byte FONT00_EFFECT_LINK_KID_STRONG_0
byte 95

.channel voice_link_kid_push_block
ldptr addr_64E9
jump play_single_voice

.array addr_64E9
byte FONT00_EFFECT_LINK_KID_SIGH_0
byte 90

.channel voice_link_kid_hookshot_hang
ldptr addr_64F1
jump play_single_voice

.array addr_64F1
byte FONT00_EFFECT_LINK_KID_LEDGE_0
byte 100

.channel voice_link_kid_knockback
ldptr addr_64F9
jump play_single_voice

.array addr_64F9
byte FONT00_EFFECT_LINK_KID_FALL_DMG
byte 115

.channel voice_link_kid_unused
ldptr addr_6501
jump play_single_voice

.array addr_6501
byte FONT00_EFFECT_LINK_KID_CHARGE
byte 100

.channel voice_link_kid_cast_spell3
ldptr addr_6509
jump play_single_voice

.array addr_6509
byte FONT00_EFFECT_LINK_KID_SPELL
byte 110

.channel voice_link_kid_cutscene_attacked
ldptr addr_6511
jump play_single_voice

.array addr_6511
byte FONT00_EFFECT_LINK_KID_FALL_1
byte 100

.channel voice_navi_greeting
ldi 32
stio 1
ldlayer 0, layer_651A
end

.layer layer_651A
transpose 2
notedv PITCH_DF1, 0x0, 100
end

.channel voice_npcs
ldio 4
sub 80
stseq 25, layer_6536  # set semitone = sound id - 80 + 25
ldseq addr_653B
stseq 0, layer_6536+2
ldlayer 0, layer_6534
panweight 96
end

.layer layer_6534
transpose 1
.layer layer_6536
notedvg 33, 0x0, 100, 0
end

.array addr_653B
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 110
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100
byte 110

.channel voice_other_npcs
ldio 4
sub 119
stseq 0, layer_6576  # set semitone = sound id - 119
ldseq addr_657B
stseq 0, layer_6576+2
ldlayer 0, layer_6574
end

.layer layer_6574
transpose 2
.layer layer_6576
notedvg 0, 0x0, 100, 0
end

.array addr_657B
byte 100
byte 100
byte 100
byte 100
byte 100
byte 100

.channel voice_navi_target
ldi 32
stio 1
ldlayer 1, layer_6598
ldptr addr_65A7
stptrtoseq play_voice_readtone_instr+1
ldptr addr_65AA
stptrtoseq play_voice_readvelocity_instr+1
ldi 3
jump play_random_voice

.layer layer_6598
instr FONT00_INSTR_FAIRY_MAGIC
env envelope_66B8, 251
legato
portamento 0x81, 51, 255
notedv PITCH_F5, 0x30, 65
end

.array addr_65A7
byte FONT00_EFFECT_NAVI_WATCH_OUT
byte FONT00_EFFECT_NAVI_LOOK
byte FONT00_EFFECT_NAVI_HEY

.array addr_65AA
byte 100
byte 95
byte 105

.filter filter_voice0
filter 0, 0, 0, 0, 0, 0, 0, 0

.filter filter_voice1
filter 0, 0, 0, 0, 0, 0, 0, 0
