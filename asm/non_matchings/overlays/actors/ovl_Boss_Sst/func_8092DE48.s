glabel func_8092DE48
/* 01878 8092DE48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0187C 8092DE4C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01880 8092DE50 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01884 8092DE54 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01888 8092DE58 24A5E7B8 */  addiu   $a1, $a1, 0xE7B8           ## $a1 = 0600E7B8
/* 0188C 8092DE5C AFA70018 */  sw      $a3, 0x0018($sp)
/* 01890 8092DE60 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01894 8092DE64 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRate
/* 01898 8092DE68 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 0189C 8092DE6C 8FA70018 */  lw      $a3, 0x0018($sp)
/* 018A0 8092DE70 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 018A4 8092DE74 3C188093 */  lui     $t8, %hi(func_8092DEA0)    ## $t8 = 80930000
/* 018A8 8092DE78 90EE06C5 */  lbu     $t6, 0x06C5($a3)           ## 000006C5
/* 018AC 8092DE7C 2718DEA0 */  addiu   $t8, $t8, %lo(func_8092DEA0) ## $t8 = 8092DEA0
/* 018B0 8092DE80 ACF80190 */  sw      $t8, 0x0190($a3)           ## 00000190
/* 018B4 8092DE84 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 018B8 8092DE88 A0EF06C5 */  sb      $t7, 0x06C5($a3)           ## 000006C5
/* 018BC 8092DE8C E4E40068 */  swc1    $f4, 0x0068($a3)           ## 00000068
/* 018C0 8092DE90 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 018C4 8092DE94 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 018C8 8092DE98 03E00008 */  jr      $ra
/* 018CC 8092DE9C 00000000 */  nop


