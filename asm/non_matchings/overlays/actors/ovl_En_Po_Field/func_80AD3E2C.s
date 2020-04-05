glabel func_80AD3E2C
/* 0032C 80AD3E2C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00330 80AD3E30 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00334 80AD3E34 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00338 80AD3E38 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0033C 80AD3E3C 24A50F9C */  addiu   $a1, $a1, 0x0F9C           ## $a1 = 06000F9C
/* 00340 80AD3E40 AFA60018 */  sw      $a2, 0x0018($sp)
/* 00344 80AD3E44 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 00348 80AD3E48 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0034C 80AD3E4C 8FA40018 */  lw      $a0, 0x0018($sp)
/* 00350 80AD3E50 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00354 80AD3E54 3C0E80AD */  lui     $t6, %hi(EnPoField_Draw)    ## $t6 = 80AD0000
/* 00358 80AD3E58 240200FF */  addiu   $v0, $zero, 0x00FF         ## $v0 = 000000FF
/* 0035C 80AD3E5C 25CE68E4 */  addiu   $t6, $t6, %lo(EnPoField_Draw) ## $t6 = 80AD68E4
/* 00360 80AD3E60 240F00D2 */  addiu   $t7, $zero, 0x00D2         ## $t7 = 000000D2
/* 00364 80AD3E64 24053873 */  addiu   $a1, $zero, 0x3873         ## $a1 = 00003873
/* 00368 80AD3E68 AC8E0134 */  sw      $t6, 0x0134($a0)           ## 00000134
/* 0036C 80AD3E6C A0820214 */  sb      $v0, 0x0214($a0)           ## 00000214
/* 00370 80AD3E70 A0820215 */  sb      $v0, 0x0215($a0)           ## 00000215
/* 00374 80AD3E74 A08F0216 */  sb      $t7, 0x0216($a0)           ## 00000216
/* 00378 80AD3E78 A0800217 */  sb      $zero, 0x0217($a0)         ## 00000217
/* 0037C 80AD3E7C A08000C8 */  sb      $zero, 0x00C8($a0)         ## 000000C8
/* 00380 80AD3E80 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00384 80AD3E84 E48400BC */  swc1    $f4, 0x00BC($a0)           ## 000000BC
/* 00388 80AD3E88 8FA60018 */  lw      $a2, 0x0018($sp)
/* 0038C 80AD3E8C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00390 80AD3E90 3C0F80AD */  lui     $t7, %hi(func_80AD48CC)    ## $t7 = 80AD0000
/* 00394 80AD3E94 84D8001C */  lh      $t8, 0x001C($a2)           ## 0000001C
/* 00398 80AD3E98 C4C60028 */  lwc1    $f6, 0x0028($a2)           ## 00000028
/* 0039C 80AD3E9C 25EF48CC */  addiu   $t7, $t7, %lo(func_80AD48CC) ## $t7 = 80AD48CC
/* 003A0 80AD3EA0 17010013 */  bne     $t8, $at, .L80AD3EF0
/* 003A4 80AD3EA4 E4C6000C */  swc1    $f6, 0x000C($a2)           ## 0000000C
/* 003A8 80AD3EA8 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 003AC 80AD3EAC 44814000 */  mtc1    $at, $f8                   ## $f8 = 12.00
/* 003B0 80AD3EB0 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 003B4 80AD3EB4 44815000 */  mtc1    $at, $f10                  ## $f10 = 45.00
/* 003B8 80AD3EB8 24190023 */  addiu   $t9, $zero, 0x0023         ## $t9 = 00000023
/* 003BC 80AD3EBC 24080064 */  addiu   $t0, $zero, 0x0064         ## $t0 = 00000064
/* 003C0 80AD3EC0 2409000A */  addiu   $t1, $zero, 0x000A         ## $t1 = 0000000A
/* 003C4 80AD3EC4 A4D90284 */  sh      $t9, 0x0284($a2)           ## 00000284
/* 003C8 80AD3EC8 A4C80286 */  sh      $t0, 0x0286($a2)           ## 00000286
/* 003CC 80AD3ECC A4C90288 */  sh      $t1, 0x0288($a2)           ## 00000288
/* 003D0 80AD3ED0 3C0180AD */  lui     $at, %hi(D_80AD723C)       ## $at = 80AD0000
/* 003D4 80AD3ED4 E4C80068 */  swc1    $f8, 0x0068($a2)           ## 00000068
/* 003D8 80AD3ED8 E4CA00C4 */  swc1    $f10, 0x00C4($a2)          ## 000000C4
/* 003DC 80AD3EDC C430723C */  lwc1    $f16, %lo(D_80AD723C)($at)
/* 003E0 80AD3EE0 240A005A */  addiu   $t2, $zero, 0x005A         ## $t2 = 0000005A
/* 003E4 80AD3EE4 A0CA0117 */  sb      $t2, 0x0117($a2)           ## 00000117
/* 003E8 80AD3EE8 10000013 */  beq     $zero, $zero, .L80AD3F38
/* 003EC 80AD3EEC E4D0021C */  swc1    $f16, 0x021C($a2)          ## 0000021C
.L80AD3EF0:
/* 003F0 80AD3EF0 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 003F4 80AD3EF4 3C0280AD */  lui     $v0, %hi(D_80AD7080)       ## $v0 = 80AD0000
/* 003F8 80AD3EF8 24427080 */  addiu   $v0, $v0, %lo(D_80AD7080)  ## $v0 = 80AD7080
/* 003FC 80AD3EFC E4D20068 */  swc1    $f18, 0x0068($a2)          ## 00000068
/* 00400 80AD3F00 844B0020 */  lh      $t3, 0x0020($v0)           ## 80AD70A0
/* 00404 80AD3F04 3C014214 */  lui     $at, 0x4214                ## $at = 42140000
/* 00408 80AD3F08 44812000 */  mtc1    $at, $f4                   ## $f4 = 37.00
/* 0040C 80AD3F0C A4CB0284 */  sh      $t3, 0x0284($a2)           ## 00000284
/* 00410 80AD3F10 844C0022 */  lh      $t4, 0x0022($v0)           ## 80AD70A2
/* 00414 80AD3F14 3C0180AD */  lui     $at, %hi(D_80AD7240)       ## $at = 80AD0000
/* 00418 80AD3F18 240E005C */  addiu   $t6, $zero, 0x005C         ## $t6 = 0000005C
/* 0041C 80AD3F1C A4CC0286 */  sh      $t4, 0x0286($a2)           ## 00000286
/* 00420 80AD3F20 844D0024 */  lh      $t5, 0x0024($v0)           ## 80AD70A4
/* 00424 80AD3F24 E4C400C4 */  swc1    $f4, 0x00C4($a2)           ## 000000C4
/* 00428 80AD3F28 A4CD0288 */  sh      $t5, 0x0288($a2)           ## 00000288
/* 0042C 80AD3F2C C4267240 */  lwc1    $f6, %lo(D_80AD7240)($at)
/* 00430 80AD3F30 A0CE0117 */  sb      $t6, 0x0117($a2)           ## 00000117
/* 00434 80AD3F34 E4C6021C */  swc1    $f6, 0x021C($a2)           ## 0000021C
.L80AD3F38:
/* 00438 80AD3F38 ACCF0190 */  sw      $t7, 0x0190($a2)           ## 00000190
/* 0043C 80AD3F3C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00440 80AD3F40 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00444 80AD3F44 03E00008 */  jr      $ra
/* 00448 80AD3F48 00000000 */  nop


