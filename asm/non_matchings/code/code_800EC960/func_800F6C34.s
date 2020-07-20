glabel func_800F6C34
/* B6DDD4 800F6C34 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B6DDD8 800F6C38 44810000 */  mtc1  $at, $f0
/* B6DDDC 800F6C3C 3C018013 */  lui   $at, %hi(D_8013061C) # $at, 0x8013
/* B6DDE0 800F6C40 A020061C */  sb    $zero, %lo(D_8013061C)($at)
/* B6DDE4 800F6C44 3C018017 */  lui   $at, %hi(D_8016B7A8)
/* B6DDE8 800F6C48 E420B7A8 */  swc1  $f0, %lo(D_8016B7A8)($at)
/* B6DDEC 800F6C4C 3C018017 */  lui   $at, %hi(D_8016B7B0)
/* B6DDF0 800F6C50 E420B7B0 */  swc1  $f0, %lo(D_8016B7B0)($at)
/* B6DDF4 800F6C54 3C018013 */  lui   $at, %hi(D_8013063C) # $at, 0x8013
/* B6DDF8 800F6C58 A020063C */  sb    $zero, %lo(D_8013063C)($at)
/* B6DDFC 800F6C5C 3C018013 */  lui   $at, %hi(D_80130640) # $at, 0x8013
/* B6DE00 800F6C60 A0200640 */  sb    $zero, %lo(D_80130640)($at)
/* B6DE04 800F6C64 3C018013 */  lui   $at, %hi(D_80130644) # $at, 0x8013
/* B6DE08 800F6C68 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B6DE0C 800F6C6C A0200644 */  sb    $zero, %lo(D_80130644)($at)
/* B6DE10 800F6C70 AFBF0014 */  sw    $ra, 0x14($sp)
/* B6DE14 800F6C74 3C018013 */  lui   $at, %hi(D_80130648) # $at, 0x8013
/* B6DE18 800F6C78 A0200648 */  sb    $zero, %lo(D_80130648)($at)
/* B6DE1C 800F6C7C 0C03B616 */  jal   func_800ED858
/* B6DE20 800F6C80 00002025 */   move  $a0, $zero
/* B6DE24 800F6C84 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B6DE28 800F6C88 44810000 */  mtc1  $at, $f0
/* B6DE2C 800F6C8C 3C028017 */  lui   $v0, %hi(D_8016B7B8) # $v0, 0x8017
/* B6DE30 800F6C90 3C038017 */  lui   $v1, %hi(D_8016B7C8) # $v1, 0x8017
/* B6DE34 800F6C94 2463B7C8 */  addiu $v1, %lo(D_8016B7C8) # addiu $v1, $v1, -0x4838
/* B6DE38 800F6C98 2442B7B8 */  addiu $v0, %lo(D_8016B7B8) # addiu $v0, $v0, -0x4848
/* B6DE3C 800F6C9C AC40000C */  sw    $zero, 0xc($v0)
/* B6DE40 800F6CA0 AC60000C */  sw    $zero, 0xc($v1)
/* B6DE44 800F6CA4 3C018017 */  lui   $at, %hi(D_8016B7D8)
/* B6DE48 800F6CA8 E4400000 */  swc1  $f0, ($v0)
/* B6DE4C 800F6CAC E4600000 */  swc1  $f0, ($v1)
/* B6DE50 800F6CB0 E420B7D8 */  swc1  $f0, %lo(D_8016B7D8)($at)
/* B6DE54 800F6CB4 2406007F */  li    $a2, 127
/* B6DE58 800F6CB8 3C018017 */  lui   $at, %hi(D_8016B8B0) # $at, 0x8017
/* B6DE5C 800F6CBC A026B8B0 */  sb    $a2, %lo(D_8016B8B0)($at)
/* B6DE60 800F6CC0 3C018017 */  lui   $at, %hi(D_8016B8B1) # $at, 0x8017
/* B6DE64 800F6CC4 A026B8B1 */  sb    $a2, %lo(D_8016B8B1)($at)
/* B6DE68 800F6CC8 3C018017 */  lui   $at, %hi(D_8016B8B2) # $at, 0x8017
/* B6DE6C 800F6CCC A020B8B2 */  sb    $zero, %lo(D_8016B8B2)($at)
/* B6DE70 800F6CD0 3C0F8013 */  lui   $t7, %hi(D_80133414) # $t7, 0x8013
/* B6DE74 800F6CD4 91EF3414 */  lbu   $t7, %lo(D_80133414)($t7)
/* B6DE78 800F6CD8 3C018017 */  lui   $at, %hi(D_8016B8B3) # $at, 0x8017
/* B6DE7C 800F6CDC A020B8B3 */  sb    $zero, %lo(D_8016B8B3)($at)
/* B6DE80 800F6CE0 3C018017 */  lui   $at, %hi(D_8016B8B4) # $at, 0x8017
/* B6DE84 800F6CE4 240E00FF */  li    $t6, 255
/* B6DE88 800F6CE8 3C188013 */  lui   $t8, %hi(D_801306C8)
/* B6DE8C 800F6CEC A02EB8B4 */  sb    $t6, %lo(D_8016B8B4)($at)
/* B6DE90 800F6CF0 030FC021 */  addu  $t8, $t8, $t7
/* B6DE94 800F6CF4 831806C8 */  lb    $t8, %lo(D_801306C8)($t8)
/* B6DE98 800F6CF8 3C018017 */  lui   $at, %hi(D_8016B9D8) # $at, 0x8017
/* B6DE9C 800F6CFC A020B9D8 */  sb    $zero, %lo(D_8016B9D8)($at)
/* B6DEA0 800F6D00 3C018013 */  lui   $at, %hi(D_80130610) # $at, 0x8013
/* B6DEA4 800F6D04 A0380610 */  sb    $t8, %lo(D_80130610)($at)
/* B6DEA8 800F6D08 3C018013 */  lui   $at, %hi(D_80130608) # $at, 0x8013
/* B6DEAC 800F6D0C A0200608 */  sb    $zero, %lo(D_80130608)($at)
/* B6DEB0 800F6D10 3C018013 */  lui   $at, %hi(D_80130628) # $at, 0x8013
/* B6DEB4 800F6D14 3419FFFF */  li    $t9, 65535
/* B6DEB8 800F6D18 A4390628 */  sh    $t9, %lo(D_80130628)($at)
/* B6DEBC 800F6D1C 3C044600 */  lui   $a0, 0x4600
/* B6DEC0 800F6D20 0C0396C8 */  jal   func_800E5B20
/* B6DEC4 800F6D24 2405FFFF */   li    $a1, -1
/* B6DEC8 800F6D28 3C018013 */  lui   $at, %hi(D_8013064C) # $at, 0x8013
/* B6DECC 800F6D2C AC20064C */  sw    $zero, %lo(D_8013064C)($at)
/* B6DED0 800F6D30 3C018017 */  lui   $at, %hi(D_8016B9F4) # $at, 0x8017
/* B6DED4 800F6D34 A020B9F4 */  sb    $zero, %lo(D_8016B9F4)($at)
/* B6DED8 800F6D38 8FBF0014 */  lw    $ra, 0x14($sp)
/* B6DEDC 800F6D3C 3C018017 */  lui   $at, %hi(D_8016B9F3) # $at, 0x8017
/* B6DEE0 800F6D40 24080001 */  li    $t0, 1
/* B6DEE4 800F6D44 A028B9F3 */  sb    $t0, %lo(D_8016B9F3)($at)
/* B6DEE8 800F6D48 3C018017 */  lui   $at, %hi(D_8016B9F2) # $at, 0x8017
/* B6DEEC 800F6D4C A020B9F2 */  sb    $zero, %lo(D_8016B9F2)($at)
/* B6DEF0 800F6D50 03E00008 */  jr    $ra
/* B6DEF4 800F6D54 27BD0018 */   addiu $sp, $sp, 0x18

