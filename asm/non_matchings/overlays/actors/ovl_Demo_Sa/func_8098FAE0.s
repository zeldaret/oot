glabel func_8098FAE0
/* 01680 8098FAE0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01684 8098FAE4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01688 8098FAE8 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 0168C 8098FAEC 24A535EC */  addiu   $a1, $a1, 0x35EC           ## $a1 = 060135EC
/* 01690 8098FAF0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01694 8098FAF4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01698 8098FAF8 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 0169C 8098FAFC 0C2639DB */  jal     func_8098E76C              
/* 016A0 8098FB00 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 016A4 8098FB04 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 016A8 8098FB08 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 016AC 8098FB0C 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 016B0 8098FB10 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 016B4 8098FB14 AC8E0198 */  sw      $t6, 0x0198($a0)           ## 00000198
/* 016B8 8098FB18 AC82019C */  sw      $v0, 0x019C($a0)           ## 0000019C
/* 016BC 8098FB1C AC8201B0 */  sw      $v0, 0x01B0($a0)           ## 000001B0
/* 016C0 8098FB20 A08F00C8 */  sb      $t7, 0x00C8($a0)           ## 000000C8
/* 016C4 8098FB24 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 016C8 8098FB28 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 016CC 8098FB2C 03E00008 */  jr      $ra                        
/* 016D0 8098FB30 00000000 */  nop


