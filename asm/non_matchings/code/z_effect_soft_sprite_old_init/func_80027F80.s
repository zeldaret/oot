.rdata
glabel D_80135C00
    .asciz "../z_effect_soft_sprite_old_init.c"
    .balign 4

glabel D_80135C24
    .asciz "../z_effect_soft_sprite_old_init.c"
    .balign 4

.late_rodata
glabel D_80135C48
    .float 0.0025

.text
glabel func_80027F80
/* A9F120 80027F80 27BDFE98 */  addiu $sp, $sp, -0x168
/* A9F124 80027F84 AFBF001C */  sw    $ra, 0x1c($sp)
/* A9F128 80027F88 AFB10018 */  sw    $s1, 0x18($sp)
/* A9F12C 80027F8C AFB00014 */  sw    $s0, 0x14($sp)
/* A9F130 80027F90 AFA40168 */  sw    $a0, 0x168($sp)
/* A9F134 80027F94 AFA60170 */  sw    $a2, 0x170($sp)
/* A9F138 80027F98 84AF0056 */  lh    $t7, 0x56($a1)
/* A9F13C 80027F9C 3C080001 */  lui   $t0, 1
/* A9F140 80027FA0 8C900000 */  lw    $s0, ($a0)
/* A9F144 80027FA4 000FC100 */  sll   $t8, $t7, 4
/* A9F148 80027FA8 030FC021 */  addu  $t8, $t8, $t7
/* A9F14C 80027FAC 0018C080 */  sll   $t8, $t8, 2
/* A9F150 80027FB0 0098C821 */  addu  $t9, $a0, $t8
/* A9F154 80027FB4 01194021 */  addu  $t0, $t0, $t9
/* A9F158 80027FB8 8D0817B4 */  lw    $t0, 0x17b4($t0)
/* A9F15C 80027FBC 00A08825 */  move  $s1, $a1
/* A9F160 80027FC0 3C068013 */  lui   $a2, %hi(D_80135C00) # $a2, 0x8013
/* A9F164 80027FC4 24C65C00 */  addiu $a2, %lo(D_80135C00) # addiu $a2, $a2, 0x5c00
/* A9F168 80027FC8 27A40040 */  addiu $a0, $sp, 0x40
/* A9F16C 80027FCC 240700C4 */  li    $a3, 196
/* A9F170 80027FD0 02002825 */  move  $a1, $s0
/* A9F174 80027FD4 0C031AB1 */  jal   func_800C6AC4
/* A9F178 80027FD8 AFA80054 */   sw    $t0, 0x54($sp)
/* A9F17C 80027FDC 86290042 */  lh    $t1, 0x42($s1)
/* A9F180 80027FE0 3C018013 */  lui   $at, %hi(D_80135C48)
/* A9F184 80027FE4 C4285C48 */  lwc1  $f8, %lo(D_80135C48)($at)
/* A9F188 80027FE8 44892000 */  mtc1  $t1, $f4
/* A9F18C 80027FEC 8E250000 */  lw    $a1, ($s1)
/* A9F190 80027FF0 8E260004 */  lw    $a2, 4($s1)
/* A9F194 80027FF4 468021A0 */  cvt.s.w $f6, $f4
/* A9F198 80027FF8 8E270008 */  lw    $a3, 8($s1)
/* A9F19C 80027FFC 27A40120 */  addiu $a0, $sp, 0x120
/* A9F1A0 80028000 46083002 */  mul.s $f0, $f6, $f8
/* A9F1A4 80028004 0C029E89 */  jal   func_800A7A24
/* A9F1A8 80028008 E7A00160 */   swc1  $f0, 0x160($sp)
/* A9F1AC 8002800C C7A00160 */  lwc1  $f0, 0x160($sp)
/* A9F1B0 80028010 27A400E0 */  addiu $a0, $sp, 0xe0
/* A9F1B4 80028014 44050000 */  mfc1  $a1, $f0
/* A9F1B8 80028018 44060000 */  mfc1  $a2, $f0
/* A9F1BC 8002801C 44070000 */  mfc1  $a3, $f0
/* A9F1C0 80028020 0C029DA9 */  jal   func_800A76A4
/* A9F1C4 80028024 00000000 */   nop   
/* A9F1C8 80028028 8FA50168 */  lw    $a1, 0x168($sp)
/* A9F1CC 8002802C 3C010001 */  lui   $at, (0x00011DA0 >> 16) # lui $at, 1
/* A9F1D0 80028030 34211DA0 */  ori   $at, (0x00011DA0 & 0xFFFF) # ori $at, $at, 0x1da0
/* A9F1D4 80028034 27A40120 */  addiu $a0, $sp, 0x120
/* A9F1D8 80028038 27A60060 */  addiu $a2, $sp, 0x60
/* A9F1DC 8002803C 0C029BE8 */  jal   func_800A6FA0
/* A9F1E0 80028040 00A12821 */   addu  $a1, $a1, $at
/* A9F1E4 80028044 27A40060 */  addiu $a0, $sp, 0x60
/* A9F1E8 80028048 27A500E0 */  addiu $a1, $sp, 0xe0
/* A9F1EC 8002804C 0C029BE8 */  jal   func_800A6FA0
/* A9F1F0 80028050 27A600A0 */   addiu $a2, $sp, 0xa0
/* A9F1F4 80028054 8FA40054 */  lw    $a0, 0x54($sp)
/* A9F1F8 80028058 3C018000 */  lui   $at, 0x8000
/* A9F1FC 8002805C 3C0CDB06 */  lui   $t4, (0xDB060018 >> 16) # lui $t4, 0xdb06
/* A9F200 80028060 00815021 */  addu  $t2, $a0, $at
/* A9F204 80028064 3C018016 */  lui   $at, %hi(gSegments+0x18) # $at, 0x8016
/* A9F208 80028068 AC2A6FC0 */  sw    $t2, %lo(gSegments+0x18)($at)
/* A9F20C 8002806C 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* A9F210 80028070 358C0018 */  ori   $t4, (0xDB060018 & 0xFFFF) # ori $t4, $t4, 0x18
/* A9F214 80028074 27A500A0 */  addiu $a1, $sp, 0xa0
/* A9F218 80028078 246B0008 */  addiu $t3, $v1, 8
/* A9F21C 8002807C AE0B02D0 */  sw    $t3, 0x2d0($s0)
/* A9F220 80028080 AC640004 */  sw    $a0, 4($v1)
/* A9F224 80028084 02002025 */  move  $a0, $s0
/* A9F228 80028088 0C029F9C */  jal   func_800A7E70
/* A9F22C 8002808C AC6C0000 */   sw    $t4, ($v1)
/* A9F230 80028090 1040004A */  beqz  $v0, .L800281BC
/* A9F234 80028094 3C0FDA38 */   lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* A9F238 80028098 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* A9F23C 8002809C 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* A9F240 800280A0 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* A9F244 800280A4 246D0008 */  addiu $t5, $v1, 8
/* A9F248 800280A8 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* A9F24C 800280AC AC620004 */  sw    $v0, 4($v1)
/* A9F250 800280B0 AC6F0000 */  sw    $t7, ($v1)
/* A9F254 800280B4 8FA40170 */  lw    $a0, 0x170($sp)
/* A9F258 800280B8 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* A9F25C 800280BC 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* A9F260 800280C0 0004C900 */  sll   $t9, $a0, 4
/* A9F264 800280C4 00194702 */  srl   $t0, $t9, 0x1c
/* A9F268 800280C8 246E0008 */  addiu $t6, $v1, 8
/* A9F26C 800280CC AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* A9F270 800280D0 00084880 */  sll   $t1, $t0, 2
/* A9F274 800280D4 3C0A8016 */  lui   $t2, %hi(gSegments)
/* A9F278 800280D8 01495021 */  addu  $t2, $t2, $t1
/* A9F27C 800280DC 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* A9F280 800280E0 AC780000 */  sw    $t8, ($v1)
/* A9F284 800280E4 8D4A6FA8 */  lw    $t2, %lo(gSegments)($t2)
/* A9F288 800280E8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* A9F28C 800280EC 00815824 */  and   $t3, $a0, $at
/* A9F290 800280F0 3C018000 */  lui   $at, 0x8000
/* A9F294 800280F4 014B6021 */  addu  $t4, $t2, $t3
/* A9F298 800280F8 01816821 */  addu  $t5, $t4, $at
/* A9F29C 800280FC 02002025 */  move  $a0, $s0
/* A9F2A0 80028100 0C025314 */  jal   func_80094C50
/* A9F2A4 80028104 AC6D0004 */   sw    $t5, 4($v1)
/* A9F2A8 80028108 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* A9F2AC 8002810C 3C0EFA00 */  lui   $t6, 0xfa00
/* A9F2B0 80028110 246F0008 */  addiu $t7, $v1, 8
/* A9F2B4 80028114 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* A9F2B8 80028118 AC6E0000 */  sw    $t6, ($v1)
/* A9F2BC 8002811C 8638004C */  lh    $t8, 0x4c($s1)
/* A9F2C0 80028120 862C0048 */  lh    $t4, 0x48($s1)
/* A9F2C4 80028124 86290046 */  lh    $t1, 0x46($s1)
/* A9F2C8 80028128 331900FF */  andi  $t9, $t8, 0xff
/* A9F2CC 8002812C 8638004A */  lh    $t8, 0x4a($s1)
/* A9F2D0 80028130 318D00FF */  andi  $t5, $t4, 0xff
/* A9F2D4 80028134 00095600 */  sll   $t2, $t1, 0x18
/* A9F2D8 80028138 032A5825 */  or    $t3, $t9, $t2
/* A9F2DC 8002813C 000D7C00 */  sll   $t7, $t5, 0x10
/* A9F2E0 80028140 330800FF */  andi  $t0, $t8, 0xff
/* A9F2E4 80028144 00084A00 */  sll   $t1, $t0, 8
/* A9F2E8 80028148 016F7025 */  or    $t6, $t3, $t7
/* A9F2EC 8002814C 01C9C825 */  or    $t9, $t6, $t1
/* A9F2F0 80028150 AC790004 */  sw    $t9, 4($v1)
/* A9F2F4 80028154 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* A9F2F8 80028158 3C0CFB00 */  lui   $t4, 0xfb00
/* A9F2FC 8002815C 246A0008 */  addiu $t2, $v1, 8
/* A9F300 80028160 AE0A02D0 */  sw    $t2, 0x2d0($s0)
/* A9F304 80028164 AC6C0000 */  sw    $t4, ($v1)
/* A9F308 80028168 862D0054 */  lh    $t5, 0x54($s1)
/* A9F30C 8002816C 86290050 */  lh    $t1, 0x50($s1)
/* A9F310 80028170 8638004E */  lh    $t8, 0x4e($s1)
/* A9F314 80028174 31AB00FF */  andi  $t3, $t5, 0xff
/* A9F318 80028178 862D0052 */  lh    $t5, 0x52($s1)
/* A9F31C 8002817C 313900FF */  andi  $t9, $t1, 0xff
/* A9F320 80028180 00184600 */  sll   $t0, $t8, 0x18
/* A9F324 80028184 01687025 */  or    $t6, $t3, $t0
/* A9F328 80028188 00195400 */  sll   $t2, $t9, 0x10
/* A9F32C 8002818C 31AF00FF */  andi  $t7, $t5, 0xff
/* A9F330 80028190 000FC200 */  sll   $t8, $t7, 8
/* A9F334 80028194 01CA6025 */  or    $t4, $t6, $t2
/* A9F338 80028198 01985825 */  or    $t3, $t4, $t8
/* A9F33C 8002819C AC6B0004 */  sw    $t3, 4($v1)
/* A9F340 800281A0 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* A9F344 800281A4 3C09DE00 */  lui   $t1, 0xde00
/* A9F348 800281A8 24680008 */  addiu $t0, $v1, 8
/* A9F34C 800281AC AE0802D0 */  sw    $t0, 0x2d0($s0)
/* A9F350 800281B0 AC690000 */  sw    $t1, ($v1)
/* A9F354 800281B4 8E390038 */  lw    $t9, 0x38($s1)
/* A9F358 800281B8 AC790004 */  sw    $t9, 4($v1)
.L800281BC:
/* A9F35C 800281BC 3C068013 */  lui   $a2, %hi(D_80135C24) # $a2, 0x8013
/* A9F360 800281C0 24C65C24 */  addiu $a2, %lo(D_80135C24) # addiu $a2, $a2, 0x5c24
/* A9F364 800281C4 27A40040 */  addiu $a0, $sp, 0x40
/* A9F368 800281C8 02002825 */  move  $a1, $s0
/* A9F36C 800281CC 0C031AD5 */  jal   func_800C6B54
/* A9F370 800281D0 240700F3 */   li    $a3, 243
/* A9F374 800281D4 8FBF001C */  lw    $ra, 0x1c($sp)
/* A9F378 800281D8 8FB00014 */  lw    $s0, 0x14($sp)
/* A9F37C 800281DC 8FB10018 */  lw    $s1, 0x18($sp)
/* A9F380 800281E0 03E00008 */  jr    $ra
/* A9F384 800281E4 27BD0168 */   addiu $sp, $sp, 0x168

