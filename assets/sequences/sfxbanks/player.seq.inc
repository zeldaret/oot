.table table_player_child
entry player_child_step_dirt
entry player_child_step_sand
entry player_child_step_stone
entry player_child_step_jabu
entry player_child_step_water
entry player_child_step_water_deep
entry player_child_step_tall_grass
entry player_child_step_lava
entry player_child_step_grass
entry player_child_step_carpet
entry player_child_step_wood
entry player_child_step_bridge
entry player_step_vines
entry player_step_iron_boots
entry player_step_unused
entry player_child_step_ice
entry player_child_jump_dirt
entry player_child_jump_sand
entry player_child_jump_stone
entry player_child_jump_jabu
entry player_child_jump_water
entry player_child_jump_water_deep
entry player_child_jump_tall_grass
entry player_child_jump_lava
entry player_child_jump_grass
entry player_child_jump_carpet
entry player_child_jump_wood
entry player_child_jump_bridge
entry player_child_step_dirt
entry player_jump_iron_boots
entry player_jump_unused
entry player_child_jump_ice
entry player_child_land_dirt
entry player_child_land_sand
entry player_child_land_stone
entry player_child_land_jabu
entry player_child_land_water
entry player_child_land_water_deep
entry player_child_land_tall_grass
entry player_child_land_lava
entry player_child_land_grass
entry player_child_land_carpet
entry player_child_land_wood
entry player_child_land_bridge
entry player_child_step_dirt
entry player_land_iron_boots
entry player_land_unused
entry player_child_land_ice
entry player_climb_down_vine_top
entry player_climb_up_vine_top
entry player_climb_on_epona
entry player_jump_off_epona
entry player_shield_epona
entry player_change_item_held
entry player_catch_boomerang
entry player_large_splash
entry player_small_splash
entry player_swim
entry player_throw
entry player_hit_wall_old
entry player_flip
entry player_sidejump
entry player_hit_blunt
entry player_hit_stab
entry player_slip_dirt
entry player_slip_sand
entry player_slip_stone
entry player_slip_jabu
entry player_slip_water
entry player_slip_water_deep
entry player_slip_tall_grass
entry player_slip_lava
entry player_slip_grass
entry player_slip_carpet
entry player_slip_wood
entry player_slip_bridge
entry player_child_step_water
entry player_slip_wood
entry player_slip_unused
entry player_slip_stone
entry player_rebound_dirt
entry player_rebound_sand
entry player_rebound_stone
entry player_rebound_jabu
entry player_rebound_water
entry player_rebound_water_deep
entry player_rebound_tall_grass
entry player_rebound_lava
entry player_rebound_grass
entry player_rebound_carpet
entry player_rebound_wood
entry player_rebound_bridge
entry player_child_step_dirt
entry player_rebound_wood
entry player_rebound_unused
entry player_rebound_ice
entry player_step_iron_boots
entry player_jump_iron_boots
entry player_land_iron_boots
entry player_dive_surface
entry player_dive_down
entry player_dive_move
entry player_child_metalequip
entry player_adult_metalequip
entry player_electric_shock
entry player_lift_grass
entry player_lift_rock
entry player_morpha_bubble
entry player_lift_giant_rock
entry player_sword_charge
entry player_freeze
entry player_lift_pot
entry player_hit_unused
entry player_idle_shuffle
entry player_idle_slide
entry player_dive_unused
entry player_freeze_short
entry player_ice_break
entry player_slip_ice
entry player_sheathe_item_unused
entry player_lift_crate
entry player_cast_fire
entry player_cast_wind
entry player_cast_wind_return
entry player_cast_soul
entry player_arrow_fire_charge
entry player_arrow_ice_charge
entry player_arrow_light_charge

.table table_player_adult
entry player_adult_step_dirt
entry player_adult_step_sand
entry player_adult_step_stone
entry player_adult_step_jabu
entry player_adult_step_water
entry player_adult_step_water_deep
entry player_adult_step_tall_grass
entry player_adult_step_lava
entry player_adult_step_grass
entry player_adult_step_carpet
entry player_adult_step_wood
entry player_adult_step_bridge
entry player_adult_step_vine
entry player_step_iron_boots
entry player_child_step_dirt
entry player_adult_step_ice
entry player_adult_jump_dirt
entry player_adult_jump_sand
entry player_adult_jump_stone
entry player_adult_jump_jabu
entry player_adult_jump_water
entry player_adult_jump_water_deep
entry player_adult_jump_tall_grass
entry player_adult_jump_lava
entry player_adult_jump_grass
entry player_adult_jump_carpet
entry player_adult_jump_wood
entry player_adult_jump_bridge
entry player_child_step_dirt
entry player_jump_iron_boots
entry player_child_step_dirt
entry player_adult_jump_ice
entry player_adult_land_dirt
entry player_adult_land_sand
entry player_adult_land_stone
entry player_adult_land_jabu
entry player_adult_land_water
entry player_adult_land_water_deep
entry player_adult_land_tall_grass
entry player_adult_land_lava
entry player_adult_land_grass
entry player_adult_land_carpet
entry player_adult_land_wood
entry player_adult_land_bridge
entry player_adult_step_dirt
entry player_land_iron_boots
entry player_child_step_dirt
entry player_adult_land_ice
entry player_crawl_dirt
entry player_crawl_sand
entry player_crawl_stone
entry player_crawl_jabu
entry player_crawl_water
entry player_crawl_water_deep
entry player_crawl_tall_grass
entry player_crawl_lava
entry player_crawl_grass
entry player_crawl_carpet
entry player_crawl_wood
entry player_crawl_bridge
entry player_child_step_dirt
entry player_child_step_dirt
entry player_child_step_dirt
entry player_crawl_ice
entry player_cast_soul_end
entry player_roll_dust
entry player_crash_unused
entry player_cast_soul_appear
entry player_fairy_heal
entry player_rebound_unarmed
entry player_plant_seed
entry player_plant_grow
entry player_cast_wind_dismiss
entry player_hover
entry player_plant_hover
entry env_elevator_move
entry player_child_step_dirt
entry player_child_step_dirt
entry player_child_step_dirt
entry player_child_step_dirt
entry player_slip_dirt2  # Used; all other slip values are ignored
entry player_slip_sand2
entry player_slip_stone2
entry player_slip_jabu2
entry player_slip_jabu2
entry player_slip_jabu2
entry player_slip_lava2
entry player_slip_jabu2
entry player_slip_grass2
entry player_slip_dirt2
entry player_slip_unused2
entry player_slip_unused2
entry player_child_step_water
entry player_slip_unused2
entry player_slip_iron_boots_unused
entry player_slip_stone2

.channel player_child_step_dirt
ldlayer 0, layer_2A7
end

.layer layer_2A5
transpose -2

.layer layer_2A7
instr FONT00_INSTR_STEP_GROUND
notedv PITCH_E3, 0x15, 56
end

