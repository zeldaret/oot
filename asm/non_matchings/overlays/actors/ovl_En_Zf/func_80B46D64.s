glabel func_80B46D64
/* 02D14 80B46D64 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02D18 80B46D68 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 02D1C 80B46D6C AFA40028 */  sw      $a0, 0x0028($sp)
/* 02D20 80B46D70 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 02D24 80B46D74 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 02D28 80B46D78 C4840164 */  lwc1    $f4, 0x0164($a0)           ## 00000164
/* 02D2C 80B46D7C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 02D30 80B46D80 3C050601 */  lui     $a1, %hi(D_0600A3D4)                ## $a1 = 06010000
/* 02D34 80B46D84 46062001 */  sub.s   $f0, $f4, $f6
/* 02D38 80B46D88 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 02D3C 80B46D8C AFAF0014 */  sw      $t7, 0x0014($sp)
/* 02D40 80B46D90 24A5A3D4 */  addiu   $a1, $a1, %lo(D_0600A3D4)           ## $a1 = 0600A3D4
/* 02D44 80B46D94 44070000 */  mfc1    $a3, $f0
/* 02D48 80B46D98 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02D4C 80B46D9C 3C06BF80 */  lui     $a2, 0xBF80                ## $a2 = BF800000
/* 02D50 80B46DA0 E7A20010 */  swc1    $f2, 0x0010($sp)
/* 02D54 80B46DA4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 02D58 80B46DA8 E7A20018 */  swc1    $f2, 0x0018($sp)
/* 02D5C 80B46DAC 8FA40028 */  lw      $a0, 0x0028($sp)
/* 02D60 80B46DB0 24180008 */  addiu   $t8, $zero, 0x0008         ## $t8 = 00000008
/* 02D64 80B46DB4 3C0580B4 */  lui     $a1, %hi(func_80B46DD4)    ## $a1 = 80B40000
/* 02D68 80B46DB8 24A56DD4 */  addiu   $a1, $a1, %lo(func_80B46DD4) ## $a1 = 80B46DD4
/* 02D6C 80B46DBC 0C2D1014 */  jal     func_80B44050
/* 02D70 80B46DC0 AC9803DC */  sw      $t8, 0x03DC($a0)           ## 000003DC
/* 02D74 80B46DC4 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 02D78 80B46DC8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02D7C 80B46DCC 03E00008 */  jr      $ra
/* 02D80 80B46DD0 00000000 */  nop
