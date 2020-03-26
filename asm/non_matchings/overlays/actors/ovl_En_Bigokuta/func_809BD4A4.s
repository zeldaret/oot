glabel func_809BD4A4
/* 00844 809BD4A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00848 809BD4A8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0084C 809BD4AC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00850 809BD4B0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00854 809BD4B4 24A514B8 */  addiu   $a1, $a1, 0x14B8           ## $a1 = 060014B8
/* 00858 809BD4B8 AFA70018 */  sw      $a3, 0x0018($sp)
/* 0085C 809BD4BC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00860 809BD4C0 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRate
/* 00864 809BD4C4 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 00868 809BD4C8 8FA70018 */  lw      $a3, 0x0018($sp)
/* 0086C 809BD4CC 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00870 809BD4D0 3C0D809C */  lui     $t5, %hi(func_809BDFC8)    ## $t5 = 809C0000
/* 00874 809BD4D4 84EF00B6 */  lh      $t7, 0x00B6($a3)           ## 000000B6
/* 00878 809BD4D8 80F90194 */  lb      $t9, 0x0194($a3)           ## 00000194
/* 0087C 809BD4DC 90E9029D */  lbu     $t1, 0x029D($a3)           ## 0000029D
/* 00880 809BD4E0 90EB02FC */  lbu     $t3, 0x02FC($a3)           ## 000002FC
/* 00884 809BD4E4 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00888 809BD4E8 25ADDFC8 */  addiu   $t5, $t5, %lo(func_809BDFC8) ## $t5 = 809BDFC8
/* 0088C 809BD4EC 01E1C021 */  addu    $t8, $t7, $at
/* 00890 809BD4F0 00194240 */  sll     $t0, $t9,  9
/* 00894 809BD4F4 312AFFFE */  andi    $t2, $t1, 0xFFFE           ## $t2 = 00000000
/* 00898 809BD4F8 356C0001 */  ori     $t4, $t3, 0x0001           ## $t4 = 00000001
/* 0089C 809BD4FC A0EE0195 */  sb      $t6, 0x0195($a3)           ## 00000195
/* 008A0 809BD500 A4F80030 */  sh      $t8, 0x0030($a3)           ## 00000030
/* 008A4 809BD504 A4E8019A */  sh      $t0, 0x019A($a3)           ## 0000019A
/* 008A8 809BD508 A0EA029D */  sb      $t2, 0x029D($a3)           ## 0000029D
/* 008AC 809BD50C A0EC02FC */  sb      $t4, 0x02FC($a3)           ## 000002FC
/* 008B0 809BD510 ACED0190 */  sw      $t5, 0x0190($a3)           ## 00000190
/* 008B4 809BD514 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 008B8 809BD518 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008BC 809BD51C 03E00008 */  jr      $ra
/* 008C0 809BD520 00000000 */  nop


