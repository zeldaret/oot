glabel func_809EBCF0
/* 00FB0 809EBCF0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00FB4 809EBCF4 AFB00018 */  sw      $s0, 0x0018($sp)
/* 00FB8 809EBCF8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00FBC 809EBCFC AFBF001C */  sw      $ra, 0x001C($sp)
/* 00FC0 809EBD00 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00FC4 809EBD04 24A532BC */  addiu   $a1, $a1, 0x32BC           ## $a1 = 060032BC
/* 00FC8 809EBD08 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00FCC 809EBD0C 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 00FD0 809EBD10 3C06BF80 */  lui     $a2, 0xBF80                ## $a2 = BF800000
/* 00FD4 809EBD14 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 00FD8 809EBD18 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00FDC 809EBD1C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00FE0 809EBD20 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 00FE4 809EBD24 240F012C */  addiu   $t7, $zero, 0x012C         ## $t7 = 0000012C
/* 00FE8 809EBD28 0301C824 */  and     $t9, $t8, $at
/* 00FEC 809EBD2C A20E025B */  sb      $t6, 0x025B($s0)           ## 0000025B
/* 00FF0 809EBD30 A60F025C */  sh      $t7, 0x025C($s0)           ## 0000025C
/* 00FF4 809EBD34 AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 00FF8 809EBD38 0C03D6D6 */  jal     func_800F5B58
/* 00FFC 809EBD3C E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 01000 809EBD40 2408000A */  addiu   $t0, $zero, 0x000A         ## $t0 = 0000000A
/* 01004 809EBD44 A608001C */  sh      $t0, 0x001C($s0)           ## 0000001C
/* 01008 809EBD48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0100C 809EBD4C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01010 809EBD50 240539AB */  addiu   $a1, $zero, 0x39AB         ## $a1 = 000039AB
/* 01014 809EBD54 3C05809F */  lui     $a1, %hi(func_809EBD78)    ## $a1 = 809F0000
/* 01018 809EBD58 24A5BD78 */  addiu   $a1, $a1, %lo(func_809EBD78) ## $a1 = 809EBD78
/* 0101C 809EBD5C 0C27AB50 */  jal     func_809EAD40
/* 01020 809EBD60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01024 809EBD64 8FBF001C */  lw      $ra, 0x001C($sp)
/* 01028 809EBD68 8FB00018 */  lw      $s0, 0x0018($sp)
/* 0102C 809EBD6C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01030 809EBD70 03E00008 */  jr      $ra
/* 01034 809EBD74 00000000 */  nop


