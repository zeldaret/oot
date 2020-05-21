.late_rodata
glabel D_80B045F8
 .word 0x3E2AAAAB
glabel D_80B045FC
 .word 0x43360B61
glabel D_80B04600
    .float 9.58738019108e-05

.text
glabel func_80B02F1C
/* 00CAC 80B02F1C 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00CB0 80B02F20 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00CB4 80B02F24 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00CB8 80B02F28 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 00CBC 80B02F2C 84820536 */  lh      $v0, 0x0536($a0)           ## 00000536
/* 00CC0 80B02F30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00CC4 80B02F34 10400045 */  beq     $v0, $zero, .L80B0304C     
/* 00CC8 80B02F38 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 00CCC 80B02F3C 848E05C8 */  lh      $t6, 0x05C8($a0)           ## 000005C8
/* 00CD0 80B02F40 A4980536 */  sh      $t8, 0x0536($a0)           ## 00000536
/* 00CD4 80B02F44 84820536 */  lh      $v0, 0x0536($a0)           ## 00000536
/* 00CD8 80B02F48 25CF0640 */  addiu   $t7, $t6, 0x0640           ## $t7 = 00000640
/* 00CDC 80B02F4C A48F05C8 */  sh      $t7, 0x05C8($a0)           ## 000005C8
/* 00CE0 80B02F50 54400004 */  bnel    $v0, $zero, .L80B02F64     
/* 00CE4 80B02F54 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00CE8 80B02F58 A48005C8 */  sh      $zero, 0x05C8($a0)         ## 000005C8
/* 00CEC 80B02F5C 84820536 */  lh      $v0, 0x0536($a0)           ## 00000536
/* 00CF0 80B02F60 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
.L80B02F64:
/* 00CF4 80B02F64 3C0180B0 */  lui     $at, %hi(D_80B045F8)       ## $at = 80B00000
/* 00CF8 80B02F68 C42845F8 */  lwc1    $f8, %lo(D_80B045F8)($at)  
/* 00CFC 80B02F6C 468021A0 */  cvt.s.w $f6, $f4                   
/* 00D00 80B02F70 860405C8 */  lh      $a0, 0x05C8($s0)           ## 000005C8
/* 00D04 80B02F74 46083502 */  mul.s   $f20, $f6, $f8             
/* 00D08 80B02F78 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00D0C 80B02F7C 00000000 */  nop
/* 00D10 80B02F80 3C0180B0 */  lui     $at, %hi(D_80B045FC)       ## $at = 80B00000
/* 00D14 80B02F84 C42A45FC */  lwc1    $f10, %lo(D_80B045FC)($at) 
/* 00D18 80B02F88 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 00D1C 80B02F8C C6080548 */  lwc1    $f8, 0x0548($s0)           ## 00000548
/* 00D20 80B02F90 460AA402 */  mul.s   $f16, $f20, $f10           
/* 00D24 80B02F94 46083501 */  sub.s   $f20, $f6, $f8             
/* 00D28 80B02F98 46100482 */  mul.s   $f18, $f0, $f16            
/* 00D2C 80B02F9C 4600910D */  trunc.w.s $f4, $f18                  
/* 00D30 80B02FA0 44042000 */  mfc1    $a0, $f4                   
/* 00D34 80B02FA4 00000000 */  nop
/* 00D38 80B02FA8 00042400 */  sll     $a0, $a0, 16               
/* 00D3C 80B02FAC 00042403 */  sra     $a0, $a0, 16               
/* 00D40 80B02FB0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00D44 80B02FB4 A7A40032 */  sh      $a0, 0x0032($sp)           
/* 00D48 80B02FB8 46140282 */  mul.s   $f10, $f0, $f20            
/* 00D4C 80B02FBC 87A40032 */  lh      $a0, 0x0032($sp)           
/* 00D50 80B02FC0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00D54 80B02FC4 E7AA0044 */  swc1    $f10, 0x0044($sp)          
/* 00D58 80B02FC8 46140402 */  mul.s   $f16, $f0, $f20            
/* 00D5C 80B02FCC 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 00D60 80B02FD0 00000000 */  nop
/* 00D64 80B02FD4 E7B2004C */  swc1    $f18, 0x004C($sp)          
/* 00D68 80B02FD8 0C034213 */  jal     Matrix_Push              
/* 00D6C 80B02FDC E7B00048 */  swc1    $f16, 0x0048($sp)          
/* 00D70 80B02FE0 C60C0544 */  lwc1    $f12, 0x0544($s0)          ## 00000544
/* 00D74 80B02FE4 C60E0548 */  lwc1    $f14, 0x0548($s0)          ## 00000548
/* 00D78 80B02FE8 8E06054C */  lw      $a2, 0x054C($s0)           ## 0000054C
/* 00D7C 80B02FEC 0C034261 */  jal     Matrix_Translate              
/* 00D80 80B02FF0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00D84 80B02FF4 86080032 */  lh      $t0, 0x0032($s0)           ## 00000032
/* 00D88 80B02FF8 3C0180B0 */  lui     $at, %hi(D_80B04600)       ## $at = 80B00000
/* 00D8C 80B02FFC C4284600 */  lwc1    $f8, %lo(D_80B04600)($at)  
/* 00D90 80B03000 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 00D94 80B03004 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00D98 80B03008 468021A0 */  cvt.s.w $f6, $f4                   
/* 00D9C 80B0300C 46083302 */  mul.s   $f12, $f6, $f8             
/* 00DA0 80B03010 0C034348 */  jal     Matrix_RotateY              
/* 00DA4 80B03014 00000000 */  nop
/* 00DA8 80B03018 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFF4
/* 00DAC 80B0301C 0C0346BD */  jal     Matrix_MultVec3f              
/* 00DB0 80B03020 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFE8
/* 00DB4 80B03024 0C034221 */  jal     Matrix_Pull              
/* 00DB8 80B03028 00000000 */  nop
/* 00DBC 80B0302C 87A90032 */  lh      $t1, 0x0032($sp)           
/* 00DC0 80B03030 00095040 */  sll     $t2, $t1,  1               
/* 00DC4 80B03034 000A5823 */  subu    $t3, $zero, $t2            
/* 00DC8 80B03038 A60B00B8 */  sh      $t3, 0x00B8($s0)           ## 000000B8
/* 00DCC 80B0303C C7AA0038 */  lwc1    $f10, 0x0038($sp)          
/* 00DD0 80B03040 E60A0024 */  swc1    $f10, 0x0024($s0)          ## 00000024
/* 00DD4 80B03044 C7B00040 */  lwc1    $f16, 0x0040($sp)          
/* 00DD8 80B03048 E610002C */  swc1    $f16, 0x002C($s0)          ## 0000002C
.L80B0304C:
/* 00DDC 80B0304C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00DE0 80B03050 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 00DE4 80B03054 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00DE8 80B03058 03E00008 */  jr      $ra                        
/* 00DEC 80B0305C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
