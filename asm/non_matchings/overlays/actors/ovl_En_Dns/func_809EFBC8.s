glabel func_809EFBC8
/* 00878 809EFBC8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0087C 809EFBCC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00880 809EFBD0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00884 809EFBD4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00888 809EFBD8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0088C 809EFBDC 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00890 809EFBE0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00894 809EFBE4 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 00898 809EFBE8 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 0089C 809EFBEC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 008A0 809EFBF0 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 008A4 809EFBF4 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 008A8 809EFBF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008AC 809EFBFC A60E0032 */  sh      $t6, 0x0032($s0)           ## 00000032
/* 008B0 809EFC00 0C00BC65 */  jal     func_8002F194              
/* 008B4 809EFC04 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 008B8 809EFC08 10400004 */  beq     $v0, $zero, .L809EFC1C     
/* 008BC 809EFC0C 3C0F809F */  lui     $t7, %hi(func_809EFC9C)    ## $t7 = 809F0000
/* 008C0 809EFC10 25EFFC9C */  addiu   $t7, $t7, %lo(func_809EFC9C) ## $t7 = 809EFC9C
/* 008C4 809EFC14 1000001C */  beq     $zero, $zero, .L809EFC88   
/* 008C8 809EFC18 AE0F0268 */  sw      $t7, 0x0268($s0)           ## 00000268
.L809EFC1C:
/* 008CC 809EFC1C 9218027E */  lbu     $t8, 0x027E($s0)           ## 0000027E
/* 008D0 809EFC20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008D4 809EFC24 33190002 */  andi    $t9, $t8, 0x0002           ## $t9 = 00000000
/* 008D8 809EFC28 57200005 */  bnel    $t9, $zero, .L809EFC40     
/* 008DC 809EFC2C 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
/* 008E0 809EFC30 9208010C */  lbu     $t0, 0x010C($s0)           ## 0000010C
/* 008E4 809EFC34 51000007 */  beql    $t0, $zero, .L809EFC54     
/* 008E8 809EFC38 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 00000004
/* 008EC 809EFC3C 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
.L809EFC40:
/* 008F0 809EFC40 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 008F4 809EFC44 01215025 */  or      $t2, $t1, $at              ## $t2 = 00010000
/* 008F8 809EFC48 10000006 */  beq     $zero, $zero, .L809EFC64   
/* 008FC 809EFC4C AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 00900 809EFC50 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 00000004
.L809EFC54:
/* 00904 809EFC54 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 00908 809EFC58 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 0090C 809EFC5C 01616024 */  and     $t4, $t3, $at              
/* 00910 809EFC60 AE0C0004 */  sw      $t4, 0x0004($s0)           ## 00000004
.L809EFC64:
/* 00914 809EFC64 3C014302 */  lui     $at, 0x4302                ## $at = 43020000
/* 00918 809EFC68 44813000 */  mtc1    $at, $f6                   ## $f6 = 130.00
/* 0091C 809EFC6C C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 00920 809EFC70 4606203C */  c.lt.s  $f4, $f6                   
/* 00924 809EFC74 00000000 */  nop
/* 00928 809EFC78 45020004 */  bc1fl   .L809EFC8C                 
/* 0092C 809EFC7C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00930 809EFC80 0C00BCBD */  jal     func_8002F2F4              
/* 00934 809EFC84 8FA5002C */  lw      $a1, 0x002C($sp)           
.L809EFC88:
/* 00938 809EFC88 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809EFC8C:
/* 0093C 809EFC8C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00940 809EFC90 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00944 809EFC94 03E00008 */  jr      $ra                        
/* 00948 809EFC98 00000000 */  nop


