glabel func_809BD5E0
/* 00980 809BD5E0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00984 809BD5E4 AFB00020 */  sw      $s0, 0x0020($sp)
/* 00988 809BD5E8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0098C 809BD5EC AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00990 809BD5F0 3C050600 */  lui     $a1, %hi(D_06000444)                ## $a1 = 06000000
/* 00994 809BD5F4 24A50444 */  addiu   $a1, $a1, %lo(D_06000444)           ## $a1 = 06000444
/* 00998 809BD5F8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0099C 809BD5FC 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 009A0 809BD600 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 009A4 809BD604 920F02FC */  lbu     $t7, 0x02FC($s0)           ## 000002FC
/* 009A8 809BD608 240E0018 */  addiu   $t6, $zero, 0x0018         ## $t6 = 00000018
/* 009AC 809BD60C A60E0196 */  sh      $t6, 0x0196($s0)           ## 00000196
/* 009B0 809BD610 31F8FFFE */  andi    $t8, $t7, 0xFFFE           ## $t8 = 00000000
/* 009B4 809BD614 A600019A */  sh      $zero, 0x019A($s0)         ## 0000019A
/* 009B8 809BD618 A21802FC */  sb      $t8, 0x02FC($s0)           ## 000002FC
/* 009BC 809BD61C 24190018 */  addiu   $t9, $zero, 0x0018         ## $t9 = 00000018
/* 009C0 809BD620 AFB90010 */  sw      $t9, 0x0010($sp)
/* 009C4 809BD624 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009C8 809BD628 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 009CC 809BD62C 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 009D0 809BD630 0C00D09B */  jal     func_8003426C
/* 009D4 809BD634 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 009D8 809BD638 3C08809C */  lui     $t0, %hi(func_809BE180)    ## $t0 = 809C0000
/* 009DC 809BD63C 2508E180 */  addiu   $t0, $t0, %lo(func_809BE180) ## $t0 = 809BE180
/* 009E0 809BD640 AE080190 */  sw      $t0, 0x0190($s0)           ## 00000190
/* 009E4 809BD644 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 009E8 809BD648 8FB00020 */  lw      $s0, 0x0020($sp)
/* 009EC 809BD64C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 009F0 809BD650 03E00008 */  jr      $ra
/* 009F4 809BD654 00000000 */  nop
