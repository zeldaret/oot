glabel func_809E9800
/* 002A0 809E9800 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002A4 809E9804 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 002A8 809E9808 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 002AC 809E980C 3C050600 */  lui     $a1, %hi(D_06000E6C)                ## $a1 = 06000000
/* 002B0 809E9810 24A50E6C */  addiu   $a1, $a1, %lo(D_06000E6C)           ## $a1 = 06000E6C
/* 002B4 809E9814 AFA70018 */  sw      $a3, 0x0018($sp)
/* 002B8 809E9818 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 002BC 809E981C 0C0294D3 */  jal     Animation_MorphToLoop
/* 002C0 809E9820 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 002C4 809E9824 8FA70018 */  lw      $a3, 0x0018($sp)
/* 002C8 809E9828 3C0E809F */  lui     $t6, %hi(func_809E9F6C)    ## $t6 = 809F0000
/* 002CC 809E982C 25CE9F6C */  addiu   $t6, $t6, %lo(func_809E9F6C) ## $t6 = 809E9F6C
/* 002D0 809E9830 8CEF0190 */  lw      $t7, 0x0190($a3)           ## 00000190
/* 002D4 809E9834 3C08809F */  lui     $t0, %hi(func_809E9E80)    ## $t0 = 809F0000
/* 002D8 809E9838 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 002DC 809E983C 15CF0004 */  bne     $t6, $t7, .L809E9850
/* 002E0 809E9840 25089E80 */  addiu   $t0, $t0, %lo(func_809E9E80) ## $t0 = 809E9E80
/* 002E4 809E9844 24181002 */  addiu   $t8, $zero, 0x1002         ## $t8 = 00001002
/* 002E8 809E9848 10000002 */  beq     $zero, $zero, .L809E9854
/* 002EC 809E984C A4F80196 */  sh      $t8, 0x0196($a3)           ## 00000196
.L809E9850:
/* 002F0 809E9850 A4F90196 */  sh      $t9, 0x0196($a3)           ## 00000196
.L809E9854:
/* 002F4 809E9854 ACE80190 */  sw      $t0, 0x0190($a3)           ## 00000190
/* 002F8 809E9858 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 002FC 809E985C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00300 809E9860 03E00008 */  jr      $ra
/* 00304 809E9864 00000000 */  nop