.layer layer_2AD
transpose -6
ldelay 0xD
instr FONT00_INSTR_SWORD_STRIKE
notedvg PITCH_D4, 0x4, 36, 127
instr FONT00_INSTR_STEP_FIRE
notedv PITCH_G3, 0x4, 56
end

.channel player_child_step_sand
ldlayer 0, layer_2C3
end

.layer layer_2C1
transpose -2

.layer layer_2C3
instr FONT00_INSTR_STEP_SAND
notedv PITCH_A3, 0x15, 56
end

.channel player_child_step_stone
ldi 20
stio 1
ldlayer 0, layer_2D2
end

.layer layer_2D0
transpose -2

.layer layer_2D2
instr FONT00_INSTR_STEP_ROCK
notedv PITCH_GF3, 0x15, 95
end

.channel player_child_step_jabu
ldlayer 0, layer_2DE
end

.layer layer_2DC
transpose -2

.layer layer_2DE
instr FONT00_INSTR_STEP_JABU
portamento 0x82, 31, 255
notedv PITCH_A3, 0x2D, 93
end

.channel player_child_step_water
ldlayer 0, layer_2EE
end

.layer layer_2EC
transpose -2

.layer layer_2EE
instr FONT00_INSTR_STEP_WATER
notedv PITCH_A3, 0x1E, 56
end

.channel player_child_step_water_deep
ldlayer 0, layer_2FA
end

.layer layer_2F8
transpose -2

.layer layer_2FA
instr FONT00_INSTR_STEP_WATER
notedv PITCH_F3, 0x1E, 56
end

.channel player_child_step_tall_grass
ldlayer 0, layer_306
end

.layer layer_304
transpose -2

.layer layer_306
instr FONT00_INSTR_STEP_CARPET_0
notedv PITCH_F3, 0x6, 80
instr FONT00_INSTR_STEP_GRASS
releaserate 235
notedv PITCH_B3, 0x30, 80
end

.channel player_child_step_lava
ldlayer 0, layer_319
end

.layer layer_317
transpose -2

.layer layer_319
instr FONT00_INSTR_STEP_GROUND
notedv PITCH_C3, 0x4, 42
instr FONT00_INSTR_STEP_WATER
notedv PITCH_GF2, 0x6, 56
instr FONT00_INSTR_BOMB
portamento 0x81, 44, 255
notedv PITCH_F3, 0x16, 64
end

.channel player_child_step_grass
ldlayer 0, layer_333
end

.layer layer_331
transpose -2

.layer layer_333
instr FONT00_INSTR_STEP_CARPET_0
envelope envelope_66B0, 250
notedv PITCH_A3, 0x15, 70
end

.channel player_child_step_carpet
ldlayer 0, layer_343
end

.layer layer_341
transpose -2

.layer layer_343
instr FONT00_INSTR_STEP_CARPET_1
notedv PITCH_GF4, 0x0, 80
end

.channel player_child_step_wood
ldlayer 0, layer_34F
end

.layer layer_34D
transpose -2

.layer layer_34F
instr FONT00_INSTR_STEP_WOOD
notedv PITCH_AF3, 0x14, 86
end

.channel player_child_step_bridge
ldlayer 0, layer_35B
end

.layer layer_359
transpose -2

.layer layer_35B
instr FONT00_INSTR_STEP_BRIDGE
notedv PITCH_C3, 0x18, 76
end

.channel player_step_vines
ldlayer 0, layer_36A
ldlayer 1, layer_2AD
end

.layer layer_368
transpose -2

.layer layer_36A
instr FONT00_INSTR_STEP_SAND
notedvg PITCH_DF3, 0x6, 110, 127
notedv PITCH_E1, 0xA, 110
ldelay 0x5
end

.channel player_step_iron_boots
instr FONT00_INSTR_STEP_IRON
ldlayer 0, layer_37C
end

.layer layer_37C
notedv PITCH_E3, 0x28, 96
end

.channel player_step_unused
ldlayer 0, layer_384
end

.layer layer_384
instr FONT00_INSTR_STEP_SAND
notedv PITCH_A2, 0x2A, 56
end

.channel player_child_step_ice
ldlayer 0, layer_390
end

.layer layer_38E
transpose -2

.layer layer_390
instr FONT00_INSTR_STEP_ICE
notedv PITCH_A3, 0x15, 85
end

.channel player_child_jump_dirt
instr FONT00_INSTR_STEP_GROUND
ldlayer 0, layer_3A1
ldlayer 1, layer_3AA
end

.layer layer_39F
transpose -2

.layer layer_3A1
notedv PITCH_E3, 0xA, 63
notedv PITCH_C4, 0xA, 63
ldelay 0x7
end

.layer layer_3AA
ldelay 0x7
instr FONT00_INSTR_SWORD_HIT_SHIELD
envelope envelope_6660, 250
notedvg PITCH_C5, 0x6, 60, 127
instr FONT00_INSTR_SWORD_STRIKE
notedvg PITCH_F4, 0x4, 48, 127
instr FONT00_INSTR_STEP_FIRE
notedv PITCH_F3, 0x5, 55
notedv PITCH_B3, 0x5, 55
end

.channel player_child_jump_sand
ldlayer 0, layer_3CE
ldlayer 1, layer_3AA
end

.layer layer_3CC
transpose -2

.layer layer_3CE
instr FONT00_INSTR_STEP_SAND
notedv PITCH_A3, 0xA, 63
notedv PITCH_F4, 0xA, 63
ldelay 0x7
end

.channel player_child_jump_stone
ldi 20
stio 1
ldlayer 0, layer_3E5
ldlayer 1, layer_3AA
end

.layer layer_3E3
transpose -2

.layer layer_3E5
instr FONT00_INSTR_STEP_ROCK
notedvg PITCH_GF3, 0xA, 95, 127
notedvg PITCH_B3, 0xA, 95, 127
ldelay 0x7
end

.channel player_child_jump_jabu
ldlayer 0, layer_3FB
ldlayer 1, layer_3AA
end

.layer layer_3F9
transpose -2

.layer layer_3FB
instr FONT00_INSTR_STEP_JABU
notedv PITCH_F3, 0xA, 63
notedv PITCH_D4, 0xA, 63
ldelay 0x7
end

.channel player_child_jump_water
ldlayer 0, layer_40F
ldlayer 1, layer_3AA
end

.layer layer_40D
transpose -2

.layer layer_40F
instr FONT00_INSTR_STEP_WATER
notedv PITCH_A3, 0xA, 63
notedv PITCH_F4, 0x1E, 63
end

.channel player_child_jump_water_deep
ldlayer 0, layer_421
ldlayer 1, layer_3AA
end

.layer layer_41F
transpose -2

.layer layer_421
instr FONT00_INSTR_STEP_WATER
notedv PITCH_F3, 0xA, 63
notedv PITCH_D4, 0x1E, 63
end

.channel player_child_jump_tall_grass
ldlayer 0, layer_433
ldlayer 1, layer_3AA
end

