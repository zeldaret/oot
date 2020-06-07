glabel func_80ADB9F0
/* 02A60 80ADB9F0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02A64 80ADB9F4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02A68 80ADB9F8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02A6C 80ADB9FC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02A70 80ADBA00 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02A74 80ADBA04 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02A78 80ADBA08 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02A7C 80ADBA0C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02A80 80ADBA10 5040001B */  beql    $v0, $zero, .L80ADBA80     
/* 02A84 80ADBA14 C6080164 */  lwc1    $f8, 0x0164($s0)           ## 00000164
/* 02A88 80ADBA18 920F0194 */  lbu     $t7, 0x0194($s0)           ## 00000194
/* 02A8C 80ADBA1C 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 02A90 80ADBA20 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 02A94 80ADBA24 15E10011 */  bne     $t7, $at, .L80ADBA6C       
/* 02A98 80ADBA28 A20E0231 */  sb      $t6, 0x0231($s0)           ## 00000231
/* 02A9C 80ADBA2C 3C0144F9 */  lui     $at, 0x44F9                ## $at = 44F90000
/* 02AA0 80ADBA30 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 02AA4 80ADBA34 44812000 */  mtc1    $at, $f4                   ## $f4 = 1992.00
/* 02AA8 80ADBA38 92080199 */  lbu     $t0, 0x0199($s0)           ## 00000199
/* 02AAC 80ADBA3C 3C01C4B4 */  lui     $at, 0xC4B4                ## $at = C4B40000
/* 02AB0 80ADBA40 44813000 */  mtc1    $at, $f6                   ## $f6 = -1440.00
/* 02AB4 80ADBA44 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 02AB8 80ADBA48 35090018 */  ori     $t1, $t0, 0x0018           ## $t1 = 00000018
/* 02ABC 80ADBA4C AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 02AC0 80ADBA50 A2090199 */  sb      $t1, 0x0199($s0)           ## 00000199
/* 02AC4 80ADBA54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02AC8 80ADBA58 E6040008 */  swc1    $f4, 0x0008($s0)           ## 00000008
/* 02ACC 80ADBA5C 0C2B64F1 */  jal     func_80AD93C4              
/* 02AD0 80ADBA60 E6060010 */  swc1    $f6, 0x0010($s0)           ## 00000010
/* 02AD4 80ADBA64 1000002F */  beq     $zero, $zero, .L80ADBB24   
/* 02AD8 80ADBA68 920C0194 */  lbu     $t4, 0x0194($s0)           ## 00000194
.L80ADBA6C:
/* 02ADC 80ADBA6C 0C2B67E4 */  jal     func_80AD9F90              
/* 02AE0 80ADBA70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02AE4 80ADBA74 1000002B */  beq     $zero, $zero, .L80ADBB24   
/* 02AE8 80ADBA78 920C0194 */  lbu     $t4, 0x0194($s0)           ## 00000194
/* 02AEC 80ADBA7C C6080164 */  lwc1    $f8, 0x0164($s0)           ## 00000164
.L80ADBA80:
/* 02AF0 80ADBA80 C60A015C */  lwc1    $f10, 0x015C($s0)          ## 0000015C
/* 02AF4 80ADBA84 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 02AF8 80ADBA88 44818000 */  mtc1    $at, $f16                  ## $f16 = 255.00
/* 02AFC 80ADBA8C 460A4003 */  div.s   $f0, $f8, $f10             
/* 02B00 80ADBA90 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 02B04 80ADBA94 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 02B08 80ADBA98 46008482 */  mul.s   $f18, $f16, $f0            
/* 02B0C 80ADBA9C 444AF800 */  cfc1    $t2, $31
/* 02B10 80ADBAA0 44CBF800 */  ctc1    $t3, $31
/* 02B14 80ADBAA4 00000000 */  nop
/* 02B18 80ADBAA8 46009124 */  cvt.w.s $f4, $f18                  
/* 02B1C 80ADBAAC 444BF800 */  cfc1    $t3, $31
/* 02B20 80ADBAB0 00000000 */  nop
/* 02B24 80ADBAB4 316B0078 */  andi    $t3, $t3, 0x0078           ## $t3 = 00000000
/* 02B28 80ADBAB8 51600013 */  beql    $t3, $zero, .L80ADBB08     
/* 02B2C 80ADBABC 440B2000 */  mfc1    $t3, $f4                   
/* 02B30 80ADBAC0 44812000 */  mtc1    $at, $f4                   ## $f4 = 2147483648.00
/* 02B34 80ADBAC4 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 02B38 80ADBAC8 46049101 */  sub.s   $f4, $f18, $f4             
/* 02B3C 80ADBACC 44CBF800 */  ctc1    $t3, $31
/* 02B40 80ADBAD0 00000000 */  nop
/* 02B44 80ADBAD4 46002124 */  cvt.w.s $f4, $f4                   
/* 02B48 80ADBAD8 444BF800 */  cfc1    $t3, $31
/* 02B4C 80ADBADC 00000000 */  nop
/* 02B50 80ADBAE0 316B0078 */  andi    $t3, $t3, 0x0078           ## $t3 = 00000000
/* 02B54 80ADBAE4 15600005 */  bne     $t3, $zero, .L80ADBAFC     
/* 02B58 80ADBAE8 00000000 */  nop
/* 02B5C 80ADBAEC 440B2000 */  mfc1    $t3, $f4                   
/* 02B60 80ADBAF0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02B64 80ADBAF4 10000007 */  beq     $zero, $zero, .L80ADBB14   
/* 02B68 80ADBAF8 01615825 */  or      $t3, $t3, $at              ## $t3 = 80000000
.L80ADBAFC:
/* 02B6C 80ADBAFC 10000005 */  beq     $zero, $zero, .L80ADBB14   
/* 02B70 80ADBB00 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 02B74 80ADBB04 440B2000 */  mfc1    $t3, $f4                   
.L80ADBB08:
/* 02B78 80ADBB08 00000000 */  nop
/* 02B7C 80ADBB0C 0560FFFB */  bltz    $t3, .L80ADBAFC            
/* 02B80 80ADBB10 00000000 */  nop
.L80ADBB14:
/* 02B84 80ADBB14 44CAF800 */  ctc1    $t2, $31
/* 02B88 80ADBB18 A20B0231 */  sb      $t3, 0x0231($s0)           ## 00000231
/* 02B8C 80ADBB1C 00000000 */  nop
/* 02B90 80ADBB20 920C0194 */  lbu     $t4, 0x0194($s0)           ## 00000194
.L80ADBB24:
/* 02B94 80ADBB24 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 02B98 80ADBB28 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02B9C 80ADBB2C 51810008 */  beql    $t4, $at, .L80ADBB50       
/* 02BA0 80ADBB30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02BA4 80ADBB34 0C0295B2 */  jal     func_800A56C8              
/* 02BA8 80ADBB38 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 02BAC 80ADBB3C 10400003 */  beq     $v0, $zero, .L80ADBB4C     
/* 02BB0 80ADBB40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02BB4 80ADBB44 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02BB8 80ADBB48 24053873 */  addiu   $a1, $zero, 0x3873         ## $a1 = 00003873
.L80ADBB4C:
/* 02BBC 80ADBB4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80ADBB50:
/* 02BC0 80ADBB50 0C00B56E */  jal     Actor_SetHeight
              
/* 02BC4 80ADBB54 3C054220 */  lui     $a1, 0x4220                ## $a1 = 42200000
/* 02BC8 80ADBB58 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02BCC 80ADBB5C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02BD0 80ADBB60 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02BD4 80ADBB64 03E00008 */  jr      $ra                        
/* 02BD8 80ADBB68 00000000 */  nop
