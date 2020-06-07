glabel func_809F8AD8
/* 00888 809F8AD8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0088C 809F8ADC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00890 809F8AE0 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00894 809F8AE4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00898 809F8AE8 24A528F0 */  addiu   $a1, $a1, 0x28F0           ## $a1 = 060028F0
/* 0089C 809F8AEC AFA70018 */  sw      $a3, 0x0018($sp)
/* 008A0 809F8AF0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 008A4 809F8AF4 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 008A8 809F8AF8 3C06C080 */  lui     $a2, 0xC080                ## $a2 = C0800000
/* 008AC 809F8AFC 8FA40018 */  lw      $a0, 0x0018($sp)
/* 008B0 809F8B00 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 008B4 809F8B04 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 008B8 809F8B08 3C0580A0 */  lui     $a1, %hi(func_809F8D58)    ## $a1 = 80A00000
/* 008BC 809F8B0C 24A58D58 */  addiu   $a1, $a1, %lo(func_809F8D58) ## $a1 = 809F8D58
/* 008C0 809F8B10 AC8E0304 */  sw      $t6, 0x0304($a0)           ## 00000304
/* 008C4 809F8B14 0C27E094 */  jal     func_809F8250
/* 008C8 809F8B18 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 008CC 809F8B1C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 008D0 809F8B20 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008D4 809F8B24 03E00008 */  jr      $ra
/* 008D8 809F8B28 00000000 */  nop