.layer layer_431
transpose -2

.layer layer_433
instr FONT00_INSTR_STEP_CARPET_0
notedv PITCH_E3, 0x6, 80
instr FONT00_INSTR_STEP_GRASS
releaserate 225
notedv PITCH_A3, 0xA, 75
notedv PITCH_E4, 0x30, 80
end

.channel player_child_jump_lava
ldlayer 0, layer_44C
ldlayer 1, layer_3AA
end

.layer layer_44A
transpose -2

.layer layer_44C
instr FONT00_INSTR_STEP_GROUND
notedv PITCH_BF2, 0x4, 45
instr FONT00_INSTR_STEP_WATER
notedv PITCH_G2, 0x6, 63
instr FONT00_INSTR_BOMB
portamento 0x81, 42, 255
notedv PITCH_E3, 0xE, 49
instr FONT00_INSTR_STEP_WATER
notedv PITCH_EF3, 0xE, 63
end

.channel player_child_jump_grass
ldlayer 0, layer_46E
ldlayer 1, layer_3AA
end

.layer layer_46C
transpose -2

.layer layer_46E
instr FONT00_INSTR_STEP_CARPET_0
notedv PITCH_G3, 0xA, 63
notedv PITCH_F4, 0xA, 63
ldelay 0x7
end

.channel player_child_jump_carpet
ldlayer 0, layer_482
ldlayer 1, layer_3AA
end

.layer layer_480
transpose -2

.layer layer_482
instr FONT00_INSTR_STEP_CARPET_1
notedv PITCH_C4, 0xA, 78
notedv PITCH_A4, 0xA, 78
ldelay 0x7
end

.channel player_child_jump_wood
ldlayer 0, layer_496
ldlayer 1, layer_3AA
end

.layer layer_494
transpose -2

.layer layer_496
instr FONT00_INSTR_STEP_WOOD
notedv PITCH_AF3, 0xA, 73
notedv PITCH_F4, 0x1E, 73
end

.channel player_child_jump_bridge
ldlayer 0, layer_4A8
ldlayer 1, layer_3AA
end

.layer layer_4A6
transpose -2

.layer layer_4A8
instr FONT00_INSTR_STEP_BRIDGE
notedv PITCH_F3, 0xA, 63
notedv PITCH_B3, 0x19, 63
end

.channel player_jump_iron_boots
instr FONT00_INSTR_STEP_IRON
ldlayer 0, layer_4B7
end

.layer layer_4B7
notedv PITCH_EF3, 0xA, 96
notedv PITCH_A3, 0x18, 96
end

.layer layer_unused_4BE
transpose 2
portamento 0x85, 26, 255
notedv PITCH_EF2, 0xA, 80
legato
transpose 5
portamento 0x85, 26, 255
notedv PITCH_EF2, 0xF, 80
notedv PITCH_EF2, 0x12, 80
notedv PITCH_G2, 0xF, 80
end

.channel player_jump_unused
ldlayer 0, layer_4DF
ldlayer 1, layer_3AA
end

.layer layer_4DF
instr FONT00_INSTR_STEP_SAND
notedv PITCH_A2, 0x12, 63
notedv PITCH_F3, 0x12, 63
ldelay 0x7
end

.channel player_child_jump_ice
ldlayer 0, layer_4F3
ldlayer 1, layer_3AA
end

.layer layer_4F1
transpose -2

.layer layer_4F3
instr FONT00_INSTR_STEP_ICE
notedv PITCH_E3, 0x7, 95
notedv PITCH_B4, 0x12, 95
ldelay 0x7
end

.channel player_child_land_dirt
ldlayer 0, layer_507
ldlayer 1, layer_512
end

.layer layer_505
transpose -2

.layer layer_507
instr FONT00_INSTR_STEP_GROUND
notedv PITCH_E4, 0xA, 75
notedv PITCH_E3, 0xA, 75
ldelay 0x7
end

.layer layer_512
ldelay 0x7
instr FONT00_INSTR_SWORD_HIT_SHIELD
envelope envelope_6660, 250
notedvg PITCH_C5, 0x6, 39, 127
instr FONT00_INSTR_SWORD_STRIKE
notedvg PITCH_D4, 0x4, 49, 127
instr FONT00_INSTR_STEP_FIRE
notedv PITCH_B3, 0x5, 39
notedv PITCH_F3, 0x5, 39
end

.channel player_child_land_sand
ldlayer 0, layer_536
ldlayer 1, layer_512
end

.layer layer_534
transpose -2

.layer layer_536
instr FONT00_INSTR_STEP_SAND
notedv PITCH_A4, 0xA, 75
notedv PITCH_A3, 0xA, 75
end

.channel player_child_land_stone
ldi 20
stio 1
ldlayer 0, layer_54B
ldlayer 1, layer_512
end

.layer layer_549
transpose -2

.layer layer_54B
instr FONT00_INSTR_STEP_ROCK
notedvg PITCH_GF4, 0xA, 101, 64
notedvg PITCH_GF3, 0xA, 101, 64
ldelay 0x7
end

.channel player_child_land_jabu
ldlayer 0, layer_561
ldlayer 1, layer_512
end

.layer layer_55F
transpose -2

.layer layer_561
instr FONT00_INSTR_STEP_JABU
notedv PITCH_F4, 0xA, 75
notedv PITCH_F3, 0xA, 75
ldelay 0x7
end

.channel player_child_land_water
ldlayer 0, layer_575
ldlayer 1, layer_512
end

.layer layer_573
transpose -2

.layer layer_575
instr FONT00_INSTR_STEP_WATER
notedv PITCH_A4, 0xA, 75
notedv PITCH_A3, 0x1E, 75
end

.channel player_child_land_water_deep
ldlayer 0, layer_587
ldlayer 1, layer_512
end

.layer layer_585
transpose -2

.layer layer_587
instr FONT00_INSTR_STEP_WATER
notedv PITCH_F4, 0xA, 75
notedv PITCH_F3, 0x1E, 75
end

.channel player_child_land_tall_grass
ldlayer 0, layer_599
ldlayer 1, layer_512
end

.layer layer_597
transpose -2

.layer layer_599
instr FONT00_INSTR_STEP_CARPET_0
notedv PITCH_A3, 0x6, 56
instr FONT00_INSTR_STEP_GRASS
releaserate 225
notedv PITCH_F4, 0xA, 80
notedv PITCH_A3, 0x30, 80
end

.channel player_child_land_lava
ldlayer 0, layer_5B2
ldlayer 1, layer_512
end

.layer layer_5B0
transpose -2

.layer layer_5B2
instr FONT00_INSTR_STEP_GROUND
notedv PITCH_B2, 0x4, 68
instr FONT00_INSTR_STEP_WATER
notedv PITCH_F3, 0x6, 75
notedv PITCH_G2, 0xA, 75
instr FONT00_INSTR_BOMB
portamento 0x81, 38, 255
notedv PITCH_C3, 0x16, 70
end

