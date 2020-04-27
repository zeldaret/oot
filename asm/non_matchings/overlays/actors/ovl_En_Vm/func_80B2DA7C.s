.late_rodata
glabel D_80B2EC10
    .float 0.1

glabel D_80B2EC14
    .float 0.1

.text
glabel func_80B2DA7C
/* 0061C 80B2DA7C 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00620 80B2DA80 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00624 80B2DA84 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00628 80B2DA88 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 0062C 80B2DA8C 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00630 80B2DA90 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00634 80B2DA94 24840224 */  addiu   $a0, $a0, 0x0224           ## $a0 = 00000224
/* 00638 80B2DA98 24450024 */  addiu   $a1, $v0, 0x0024           ## $a1 = 00000024
/* 0063C 80B2DA9C AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00640 80B2DAA0 AFA40034 */  sw      $a0, 0x0034($sp)           
/* 00644 80B2DAA4 0C01E027 */  jal     Math_Vec3f_Pitch
              
/* 00648 80B2DAA8 AFA2004C */  sw      $v0, 0x004C($sp)           
/* 0064C 80B2DAAC 00021C00 */  sll     $v1, $v0, 16               
/* 00650 80B2DAB0 28411B92 */  slti    $at, $v0, 0x1B92           
/* 00654 80B2DAB4 14200002 */  bne     $at, $zero, .L80B2DAC0     
/* 00658 80B2DAB8 00031C03 */  sra     $v1, $v1, 16               
/* 0065C 80B2DABC 24031B91 */  addiu   $v1, $zero, 0x1B91         ## $v1 = 00001B91
.L80B2DAC0:
/* 00660 80B2DAC0 920202C4 */  lbu     $v0, 0x02C4($s0)           ## 000002C4
/* 00664 80B2DAC4 3C0180B3 */  lui     $at, %hi(D_80B2EC10)       ## $at = 80B30000
/* 00668 80B2DAC8 26040248 */  addiu   $a0, $s0, 0x0248           ## $a0 = 00000248
/* 0066C 80B2DACC 304F0002 */  andi    $t7, $v0, 0x0002           ## $t7 = 00000000
/* 00670 80B2DAD0 11E0000C */  beq     $t7, $zero, .L80B2DB04     
/* 00674 80B2DAD4 3058FFFD */  andi    $t8, $v0, 0xFFFD           ## $t8 = 00000000
/* 00678 80B2DAD8 A21802C4 */  sb      $t8, 0x02C4($s0)           ## 000002C4
/* 0067C 80B2DADC AE000220 */  sw      $zero, 0x0220($s0)         ## 00000220
/* 00680 80B2DAE0 C424EC10 */  lwc1    $f4, %lo(D_80B2EC10)($at)  
/* 00684 80B2DAE4 C6060248 */  lwc1    $f6, 0x0248($s0)           ## 00000248
/* 00688 80B2DAE8 3C0180B3 */  lui     $at, %hi(D_80B2EC14)       ## $at = 80B30000
/* 0068C 80B2DAEC 4606203C */  c.lt.s  $f4, $f6                   
/* 00690 80B2DAF0 00000000 */  nop
/* 00694 80B2DAF4 45020004 */  bc1fl   .L80B2DB08                 
/* 00698 80B2DAF8 86190254 */  lh      $t9, 0x0254($s0)           ## 00000254
/* 0069C 80B2DAFC C428EC14 */  lwc1    $f8, %lo(D_80B2EC14)($at)  
/* 006A0 80B2DB00 E6080248 */  swc1    $f8, 0x0248($s0)           ## 00000248
.L80B2DB04:
/* 006A4 80B2DB04 86190254 */  lh      $t9, 0x0254($s0)           ## 00000254
.L80B2DB08:
/* 006A8 80B2DB08 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 006AC 80B2DB0C 2B210AAA */  slti    $at, $t9, 0x0AAA           
/* 006B0 80B2DB10 54200005 */  bnel    $at, $zero, .L80B2DB28     
/* 006B4 80B2DB14 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 006B8 80B2DB18 8E020220 */  lw      $v0, 0x0220($s0)           ## 00000220
/* 006BC 80B2DB1C 14400014 */  bne     $v0, $zero, .L80B2DB70     
/* 006C0 80B2DB20 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 006C4 80B2DB24 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
.L80B2DB28:
/* 006C8 80B2DB28 3C073CF5 */  lui     $a3, 0x3CF5                ## $a3 = 3CF50000
/* 006CC 80B2DB2C 34E7C28F */  ori     $a3, $a3, 0xC28F           ## $a3 = 3CF5C28F
/* 006D0 80B2DB30 44051000 */  mfc1    $a1, $f2                   
/* 006D4 80B2DB34 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 006D8 80B2DB38 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 006DC 80B2DB3C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 006E0 80B2DB40 C60A0248 */  lwc1    $f10, 0x0248($s0)          ## 00000248
/* 006E4 80B2DB44 A6000260 */  sh      $zero, 0x0260($s0)         ## 00000260
/* 006E8 80B2DB48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006EC 80B2DB4C 460A1032 */  c.eq.s  $f2, $f10                  
/* 006F0 80B2DB50 00000000 */  nop
/* 006F4 80B2DB54 45000051 */  bc1f    .L80B2DC9C                 
/* 006F8 80B2DB58 00000000 */  nop
/* 006FC 80B2DB5C E6020250 */  swc1    $f2, 0x0250($s0)           ## 00000250
/* 00700 80B2DB60 0C2CB580 */  jal     func_80B2D600              
/* 00704 80B2DB64 E602024C */  swc1    $f2, 0x024C($s0)           ## 0000024C
/* 00708 80B2DB68 1000004C */  beq     $zero, $zero, .L80B2DC9C   
/* 0070C 80B2DB6C 00000000 */  nop
.L80B2DB70:
/* 00710 80B2DB70 2901012D */  slti    $at, $t0, 0x012D           
/* 00714 80B2DB74 1020004F */  beq     $at, $zero, .L80B2DCB4     
/* 00718 80B2DB78 AE080220 */  sw      $t0, 0x0220($s0)           ## 00000220
/* 0071C 80B2DB7C 860A008A */  lh      $t2, 0x008A($s0)           ## 0000008A
/* 00720 80B2DB80 860B00B6 */  lh      $t3, 0x00B6($s0)           ## 000000B6
/* 00724 80B2DB84 A7A3004A */  sh      $v1, 0x004A($sp)           
/* 00728 80B2DB88 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0072C 80B2DB8C 014B2823 */  subu    $a1, $t2, $t3              
/* 00730 80B2DB90 00052C00 */  sll     $a1, $a1, 16               
/* 00734 80B2DB94 00052C03 */  sra     $a1, $a1, 16               
/* 00738 80B2DB98 2604025C */  addiu   $a0, $s0, 0x025C           ## $a0 = 0000025C
/* 0073C 80B2DB9C 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 00740 80B2DBA0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00744 80B2DBA4 24070DAC */  addiu   $a3, $zero, 0x0DAC         ## $a3 = 00000DAC
/* 00748 80B2DBA8 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 0074C 80B2DBAC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00750 80B2DBB0 26040256 */  addiu   $a0, $s0, 0x0256           ## $a0 = 00000256
/* 00754 80B2DBB4 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 00758 80B2DBB8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0075C 80B2DBBC 24070DAC */  addiu   $a3, $zero, 0x0DAC         ## $a3 = 00000DAC
/* 00760 80B2DBC0 26040254 */  addiu   $a0, $s0, 0x0254           ## $a0 = 00000254
/* 00764 80B2DBC4 87A5004A */  lh      $a1, 0x004A($sp)           
/* 00768 80B2DBC8 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 0076C 80B2DBCC 24070DAC */  addiu   $a3, $zero, 0x0DAC         ## $a3 = 00000DAC
/* 00770 80B2DBD0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00774 80B2DBD4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00778 80B2DBD8 8FAC0030 */  lw      $t4, 0x0030($sp)           
/* 0077C 80B2DBDC 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFE8
/* 00780 80B2DBE0 3C01C6FA */  lui     $at, 0xC6FA                ## $at = C6FA0000
/* 00784 80B2DBE4 8D8E0000 */  lw      $t6, 0x0000($t4)           ## 00000000
/* 00788 80B2DBE8 44818000 */  mtc1    $at, $f16                  ## $f16 = -32000.00
/* 0078C 80B2DBEC ACAE0000 */  sw      $t6, 0x0000($a1)           ## FFFFFFE8
/* 00790 80B2DBF0 8D8D0004 */  lw      $t5, 0x0004($t4)           ## 00000004
/* 00794 80B2DBF4 ACAD0004 */  sw      $t5, 0x0004($a1)           ## FFFFFFEC
/* 00798 80B2DBF8 8D8E0008 */  lw      $t6, 0x0008($t4)           ## 00000008
/* 0079C 80B2DBFC ACAE0008 */  sw      $t6, 0x0008($a1)           ## FFFFFFF0
/* 007A0 80B2DC00 8FAF004C */  lw      $t7, 0x004C($sp)           
/* 007A4 80B2DC04 C5E00080 */  lwc1    $f0, 0x0080($t7)           ## 00000080
/* 007A8 80B2DC08 4600803C */  c.lt.s  $f16, $f0                  
/* 007AC 80B2DC0C 00000000 */  nop
/* 007B0 80B2DC10 45000002 */  bc1f    .L80B2DC1C                 
/* 007B4 80B2DC14 00000000 */  nop
/* 007B8 80B2DC18 E7A0003C */  swc1    $f0, 0x003C($sp)           
.L80B2DC1C:
/* 007BC 80B2DC1C 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 007C0 80B2DC20 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 007C4 80B2DC24 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 007C8 80B2DC28 44050000 */  mfc1    $a1, $f0                   
/* 007CC 80B2DC2C 8E070264 */  lw      $a3, 0x0264($s0)           ## 00000264
/* 007D0 80B2DC30 26040250 */  addiu   $a0, $s0, 0x0250           ## $a0 = 00000250
/* 007D4 80B2DC34 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 007D8 80B2DC38 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 007DC 80B2DC3C E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 007E0 80B2DC40 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 007E4 80B2DC44 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 007E8 80B2DC48 3C073DF5 */  lui     $a3, 0x3DF5                ## $a3 = 3DF50000
/* 007EC 80B2DC4C 34E7C28F */  ori     $a3, $a3, 0xC28F           ## $a3 = 3DF5C28F
/* 007F0 80B2DC50 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 007F4 80B2DC54 26040248 */  addiu   $a0, $s0, 0x0248           ## $a0 = 00000248
/* 007F8 80B2DC58 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 007FC 80B2DC5C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00800 80B2DC60 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 00804 80B2DC64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00808 80B2DC68 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0080C 80B2DC6C 24053171 */  addiu   $a1, $zero, 0x3171         ## $a1 = 00003171
/* 00810 80B2DC70 86180260 */  lh      $t8, 0x0260($s0)           ## 00000260
/* 00814 80B2DC74 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00818 80B2DC78 260602B4 */  addiu   $a2, $s0, 0x02B4           ## $a2 = 000002B4
/* 0081C 80B2DC7C 2B010003 */  slti    $at, $t8, 0x0003           
/* 00820 80B2DC80 14200004 */  bne     $at, $zero, .L80B2DC94     
/* 00824 80B2DC84 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00828 80B2DC88 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 0082C 80B2DC8C 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00830 80B2DC90 00812821 */  addu    $a1, $a0, $at              
.L80B2DC94:
/* 00834 80B2DC94 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
/* 00838 80B2DC98 A6190260 */  sh      $t9, 0x0260($s0)           ## 00000260
.L80B2DC9C:
/* 0083C 80B2DC9C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00840 80B2DCA0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00844 80B2DCA4 50400004 */  beql    $v0, $zero, .L80B2DCB8     
/* 00848 80B2DCA8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0084C 80B2DCAC C6120158 */  lwc1    $f18, 0x0158($s0)          ## 00000158
/* 00850 80B2DCB0 E6120164 */  swc1    $f18, 0x0164($s0)          ## 00000164
.L80B2DCB4:
/* 00854 80B2DCB4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B2DCB8:
/* 00858 80B2DCB8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0085C 80B2DCBC 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00860 80B2DCC0 03E00008 */  jr      $ra                        
/* 00864 80B2DCC4 00000000 */  nop
