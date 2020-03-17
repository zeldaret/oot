glabel func_80A9D42C
/* 00EDC 80A9D42C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00EE0 80A9D430 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00EE4 80A9D434 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00EE8 80A9D438 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00EEC 80A9D43C 848E01E0 */  lh      $t6, 0x01E0($a0)           ## 000001E0
/* 00EF0 80A9D440 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00EF4 80A9D444 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00EF8 80A9D448 15C10008 */  bne     $t6, $at, .L80A9D46C       
/* 00EFC 80A9D44C 260502A6 */  addiu   $a1, $s0, 0x02A6           ## $a1 = 000002A6
/* 00F00 80A9D450 3C0F80AA */  lui     $t7, %hi(func_80A9D490)    ## $t7 = 80AA0000
/* 00F04 80A9D454 25EFD490 */  addiu   $t7, $t7, %lo(func_80A9D490) ## $t7 = 80A9D490
/* 00F08 80A9D458 AC8F0190 */  sw      $t7, 0x0190($a0)           ## 00000190
/* 00F0C 80A9D45C 0C2A7524 */  jal     func_80A9D490              
/* 00F10 80A9D460 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00F14 80A9D464 10000006 */  beq     $zero, $zero, .L80A9D480   
/* 00F18 80A9D468 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A9D46C:
/* 00F1C 80A9D46C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00F20 80A9D470 260602BE */  addiu   $a2, $s0, 0x02BE           ## $a2 = 000002BE
/* 00F24 80A9D474 0C00D3D5 */  jal     func_80034F54              
/* 00F28 80A9D478 2407000C */  addiu   $a3, $zero, 0x000C         ## $a3 = 0000000C
/* 00F2C 80A9D47C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A9D480:
/* 00F30 80A9D480 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00F34 80A9D484 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00F38 80A9D488 03E00008 */  jr      $ra                        
/* 00F3C 80A9D48C 00000000 */  nop


