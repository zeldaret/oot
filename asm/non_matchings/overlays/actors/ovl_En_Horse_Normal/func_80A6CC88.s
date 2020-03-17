glabel func_80A6CC88
/* 01A38 80A6CC88 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01A3C 80A6CC8C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01A40 80A6CC90 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01A44 80A6CC94 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 01A48 80A6CC98 AFA60048 */  sw      $a2, 0x0048($sp)           
/* 01A4C 80A6CC9C C4A001B8 */  lwc1    $f0, 0x01B8($a1)           ## 000001B8
/* 01A50 80A6CCA0 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01A54 80A6CCA4 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 01A58 80A6CCA8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01A5C 80A6CCAC 34211D60 */  ori     $at, $at, 0x1D60           ## $at = 00011D60
/* 01A60 80A6CCB0 260601E8 */  addiu   $a2, $s0, 0x01E8           ## $a2 = 000001E8
/* 01A64 80A6CCB4 AFA60034 */  sw      $a2, 0x0034($sp)           
/* 01A68 80A6CCB8 00812021 */  addu    $a0, $a0, $at              
/* 01A6C 80A6CCBC 27A70038 */  addiu   $a3, $sp, 0x0038           ## $a3 = FFFFFFF8
/* 01A70 80A6CCC0 0C029B84 */  jal     func_800A6E10              
/* 01A74 80A6CCC4 E7A0003C */  swc1    $f0, 0x003C($sp)           
/* 01A78 80A6CCC8 8FAE0034 */  lw      $t6, 0x0034($sp)           
/* 01A7C 80A6CCCC C7A0003C */  lwc1    $f0, 0x003C($sp)           
/* 01A80 80A6CCD0 260501F4 */  addiu   $a1, $s0, 0x01F4           ## $a1 = 000001F4
/* 01A84 80A6CCD4 8DD80000 */  lw      $t8, 0x0000($t6)           ## 00000000
/* 01A88 80A6CCD8 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 01A8C 80A6CCDC 44813000 */  mtc1    $at, $f6                   ## $f6 = 120.00
/* 01A90 80A6CCE0 ACB80000 */  sw      $t8, 0x0000($a1)           ## 000001F4
/* 01A94 80A6CCE4 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 00000004
/* 01A98 80A6CCE8 3C0141E0 */  lui     $at, 0x41E0                ## $at = 41E00000
/* 01A9C 80A6CCEC 24040003 */  addiu   $a0, $zero, 0x0003         ## $a0 = 00000003
/* 01AA0 80A6CCF0 ACAF0004 */  sw      $t7, 0x0004($a1)           ## 000001F8
/* 01AA4 80A6CCF4 8DD80008 */  lw      $t8, 0x0008($t6)           ## 00000008
/* 01AA8 80A6CCF8 ACB80008 */  sw      $t8, 0x0008($a1)           ## 000001FC
/* 01AAC 80A6CCFC C60401F8 */  lwc1    $f4, 0x01F8($s0)           ## 000001F8
/* 01AB0 80A6CD00 8E030150 */  lw      $v1, 0x0150($s0)           ## 00000150
/* 01AB4 80A6CD04 46062200 */  add.s   $f8, $f4, $f6              
/* 01AB8 80A6CD08 14600018 */  bne     $v1, $zero, .L80A6CD6C     
/* 01ABC 80A6CD0C E60801F8 */  swc1    $f8, 0x01F8($s0)           ## 000001F8
/* 01AC0 80A6CD10 44815000 */  mtc1    $at, $f10                  ## $f10 = 28.00
/* 01AC4 80A6CD14 00000000 */  nop
/* 01AC8 80A6CD18 4600503C */  c.lt.s  $f10, $f0                  
/* 01ACC 80A6CD1C 00000000 */  nop
/* 01AD0 80A6CD20 45000012 */  bc1f    .L80A6CD6C                 
/* 01AD4 80A6CD24 00000000 */  nop
/* 01AD8 80A6CD28 960201E4 */  lhu     $v0, 0x01E4($s0)           ## 000001E4
/* 01ADC 80A6CD2C 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 01AE0 80A6CD30 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 01AE4 80A6CD34 30590008 */  andi    $t9, $v0, 0x0008           ## $t9 = 00000000
/* 01AE8 80A6CD38 1720000C */  bne     $t9, $zero, .L80A6CD6C     
/* 01AEC 80A6CD3C 34480008 */  ori     $t0, $v0, 0x0008           ## $t0 = 00000008
/* 01AF0 80A6CD40 A60801E4 */  sh      $t0, 0x01E4($s0)           ## 000001E4
/* 01AF4 80A6CD44 3C098013 */  lui     $t1, 0x8013                ## $t1 = 80130000
/* 01AF8 80A6CD48 252933E8 */  addiu   $t1, $t1, 0x33E8           ## $t1 = 801333E8
/* 01AFC 80A6CD4C AFA90014 */  sw      $t1, 0x0014($sp)           
/* 01B00 80A6CD50 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 01B04 80A6CD54 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 01B08 80A6CD58 2404282C */  addiu   $a0, $zero, 0x282C         ## $a0 = 0000282C
/* 01B0C 80A6CD5C 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 01B10 80A6CD60 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01B14 80A6CD64 1000003D */  beq     $zero, $zero, .L80A6CE5C   
/* 01B18 80A6CD68 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A6CD6C:
/* 01B1C 80A6CD6C 14830018 */  bne     $a0, $v1, .L80A6CDD0       
/* 01B20 80A6CD70 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 01B24 80A6CD74 44818000 */  mtc1    $at, $f16                  ## $f16 = 25.00
/* 01B28 80A6CD78 00000000 */  nop
/* 01B2C 80A6CD7C 4600803C */  c.lt.s  $f16, $f0                  
/* 01B30 80A6CD80 00000000 */  nop
/* 01B34 80A6CD84 45000012 */  bc1f    .L80A6CDD0                 
/* 01B38 80A6CD88 00000000 */  nop
/* 01B3C 80A6CD8C 960201E4 */  lhu     $v0, 0x01E4($s0)           ## 000001E4
/* 01B40 80A6CD90 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 01B44 80A6CD94 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 01B48 80A6CD98 304A0010 */  andi    $t2, $v0, 0x0010           ## $t2 = 00000000
/* 01B4C 80A6CD9C 1540000C */  bne     $t2, $zero, .L80A6CDD0     
/* 01B50 80A6CDA0 344B0010 */  ori     $t3, $v0, 0x0010           ## $t3 = 00000010
/* 01B54 80A6CDA4 A60B01E4 */  sh      $t3, 0x01E4($s0)           ## 000001E4
/* 01B58 80A6CDA8 3C0C8013 */  lui     $t4, 0x8013                ## $t4 = 80130000
/* 01B5C 80A6CDAC 258C33E8 */  addiu   $t4, $t4, 0x33E8           ## $t4 = 801333E8
/* 01B60 80A6CDB0 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 01B64 80A6CDB4 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 01B68 80A6CDB8 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 01B6C 80A6CDBC 2404282B */  addiu   $a0, $zero, 0x282B         ## $a0 = 0000282B
/* 01B70 80A6CDC0 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 01B74 80A6CDC4 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01B78 80A6CDC8 10000024 */  beq     $zero, $zero, .L80A6CE5C   
/* 01B7C 80A6CDCC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A6CDD0:
/* 01B80 80A6CDD0 14830011 */  bne     $a0, $v1, .L80A6CE18       
/* 01B84 80A6CDD4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01B88 80A6CDD8 960201E4 */  lhu     $v0, 0x01E4($s0)           ## 000001E4
/* 01B8C 80A6CDDC 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 01B90 80A6CDE0 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 01B94 80A6CDE4 304D0020 */  andi    $t5, $v0, 0x0020           ## $t5 = 00000000
/* 01B98 80A6CDE8 11A0000B */  beq     $t5, $zero, .L80A6CE18     
/* 01B9C 80A6CDEC 304EFFDF */  andi    $t6, $v0, 0xFFDF           ## $t6 = 00000000
/* 01BA0 80A6CDF0 3C0F8013 */  lui     $t7, 0x8013                ## $t7 = 80130000
/* 01BA4 80A6CDF4 A60E01E4 */  sh      $t6, 0x01E4($s0)           ## 000001E4
/* 01BA8 80A6CDF8 25EF33E8 */  addiu   $t7, $t7, 0x33E8           ## $t7 = 801333E8
/* 01BAC 80A6CDFC AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 01BB0 80A6CE00 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 01BB4 80A6CE04 24042805 */  addiu   $a0, $zero, 0x2805         ## $a0 = 00002805
/* 01BB8 80A6CE08 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 01BBC 80A6CE0C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01BC0 80A6CE10 10000012 */  beq     $zero, $zero, .L80A6CE5C   
/* 01BC4 80A6CE14 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A6CE18:
/* 01BC8 80A6CE18 54610010 */  bnel    $v1, $at, .L80A6CE5C       
/* 01BCC 80A6CE1C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01BD0 80A6CE20 960201E4 */  lhu     $v0, 0x01E4($s0)           ## 000001E4
/* 01BD4 80A6CE24 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 01BD8 80A6CE28 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 01BDC 80A6CE2C 30580020 */  andi    $t8, $v0, 0x0020           ## $t8 = 00000000
/* 01BE0 80A6CE30 13000009 */  beq     $t8, $zero, .L80A6CE58     
/* 01BE4 80A6CE34 3059FFDF */  andi    $t9, $v0, 0xFFDF           ## $t9 = 00000000
/* 01BE8 80A6CE38 3C088013 */  lui     $t0, 0x8013                ## $t0 = 80130000
/* 01BEC 80A6CE3C A61901E4 */  sh      $t9, 0x01E4($s0)           ## 000001E4
/* 01BF0 80A6CE40 250833E8 */  addiu   $t0, $t0, 0x33E8           ## $t0 = 801333E8
/* 01BF4 80A6CE44 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 01BF8 80A6CE48 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 01BFC 80A6CE4C 24042816 */  addiu   $a0, $zero, 0x2816         ## $a0 = 00002816
/* 01C00 80A6CE50 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 01C04 80A6CE54 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
.L80A6CE58:
/* 01C08 80A6CE58 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A6CE5C:
/* 01C0C 80A6CE5C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01C10 80A6CE60 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 01C14 80A6CE64 03E00008 */  jr      $ra                        
/* 01C18 80A6CE68 00000000 */  nop


