glabel func_80B4FF84
/* 015F4 80B4FF84 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 015F8 80B4FF88 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 015FC 80B4FF8C AFB00030 */  sw      $s0, 0x0030($sp)           
/* 01600 80B4FF90 8C8E0250 */  lw      $t6, 0x0250($a0)           ## 00000250
/* 01604 80B4FF94 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01608 80B4FF98 2406005D */  addiu   $a2, $zero, 0x005D         ## $a2 = 0000005D
/* 0160C 80B4FF9C 15C0000F */  bne     $t6, $zero, .L80B4FFDC     
/* 01610 80B4FFA0 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 01614 80B4FFA4 C4800024 */  lwc1    $f0, 0x0024($a0)           ## 00000024
/* 01618 80B4FFA8 C4820028 */  lwc1    $f2, 0x0028($a0)           ## 00000028
/* 0161C 80B4FFAC C48C002C */  lwc1    $f12, 0x002C($a0)          ## 0000002C
/* 01620 80B4FFB0 44070000 */  mfc1    $a3, $f0                   
/* 01624 80B4FFB4 AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 01628 80B4FFB8 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 0162C 80B4FFBC AFA0001C */  sw      $zero, 0x001C($sp)         
/* 01630 80B4FFC0 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 01634 80B4FFC4 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 01638 80B4FFC8 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 0163C 80B4FFCC 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 01640 80B4FFD0 E7AC0014 */  swc1    $f12, 0x0014($sp)          
/* 01644 80B4FFD4 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 01648 80B4FFD8 AE180250 */  sw      $t8, 0x0250($s0)           ## 00000250
.L80B4FFDC:
/* 0164C 80B4FFDC 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 01650 80B4FFE0 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 01654 80B4FFE4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01658 80B4FFE8 03E00008 */  jr      $ra                        
/* 0165C 80B4FFEC 00000000 */  nop


