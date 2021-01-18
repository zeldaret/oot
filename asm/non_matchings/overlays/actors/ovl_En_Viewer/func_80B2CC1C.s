.late_rodata
glabel D_80B2D1C4
 .word 0xC61C4000
glabel D_80B2D1C8
    .float 3.14159274101

.text
glabel func_80B2CC1C
/* 02A1C 80B2CC1C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 02A20 80B2CC20 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02A24 80B2CC24 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 02A28 80B2CC28 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 02A2C 80B2CC2C AFA40040 */  sw      $a0, 0x0040($sp)           
/* 02A30 80B2CC30 84AE001C */  lh      $t6, 0x001C($a1)           ## 0000001C
/* 02A34 80B2CC34 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 02A38 80B2CC38 3C118016 */  lui     $s1, %hi(gGameInfo)
/* 02A3C 80B2CC3C 000E7A03 */  sra     $t7, $t6,  8               
/* 02A40 80B2CC40 15E10099 */  bne     $t7, $at, .L80B2CEA8       
/* 02A44 80B2CC44 2631FA90 */  addiu   $s1, %lo(gGameInfo)
/* 02A48 80B2CC48 8E380000 */  lw      $t8, 0x0000($s1)           ## 8015FA90
/* 02A4C 80B2CC4C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 02A50 80B2CC50 44811000 */  mtc1    $at, $f2                   ## $f2 = 10.00
/* 02A54 80B2CC54 87191340 */  lh      $t9, 0x1340($t8)           ## 00001340
/* 02A58 80B2CC58 3C1080B3 */  lui     $s0, %hi(sGanonCape)       ## $s0 = 80B30000
/* 02A5C 80B2CC5C 2610D440 */  addiu   $s0, $s0, %lo(sGanonCape)  ## $s0 = 80B2D440
/* 02A60 80B2CC60 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 02A64 80B2CC64 8E080000 */  lw      $t0, 0x0000($s0)           ## 80B2D440
/* 02A68 80B2CC68 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 02A6C 80B2CC6C 468021A0 */  cvt.s.w $f6, $f4                   
/* 02A70 80B2CC70 44819000 */  mtc1    $at, $f18                  ## $f18 = 100.00
/* 02A74 80B2CC74 3C0180B3 */  lui     $at, %hi(D_80B2D1C4)       ## $at = 80B30000
/* 02A78 80B2CC78 3C0480B3 */  lui     $a0, %hi(D_80B2CFEC)       ## $a0 = 80B30000
/* 02A7C 80B2CC7C 46023203 */  div.s   $f8, $f6, $f2              
/* 02A80 80B2CC80 E50816B0 */  swc1    $f8, 0x16B0($t0)           ## 000016B0
/* 02A84 80B2CC84 8E290000 */  lw      $t1, 0x0000($s1)           ## 8015FA90
/* 02A88 80B2CC88 8E0C0000 */  lw      $t4, 0x0000($s0)           ## 80B2D440
/* 02A8C 80B2CC8C 852A134C */  lh      $t2, 0x134C($t1)           ## 0000134C
/* 02A90 80B2CC90 254B0019 */  addiu   $t3, $t2, 0x0019           ## $t3 = 00000019
/* 02A94 80B2CC94 448B5000 */  mtc1    $t3, $f10                  ## $f10 = 0.00
/* 02A98 80B2CC98 00000000 */  nop
/* 02A9C 80B2CC9C 46805420 */  cvt.s.w $f16, $f10                 
/* 02AA0 80B2CCA0 46128103 */  div.s   $f4, $f16, $f18            
/* 02AA4 80B2CCA4 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 02AA8 80B2CCA8 E58416B4 */  swc1    $f4, 0x16B4($t4)           ## 000016B4
/* 02AAC 80B2CCAC 8E2D0000 */  lw      $t5, 0x0000($s1)           ## 8015FA90
/* 02AB0 80B2CCB0 8E180000 */  lw      $t8, 0x0000($s0)           ## 80B2D440
/* 02AB4 80B2CCB4 85AE1342 */  lh      $t6, 0x1342($t5)           ## 00001342
/* 02AB8 80B2CCB8 25CFFFD3 */  addiu   $t7, $t6, 0xFFD3           ## $t7 = FFFFFFD3
/* 02ABC 80B2CCBC 448F3000 */  mtc1    $t7, $f6                   ## $f6 = NaN
/* 02AC0 80B2CCC0 00000000 */  nop
/* 02AC4 80B2CCC4 46803220 */  cvt.s.w $f8, $f6                   
/* 02AC8 80B2CCC8 46024283 */  div.s   $f10, $f8, $f2             
/* 02ACC 80B2CCCC E70A16B8 */  swc1    $f10, 0x16B8($t8)          ## 000016B8
/* 02AD0 80B2CCD0 8E190000 */  lw      $t9, 0x0000($s0)           ## 80B2D440
/* 02AD4 80B2CCD4 C430D1C4 */  lwc1    $f16, %lo(D_80B2D1C4)($at) 
/* 02AD8 80B2CCD8 3C014150 */  lui     $at, 0x4150                ## $at = 41500000
/* 02ADC 80B2CCDC E73016AC */  swc1    $f16, 0x16AC($t9)          ## 000016AC
/* 02AE0 80B2CCE0 8E080000 */  lw      $t0, 0x0000($s0)           ## 80B2D440
/* 02AE4 80B2CCE4 E51216D0 */  swc1    $f18, 0x16D0($t0)          ## 000016D0
/* 02AE8 80B2CCE8 8E290000 */  lw      $t1, 0x0000($s1)           ## 8015FA90
/* 02AEC 80B2CCEC 8E0C0000 */  lw      $t4, 0x0000($s0)           ## 80B2D440
/* 02AF0 80B2CCF0 44819000 */  mtc1    $at, $f18                  ## $f18 = 13.00
/* 02AF4 80B2CCF4 852A135A */  lh      $t2, 0x135A($t1)           ## 0000135A
/* 02AF8 80B2CCF8 254BFFF6 */  addiu   $t3, $t2, 0xFFF6           ## $t3 = FFFFFFF6
/* 02AFC 80B2CCFC 448B2000 */  mtc1    $t3, $f4                   ## $f4 = NaN
/* 02B00 80B2CD00 00000000 */  nop
/* 02B04 80B2CD04 468021A0 */  cvt.s.w $f6, $f4                   
/* 02B08 80B2CD08 46023203 */  div.s   $f8, $f6, $f2              
/* 02B0C 80B2CD0C E58816C8 */  swc1    $f8, 0x16C8($t4)           ## 000016C8
/* 02B10 80B2CD10 8E2D0000 */  lw      $t5, 0x0000($s1)           ## 8015FA90
/* 02B14 80B2CD14 8484CFEC */  lh      $a0, %lo(D_80B2CFEC)($a0)  
/* 02B18 80B2CD18 85AE09F4 */  lh      $t6, 0x09F4($t5)           ## 000009F4
/* 02B1C 80B2CD1C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 02B20 80B2CD20 448E5000 */  mtc1    $t6, $f10                  ## $f10 = 0.00
/* 02B24 80B2CD24 00000000 */  nop
/* 02B28 80B2CD28 46805420 */  cvt.s.w $f16, $f10                 
/* 02B2C 80B2CD2C 46128101 */  sub.s   $f4, $f16, $f18            
/* 02B30 80B2CD30 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 02B34 80B2CD34 E7A40034 */  swc1    $f4, 0x0034($sp)           
/* 02B38 80B2CD38 8E220000 */  lw      $v0, 0x0000($s1)           ## 8015FA90
/* 02B3C 80B2CD3C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 02B40 80B2CD40 44811000 */  mtc1    $at, $f2                   ## $f2 = 10.00
/* 02B44 80B2CD44 845809FC */  lh      $t8, 0x09FC($v0)           ## 000009FC
/* 02B48 80B2CD48 844F09F6 */  lh      $t7, 0x09F6($v0)           ## 000009F6
/* 02B4C 80B2CD4C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 02B50 80B2CD50 44989000 */  mtc1    $t8, $f18                  ## $f18 = 0.00
/* 02B54 80B2CD54 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 02B58 80B2CD58 44815000 */  mtc1    $at, $f10                  ## $f10 = 3.00
/* 02B5C 80B2CD5C 46809120 */  cvt.s.w $f4, $f18                  
/* 02B60 80B2CD60 3C0880B3 */  lui     $t0, %hi(D_80B2CFEC)       ## $t0 = 80B30000
/* 02B64 80B2CD64 8508CFEC */  lh      $t0, %lo(D_80B2CFEC)($t0)  
/* 02B68 80B2CD68 8FA60044 */  lw      $a2, 0x0044($sp)           
/* 02B6C 80B2CD6C 3C0180B3 */  lui     $at, %hi(D_80B2CFEC)       ## $at = 80B30000
/* 02B70 80B2CD70 46803220 */  cvt.s.w $f8, $f6                   
/* 02B74 80B2CD74 46002182 */  mul.s   $f6, $f4, $f0              
/* 02B78 80B2CD78 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02B7C 80B2CD7C 460A4400 */  add.s   $f16, $f8, $f10            
/* 02B80 80B2CD80 46103200 */  add.s   $f8, $f6, $f16             
/* 02B84 80B2CD84 E7A80038 */  swc1    $f8, 0x0038($sp)           
/* 02B88 80B2CD88 845909F8 */  lh      $t9, 0x09F8($v0)           ## 000009F8
/* 02B8C 80B2CD8C 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 02B90 80B2CD90 00000000 */  nop
/* 02B94 80B2CD94 468054A0 */  cvt.s.w $f18, $f10                 
/* 02B98 80B2CD98 46029101 */  sub.s   $f4, $f18, $f2             
/* 02B9C 80B2CD9C E7A4003C */  swc1    $f4, 0x003C($sp)           
/* 02BA0 80B2CDA0 844909FA */  lh      $t1, 0x09FA($v0)           ## 000009FA
/* 02BA4 80B2CDA4 00095300 */  sll     $t2, $t1, 12               
/* 02BA8 80B2CDA8 010A5821 */  addu    $t3, $t0, $t2              
/* 02BAC 80B2CDAC 256C2000 */  addiu   $t4, $t3, 0x2000           ## $t4 = 00002000
/* 02BB0 80B2CDB0 A42CCFEC */  sh      $t4, %lo(D_80B2CFEC)($at)  
/* 02BB4 80B2CDB4 84CD00B6 */  lh      $t5, 0x00B6($a2)           ## 000000B6
/* 02BB8 80B2CDB8 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 02BBC 80B2CDBC 44814000 */  mtc1    $at, $f8                   ## $f8 = 32768.00
/* 02BC0 80B2CDC0 448D3000 */  mtc1    $t5, $f6                   ## $f6 = 0.00
/* 02BC4 80B2CDC4 3C0180B3 */  lui     $at, %hi(D_80B2D1C8)       ## $at = 80B30000
/* 02BC8 80B2CDC8 C432D1C8 */  lwc1    $f18, %lo(D_80B2D1C8)($at) 
/* 02BCC 80B2CDCC 46803420 */  cvt.s.w $f16, $f6                  
/* 02BD0 80B2CDD0 46088283 */  div.s   $f10, $f16, $f8            
/* 02BD4 80B2CDD4 46125302 */  mul.s   $f12, $f10, $f18           
/* 02BD8 80B2CDD8 0C034348 */  jal     Matrix_RotateY              
/* 02BDC 80B2CDDC 00000000 */  nop
/* 02BE0 80B2CDE0 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFF4
/* 02BE4 80B2CDE4 0C0346BD */  jal     Matrix_MultVec3f              
/* 02BE8 80B2CDE8 27A50028 */  addiu   $a1, $sp, 0x0028           ## $a1 = FFFFFFE8
/* 02BEC 80B2CDEC 3C0280B3 */  lui     $v0, %hi(D_80B2D448)       ## $v0 = 80B30000
/* 02BF0 80B2CDF0 2442D448 */  addiu   $v0, $v0, %lo(D_80B2D448)  ## $v0 = 80B2D448
/* 02BF4 80B2CDF4 C4440000 */  lwc1    $f4, 0x0000($v0)           ## 80B2D448
/* 02BF8 80B2CDF8 C7A60028 */  lwc1    $f6, 0x0028($sp)           
/* 02BFC 80B2CDFC 8E0E0000 */  lw      $t6, 0x0000($s0)           ## 80B2D440
/* 02C00 80B2CE00 3C014150 */  lui     $at, 0x4150                ## $at = 41500000
/* 02C04 80B2CE04 46062400 */  add.s   $f16, $f4, $f6             
/* 02C08 80B2CE08 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFF4
/* 02C0C 80B2CE0C 27A50028 */  addiu   $a1, $sp, 0x0028           ## $a1 = FFFFFFE8
/* 02C10 80B2CE10 E5D016D4 */  swc1    $f16, 0x16D4($t6)          ## 000016D4
/* 02C14 80B2CE14 C7AA002C */  lwc1    $f10, 0x002C($sp)          
/* 02C18 80B2CE18 C4480004 */  lwc1    $f8, 0x0004($v0)           ## 80B2D44C
/* 02C1C 80B2CE1C 8E0F0000 */  lw      $t7, 0x0000($s0)           ## 80B2D440
/* 02C20 80B2CE20 460A4480 */  add.s   $f18, $f8, $f10            
/* 02C24 80B2CE24 E5F216D8 */  swc1    $f18, 0x16D8($t7)          ## 000016D8
/* 02C28 80B2CE28 C7A60030 */  lwc1    $f6, 0x0030($sp)           
/* 02C2C 80B2CE2C C4440008 */  lwc1    $f4, 0x0008($v0)           ## 80B2D450
/* 02C30 80B2CE30 8E180000 */  lw      $t8, 0x0000($s0)           ## 80B2D440
/* 02C34 80B2CE34 44819000 */  mtc1    $at, $f18                  ## $f18 = 13.00
/* 02C38 80B2CE38 46062400 */  add.s   $f16, $f4, $f6             
/* 02C3C 80B2CE3C E71016DC */  swc1    $f16, 0x16DC($t8)          ## 000016DC
/* 02C40 80B2CE40 8E390000 */  lw      $t9, 0x0000($s1)           ## 8015FA90
/* 02C44 80B2CE44 872909F4 */  lh      $t1, 0x09F4($t9)           ## 000009F4
/* 02C48 80B2CE48 44894000 */  mtc1    $t1, $f8                   ## $f8 = 0.00
/* 02C4C 80B2CE4C 00000000 */  nop
/* 02C50 80B2CE50 468042A0 */  cvt.s.w $f10, $f8                  
/* 02C54 80B2CE54 46125101 */  sub.s   $f4, $f10, $f18            
/* 02C58 80B2CE58 46002187 */  neg.s   $f6, $f4                   
/* 02C5C 80B2CE5C 0C0346BD */  jal     Matrix_MultVec3f              
/* 02C60 80B2CE60 E7A60034 */  swc1    $f6, 0x0034($sp)           
/* 02C64 80B2CE64 3C0280B3 */  lui     $v0, %hi(D_80B2D448)       ## $v0 = 80B30000
/* 02C68 80B2CE68 2442D448 */  addiu   $v0, $v0, %lo(D_80B2D448)  ## $v0 = 80B2D448
/* 02C6C 80B2CE6C C4500000 */  lwc1    $f16, 0x0000($v0)          ## 80B2D448
/* 02C70 80B2CE70 C7A80028 */  lwc1    $f8, 0x0028($sp)           
/* 02C74 80B2CE74 8E080000 */  lw      $t0, 0x0000($s0)           ## 80B2D440
/* 02C78 80B2CE78 46088280 */  add.s   $f10, $f16, $f8            
/* 02C7C 80B2CE7C E50A16E0 */  swc1    $f10, 0x16E0($t0)          ## 000016E0
/* 02C80 80B2CE80 C7A4002C */  lwc1    $f4, 0x002C($sp)           
/* 02C84 80B2CE84 C4520004 */  lwc1    $f18, 0x0004($v0)          ## 80B2D44C
/* 02C88 80B2CE88 8E0A0000 */  lw      $t2, 0x0000($s0)           ## 80B2D440
/* 02C8C 80B2CE8C 46049180 */  add.s   $f6, $f18, $f4             
/* 02C90 80B2CE90 E54616E4 */  swc1    $f6, 0x16E4($t2)           ## 000016E4
/* 02C94 80B2CE94 C7A80030 */  lwc1    $f8, 0x0030($sp)           
/* 02C98 80B2CE98 C4500008 */  lwc1    $f16, 0x0008($v0)          ## 80B2D450
/* 02C9C 80B2CE9C 8E0B0000 */  lw      $t3, 0x0000($s0)           ## 80B2D440
/* 02CA0 80B2CEA0 46088280 */  add.s   $f10, $f16, $f8            
/* 02CA4 80B2CEA4 E56A16E8 */  swc1    $f10, 0x16E8($t3)          ## 000016E8
.L80B2CEA8:
/* 02CA8 80B2CEA8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02CAC 80B2CEAC 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 02CB0 80B2CEB0 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 02CB4 80B2CEB4 03E00008 */  jr      $ra                        
/* 02CB8 80B2CEB8 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 02CBC 80B2CEBC 00000000 */  nop