.channel player_child_land_grass
ldlayer 0, layer_5D2
ldlayer 1, layer_512
end

.layer layer_5D0
transpose -2

.layer layer_5D2
instr FONT00_INSTR_STEP_CARPET_0
notedv PITCH_E4, 0xA, 75
notedv PITCH_G3, 0xA, 75
ldelay 0x7
end

.channel player_child_land_carpet
ldlayer 0, layer_5E6
ldlayer 1, layer_512
end

.layer layer_5E4
transpose -2

.layer layer_5E6
instr FONT00_INSTR_STEP_CARPET_1
notedv PITCH_B4, 0xA, 90
notedv PITCH_F3, 0xA, 90
ldelay 0x7
end

.channel player_child_land_wood
ldlayer 0, layer_5FA
ldlayer 1, layer_512
end

.layer layer_5F8
transpose -2

.layer layer_5FA
instr FONT00_INSTR_STEP_WOOD
notedv PITCH_AF4, 0xA, 85
notedv PITCH_AF3, 0x1E, 85
end

.channel player_child_land_bridge
ldlayer 0, layer_60C
ldlayer 1, layer_512
end

.layer layer_60A
transpose -2

.layer layer_60C
instr FONT00_INSTR_STEP_BRIDGE
notedv PITCH_F4, 0xA, 75
notedv PITCH_F3, 0x1E, 75
end

.channel player_land_iron_boots
instr FONT00_INSTR_STEP_IRON
ldlayer 0, layer_61B
end

.layer layer_61B
notedv PITCH_B3, 0xA, 96
notedv PITCH_F3, 0x18, 96
end

.channel player_land_unused
ldlayer 0, layer_629
ldlayer 1, layer_512
end

.layer layer_629
instr FONT00_INSTR_STEP_SAND
notedv PITCH_A3, 0x12, 75
notedv PITCH_A2, 0x12, 75
end

.channel player_child_land_ice
ldlayer 0, layer_63B
ldlayer 1, layer_512
end

.layer layer_639
transpose -2

.layer layer_63B
instr FONT00_INSTR_STEP_ICE
notedv PITCH_G4, 0x5, 98
notedv PITCH_E3, 0x12, 98
end

.channel player_climb_down_vine_top
instr FONT00_INSTR_DROP
envelope envelope_667C
ldlayer 0, layer_64D
end

.layer layer_64D
portamento 1, 48, 0x10
notedv PITCH_D4, 0x18, 100
end

.channel player_climb_up_vine_top
instr FONT00_INSTR_WATER_SPLASH_S
envelope envelope_6694
ldlayer 0, layer_65E
end

.layer layer_65E
notedv PITCH_A4, 0x16, 127
end

.channel player_climb_on_epona
instr FONT00_INSTR_STEP_CARPET_0
envelope envelope_6674
ldlayer 0, layer_66B
end

.layer layer_66B
notedv PITCH_A2, 0xA, 105
end

.channel player_jump_off_epona
instr FONT00_INSTR_WATER_SPLASH_S
envelope envelope_6694
ldlayer 0, layer_678
end

.layer layer_678
portamento 0x81, 48, 255
notedv PITCH_C4, 0x20, 60
end

.channel player_shield_epona
instr FONT00_INSTR_WATER_SPLASH_S
envelope envelope_6688
ldlayer 0, layer_693
ldlayer 1, layer_68C
end

.layer layer_68C
notedv PITCH_F2, 0x6, 115
notedv PITCH_C3, 0xC, 115
end

.layer layer_693
instr FONT00_INSTR_SWORD_SHEATHE
portamento 0x81, 20, 255
notedv PITCH_E3, 0x19, 90
end

.channel player_change_item_held
instr FONT00_INSTR_WATER_SPLASH_S
envelope envelope_66E0
ldlayer 0, layer_6A9
ldlayer 1, layer_6B5
end

.layer layer_6A9
notedv PITCH_G3, 0x6, 115
notedv PITCH_C3, 0xC, 115
instr FONT00_INSTR_SWORD_SHEATHE
notedv PITCH_D4, 0xF, 90
end

.layer layer_6B5
instr FONT00_INSTR_SWORD_SHEATHE
portamento 0x81, 31, 255
notedv PITCH_F2, 0x19, 90
end

.channel player_catch_boomerang
instr FONT00_INSTR_STEP_GROUND
ldlayer 0, layer_6C5
end

.layer layer_6C5
portamento 0x81, 27, 200
notedv PITCH_F3, 0x7, 127
end

.channel player_large_splash
instr FONT00_INSTR_WATER_SPLASH
envelope envelope_65FC
releaserate 127
ldlayer 0, layer_6D8
end

.layer layer_6D8
portamento 0x81, 39, 200
notedv PITCH_F3, 0x91, 100
end

.channel player_small_splash
instr FONT00_INSTR_WATER_SPLASH
envelope envelope_6610
ldlayer 0, layer_6EA
end

.layer layer_6EA
portamento 0x81, 34, 48
notedv PITCH_A3, 0x50, 105
end

.channel player_swim
ldlayer 0, layer_6F8
end

.layer layer_unused_6F6
transpose -6

.layer layer_6F8
instr FONT00_INSTR_WATER_SWIM
envelope envelope_6624, 251
portamento 0x81, 36, 200
notedv PITCH_C3, 0x30, 105
end

.channel player_throw
instr FONT00_INSTR_SWORD_MISS
ldlayer 0, layer_70C
end

.layer layer_70C
portamento 0x81, 27, 255
notedv PITCH_C2, 0x18, 100
end

.channel player_hit_wall_old
gain 15
ldlayer 0, layer_71A
end

.layer layer_71A
call layer_fn_725
portamento 0x81, 45, 255
notedv PITCH_B2, 0xE, 115
end

.layer layer_fn_725
instr FONT00_INSTR_SLAM_GUNSHOT
envelope envelope_66B0, 245
end

.layer layer_unused_72C
transpose 2
jump layer_800

.channel player_flip
instr FONT00_INSTR_SWORD_MISS
ldlayer 0, layer_737
end

.layer layer_737
legato
portamento 0x85, 29, 225
notedv PITCH_D2, 0x8, 100
notedv PITCH_D1, 0x14, 100
end

.channel player_sidejump
ldlayer 0, layer_747
end

.layer layer_747
instr FONT00_INSTR_SWORD_MISS
releaserate 248
portamento 0x81, 26, 225
notedv PITCH_GF1, 0xC, 100
end

.channel player_hit_blunt
gain 20
ldlayer 0, layer_1B3F
ldlayer 1, layer_71A
ldlayer 2, layer_75F
end

.layer layer_75F
call layer_fn_725
portamento 0x85, 34, 255
notedv PITCH_BF3, 0x7, 110
end

.channel player_hit_stab
instr FONT00_INSTR_SWORD_SWING
envelope envelope_66C8
ldlayer 0, layer_776
ldlayer 1, layer_785
end

