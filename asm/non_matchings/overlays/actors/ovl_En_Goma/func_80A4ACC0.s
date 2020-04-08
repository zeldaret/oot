glabel func_80A4ACC0
/* 01E00 80A4ACC0 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 01E04 80A4ACC4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01E08 80A4ACC8 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 01E0C 80A4ACCC AFA5004C */  sw      $a1, 0x004C($sp)           
/* 01E10 80A4ACD0 AFA60050 */  sw      $a2, 0x0050($sp)           
/* 01E14 80A4ACD4 AFA70054 */  sw      $a3, 0x0054($sp)           
/* 01E18 80A4ACD8 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 01E1C 80A4ACDC 3C0680A5 */  lui     $a2, %hi(D_80A4B880)       ## $a2 = 80A50000
/* 01E20 80A4ACE0 24C6B880 */  addiu   $a2, $a2, %lo(D_80A4B880)  ## $a2 = 80A4B880
/* 01E24 80A4ACE4 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 01E28 80A4ACE8 240707B8 */  addiu   $a3, $zero, 0x07B8         ## $a3 = 000007B8
/* 01E2C 80A4ACEC 0C031AB1 */  jal     Graph_OpenDisps              
/* 01E30 80A4ACF0 AFA50040 */  sw      $a1, 0x0040($sp)           
/* 01E34 80A4ACF4 8FA80040 */  lw      $t0, 0x0040($sp)           
/* 01E38 80A4ACF8 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 01E3C 80A4ACFC 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 01E40 80A4AD00 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 01E44 80A4AD04 3C06FB00 */  lui     $a2, 0xFB00                ## $a2 = FB000000
/* 01E48 80A4AD08 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 01E4C 80A4AD0C 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 01E50 80A4AD10 AD0F02C0 */  sw      $t7, 0x02C0($t0)           ## 000002C0
/* 01E54 80A4AD14 AC660000 */  sw      $a2, 0x0000($v1)           ## 00000000
/* 01E58 80A4AD18 C48802E0 */  lwc1    $f8, 0x02E0($a0)           ## 000002E0
/* 01E5C 80A4AD1C C48402E8 */  lwc1    $f4, 0x02E8($a0)           ## 000002E8
/* 01E60 80A4AD20 C49002E4 */  lwc1    $f16, 0x02E4($a0)          ## 000002E4
/* 01E64 80A4AD24 4600428D */  trunc.w.s $f10, $f8                  
/* 01E68 80A4AD28 4600218D */  trunc.w.s $f6, $f4                   
/* 01E6C 80A4AD2C 44195000 */  mfc1    $t9, $f10                  
/* 01E70 80A4AD30 4600848D */  trunc.w.s $f18, $f16                 
/* 01E74 80A4AD34 440A3000 */  mfc1    $t2, $f6                   
/* 01E78 80A4AD38 00194E00 */  sll     $t1, $t9, 24               
/* 01E7C 80A4AD3C 440F9000 */  mfc1    $t7, $f18                  
/* 01E80 80A4AD40 314B00FF */  andi    $t3, $t2, 0x00FF           ## $t3 = 00000000
/* 01E84 80A4AD44 000B6200 */  sll     $t4, $t3,  8               
/* 01E88 80A4AD48 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 00000008
/* 01E8C 80A4AD4C 0018CC00 */  sll     $t9, $t8, 16               
/* 01E90 80A4AD50 01895025 */  or      $t2, $t4, $t1              ## $t2 = 00000000
/* 01E94 80A4AD54 01596025 */  or      $t4, $t2, $t9              ## $t4 = 00000000
/* 01E98 80A4AD58 358900FF */  ori     $t1, $t4, 0x00FF           ## $t1 = 000000FF
/* 01E9C 80A4AD5C 14A1000B */  bne     $a1, $at, .L80A4AD8C       
/* 01EA0 80A4AD60 AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
/* 01EA4 80A4AD64 8FA20058 */  lw      $v0, 0x0058($sp)           
/* 01EA8 80A4AD68 848D02BA */  lh      $t5, 0x02BA($a0)           ## 000002BA
/* 01EAC 80A4AD6C 844B0000 */  lh      $t3, 0x0000($v0)           ## 00000000
/* 01EB0 80A4AD70 844F0002 */  lh      $t7, 0x0002($v0)           ## 00000002
/* 01EB4 80A4AD74 016D7021 */  addu    $t6, $t3, $t5              
/* 01EB8 80A4AD78 A44E0000 */  sh      $t6, 0x0000($v0)           ## 00000000
/* 01EBC 80A4AD7C 849802BC */  lh      $t8, 0x02BC($a0)           ## 000002BC
/* 01EC0 80A4AD80 01F85021 */  addu    $t2, $t7, $t8              
/* 01EC4 80A4AD84 1000002A */  beq     $zero, $zero, .L80A4AE30   
/* 01EC8 80A4AD88 A44A0002 */  sh      $t2, 0x0002($v0)           ## 00000002
.L80A4AD8C:
/* 01ECC 80A4AD8C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01ED0 80A4AD90 54A10028 */  bnel    $a1, $at, .L80A4AE34       
/* 01ED4 80A4AD94 8FAA0048 */  lw      $t2, 0x0048($sp)           
/* 01ED8 80A4AD98 849902C2 */  lh      $t9, 0x02C2($a0)           ## 000002C2
/* 01EDC 80A4AD9C 53200025 */  beql    $t9, $zero, .L80A4AE34     
/* 01EE0 80A4ADA0 8FAA0048 */  lw      $t2, 0x0048($sp)           
/* 01EE4 80A4ADA4 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 01EE8 80A4ADA8 246C0008 */  addiu   $t4, $v1, 0x0008           ## $t4 = 00000008
/* 01EEC 80A4ADAC AD0C02C0 */  sw      $t4, 0x02C0($t0)           ## 000002C0
/* 01EF0 80A4ADB0 AC660000 */  sw      $a2, 0x0000($v1)           ## 00000000
/* 01EF4 80A4ADB4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01EF8 80A4ADB8 AFA30028 */  sw      $v1, 0x0028($sp)           
/* 01EFC 80A4ADBC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01F00 80A4ADC0 E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 01F04 80A4ADC4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01F08 80A4ADC8 E7A00024 */  swc1    $f0, 0x0024($sp)           
/* 01F0C 80A4ADCC 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 01F10 80A4ADD0 44811000 */  mtc1    $at, $f2                   ## $f2 = 255.00
/* 01F14 80A4ADD4 C7A80024 */  lwc1    $f8, 0x0024($sp)           
/* 01F18 80A4ADD8 C7B20020 */  lwc1    $f18, 0x0020($sp)          
/* 01F1C 80A4ADDC 46020102 */  mul.s   $f4, $f0, $f2              
/* 01F20 80A4ADE0 4600218D */  trunc.w.s $f6, $f4                   
/* 01F24 80A4ADE4 46024282 */  mul.s   $f10, $f8, $f2             
/* 01F28 80A4ADE8 00000000 */  nop
/* 01F2C 80A4ADEC 46029102 */  mul.s   $f4, $f18, $f2             
/* 01F30 80A4ADF0 440E3000 */  mfc1    $t6, $f6                   
/* 01F34 80A4ADF4 00000000 */  nop
/* 01F38 80A4ADF8 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 01F3C 80A4ADFC 000FC200 */  sll     $t8, $t7,  8               
/* 01F40 80A4AE00 4600540D */  trunc.w.s $f16, $f10                 
/* 01F44 80A4AE04 8FAF0028 */  lw      $t7, 0x0028($sp)           
/* 01F48 80A4AE08 4600218D */  trunc.w.s $f6, $f4                   
/* 01F4C 80A4AE0C 440B8000 */  mfc1    $t3, $f16                  
/* 01F50 80A4AE10 440C3000 */  mfc1    $t4, $f6                   
/* 01F54 80A4AE14 000B6E00 */  sll     $t5, $t3, 24               
/* 01F58 80A4AE18 030D7025 */  or      $t6, $t8, $t5              ## $t6 = 00000000
/* 01F5C 80A4AE1C 318900FF */  andi    $t1, $t4, 0x00FF           ## $t1 = 00000000
/* 01F60 80A4AE20 00095C00 */  sll     $t3, $t1, 16               
/* 01F64 80A4AE24 01CBC025 */  or      $t8, $t6, $t3              ## $t8 = 00000000
/* 01F68 80A4AE28 370D00FF */  ori     $t5, $t8, 0x00FF           ## $t5 = 000000FF
/* 01F6C 80A4AE2C ADED0004 */  sw      $t5, 0x0004($t7)           ## 00000004
.L80A4AE30:
/* 01F70 80A4AE30 8FAA0048 */  lw      $t2, 0x0048($sp)           
.L80A4AE34:
/* 01F74 80A4AE34 3C0680A5 */  lui     $a2, %hi(D_80A4B890)       ## $a2 = 80A50000
/* 01F78 80A4AE38 24C6B890 */  addiu   $a2, $a2, %lo(D_80A4B890)  ## $a2 = 80A4B890
/* 01F7C 80A4AE3C 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 01F80 80A4AE40 240707DB */  addiu   $a3, $zero, 0x07DB         ## $a3 = 000007DB
/* 01F84 80A4AE44 0C031AD5 */  jal     Graph_CloseDisps              
/* 01F88 80A4AE48 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000000
/* 01F8C 80A4AE4C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01F90 80A4AE50 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 01F94 80A4AE54 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 01F98 80A4AE58 03E00008 */  jr      $ra                        
/* 01F9C 80A4AE5C 00000000 */  nop


