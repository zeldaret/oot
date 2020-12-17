glabel func_809BFC48
/* 003A8 809BFC48 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 003AC 809BFC4C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 003B0 809BFC50 AFB00020 */  sw      $s0, 0x0020($sp)
/* 003B4 809BFC54 8C8F0190 */  lw      $t7, 0x0190($a0)           ## 00000190
/* 003B8 809BFC58 3C0E809C */  lui     $t6, %hi(func_809C04B4)    ## $t6 = 809C0000
/* 003BC 809BFC5C 25CE04B4 */  addiu   $t6, $t6, %lo(func_809C04B4) ## $t6 = 809C04B4
/* 003C0 809BFC60 15CF0005 */  bne     $t6, $t7, .L809BFC78
/* 003C4 809BFC64 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 003C8 809BFC68 3C050600 */  lui     $a1, %hi(D_060000A4)                ## $a1 = 06000000
/* 003CC 809BFC6C 24A500A4 */  addiu   $a1, $a1, %lo(D_060000A4)           ## $a1 = 060000A4
/* 003D0 809BFC70 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 003D4 809BFC74 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
.L809BFC78:
/* 003D8 809BFC78 921901E4 */  lbu     $t9, 0x01E4($s0)           ## 000001E4
/* 003DC 809BFC7C 920901E5 */  lbu     $t1, 0x01E5($s0)           ## 000001E5
/* 003E0 809BFC80 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 00000004
/* 003E4 809BFC84 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 003E8 809BFC88 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 003EC 809BFC8C 3328FFFE */  andi    $t0, $t9, 0xFFFE           ## $t0 = 00000000
/* 003F0 809BFC90 312AFFFE */  andi    $t2, $t1, 0xFFFE           ## $t2 = 00000000
/* 003F4 809BFC94 356C0010 */  ori     $t4, $t3, 0x0010           ## $t4 = 00000010
/* 003F8 809BFC98 A6180196 */  sh      $t8, 0x0196($s0)           ## 00000196
/* 003FC 809BFC9C A20801E4 */  sb      $t0, 0x01E4($s0)           ## 000001E4
/* 00400 809BFCA0 A20A01E5 */  sb      $t2, 0x01E5($s0)           ## 000001E5
/* 00404 809BFCA4 AE0C0004 */  sw      $t4, 0x0004($s0)           ## 00000004
/* 00408 809BFCA8 240D0014 */  addiu   $t5, $zero, 0x0014         ## $t5 = 00000014
/* 0040C 809BFCAC E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 00410 809BFCB0 AFAD0010 */  sw      $t5, 0x0010($sp)
/* 00414 809BFCB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00418 809BFCB8 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 0041C 809BFCBC 240600C8 */  addiu   $a2, $zero, 0x00C8         ## $a2 = 000000C8
/* 00420 809BFCC0 0C00D09B */  jal     func_8003426C
/* 00424 809BFCC4 24072000 */  addiu   $a3, $zero, 0x2000         ## $a3 = 00002000
/* 00428 809BFCC8 3C0E809C */  lui     $t6, %hi(func_809C06E0)    ## $t6 = 809C0000
/* 0042C 809BFCCC 25CE06E0 */  addiu   $t6, $t6, %lo(func_809C06E0) ## $t6 = 809C06E0
/* 00430 809BFCD0 AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
/* 00434 809BFCD4 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00438 809BFCD8 8FB00020 */  lw      $s0, 0x0020($sp)
/* 0043C 809BFCDC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00440 809BFCE0 03E00008 */  jr      $ra
/* 00444 809BFCE4 00000000 */  nop
