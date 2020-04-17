.rdata
glabel D_8089B258
    .asciz "../z_bg_jya_megami.c"
    .balign 4

glabel D_8089B270
    .asciz "../z_bg_jya_megami.c"
    .balign 4

glabel D_8089B288
    .asciz "../z_bg_jya_megami.c"
    .balign 4

.late_rodata
glabel D_8089B2BC
    .float 9.58738019108e-05

glabel D_8089B2C0
    .float 0.1

.text
glabel func_8089AD48
/* 00C18 8089AD48 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 00C1C 8089AD4C AFB60048 */  sw      $s6, 0x0048($sp)           
/* 00C20 8089AD50 00A0B025 */  or      $s6, $a1, $zero            ## $s6 = 00000000
/* 00C24 8089AD54 AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 00C28 8089AD58 AFBE0050 */  sw      $s8, 0x0050($sp)           
/* 00C2C 8089AD5C AFB7004C */  sw      $s7, 0x004C($sp)           
/* 00C30 8089AD60 AFB50044 */  sw      $s5, 0x0044($sp)           
/* 00C34 8089AD64 AFB40040 */  sw      $s4, 0x0040($sp)           
/* 00C38 8089AD68 AFB3003C */  sw      $s3, 0x003C($sp)           
/* 00C3C 8089AD6C AFB20038 */  sw      $s2, 0x0038($sp)           
/* 00C40 8089AD70 AFB10034 */  sw      $s1, 0x0034($sp)           
/* 00C44 8089AD74 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00C48 8089AD78 F7B80028 */  sdc1    $f24, 0x0028($sp)          
/* 00C4C 8089AD7C F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 00C50 8089AD80 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 00C54 8089AD84 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00C58 8089AD88 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00C5C 8089AD8C 3C06808A */  lui     $a2, %hi(D_8089B258)       ## $a2 = 808A0000
/* 00C60 8089AD90 24C6B258 */  addiu   $a2, $a2, %lo(D_8089B258)  ## $a2 = 8089B258
/* 00C64 8089AD94 27A40078 */  addiu   $a0, $sp, 0x0078           ## $a0 = FFFFFFE0
/* 00C68 8089AD98 240702EA */  addiu   $a3, $zero, 0x02EA         ## $a3 = 000002EA
/* 00C6C 8089AD9C 0C031AB1 */  jal     Graph_OpenDisps              
/* 00C70 8089ADA0 00A0A825 */  or      $s5, $a1, $zero            ## $s5 = 00000000
/* 00C74 8089ADA4 0C024F46 */  jal     func_80093D18              
/* 00C78 8089ADA8 8EC40000 */  lw      $a0, 0x0000($s6)           ## 00000000
/* 00C7C 8089ADAC 3C01808A */  lui     $at, %hi(D_8089B2BC)       ## $at = 808A0000
/* 00C80 8089ADB0 C438B2BC */  lwc1    $f24, %lo(D_8089B2BC)($at) 
/* 00C84 8089ADB4 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00C88 8089ADB8 4481B000 */  mtc1    $at, $f22                  ## $f22 = -10.00
/* 00C8C 8089ADBC 3C01808A */  lui     $at, %hi(D_8089B2C0)       ## $at = 808A0000
/* 00C90 8089ADC0 3C10808A */  lui     $s0, %hi(D_8089B014)       ## $s0 = 808A0000
/* 00C94 8089ADC4 3C14808A */  lui     $s4, %hi(D_8089B1D4)       ## $s4 = 808A0000
/* 00C98 8089ADC8 3C1E808A */  lui     $s8, %hi(D_8089B270)       ## $s8 = 808A0000
/* 00C9C 8089ADCC 3C17DA38 */  lui     $s7, 0xDA38                ## $s7 = DA380000
/* 00CA0 8089ADD0 36F70003 */  ori     $s7, $s7, 0x0003           ## $s7 = DA380003
/* 00CA4 8089ADD4 27DEB270 */  addiu   $s8, $s8, %lo(D_8089B270)  ## $s8 = 8089B270
/* 00CA8 8089ADD8 2694B1D4 */  addiu   $s4, $s4, %lo(D_8089B1D4)  ## $s4 = 8089B1D4
/* 00CAC 8089ADDC 2610B014 */  addiu   $s0, $s0, %lo(D_8089B014)  ## $s0 = 8089B014
/* 00CB0 8089ADE0 C434B2C0 */  lwc1    $f20, %lo(D_8089B2C0)($at) 
/* 00CB4 8089ADE4 02209025 */  or      $s2, $s1, $zero            ## $s2 = 00000000
/* 00CB8 8089ADE8 263301D0 */  addiu   $s3, $s1, 0x01D0           ## $s3 = 000001D0
.L8089ADEC:
/* 00CBC 8089ADEC C6040000 */  lwc1    $f4, 0x0000($s0)           ## 8089B014
/* 00CC0 8089ADF0 C64601D0 */  lwc1    $f6, 0x01D0($s2)           ## 000001D0
/* 00CC4 8089ADF4 C6100008 */  lwc1    $f16, 0x0008($s0)          ## 8089B01C
/* 00CC8 8089ADF8 C65201D8 */  lwc1    $f18, 0x01D8($s2)          ## 000001D8
/* 00CCC 8089ADFC 46062300 */  add.s   $f12, $f4, $f6             
/* 00CD0 8089AE00 C6080004 */  lwc1    $f8, 0x0004($s0)           ## 8089B018
/* 00CD4 8089AE04 C64A01D4 */  lwc1    $f10, 0x01D4($s2)          ## 000001D4
/* 00CD8 8089AE08 46128100 */  add.s   $f4, $f16, $f18            
/* 00CDC 8089AE0C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00CE0 8089AE10 460A4380 */  add.s   $f14, $f8, $f10            
/* 00CE4 8089AE14 44062000 */  mfc1    $a2, $f4                   
/* 00CE8 8089AE18 0C034261 */  jal     Matrix_Translate              
/* 00CEC 8089AE1C 00000000 */  nop
/* 00CF0 8089AE20 866E001A */  lh      $t6, 0x001A($s3)           ## 000001EA
/* 00CF4 8089AE24 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00CF8 8089AE28 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 00CFC 8089AE2C 00000000 */  nop
/* 00D00 8089AE30 46803220 */  cvt.s.w $f8, $f6                   
/* 00D04 8089AE34 46184302 */  mul.s   $f12, $f8, $f24            
/* 00D08 8089AE38 0C034348 */  jal     Matrix_RotateY              
/* 00D0C 8089AE3C 00000000 */  nop
/* 00D10 8089AE40 866F0018 */  lh      $t7, 0x0018($s3)           ## 000001E8
/* 00D14 8089AE44 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00D18 8089AE48 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 00D1C 8089AE4C 00000000 */  nop
/* 00D20 8089AE50 46805420 */  cvt.s.w $f16, $f10                 
/* 00D24 8089AE54 46188302 */  mul.s   $f12, $f16, $f24           
/* 00D28 8089AE58 0C0342DC */  jal     Matrix_RotateX              
/* 00D2C 8089AE5C 00000000 */  nop
/* 00D30 8089AE60 4406A000 */  mfc1    $a2, $f20                  
/* 00D34 8089AE64 4600A306 */  mov.s   $f12, $f20                 
/* 00D38 8089AE68 4600A386 */  mov.s   $f14, $f20                 
/* 00D3C 8089AE6C 0C0342A3 */  jal     Matrix_Scale              
/* 00D40 8089AE70 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00D44 8089AE74 C6120000 */  lwc1    $f18, 0x0000($s0)          ## 8089B014
/* 00D48 8089AE78 C6040004 */  lwc1    $f4, 0x0004($s0)           ## 8089B018
/* 00D4C 8089AE7C C6060008 */  lwc1    $f6, 0x0008($s0)           ## 8089B01C
/* 00D50 8089AE80 46169302 */  mul.s   $f12, $f18, $f22           
/* 00D54 8089AE84 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00D58 8089AE88 46162382 */  mul.s   $f14, $f4, $f22            
/* 00D5C 8089AE8C 00000000 */  nop
/* 00D60 8089AE90 46163202 */  mul.s   $f8, $f6, $f22             
/* 00D64 8089AE94 44064000 */  mfc1    $a2, $f8                   
/* 00D68 8089AE98 0C034261 */  jal     Matrix_Translate              
/* 00D6C 8089AE9C 00000000 */  nop
/* 00D70 8089AEA0 8EA202C0 */  lw      $v0, 0x02C0($s5)           ## 000002C0
/* 00D74 8089AEA4 03C02825 */  or      $a1, $s8, $zero            ## $a1 = 8089B270
/* 00D78 8089AEA8 2406030A */  addiu   $a2, $zero, 0x030A         ## $a2 = 0000030A
/* 00D7C 8089AEAC 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00D80 8089AEB0 AEB802C0 */  sw      $t8, 0x02C0($s5)           ## 000002C0
/* 00D84 8089AEB4 AC570000 */  sw      $s7, 0x0000($v0)           ## 00000000
/* 00D88 8089AEB8 8EC40000 */  lw      $a0, 0x0000($s6)           ## 00000000
/* 00D8C 8089AEBC 0C0346A2 */  jal     Matrix_NewMtx              
/* 00D90 8089AEC0 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 00D94 8089AEC4 AE220004 */  sw      $v0, 0x0004($s1)           ## 00000004
/* 00D98 8089AEC8 8EA202C0 */  lw      $v0, 0x02C0($s5)           ## 000002C0
/* 00D9C 8089AECC 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 00DA0 8089AED0 3C0A808A */  lui     $t2, %hi(D_8089B208)       ## $t2 = 808A0000
/* 00DA4 8089AED4 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 00DA8 8089AED8 AEB902C0 */  sw      $t9, 0x02C0($s5)           ## 000002C0
/* 00DAC 8089AEDC AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 00DB0 8089AEE0 8E890000 */  lw      $t1, 0x0000($s4)           ## 8089B1D4
/* 00DB4 8089AEE4 254AB208 */  addiu   $t2, $t2, %lo(D_8089B208)  ## $t2 = 8089B208
/* 00DB8 8089AEE8 26940004 */  addiu   $s4, $s4, 0x0004           ## $s4 = 8089B1D8
/* 00DBC 8089AEEC 2652001C */  addiu   $s2, $s2, 0x001C           ## $s2 = 0000001C
/* 00DC0 8089AEF0 2673001C */  addiu   $s3, $s3, 0x001C           ## $s3 = 000001EC
/* 00DC4 8089AEF4 26100018 */  addiu   $s0, $s0, 0x0018           ## $s0 = 8089B02C
/* 00DC8 8089AEF8 168AFFBC */  bne     $s4, $t2, .L8089ADEC       
/* 00DCC 8089AEFC AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 00DD0 8089AF00 3C06808A */  lui     $a2, %hi(D_8089B288)       ## $a2 = 808A0000
/* 00DD4 8089AF04 24C6B288 */  addiu   $a2, $a2, %lo(D_8089B288)  ## $a2 = 8089B288
/* 00DD8 8089AF08 27A40078 */  addiu   $a0, $sp, 0x0078           ## $a0 = FFFFFFE0
/* 00DDC 8089AF0C 8EC50000 */  lw      $a1, 0x0000($s6)           ## 00000000
/* 00DE0 8089AF10 0C031AD5 */  jal     Graph_CloseDisps              
/* 00DE4 8089AF14 2407030F */  addiu   $a3, $zero, 0x030F         ## $a3 = 0000030F
/* 00DE8 8089AF18 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 00DEC 8089AF1C D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 00DF0 8089AF20 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 00DF4 8089AF24 D7B80028 */  ldc1    $f24, 0x0028($sp)          
/* 00DF8 8089AF28 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00DFC 8089AF2C 8FB10034 */  lw      $s1, 0x0034($sp)           
/* 00E00 8089AF30 8FB20038 */  lw      $s2, 0x0038($sp)           
/* 00E04 8089AF34 8FB3003C */  lw      $s3, 0x003C($sp)           
/* 00E08 8089AF38 8FB40040 */  lw      $s4, 0x0040($sp)           
/* 00E0C 8089AF3C 8FB50044 */  lw      $s5, 0x0044($sp)           
/* 00E10 8089AF40 8FB60048 */  lw      $s6, 0x0048($sp)           
/* 00E14 8089AF44 8FB7004C */  lw      $s7, 0x004C($sp)           
/* 00E18 8089AF48 8FBE0050 */  lw      $s8, 0x0050($sp)           
/* 00E1C 8089AF4C 03E00008 */  jr      $ra                        
/* 00E20 8089AF50 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000
