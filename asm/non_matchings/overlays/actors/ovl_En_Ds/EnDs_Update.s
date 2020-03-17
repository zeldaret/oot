glabel EnDs_Update
/* 00900 809FD930 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00904 809FD934 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00908 809FD938 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0090C 809FD93C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00910 809FD940 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00914 809FD944 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00918 809FD948 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0091C 809FD94C 50400005 */  beql    $v0, $zero, .L809FD964     
/* 00920 809FD950 8E1901EC */  lw      $t9, 0x01EC($s0)           ## 000001EC
/* 00924 809FD954 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00928 809FD958 00000000 */  nop
/* 0092C 809FD95C E6040164 */  swc1    $f4, 0x0164($s0)           ## 00000164
/* 00930 809FD960 8E1901EC */  lw      $t9, 0x01EC($s0)           ## 000001EC
.L809FD964:
/* 00934 809FD964 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00938 809FD968 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 0093C 809FD96C 0320F809 */  jalr    $ra, $t9                   
/* 00940 809FD970 00000000 */  nop
/* 00944 809FD974 960E01E8 */  lhu     $t6, 0x01E8($s0)           ## 000001E8
/* 00948 809FD978 260401D8 */  addiu   $a0, $s0, 0x01D8           ## $a0 = 000001D8
/* 0094C 809FD97C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00950 809FD980 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00954 809FD984 11E0000E */  beq     $t7, $zero, .L809FD9C0     
/* 00958 809FD988 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 0095C 809FD98C 8E080038 */  lw      $t0, 0x0038($s0)           ## 00000038
/* 00960 809FD990 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00964 809FD994 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00968 809FD998 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 0096C 809FD99C 8E18003C */  lw      $t8, 0x003C($s0)           ## 0000003C
/* 00970 809FD9A0 260601D8 */  addiu   $a2, $s0, 0x01D8           ## $a2 = 000001D8
/* 00974 809FD9A4 260701DE */  addiu   $a3, $s0, 0x01DE           ## $a3 = 000001DE
/* 00978 809FD9A8 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 0097C 809FD9AC 8E080040 */  lw      $t0, 0x0040($s0)           ## 00000040
/* 00980 809FD9B0 0C00E0A4 */  jal     func_80038290              
/* 00984 809FD9B4 AFA80018 */  sw      $t0, 0x0018($sp)           
/* 00988 809FD9B8 1000001B */  beq     $zero, $zero, .L809FDA28   
/* 0098C 809FD9BC 8FBF002C */  lw      $ra, 0x002C($sp)           
.L809FD9C0:
/* 00990 809FD9C0 24090064 */  addiu   $t1, $zero, 0x0064         ## $t1 = 00000064
/* 00994 809FD9C4 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 00998 809FD9C8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0099C 809FD9CC 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 009A0 809FD9D0 240A0064 */  addiu   $t2, $zero, 0x0064         ## $t2 = 00000064
/* 009A4 809FD9D4 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 009A8 809FD9D8 260401DA */  addiu   $a0, $s0, 0x01DA           ## $a0 = 000001DA
/* 009AC 809FD9DC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 009B0 809FD9E0 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 009B4 809FD9E4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 009B8 809FD9E8 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 009BC 809FD9EC 240B0064 */  addiu   $t3, $zero, 0x0064         ## $t3 = 00000064
/* 009C0 809FD9F0 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 009C4 809FD9F4 260401DE */  addiu   $a0, $s0, 0x01DE           ## $a0 = 000001DE
/* 009C8 809FD9F8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 009CC 809FD9FC 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 009D0 809FDA00 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 009D4 809FDA04 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 009D8 809FDA08 240C0064 */  addiu   $t4, $zero, 0x0064         ## $t4 = 00000064
/* 009DC 809FDA0C AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 009E0 809FDA10 260401E0 */  addiu   $a0, $s0, 0x01E0           ## $a0 = 000001E0
/* 009E4 809FDA14 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 009E8 809FDA18 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 009EC 809FDA1C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 009F0 809FDA20 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 009F4 809FDA24 8FBF002C */  lw      $ra, 0x002C($sp)           
.L809FDA28:
/* 009F8 809FDA28 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 009FC 809FDA2C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00A00 809FDA30 03E00008 */  jr      $ra                        
/* 00A04 809FDA34 00000000 */  nop


