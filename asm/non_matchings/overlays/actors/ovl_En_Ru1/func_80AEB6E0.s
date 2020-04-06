glabel func_80AEB6E0
/* 00AD0 80AEB6E0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AD4 80AEB6E4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00AD8 80AEB6E8 AFA40018 */  sw      $a0, 0x0018($sp)
/* 00ADC 80AEB6EC AFA5001C */  sw      $a1, 0x001C($sp)
/* 00AE0 80AEB6F0 8C98016C */  lw      $t8, 0x016C($a0)           ## 0000016C
/* 00AE4 80AEB6F4 848F018C */  lh      $t7, 0x018C($a0)           ## 0000018C
/* 00AE8 80AEB6F8 2486014C */  addiu   $a2, $a0, 0x014C           ## $a2 = 0000014C
/* 00AEC 80AEB6FC 87190002 */  lh      $t9, 0x0002($t8)           ## 00000002
/* 00AF0 80AEB700 01F9082A */  slt     $at, $t7, $t9
/* 00AF4 80AEB704 50200009 */  beql    $at, $zero, .L80AEB72C
/* 00AF8 80AEB708 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00AFC 80AEB70C 90C80035 */  lbu     $t0, 0x0035($a2)           ## 00000181
/* 00B00 80AEB710 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00B04 80AEB714 35090003 */  ori     $t1, $t0, 0x0003           ## $t1 = 00000003
/* 00B08 80AEB718 A0C90035 */  sb      $t1, 0x0035($a2)           ## 00000181
/* 00B0C 80AEB71C 8FA50018 */  lw      $a1, 0x0018($sp)
/* 00B10 80AEB720 0C028D88 */  jal     SkelAnime_LoadAnimationType5
/* 00B14 80AEB724 8FA4001C */  lw      $a0, 0x001C($sp)
/* 00B18 80AEB728 8FBF0014 */  lw      $ra, 0x0014($sp)
.L80AEB72C:
/* 00B1C 80AEB72C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B20 80AEB730 03E00008 */  jr      $ra
/* 00B24 80AEB734 00000000 */  nop


