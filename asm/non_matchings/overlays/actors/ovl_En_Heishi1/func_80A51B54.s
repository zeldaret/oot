glabel func_80A51B54
/* 00884 80A51B54 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00888 80A51B58 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0088C 80A51B5C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00890 80A51B60 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 00894 80A51B64 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00898 80A51B68 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0089C 80A51B6C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 008A0 80A51B70 AFAE002C */  sw      $t6, 0x002C($sp)           
/* 008A4 80A51B74 8FAF002C */  lw      $t7, 0x002C($sp)           
/* 008A8 80A51B78 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 008AC 80A51B7C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 008B0 80A51B80 8E070274 */  lw      $a3, 0x0274($s0)           ## 00000274
/* 008B4 80A51B84 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 008B8 80A51B88 8DE50024 */  lw      $a1, 0x0024($t7)           ## 00000024
/* 008BC 80A51B8C 8FB8002C */  lw      $t8, 0x002C($sp)           
/* 008C0 80A51B90 2604002C */  addiu   $a0, $s0, 0x002C           ## $a0 = 0000002C
/* 008C4 80A51B94 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 008C8 80A51B98 8E070274 */  lw      $a3, 0x0274($s0)           ## 00000274
/* 008CC 80A51B9C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 008D0 80A51BA0 8F05002C */  lw      $a1, 0x002C($t8)           ## 0000002C
/* 008D4 80A51BA4 3C073ECC */  lui     $a3, 0x3ECC                ## $a3 = 3ECC0000
/* 008D8 80A51BA8 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3ECCCCCD
/* 008DC 80A51BAC 26040274 */  addiu   $a0, $s0, 0x0274           ## $a0 = 00000274
/* 008E0 80A51BB0 3C0540C0 */  lui     $a1, 0x40C0                ## $a1 = 40C00000
/* 008E4 80A51BB4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 008E8 80A51BB8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 008EC 80A51BBC C6040278 */  lwc1    $f4, 0x0278($s0)           ## 00000278
/* 008F0 80A51BC0 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 008F4 80A51BC4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 008F8 80A51BC8 4600218D */  trunc.w.s $f6, $f4                   
/* 008FC 80A51BCC 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00900 80A51BD0 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 00904 80A51BD4 44073000 */  mfc1    $a3, $f6                   
/* 00908 80A51BD8 00000000 */  nop
/* 0090C 80A51BDC 00073C00 */  sll     $a3, $a3, 16               
/* 00910 80A51BE0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00914 80A51BE4 00073C03 */  sra     $a3, $a3, 16               
/* 00918 80A51BE8 3C05453B */  lui     $a1, 0x453B                ## $a1 = 453B0000
/* 0091C 80A51BEC 34A58000 */  ori     $a1, $a1, 0x8000           ## $a1 = 453B8000
/* 00920 80A51BF0 26040278 */  addiu   $a0, $s0, 0x0278           ## $a0 = 00000278
/* 00924 80A51BF4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00928 80A51BF8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0092C 80A51BFC 3C074396 */  lui     $a3, 0x4396                ## $a3 = 43960000
/* 00930 80A51C00 2604027C */  addiu   $a0, $s0, 0x027C           ## $a0 = 0000027C
/* 00934 80A51C04 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 00938 80A51C08 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 0093C 80A51C0C 3C0644FA */  lui     $a2, 0x44FA                ## $a2 = 44FA0000
/* 00940 80A51C10 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 00944 80A51C14 44815000 */  mtc1    $at, $f10                  ## $f10 = 70.00
/* 00948 80A51C18 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 0094C 80A51C1C 3C0880A5 */  lui     $t0, %hi(func_80A51F50)    ## $t0 = 80A50000
/* 00950 80A51C20 25081F50 */  addiu   $t0, $t0, %lo(func_80A51F50) ## $t0 = 80A51F50
/* 00954 80A51C24 460A403C */  c.lt.s  $f8, $f10                  
/* 00958 80A51C28 00000000 */  nop
/* 0095C 80A51C2C 45020003 */  bc1fl   .L80A51C3C                 
/* 00960 80A51C30 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00964 80A51C34 AE08025C */  sw      $t0, 0x025C($s0)           ## 0000025C
/* 00968 80A51C38 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A51C3C:
/* 0096C 80A51C3C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00970 80A51C40 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00974 80A51C44 03E00008 */  jr      $ra                        
/* 00978 80A51C48 00000000 */  nop


