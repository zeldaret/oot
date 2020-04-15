glabel func_80AB1A2C
/* 00C9C 80AB1A2C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00CA0 80AB1A30 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00CA4 80AB1A34 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00CA8 80AB1A38 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00CAC 80AB1A3C 24A50410 */  addiu   $a1, $a1, 0x0410           ## $a1 = 06000410
/* 00CB0 80AB1A40 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00CB4 80AB1A44 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00CB8 80AB1A48 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00CBC 80AB1A4C 0C2AC528 */  jal     func_80AB14A0              
/* 00CC0 80AB1A50 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00CC4 80AB1A54 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00CC8 80AB1A58 240E0007 */  addiu   $t6, $zero, 0x0007         ## $t6 = 00000007
/* 00CCC 80AB1A5C AC8E0278 */  sw      $t6, 0x0278($a0)           ## 00000278
/* 00CD0 80AB1A60 A08000C8 */  sb      $zero, 0x00C8($a0)         ## 000000C8
/* 00CD4 80AB1A64 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00CD8 80AB1A68 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00CDC 80AB1A6C 03E00008 */  jr      $ra                        
/* 00CE0 80AB1A70 00000000 */  nop
