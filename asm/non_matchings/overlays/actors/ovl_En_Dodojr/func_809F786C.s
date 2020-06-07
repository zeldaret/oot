glabel func_809F786C
/* 014AC 809F786C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 014B0 809F7870 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 014B4 809F7874 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 014B8 809F7878 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 014BC 809F787C 0C00B61A */  jal     func_8002D868              
/* 014C0 809F7880 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 014C4 809F7884 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014C8 809F7888 0C27DA2C */  jal     func_809F68B0              
/* 014CC 809F788C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 014D0 809F7890 50400007 */  beql    $v0, $zero, .L809F78B0     
/* 014D4 809F7894 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 014D8 809F7898 0C27DAB1 */  jal     func_809F6AC4              
/* 014DC 809F789C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014E0 809F78A0 3C0E809F */  lui     $t6, %hi(func_809F78EC)    ## $t6 = 809F0000
/* 014E4 809F78A4 25CE78EC */  addiu   $t6, $t6, %lo(func_809F78EC) ## $t6 = 809F78EC
/* 014E8 809F78A8 AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
/* 014EC 809F78AC 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
.L809F78B0:
/* 014F0 809F78B0 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 014F4 809F78B4 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 014F8 809F78B8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 014FC 809F78BC 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01500 809F78C0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01504 809F78C4 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 01508 809F78C8 861800B4 */  lh      $t8, 0x00B4($s0)           ## 000000B4
/* 0150C 809F78CC 861901FE */  lh      $t9, 0x01FE($s0)           ## 000001FE
/* 01510 809F78D0 A6180030 */  sh      $t8, 0x0030($s0)           ## 00000030
/* 01514 809F78D4 A2190114 */  sb      $t9, 0x0114($s0)           ## 00000114
/* 01518 809F78D8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0151C 809F78DC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01520 809F78E0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01524 809F78E4 03E00008 */  jr      $ra                        
/* 01528 809F78E8 00000000 */  nop
