glabel func_809F9A80
/* 01830 809F9A80 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01834 809F9A84 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01838 809F9A88 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0183C 809F9A8C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01840 809F9A90 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01844 809F9A94 24A513C4 */  addiu   $a1, $a1, 0x13C4           ## $a1 = 060013C4
/* 01848 809F9A98 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 0184C 809F9A9C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01850 809F9AA0 0C029490 */  jal     func_800A5240              
/* 01854 809F9AA4 3C06C100 */  lui     $a2, 0xC100                ## $a2 = C1000000
/* 01858 809F9AA8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0185C 809F9AAC 24053804 */  addiu   $a1, $zero, 0x3804         ## $a1 = 00003804
/* 01860 809F9AB0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01864 809F9AB4 A480030C */  sh      $zero, 0x030C($a0)         ## 0000030C
/* 01868 809F9AB8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0186C 809F9ABC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01870 809F9AC0 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 01874 809F9AC4 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 01878 809F9AC8 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 0187C 809F9ACC 3C0580A0 */  lui     $a1, %hi(func_809F9AF8)    ## $a1 = 80A00000
/* 01880 809F9AD0 01E1C024 */  and     $t8, $t7, $at              
/* 01884 809F9AD4 24A59AF8 */  addiu   $a1, $a1, %lo(func_809F9AF8) ## $a1 = 809F9AF8
/* 01888 809F9AD8 AC8E0304 */  sw      $t6, 0x0304($a0)           ## 00000304
/* 0188C 809F9ADC AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 01890 809F9AE0 0C27E094 */  jal     func_809F8250              
/* 01894 809F9AE4 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 01898 809F9AE8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0189C 809F9AEC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 018A0 809F9AF0 03E00008 */  jr      $ra                        
/* 018A4 809F9AF4 00000000 */  nop