.layer layer_776
portamento 0x81, 55, 127
notedv PITCH_DF1, 0x8, 115
portamento 0x81, 6, 255
notedv PITCH_AF3, 0xB, 105
end

.layer layer_785
instr FONT00_INSTR_WHISTLE_AIR
portamento 0x81, 49, 222
notedv PITCH_BF2, 0x8, 115
portamento 0x81, 19, 255
notedv PITCH_F3, 0xC, 115
end

.channel player_slip_dirt
ldlayer 0, layer_79D
ldlayer 1, layer_E0C
end

.layer layer_79D
ldelay 0x30
end

.channel player_slip_sand
ldlayer 0, layer_79D
ldlayer 1, layer_E1C
end

.channel player_slip_stone
ldlayer 0, layer_79D
ldlayer 1, layer_E24
end

.channel player_slip_jabu
ldlayer 0, layer_79D
ldlayer 1, layer_E34
end

.channel player_slip_water
ldlayer 0, layer_79D
ldlayer 1, layer_E34
end

.channel player_slip_water_deep
ldlayer 0, layer_79D
ldlayer 1, layer_E34
end

.channel player_slip_tall_grass
ldlayer 0, layer_79D
ldlayer 1, layer_E3C
end

.channel player_slip_lava
ldlayer 0, layer_79D
ldlayer 1, layer_E34
end

.channel player_slip_grass
ldlayer 0, layer_79D
ldlayer 1, layer_E4C
end

.channel player_slip_carpet
ldlayer 0, layer_79D
ldlayer 1, layer_E0C
end

.channel player_slip_wood
ldlayer 0, layer_79D
ldlayer 1, layer_E54
end

.channel player_slip_bridge
ldlayer 0, layer_79D
ldlayer 1, layer_E54
end

.channel player_slip_unused
ldlayer 0, layer_79D
ldlayer 1, layer_E64
end

.channel player_rebound_dirt
ldlayer 1, layer_80C
.channel chan_7F7
gain 25
ldlayer 2, layer_512

.channel player_rebound_unarmed
ldlayer 0, layer_800
end

.layer layer_800
call layer_fn_725
portamento 0x81, 38, 200
notedvg PITCH_BF3, 0x24, 115, 100
end

.layer layer_80C
transpose -6
jump layer_507

.channel player_rebound_sand
ldlayer 1, layer_816
rjump chan_7F7

.layer layer_816
transpose -6
jump layer_536

.channel player_rebound_stone
ldlayer 1, layer_820
rjump chan_7F7

.layer layer_820
transpose -6
jump layer_54B

.channel player_rebound_jabu
ldlayer 1, layer_82A
rjump chan_7F7

.layer layer_82A
transpose -6
jump layer_561

.channel player_rebound_water
ldlayer 1, layer_834
rjump chan_7F7

.layer layer_834
transpose -6
jump layer_575

.channel chan_unused_839
rjump chan_7F7

.channel player_rebound_water_deep
ldlayer 1, layer_840
rjump chan_7F7

.layer layer_840
transpose -6
jump layer_587

.channel player_rebound_tall_grass
ldlayer 1, layer_84A
rjump chan_7F7

.layer layer_84A
transpose -6
jump layer_599

.channel player_rebound_lava
ldlayer 1, layer_854
rjump chan_7F7

.layer layer_854
transpose -6
jump layer_5B2

.channel player_rebound_grass
ldlayer 1, layer_85E
rjump chan_7F7

.layer layer_85E
transpose -6
jump layer_5D2

.channel player_rebound_carpet
ldlayer 1, layer_868
rjump chan_7F7

.layer layer_868
transpose -6
jump layer_5E6

.channel player_rebound_wood
ldlayer 1, layer_872
rjump chan_7F7

.layer layer_872
transpose -6
jump layer_5FA

.channel player_rebound_bridge
ldlayer 1, layer_87D
jump chan_7F7

.layer layer_87D
transpose -6
jump layer_60C

.channel player_rebound_unused
ldlayer 1, layer_888
jump chan_7F7

.layer layer_888
transpose -6
jump layer_629

.channel player_rebound_ice
ldlayer 1, layer_893
jump chan_7F7

.layer layer_893
transpose -6
jump layer_63B

.channel player_dive_surface
ldlayer 0, layer_89C
end

.layer layer_89C
instr FONT00_INSTR_WATER_SPLISH
envelope envelope_66EC, 251
portamento 0x81, 39, 255
notedv PITCH_C5, 0x18, 100
instr FONT00_INSTR_WATER_SPLASH
envelope envelope_67A4, 221
portamento 0x81, 32, 200
notedv PITCH_C4, 0x3C, 100
end

.channel player_dive_down
ldlayer 0, layer_8BB
end

.layer layer_8BB
instr FONT00_INSTR_WATER_BUBBLES
envelope envelope_65FC, 221
portamento 1, 46, 72
notedv PITCH_G3, 0xDC, 100
end

.channel player_dive_move
ldlayer 0, layer_8CE
end

.layer layer_8CE
instr FONT00_INSTR_WATER_BUBBLES
envelope envelope_65D8, 251
portamento 0x81, 39, 255
notedv PITCH_E4, 0x60, 100
end

.channel player_child_metalequip
ldlayer 0, layer_2AD
end

.channel player_adult_metalequip
ldlayer 0, layer_B7D
end

.channel player_electric_shock
instr FONT00_INSTR_POTTERY_ELECTRIC
envelope envelope_6674
ldlayer 0, layer_903
.channel chan_8EC
rand 10
stseq 2, layer_903+1
stseq 2, chan_8FC+1
rand 12
stseq 92, layer_903
.channel chan_8FC
ldi 1
call delay_varyingvol
rjump chan_8EC

.layer layer_903
notedv PITCH_C3, 0x50, 80
ldelay 0x5
rjump layer_903

.channel player_lift_grass
ldlayer 1, layer_936
ldlayer 0, layer_911
end

.layer layer_911
instr FONT00_INSTR_STEP_GROUND
notedv PITCH_A3, 0xA, 64
instr FONT00_INSTR_STEP_GRASS
notedv PITCH_D4, 0x18, 90
end

.channel player_lift_rock
gain 20
ldlayer 0, layer_927
ldlayer 1, layer_936
end

.layer layer_925
transpose -4

.layer layer_927
instr FONT00_INSTR_STEP_GROUND
portamento 0x83, 27, 255
notedv PITCH_E2, 0x6, 80
instr FONT00_INSTR_STEP_CARPET_0
notedv PITCH_E3, 0xF, 95
end

.layer layer_936
instr FONT00_INSTR_EXPLOSION_0
portamento 0x81, 22, 255
notedv PITCH_A5, 0x1E, 50
end

.channel player_morpha_bubble
ldlayer 0, layer_944
end

.layer layer_944
instr FONT00_INSTR_WATER_BUBBLES
legato
.layer layer_947
portamento 0x81, 15, 255
notedv PITCH_E2, 0x60, 75
rjump layer_947

