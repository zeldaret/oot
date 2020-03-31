glabel func_809EB4D8
/* 00798 809EB4D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0079C 809EB4DC AFA5001C */  sw      $a1, 0x001C($sp)
/* 007A0 809EB4E0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 007A4 809EB4E4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 007A8 809EB4E8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 007AC 809EB4EC 24A55880 */  addiu   $a1, $a1, 0x5880           ## $a1 = 06005880
/* 007B0 809EB4F0 AFA70018 */  sw      $a3, 0x0018($sp)
/* 007B4 809EB4F4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 007B8 809EB4F8 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRepeat
/* 007BC 809EB4FC 3C06C080 */  lui     $a2, 0xC080                ## $a2 = C0800000
/* 007C0 809EB500 8FA40018 */  lw      $a0, 0x0018($sp)
/* 007C4 809EB504 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 007C8 809EB508 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 007CC 809EB50C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 007D0 809EB510 240F0046 */  addiu   $t7, $zero, 0x0046         ## $t7 = 00000046
/* 007D4 809EB514 3C05809F */  lui     $a1, %hi(func_809EB53C)    ## $a1 = 809F0000
/* 007D8 809EB518 24A5B53C */  addiu   $a1, $a1, %lo(func_809EB53C) ## $a1 = 809EB53C
/* 007DC 809EB51C A08E025B */  sb      $t6, 0x025B($a0)           ## 0000025B
/* 007E0 809EB520 A48F025C */  sh      $t7, 0x025C($a0)           ## 0000025C
/* 007E4 809EB524 0C27AB50 */  jal     func_809EAD40
/* 007E8 809EB528 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 007EC 809EB52C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 007F0 809EB530 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007F4 809EB534 03E00008 */  jr      $ra
/* 007F8 809EB538 00000000 */  nop


