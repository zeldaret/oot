glabel func_80AC0AB4
/* 00454 80AC0AB4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00458 80AC0AB8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0045C 80AC0ABC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00460 80AC0AC0 8C980004 */  lw      $t8, 0x0004($a0)           ## 00000004
/* 00464 80AC0AC4 848F008A */  lh      $t7, 0x008A($a0)           ## 0000008A
/* 00468 80AC0AC8 3C0E80AC */  lui     $t6, %hi(EnOkuta_Draw)    ## $t6 = 80AC0000
/* 0046C 80AC0ACC 25CE26D4 */  addiu   $t6, $t6, %lo(EnOkuta_Draw) ## $t6 = 80AC26D4
/* 00470 80AC0AD0 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00474 80AC0AD4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00478 80AC0AD8 AC8E0134 */  sw      $t6, 0x0134($a0)           ## 00000134
/* 0047C 80AC0ADC AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 00480 80AC0AE0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00484 80AC0AE4 A48F00B6 */  sh      $t7, 0x00B6($a0)           ## 000000B6
/* 00488 80AC0AE8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 0048C 80AC0AEC 24A53C64 */  addiu   $a1, $a1, 0x3C64           ## $a1 = 06003C64
/* 00490 80AC0AF0 0C02947A */  jal     SkelAnimeChangeAnimationDefaultStop              
/* 00494 80AC0AF4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00498 80AC0AF8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0049C 80AC0AFC 0C2B0224 */  jal     func_80AC0890              
/* 004A0 80AC0B00 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 004A4 80AC0B04 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 004A8 80AC0B08 3C0880AC */  lui     $t0, %hi(func_80AC0F64)    ## $t0 = 80AC0000
/* 004AC 80AC0B0C 25080F64 */  addiu   $t0, $t0, %lo(func_80AC0F64) ## $t0 = 80AC0F64
/* 004B0 80AC0B10 ACC80190 */  sw      $t0, 0x0190($a2)           ## 00000190
/* 004B4 80AC0B14 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004B8 80AC0B18 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004BC 80AC0B1C 03E00008 */  jr      $ra                        
/* 004C0 80AC0B20 00000000 */  nop