.channel player_lift_giant_rock
gain 20
ldlayer 0, layer_925
ldlayer 1, layer_2D55
end

.channel player_sword_charge
instr FONT00_INSTR_SYNTH
envelope envelope_66EC
ldlayer 0, layer_962
end

.layer layer_962
portamento 0x81, 36, 255
notedv PITCH_C4, 0x64, 95
end

.channel player_freeze
gain 30
ldlayer 0, layer_973
ldlayer 1, layer_97E
end

.layer layer_973
instr FONT00_INSTR_FIRE_WIND
portamento 0x81, 43, 255
notedv PITCH_E3, 0xB4, 105
end

.layer layer_97E
instr FONT00_INSTR_CLOTH_TEAR
portamento 0x81, 20, 255
notedv PITCH_B1, 0xB4, 88
end

.channel player_lift_pot
ldlayer 0, layer_990
ldlayer 1, layer_99A
end

.layer layer_990
transpose 50
.layer layer_992
instr FONT00_INSTR_POTTERY_ELECTRIC
notedv PITCH_C2, 0x6, 72
end

.layer layer_998
transpose -4

.layer layer_99A
instr FONT00_INSTR_STEP_IRON
notedv PITCH_B3, 0x3, 110
end

.channel player_hit_unused
ldlayer 0, layer_9A4
end

.layer layer_9A4
instr FONT00_INSTR_SLAM_GUNSHOT
envelope envelope_664C, 253
notedv PITCH_BF3, 0x5, 100
end

.channel player_idle_shuffle
ldlayer 0, layer_9B2
end

.layer layer_9B2
instr FONT00_INSTR_EXPLOSION_0
envelope envelope_66E0, 251
notedv PITCH_EF3, 0xA, 80
end

.channel player_idle_slide
ldlayer 0, layer_9C0
end

.layer layer_9C0
instr FONT00_INSTR_WATER_SPLASH
envelope envelope_66E0, 251
notedv PITCH_C3, 0x15, 80
end

.channel player_dive_unused
ldlayer 0, layer_9CE
end

.layer layer_9CE
instr FONT00_INSTR_WATER_SPLISH
envelope envelope_66EC, 251
portamento 0x81, 39, 255
notedv PITCH_C3, 0xC, 100
instr FONT00_INSTR_WATER_SPLASH
envelope envelope_67A4, 221
portamento 0x81, 36, 200
notedv PITCH_C3, 0x3C, 100
end

.channel player_freeze_short
gain 30
ldlayer 0, layer_9F2
ldlayer 1, layer_9FC
end

.layer layer_9F2
instr FONT00_INSTR_FIRE_WIND
portamento 0x81, 43, 255
notedv PITCH_E3, 0x1C, 105
end

.layer layer_9FC
instr FONT00_INSTR_CLOTH_TEAR
portamento 0x81, 20, 255
notedv PITCH_B1, 0x1C, 88
end

.channel player_ice_break
ldlayer 0, layer_A0A
end

.layer layer_A0A
instr FONT00_INSTR_CHATTER
transpose 48
notedv PITCH_F3, 0x14, 100
notedv PITCH_A3, 0x0, 105
end

.channel player_slip_ice
instr FONT00_INSTR_SLIDE_HEAVY
envelope envelope_66FC
ldlayer 0, layer_A1E
end

.layer layer_A1E
notedv PITCH_DF4, 0x7D00, 64
end

.channel player_sheathe_item_unused
instr FONT00_INSTR_WATER_SPLASH_S
envelope envelope_66EC
ldlayer 0, layer_A2C
end

.layer layer_A2C
notedv PITCH_F3, 0x5, 75
notedv PITCH_BF2, 0xA, 75
notedv PITCH_BF2, 0x11, 75
end

.channel player_lift_crate
ldlayer 0, layer_A3A
end

.layer layer_A3A
instr FONT00_INSTR_STICK_ATTACK
notedv PITCH_A2, 0x6, 100
end

.channel player_cast_fire
ldlayer 0, layer_A4C
ldlayer 1, layer_A5D
ldlayer 2, layer_A6E
jump chan_118F

.layer layer_A4C
instr FONT00_INSTR_FLAME_THUNDER
releaserate 221
legato
portamento 0x85, 0, 255
notedv PITCH_A2, 0xFA, 74
notedv PITCH_A4, 0x64, 74
end

.layer layer_A5D
instr FONT00_INSTR_EXPLOSION_0
releaserate 221
noteldv PITCH_A3, 0x1E, 100
portamento 0x81, 0, 255
notedv PITCH_A3, 0x140, 85
end

.layer layer_A6E
instr FONT00_INSTR_FAIRY_MAGIC
releaserate 221
portamento 0x81, 0, 255
notedv PITCH_A4, 350, 80
end

.channel player_cast_wind
ldlayer 0, layer_A85
ldlayer 1, layer_A9E
ldlayer 2, layer_AAF
end

.layer layer_A85
call layer_fn_A95
legato
portamento 0x85, 62, 255
notedv PITCH_C4, 0x3C, 85
notedv PITCH_F5, 500, 85
end

.layer layer_fn_A95
instr FONT00_INSTR_WIND_HOWL_S
envelope envelope_6808, 200
transpose 12
end

.layer layer_A9E
portamento 0x81, 32, 255
instr FONT00_INSTR_SLIDE_LINK
transpose 24
envelope envelope_66F4, 200
notedv PITCH_F5, 0x230, 40
end

.layer layer_AAF
instr FONT00_INSTR_WARP
transpose 12
envelope envelope_67D8, 200
notedv PITCH_F5, 0x230, 70
end

.channel player_cast_wind_return
instr FONT00_INSTR_WARP
gain 15
ldlayer 0, layer_2130
ldlayer 1, layer_2124
ldlayer 2, layer_2D3A
ldi 80
call delay_varyingvol
ldlayer 0, layer_AD5
ldlayer 2, layer_210B
end

.layer layer_AD5
ldelay 0x30
end

.channel player_cast_soul
ldi 0
.channel chan_ADA
stseq 244, layer_AFD+1
stseq 12, layer_AF2+1
vibfreq 255
instr FONT00_INSTR_WARP
envelope envelope_6818
releaserate 235
ldlayer 0, layer_AFD
ldlayer 1, layer_AF2
end

.layer layer_AF2
transpose 36
portamento 0x83, 44, 127
.layer layer_AF8
notedv PITCH_A4, 0x60, 64
rjump layer_AF8

.layer layer_AFD
transpose 12
portamento 0x83, 44, 127
.layer layer_B03
notedv PITCH_A4, 0x60, 64
rjump layer_B03

.channel player_arrow_fire_charge
ldlayer 0, layer_B23
ldlayer 2, layer_B1D
ldi 1
call delay_varyingvol
ldlayer 1, layer_B2F
vibfreq 96
vibdepthgrad 128, 128, 0
end

