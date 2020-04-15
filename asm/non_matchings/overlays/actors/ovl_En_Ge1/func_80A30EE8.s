glabel func_80A30EE8
/* 00578 80A30EE8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0057C 80A30EEC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00580 80A30EF0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00584 80A30EF4 3C0F80A3 */  lui     $t7, %hi(func_80A30E08)    ## $t7 = 80A30000
/* 00588 80A30EF8 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0058C 80A30EFC 240E001E */  addiu   $t6, $zero, 0x001E         ## $t6 = 0000001E
/* 00590 80A30F00 25EF0E08 */  addiu   $t7, $t7, %lo(func_80A30E08) ## $t7 = 80A30E08
/* 00594 80A30F04 A08E02AF */  sb      $t6, 0x02AF($a0)           ## 000002AF
/* 00598 80A30F08 AC8F02B4 */  sw      $t7, 0x02B4($a0)           ## 000002B4
/* 0059C 80A30F0C AFA70018 */  sw      $a3, 0x0018($sp)           
/* 005A0 80A30F10 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 005A4 80A30F14 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 005A8 80A30F18 0C00B7D5 */  jal     func_8002DF54              
/* 005AC 80A30F1C 2406005F */  addiu   $a2, $zero, 0x005F         ## $a2 = 0000005F
/* 005B0 80A30F20 0C01E221 */  jal     func_80078884              
/* 005B4 80A30F24 2404482C */  addiu   $a0, $zero, 0x482C         ## $a0 = 0000482C
/* 005B8 80A30F28 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 005BC 80A30F2C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 005C0 80A30F30 0C042DA0 */  jal     func_8010B680              
/* 005C4 80A30F34 24056000 */  addiu   $a1, $zero, 0x6000         ## $a1 = 00006000
/* 005C8 80A30F38 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005CC 80A30F3C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005D0 80A30F40 03E00008 */  jr      $ra                        
/* 005D4 80A30F44 00000000 */  nop
