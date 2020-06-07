glabel func_809F0100
/* 00DB0 809F0100 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00DB4 809F0104 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00DB8 809F0108 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00DBC 809F010C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00DC0 809F0110 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00DC4 809F0114 24844404 */  addiu   $a0, $a0, 0x4404           ## $a0 = 06004404
/* 00DC8 809F0118 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00DCC 809F011C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00DD0 809F0120 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00DD4 809F0124 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00DD8 809F0128 24053987 */  addiu   $a1, $zero, 0x3987         ## $a1 = 00003987
/* 00DDC 809F012C 468021A0 */  cvt.s.w $f6, $f4                   
/* 00DE0 809F0130 C4C80164 */  lwc1    $f8, 0x0164($a2)           ## 00000164
/* 00DE4 809F0134 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00DE8 809F0138 46083032 */  c.eq.s  $f6, $f8                   
/* 00DEC 809F013C 00000000 */  nop
/* 00DF0 809F0140 4502000B */  bc1fl   .L809F0170                 
/* 00DF4 809F0144 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00DF8 809F0148 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00DFC 809F014C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00E00 809F0150 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00E04 809F0154 3C0E809F */  lui     $t6, %hi(func_809F017C)    ## $t6 = 809F0000
/* 00E08 809F0158 25CE017C */  addiu   $t6, $t6, %lo(func_809F017C) ## $t6 = 809F017C
/* 00E0C 809F015C C4CA0028 */  lwc1    $f10, 0x0028($a2)          ## 00000028
/* 00E10 809F0160 ACCE0268 */  sw      $t6, 0x0268($a2)           ## 00000268
/* 00E14 809F0164 A0C002BC */  sb      $zero, 0x02BC($a2)         ## 000002BC
/* 00E18 809F0168 E4CA02C4 */  swc1    $f10, 0x02C4($a2)          ## 000002C4
/* 00E1C 809F016C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809F0170:
/* 00E20 809F0170 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E24 809F0174 03E00008 */  jr      $ra                        
/* 00E28 809F0178 00000000 */  nop
