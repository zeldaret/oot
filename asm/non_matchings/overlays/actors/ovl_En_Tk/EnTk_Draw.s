glabel EnTk_Draw
/* 01A98 80B1D398 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 01A9C 80B1D39C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 01AA0 80B1D3A0 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 01AA4 80B1D3A4 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 01AA8 80B1D3A8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01AAC 80B1D3AC 0C034213 */  jal     Matrix_Push              
/* 01AB0 80B1D3B0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01AB4 80B1D3B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01AB8 80B1D3B8 0C2C6EAC */  jal     func_80B1BAB0              
/* 01ABC 80B1D3BC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01AC0 80B1D3C0 0C034221 */  jal     Matrix_Pull              
/* 01AC4 80B1D3C4 00000000 */  nop
/* 01AC8 80B1D3C8 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 01ACC 80B1D3CC 3C0680B2 */  lui     $a2, %hi(D_80B1D60C)       ## $a2 = 80B20000
/* 01AD0 80B1D3D0 24C6D60C */  addiu   $a2, $a2, %lo(D_80B1D60C)  ## $a2 = 80B1D60C
/* 01AD4 80B1D3D4 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE8
/* 01AD8 80B1D3D8 2407050E */  addiu   $a3, $zero, 0x050E         ## $a3 = 0000050E
/* 01ADC 80B1D3DC 0C031AB1 */  jal     func_800C6AC4              
/* 01AE0 80B1D3E0 AFA50048 */  sw      $a1, 0x0048($sp)           
/* 01AE4 80B1D3E4 0C024F46 */  jal     func_80093D18              
/* 01AE8 80B1D3E8 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 01AEC 80B1D3EC 8FA50048 */  lw      $a1, 0x0048($sp)           
/* 01AF0 80B1D3F0 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 01AF4 80B1D3F4 35EF0020 */  ori     $t7, $t7, 0x0020           ## $t7 = DB060020
/* 01AF8 80B1D3F8 8CA302C0 */  lw      $v1, 0x02C0($a1)           ## 000002C0
/* 01AFC 80B1D3FC 3C0480B2 */  lui     $a0, %hi(D_80B1D598)       ## $a0 = 80B20000
/* 01B00 80B1D400 3C0C8016 */  lui     $t4, 0x8016                ## $t4 = 80160000
/* 01B04 80B1D404 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 01B08 80B1D408 ACAE02C0 */  sw      $t6, 0x02C0($a1)           ## 000002C0
/* 01B0C 80B1D40C AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 01B10 80B1D410 86180222 */  lh      $t8, 0x0222($s0)           ## 00000222
/* 01B14 80B1D414 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 01B18 80B1D418 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 01B1C 80B1D41C 0018C880 */  sll     $t9, $t8,  2               
/* 01B20 80B1D420 00992021 */  addu    $a0, $a0, $t9              
/* 01B24 80B1D424 8C84D598 */  lw      $a0, %lo(D_80B1D598)($a0)  
/* 01B28 80B1D428 3C1880B2 */  lui     $t8, %hi(func_80B1D2E4)    ## $t8 = 80B20000
/* 01B2C 80B1D42C 3C0F80B2 */  lui     $t7, %hi(func_80B1D278)    ## $t7 = 80B20000
/* 01B30 80B1D430 00044900 */  sll     $t1, $a0,  4               
/* 01B34 80B1D434 00095702 */  srl     $t2, $t1, 28               
/* 01B38 80B1D438 000A5880 */  sll     $t3, $t2,  2               
/* 01B3C 80B1D43C 018B6021 */  addu    $t4, $t4, $t3              
/* 01B40 80B1D440 8D8C6FA8 */  lw      $t4, 0x6FA8($t4)           ## 80166FA8
/* 01B44 80B1D444 00814024 */  and     $t0, $a0, $at              
/* 01B48 80B1D448 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01B4C 80B1D44C 010C6821 */  addu    $t5, $t0, $t4              
/* 01B50 80B1D450 01A17021 */  addu    $t6, $t5, $at              
/* 01B54 80B1D454 AC6E0004 */  sw      $t6, 0x0004($v1)           ## 00000004
/* 01B58 80B1D458 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 01B5C 80B1D45C 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 01B60 80B1D460 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 01B64 80B1D464 25EFD278 */  addiu   $t7, $t7, %lo(func_80B1D278) ## $t7 = 80B1D278
/* 01B68 80B1D468 2718D2E4 */  addiu   $t8, $t8, %lo(func_80B1D2E4) ## $t8 = 80B1D2E4
/* 01B6C 80B1D46C AFB80014 */  sw      $t8, 0x0014($sp)           
/* 01B70 80B1D470 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 01B74 80B1D474 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01B78 80B1D478 0C0286B2 */  jal     func_800A1AC8              
/* 01B7C 80B1D47C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01B80 80B1D480 3C0680B2 */  lui     $a2, %hi(D_80B1D61C)       ## $a2 = 80B20000
/* 01B84 80B1D484 24C6D61C */  addiu   $a2, $a2, %lo(D_80B1D61C)  ## $a2 = 80B1D61C
/* 01B88 80B1D488 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE8
/* 01B8C 80B1D48C 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 01B90 80B1D490 0C031AD5 */  jal     func_800C6B54              
/* 01B94 80B1D494 24070520 */  addiu   $a3, $zero, 0x0520         ## $a3 = 00000520
/* 01B98 80B1D498 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 01B9C 80B1D49C 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 01BA0 80B1D4A0 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 01BA4 80B1D4A4 03E00008 */  jr      $ra                        
/* 01BA8 80B1D4A8 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 01BAC 80B1D4AC 00000000 */  nop

