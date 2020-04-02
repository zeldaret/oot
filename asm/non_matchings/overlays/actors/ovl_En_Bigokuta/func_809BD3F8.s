glabel func_809BD3F8
/* 00798 809BD3F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0079C 809BD3FC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 007A0 809BD400 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 007A4 809BD404 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 007A8 809BD408 24A51CA4 */  addiu   $a1, $a1, 0x1CA4           ## $a1 = 06001CA4
/* 007AC 809BD40C AFA70018 */  sw      $a3, 0x0018($sp)
/* 007B0 809BD410 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 007B4 809BD414 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 007B8 809BD418 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 007BC 809BD41C 8FA40018 */  lw      $a0, 0x0018($sp)
/* 007C0 809BD420 240E015E */  addiu   $t6, $zero, 0x015E         ## $t6 = 0000015E
/* 007C4 809BD424 240F0050 */  addiu   $t7, $zero, 0x0050         ## $t7 = 00000050
/* 007C8 809BD428 80980194 */  lb      $t8, 0x0194($a0)           ## 00000194
/* 007CC 809BD42C A48E0196 */  sh      $t6, 0x0196($a0)           ## 00000196
/* 007D0 809BD430 A48F0198 */  sh      $t7, 0x0198($a0)           ## 00000198
/* 007D4 809BD434 00180823 */  subu    $at, $zero, $t8
/* 007D8 809BD438 0001CA40 */  sll     $t9, $at,  9
/* 007DC 809BD43C 0C26F38F */  jal     func_809BCE3C
/* 007E0 809BD440 A499019A */  sh      $t9, 0x019A($a0)           ## 0000019A
/* 007E4 809BD444 8FA70018 */  lw      $a3, 0x0018($sp)
/* 007E8 809BD448 3C0C809C */  lui     $t4, %hi(func_809BDC08)    ## $t4 = 809C0000
/* 007EC 809BD44C 258CDC08 */  addiu   $t4, $t4, %lo(func_809BDC08) ## $t4 = 809BDC08
/* 007F0 809BD450 90E802FC */  lbu     $t0, 0x02FC($a3)           ## 000002FC
/* 007F4 809BD454 90EA029D */  lbu     $t2, 0x029D($a3)           ## 0000029D
/* 007F8 809BD458 ACEC0190 */  sw      $t4, 0x0190($a3)           ## 00000190
/* 007FC 809BD45C 35090001 */  ori     $t1, $t0, 0x0001           ## $t1 = 00000001
/* 00800 809BD460 354B0001 */  ori     $t3, $t2, 0x0001           ## $t3 = 00000001
/* 00804 809BD464 A0E902FC */  sb      $t1, 0x02FC($a3)           ## 000002FC
/* 00808 809BD468 A0EB029D */  sb      $t3, 0x029D($a3)           ## 0000029D
/* 0080C 809BD46C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00810 809BD470 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00814 809BD474 03E00008 */  jr      $ra
/* 00818 809BD478 00000000 */  nop


