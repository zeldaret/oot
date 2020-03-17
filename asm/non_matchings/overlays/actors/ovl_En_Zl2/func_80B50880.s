glabel func_80B50880
/* 01EF0 80B50880 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01EF4 80B50884 10A0000C */  beq     $a1, $zero, .L80B508B8     
/* 01EF8 80B50888 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01EFC 80B5088C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01F00 80B50890 24A52F30 */  addiu   $a1, $a1, 0x2F30           ## $a1 = 06002F30
/* 01F04 80B50894 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01F08 80B50898 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01F0C 80B5089C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01F10 80B508A0 0C2D3F40 */  jal     func_80B4FD00              
/* 01F14 80B508A4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01F18 80B508A8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01F1C 80B508AC 240E0013 */  addiu   $t6, $zero, 0x0013         ## $t6 = 00000013
/* 01F20 80B508B0 0C2D3FAD */  jal     func_80B4FEB4              
/* 01F24 80B508B4 AC8E019C */  sw      $t6, 0x019C($a0)           ## 0000019C
.L80B508B8:
/* 01F28 80B508B8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01F2C 80B508BC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01F30 80B508C0 03E00008 */  jr      $ra                        
/* 01F34 80B508C4 00000000 */  nop


