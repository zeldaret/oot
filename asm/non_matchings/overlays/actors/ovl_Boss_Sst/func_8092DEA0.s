glabel func_8092DEA0
/* 018D0 8092DEA0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 018D4 8092DEA4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 018D8 8092DEA8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 018DC 8092DEAC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 018E0 8092DEB0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 018E4 8092DEB4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 018E8 8092DEB8 3C048094 */  lui     $a0, %hi(D_80938C98)       ## $a0 = 80940000
/* 018EC 8092DEBC 24848C98 */  addiu   $a0, $a0, %lo(D_80938C98)  ## $a0 = 80938C98
/* 018F0 8092DEC0 8C820000 */  lw      $v0, 0x0000($a0)           ## 80938C98
/* 018F4 8092DEC4 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 018F8 8092DEC8 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 018FC 8092DECC 804F0195 */  lb      $t7, 0x0195($v0)           ## 00000195
/* 01900 8092DED0 24070800 */  addiu   $a3, $zero, 0x0800         ## $a3 = 00000800
/* 01904 8092DED4 240A0400 */  addiu   $t2, $zero, 0x0400         ## $t2 = 00000400
/* 01908 8092DED8 11E00011 */  beq     $t7, $zero, .L8092DF20     
/* 0190C 8092DEDC 01C04025 */  or      $t0, $t6, $zero            ## $t0 = 00000000
/* 01910 8092DEE0 8C580190 */  lw      $t8, 0x0190($v0)           ## 00000190
/* 01914 8092DEE4 3C038093 */  lui     $v1, %hi(func_8093285C)    ## $v1 = 80930000
/* 01918 8092DEE8 2463285C */  addiu   $v1, $v1, %lo(func_8093285C) ## $v1 = 8093285C
/* 0191C 8092DEEC 5478000D */  bnel    $v1, $t8, .L8092DF24       
/* 01920 8092DEF0 8505008A */  lh      $a1, 0x008A($t0)           ## 0000008A
/* 01924 8092DEF4 8C820004 */  lw      $v0, 0x0004($a0)           ## 80938C9C
/* 01928 8092DEF8 80590195 */  lb      $t9, 0x0195($v0)           ## 00000195
/* 0192C 8092DEFC 53200009 */  beql    $t9, $zero, .L8092DF24     
/* 01930 8092DF00 8505008A */  lh      $a1, 0x008A($t0)           ## 0000008A
/* 01934 8092DF04 8C490190 */  lw      $t1, 0x0190($v0)           ## 00000190
/* 01938 8092DF08 54690006 */  bnel    $v1, $t1, .L8092DF24       
/* 0193C 8092DF0C 8505008A */  lh      $a1, 0x008A($t0)           ## 0000008A
/* 01940 8092DF10 0C24B7D0 */  jal     func_8092DF40              
/* 01944 8092DF14 01C02025 */  or      $a0, $t6, $zero            ## $a0 = 00000000
/* 01948 8092DF18 10000006 */  beq     $zero, $zero, .L8092DF34   
/* 0194C 8092DF1C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8092DF20:
/* 01950 8092DF20 8505008A */  lh      $a1, 0x008A($t0)           ## 0000008A
.L8092DF24:
/* 01954 8092DF24 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 01958 8092DF28 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0195C 8092DF2C 250400B6 */  addiu   $a0, $t0, 0x00B6           ## $a0 = 000000B6
/* 01960 8092DF30 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8092DF34:
/* 01964 8092DF34 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01968 8092DF38 03E00008 */  jr      $ra                        
/* 0196C 8092DF3C 00000000 */  nop
