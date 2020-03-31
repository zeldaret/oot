glabel func_80AD93C4
/* 00434 80AD93C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00438 80AD93C8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0043C 80AD93CC 8C8F0190 */  lw      $t7, 0x0190($a0)           ## 00000190
/* 00440 80AD93D0 3C0E80AE */  lui     $t6, %hi(func_80ADA6A0)    ## $t6 = 80AE0000
/* 00444 80AD93D4 25CEA6A0 */  addiu   $t6, $t6, %lo(func_80ADA6A0) ## $t6 = 80ADA6A0
/* 00448 80AD93D8 11CF0008 */  beq     $t6, $t7, .L80AD93FC
/* 0044C 80AD93DC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00450 80AD93E0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00454 80AD93E4 24A50D40 */  addiu   $a1, $a1, 0x0D40           ## $a1 = 06000D40
/* 00458 80AD93E8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0045C 80AD93EC 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 00460 80AD93F0 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRepeat
/* 00464 80AD93F4 AFA70018 */  sw      $a3, 0x0018($sp)
/* 00468 80AD93F8 8FA70018 */  lw      $a3, 0x0018($sp)
.L80AD93FC:
/* 0046C 80AD93FC 2404000F */  addiu   $a0, $zero, 0x000F         ## $a0 = 0000000F
/* 00470 80AD9400 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00474 80AD9404 0C01DF64 */  jal     Math_Rand_S16Offset

/* 00478 80AD9408 AFA70018 */  sw      $a3, 0x0018($sp)
/* 0047C 80AD940C 8FA70018 */  lw      $a3, 0x0018($sp)
/* 00480 80AD9410 3C0880AE */  lui     $t0, %hi(func_80ADA530)    ## $t0 = 80AE0000
/* 00484 80AD9414 2508A530 */  addiu   $t0, $t0, %lo(func_80ADA530) ## $t0 = 80ADA530
/* 00488 80AD9418 90F80199 */  lbu     $t8, 0x0199($a3)           ## 00000199
/* 0048C 80AD941C A4E2019A */  sh      $v0, 0x019A($a3)           ## 0000019A
/* 00490 80AD9420 ACE80190 */  sw      $t0, 0x0190($a3)           ## 00000190
/* 00494 80AD9424 37190007 */  ori     $t9, $t8, 0x0007           ## $t9 = 00000007
/* 00498 80AD9428 A0F90199 */  sb      $t9, 0x0199($a3)           ## 00000199
/* 0049C 80AD942C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 004A0 80AD9430 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004A4 80AD9434 03E00008 */  jr      $ra
/* 004A8 80AD9438 00000000 */  nop