.layer layer_B1D
instr FONT00_INSTR_IGNITE
notedv PITCH_A3, 0x0, 110
end

.layer layer_B23
instr FONT00_INSTR_WIND_HOWL_S
envelope envelope_66FC, 245
legato
.layer layer_B2A
notedv PITCH_A3, 0x64, 74
rjump layer_B2A

.layer layer_B2F
instr FONT00_INSTR_FAIRY_MAGIC
legato
.layer layer_B32
notedv PITCH_D3, 0x0, 35
rjump layer_B32

.channel player_arrow_ice_charge
ldlayer 0, layer_B47
ldlayer 1, layer_B41
ldlayer 2, layer_B57
end

.layer layer_B41
instr FONT00_INSTR_WARP
transpose 16
rjump layer_B49

.layer layer_B47
instr FONT00_INSTR_SHIMMER
.layer layer_B49
envelope envelope_6818, 245
legato
portamento 0x81, 39, 200
.layer layer_B52
notedv PITCH_E4, 0x3C, 60
rjump layer_B52

.layer layer_B57
instr FONT00_INSTR_IGNITE
notedv PITCH_F4, 0x0, 110
end

.channel player_arrow_light_charge
ldlayer 0, layer_B6D
ldlayer 1, layer_B67
ldlayer 2, layer_B57
end

.layer layer_B67
instr FONT00_INSTR_WARP
transpose 16
rjump layer_B6F

.layer layer_B6D
instr FONT00_INSTR_FAIRY
.layer layer_B6F
envelope envelope_66C8, 240
legato
.layer layer_B74
notedv PITCH_G4, 0x51, 42
rjump layer_B74

.channel player_adult_step_dirt
ldlayer 0, layer_2A5
end

.layer layer_B7D
ldelay 0x8
transpose -6
instr FONT00_INSTR_SWORD_SHEATHE
releaserate 255
notedvg PITCH_BF3, 0x4, 64, 64
instr FONT00_INSTR_SWORD_STRIKE
notedv PITCH_DF3, 0x5, 24
instr FONT00_INSTR_SWORD_STRIKE
transpose 48
notedv PITCH_AF3, 0x4, 38
end

.channel player_adult_step_sand
ldlayer 0, layer_2C1
end

.channel player_adult_step_stone
ldlayer 0, layer_2D0
end

.channel player_adult_step_jabu
ldlayer 0, layer_2DC
end

.channel player_adult_step_water
ldlayer 0, layer_2EC
end

.channel player_adult_step_water_deep
ldlayer 0, layer_2F8
end

.channel player_adult_step_tall_grass
ldlayer 0, layer_304
end

.channel player_adult_step_lava
ldlayer 0, layer_317
end

.channel player_adult_step_grass
ldlayer 0, layer_331
end

.channel player_adult_step_carpet
ldlayer 0, layer_341
end

.channel player_adult_step_wood
ldlayer 0, layer_34D
end

.channel player_adult_step_bridge
ldlayer 0, layer_359
end

.channel player_adult_step_vine
ldlayer 0, layer_368
ldlayer 1, layer_B7D
end

.channel player_adult_step_ice
ldlayer 0, layer_38E
end

.channel player_adult_jump_dirt
instr FONT00_INSTR_STEP_GROUND
ldlayer 0, layer_39F
ldlayer 1, layer_BD6
end

.layer layer_BD6
ldelay 0x8
instr FONT00_INSTR_SWORD_SHEATHE
releaserate 255
notedvg PITCH_C4, 0x4, 90, 64
instr FONT00_INSTR_SWORD_STRIKE
notedv PITCH_E3, 0x5, 38
instr FONT00_INSTR_SWORD_STRIKE
transpose 48
notedv PITCH_C4, 0x4, 55
end

.channel player_adult_jump_sand
ldlayer 0, layer_3CC
ldlayer 1, layer_BD6
end

.channel player_adult_jump_stone
ldlayer 0, layer_3E3
ldlayer 1, layer_BD6
end

.channel player_adult_jump_jabu
ldlayer 0, layer_3F9
ldlayer 1, layer_BD6
end

.channel player_adult_jump_water
ldlayer 0, layer_40D
ldlayer 1, layer_BD6
end

.channel player_adult_jump_water_deep
ldlayer 0, layer_41F
end

.channel player_adult_jump_tall_grass
ldlayer 0, layer_431
ldlayer 1, layer_BD6
end

.channel player_adult_jump_lava
ldlayer 0, layer_44A
ldlayer 1, layer_BD6
end

.channel player_adult_jump_grass
ldlayer 0, layer_46C
ldlayer 1, layer_BD6
end

.channel player_adult_jump_carpet
ldlayer 0, layer_480
ldlayer 1, layer_BD6
end

.channel player_adult_jump_wood
ldlayer 0, layer_494
ldlayer 1, layer_BD6
end

.channel player_adult_jump_bridge
ldlayer 0, layer_4A6
ldlayer 1, layer_BD6
end

.channel player_adult_jump_ice
ldlayer 0, layer_4F1
ldlayer 1, layer_BD6
end

.channel player_adult_land_dirt
ldlayer 0, layer_505
ldlayer 1, layer_C45
end

.layer layer_C45
ldelay 0x8
instr FONT00_INSTR_SWORD_SHEATHE
releaserate 255
notedvg PITCH_D4, 0x4, 90, 64
instr FONT00_INSTR_SWORD_STRIKE
notedv PITCH_D3, 0x5, 38
instr FONT00_INSTR_SWORD_STRIKE
transpose 48
notedv PITCH_BF3, 0x4, 55
end

.channel player_adult_land_sand
ldlayer 0, layer_534
ldlayer 1, layer_C45
end

.channel player_adult_land_stone
ldlayer 0, layer_549
ldlayer 1, layer_C45
end

.channel player_adult_land_jabu
ldlayer 0, layer_55F
ldlayer 1, layer_C45
end

.channel player_adult_land_water
ldlayer 0, layer_573
ldlayer 1, layer_C45
end

.channel player_adult_land_water_deep
ldlayer 0, layer_585
end

.channel player_adult_land_tall_grass
ldlayer 0, layer_597
ldlayer 1, layer_C45
end

.channel player_adult_land_lava
ldlayer 0, layer_5B0
ldlayer 1, layer_C45
end

.channel player_adult_land_grass
ldlayer 0, layer_5D0
ldlayer 1, layer_C45
end

.channel player_adult_land_carpet
ldlayer 0, layer_5E4
ldlayer 1, layer_C45
end

.channel player_adult_land_wood
ldlayer 0, layer_5F8
ldlayer 1, layer_C45
end

.channel player_adult_land_bridge
ldlayer 0, layer_60A
ldlayer 1, layer_C45
end

.channel player_adult_land_ice
ldlayer 0, layer_639
ldlayer 1, layer_C45
end

.channel player_crawl_dirt
ldlayer 0, layer_2A5
ldi 2
call delay_varyingvol
jump player_slip_dirt

