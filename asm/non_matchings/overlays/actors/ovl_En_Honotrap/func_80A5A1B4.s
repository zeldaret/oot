glabel func_80A5A1B4
/* 00584 80A5A1B4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00588 80A5A1B8 3C0E80A6 */  lui     $t6, %hi(func_80A5A208)    ## $t6 = 80A60000
/* 0058C 80A5A1BC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00590 80A5A1C0 25CEA208 */  addiu   $t6, $t6, %lo(func_80A5A208) ## $t6 = 80A5A208
/* 00594 80A5A1C4 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 00598 80A5A1C8 240F0028 */  addiu   $t7, $zero, 0x0028         ## $t7 = 00000028
/* 0059C 80A5A1CC AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 005A0 80A5A1D0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 005A4 80A5A1D4 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 005A8 80A5A1D8 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 005AC 80A5A1DC 0C00D09B */  jal     func_8003426C              
/* 005B0 80A5A1E0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 005B4 80A5A1E4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 005B8 80A5A1E8 2418001E */  addiu   $t8, $zero, 0x001E         ## $t8 = 0000001E
/* 005BC 80A5A1EC 24052881 */  addiu   $a1, $zero, 0x2881         ## $a1 = 00002881
/* 005C0 80A5A1F0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 005C4 80A5A1F4 A4980228 */  sh      $t8, 0x0228($a0)           ## 00000228
/* 005C8 80A5A1F8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 005CC 80A5A1FC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 005D0 80A5A200 03E00008 */  jr      $ra                        
/* 005D4 80A5A204 00000000 */  nop
