glabel func_80B3C924
/* 00744 80B3C924 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00748 80B3C928 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0074C 80B3C92C AFA40018 */  sw      $a0, 0x0018($sp)
/* 00750 80B3C930 AFA5001C */  sw      $a1, 0x001C($sp)
/* 00754 80B3C934 908E0181 */  lbu     $t6, 0x0181($a0)           ## 00000181
/* 00758 80B3C938 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 0075C 80B3C93C 24A6014C */  addiu   $a2, $a1, 0x014C           ## $a2 = 0000014C
/* 00760 80B3C940 35CF0003 */  ori     $t7, $t6, 0x0003           ## $t7 = 00000003
/* 00764 80B3C944 A08F0181 */  sb      $t7, 0x0181($a0)           ## 00000181
/* 00768 80B3C948 8FA4001C */  lw      $a0, 0x001C($sp)
/* 0076C 80B3C94C 0C028D88 */  jal     AnimationContext_SetMoveActor
/* 00770 80B3C950 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00774 80B3C954 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00778 80B3C958 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0077C 80B3C95C 03E00008 */  jr      $ra
/* 00780 80B3C960 00000000 */  nop