.channel player_crawl_sand
ldlayer 0, layer_2C1
ldi 5
call delay_varyingvol
jump player_slip_sand

.channel player_crawl_stone
ldlayer 0, layer_2D0
ldi 2
call delay_varyingvol
jump player_slip_stone

.channel player_crawl_jabu
ldlayer 0, layer_2DC
ldi 5
call delay_varyingvol
jump player_slip_jabu

.channel player_crawl_water
ldlayer 0, layer_2EC
ldi 5
call delay_varyingvol
jump player_slip_water

.channel player_crawl_water_deep
ldlayer 0, layer_2F8
ldi 5
call delay_varyingvol
jump player_slip_water_deep

.channel player_crawl_tall_grass
ldlayer 0, layer_304
ldi 5
call delay_varyingvol
jump player_slip_tall_grass

.channel player_crawl_lava
ldlayer 0, layer_317
ldi 5
call delay_varyingvol
jump player_slip_lava

.channel player_crawl_grass
ldlayer 0, layer_331
ldi 5
call delay_varyingvol
jump player_slip_grass

.channel player_crawl_carpet
ldlayer 0, layer_341
ldi 5
call delay_varyingvol
jump player_slip_carpet

.channel player_crawl_wood
ldlayer 0, layer_34D
ldi 5
call delay_varyingvol
jump player_slip_wood

.channel player_crawl_bridge
ldlayer 0, layer_359
ldi 1
call delay_varyingvol
jump player_slip_bridge

.channel player_crawl_ice
ldlayer 0, layer_38E
ldi 5
call delay_varyingvol
jump player_slip_stone

.channel player_cast_soul_end
vibdepth 20
ldi 4
jump chan_ADA

.channel player_roll_dust
ldlayer 0, layer_D47
end

.layer layer_D47
instr FONT00_INSTR_SLIDE_BLOCK
envelope envelope_66A0, 235
notedv PITCH_F4, 0xA, 90
notedv PITCH_G4, 0xE, 90
notedv PITCH_B4, 0x7F, 75
end

.channel player_crash_unused
ldlayer 0, layer_D5E
ldlayer 1, layer_1B3F
end

.layer layer_D5E
instr FONT00_INSTR_MECH_CHARGE
envelope envelope_65D8, 228
notedv PITCH_C5, 0x64, 100
end

.channel player_cast_soul_appear
instr FONT00_INSTR_WARP
ldlayer 0, layer_D74
ldlayer 1, layer_29FC
ldlayer 2, layer_2A01
end

.layer layer_D74
instr FONT00_INSTR_SHIMMER
portamento 0x81, 39, 45
notedv PITCH_E4, 0x118, 60
end

.channel player_fairy_heal
ldlayer 0, layer_D8A
ldlayer 1, layer_D9A
vibfreq 192
vibdepth 32
end

.layer layer_D8A
instr FONTANY_INSTR_SQUARE
envelope envelope_6818, 221
legato
portamento 0x81, 36, 64
.layer layer_D95
notedv PITCH_A4, 0x78, 34
rjump layer_D95

.layer layer_D9A
instr FONT00_INSTR_FAIRY
envelope envelope_66FC, 237
portamento 0x83, 36, 255
.layer layer_DA4
notedv PITCH_C4, 0x14, 85
rjump layer_DA4

.channel player_plant_grow
ldlayer 0, layer_DB8
ldlayer 1, layer_DB6
.channel chan_DAF
vibfreqgrad 10, 100, 8
vibdepth 15
end

.layer layer_DB6
transpose 24

.layer layer_DB8
portamento 0x81, 15, 255

.layer layer_DBC
instr FONTANY_INSTR_4PULSE
envelope envelope_6674, 251
legato
.layer layer_DC3
notedv PITCH_C4, 500, 35
rjump layer_DC3

.channel player_plant_seed
ldlayer 0, layer_DB6
rjump chan_DAF

.channel player_cast_wind_dismiss
instr FONT00_INSTR_WARP
ldlayer 0, layer_DD7
ldlayer 1, layer_2A01
end

.layer layer_DD7
transpose 30
legato
portamento 0x81, 43, 64
notedv PITCH_D4, 0xAA, 80
end

.channel player_hover
instr FONT00_INSTR_WARP
vibdepth 9
vibfreq 128
envelope envelope_6818
releaserate 235
ldlayer 0, layer_DF2
end

.layer layer_DF2
legato
.layer layer_DF3
notedv PITCH_E5, 0x7D00, 95
rjump layer_DF3

.channel player_plant_hover
ldlayer 0, layer_DBC
ldlayer 1, layer_E04
vibfreq 100
vibdepth 15
end

.layer layer_E04
transpose 24
rjump layer_DBC

.channel player_slip_dirt2
ldlayer 0, layer_E0C
end

.layer layer_E0C
instr FONT00_INSTR_SLIDE_BLOCK
.layer layer_E0E
envelope envelope_6704, 251
legato
.layer layer_E13
notedv PITCH_C4, 0x7F, 88
rjump layer_E13

.channel player_slip_sand2
ldlayer 0, layer_E1C
end

.layer layer_E1C
instr FONT00_INSTR_SLIDE_LINK
rjump layer_E0E

.channel player_slip_stone2
ldlayer 0, layer_E24
end

.layer layer_E24
instr FONT00_INSTR_SLIDE_HEAVY
envelope envelope_6704, 251
legato
.layer layer_E2B
notedv PITCH_F4, 0x7F, 80
rjump layer_E2B

.channel player_slip_jabu2
ldlayer 0, layer_E34
end

.layer layer_E34
instr FONT00_INSTR_SLIDE_WET
rjump layer_E0E

.channel player_slip_lava2
ldlayer 0, layer_E3C
end

.layer layer_E3C
instr FONT00_INSTR_SLIDE_WET
envelope envelope_6704, 251
legato
.layer layer_E43
notedv PITCH_C4, 0x7F, 86
rjump layer_E43

.channel player_slip_grass2
ldlayer 0, layer_E4C
end

.layer layer_E4C
instr FONT00_INSTR_DISTORTION
rjump layer_E0E

.channel player_slip_unused2
ldlayer 0, layer_E54
end

.layer layer_E54
instr FONT00_INSTR_SLIDE_HEAVY
envelope envelope_6704, 251
legato
.layer layer_E5B
notedv PITCH_AF3, 0x7F, 80
rjump layer_E5B

.channel player_slip_iron_boots_unused
ldlayer 0, layer_E64
end

.layer layer_E64
instr FONT00_INSTR_SLIDE_LINK
envelope envelope_6704, 251
legato
.layer layer_E6B
notedv PITCH_DF3, 0x7F, 95
rjump layer_E6B

.filter filter_player0
filter 0, 0, 0, 0, 0, 0, 0, 0

.filter filter_player1
filter 0, 0, 0, 0, 0, 0, 0, 0

.filter filter_player2
filter 0, 0, 0, 0, 0, 0, 0, 0
