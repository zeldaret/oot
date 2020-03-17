glabel func_809F7AB8
/* 016F8 809F7AB8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 016FC 809F7ABC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01700 809F7AC0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01704 809F7AC4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01708 809F7AC8 0C00B61A */  jal     func_8002D868              
/* 0170C 809F7ACC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01710 809F7AD0 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 01714 809F7AD4 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 01718 809F7AD8 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 0171C 809F7ADC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01720 809F7AE0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01724 809F7AE4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01728 809F7AE8 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 0172C 809F7AEC 860F00B4 */  lh      $t7, 0x00B4($s0)           ## 000000B4
/* 01730 809F7AF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01734 809F7AF4 A60F0030 */  sh      $t7, 0x0030($s0)           ## 00000030
/* 01738 809F7AF8 0C27DA2C */  jal     func_809F68B0              
/* 0173C 809F7AFC 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01740 809F7B00 10400009 */  beq     $v0, $zero, .L809F7B28     
/* 01744 809F7B04 2418003C */  addiu   $t8, $zero, 0x003C         ## $t8 = 0000003C
/* 01748 809F7B08 A6180202 */  sh      $t8, 0x0202($s0)           ## 00000202
/* 0174C 809F7B0C 0C27DAB1 */  jal     func_809F6AC4              
/* 01750 809F7B10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01754 809F7B14 3C08809F */  lui     $t0, %hi(func_809F7B3C)    ## $t0 = 809F0000
/* 01758 809F7B18 24190007 */  addiu   $t9, $zero, 0x0007         ## $t9 = 00000007
/* 0175C 809F7B1C 25087B3C */  addiu   $t0, $t0, %lo(func_809F7B3C) ## $t0 = 809F7B3C
/* 01760 809F7B20 A61901FC */  sh      $t9, 0x01FC($s0)           ## 000001FC
/* 01764 809F7B24 AE080190 */  sw      $t0, 0x0190($s0)           ## 00000190
.L809F7B28:
/* 01768 809F7B28 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0176C 809F7B2C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01770 809F7B30 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01774 809F7B34 03E00008 */  jr      $ra                        
/* 01778 809F7B38 00000000 */  nop


