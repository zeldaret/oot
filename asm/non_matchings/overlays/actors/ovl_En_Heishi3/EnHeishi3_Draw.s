glabel EnHeishi3_Draw
/* 008AC 80A55EEC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 008B0 80A55EF0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 008B4 80A55EF4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 008B8 80A55EF8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 008BC 80A55EFC 0C024F46 */  jal     func_80093D18              
/* 008C0 80A55F00 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 008C4 80A55F04 8FA20020 */  lw      $v0, 0x0020($sp)           
/* 008C8 80A55F08 3C0780A5 */  lui     $a3, %hi(func_80A55E88)    ## $a3 = 80A50000
/* 008CC 80A55F0C 24E75E88 */  addiu   $a3, $a3, %lo(func_80A55E88) ## $a3 = 80A55E88
/* 008D0 80A55F10 8C450150 */  lw      $a1, 0x0150($v0)           ## 00000150
/* 008D4 80A55F14 8C46016C */  lw      $a2, 0x016C($v0)           ## 0000016C
/* 008D8 80A55F18 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 008DC 80A55F1C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 008E0 80A55F20 0C028572 */  jal     SkelAnime_Draw
              
/* 008E4 80A55F24 AFA20014 */  sw      $v0, 0x0014($sp)           
/* 008E8 80A55F28 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 008EC 80A55F2C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 008F0 80A55F30 03E00008 */  jr      $ra                        
/* 008F4 80A55F34 00000000 */  nop
/* 008F8 80A55F38 00000000 */  nop
/* 008FC 80A55F3C 00000000 */  nop
