glabel func_80ADAD54
/* 01DC4 80ADAD54 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01DC8 80ADAD58 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01DCC 80ADAD5C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 01DD0 80ADAD60 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01DD4 80ADAD64 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01DD8 80ADAD68 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 01DDC 80ADAD6C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01DE0 80ADAD70 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01DE4 80ADAD74 10400009 */  beq     $v0, $zero, .L80ADAD9C     
/* 01DE8 80ADAD78 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 01DEC 80ADAD7C 3C0E0006 */  lui     $t6, 0x0006                ## $t6 = 00060000
/* 01DF0 80ADAD80 35CE0001 */  ori     $t6, $t6, 0x0001           ## $t6 = 00060001
/* 01DF4 80ADAD84 A0A00231 */  sb      $zero, 0x0231($a1)         ## 00000231
/* 01DF8 80ADAD88 ACAE02CC */  sw      $t6, 0x02CC($a1)           ## 000002CC
/* 01DFC 80ADAD8C 0C2B64F1 */  jal     func_80AD93C4              
/* 01E00 80ADAD90 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01E04 80ADAD94 10000032 */  beq     $zero, $zero, .L80ADAE60   
/* 01E08 80ADAD98 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADAD9C:
/* 01E0C 80ADAD9C C4A4015C */  lwc1    $f4, 0x015C($a1)           ## 0000015C
/* 01E10 80ADADA0 C4AA0164 */  lwc1    $f10, 0x0164($a1)          ## 00000164
/* 01E14 80ADADA4 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 01E18 80ADADA8 4600218D */  trunc.w.s $f6, $f4                   
/* 01E1C 80ADADAC 44819000 */  mtc1    $at, $f18                  ## $f18 = 255.00
/* 01E20 80ADADB0 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 01E24 80ADADB4 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 01E28 80ADADB8 44023000 */  mfc1    $v0, $f6                   
/* 01E2C 80ADADBC 00000000 */  nop
/* 01E30 80ADADC0 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 01E34 80ADADC4 00000000 */  nop
/* 01E38 80ADADC8 46804020 */  cvt.s.w $f0, $f8                   
/* 01E3C 80ADADCC 460A0401 */  sub.s   $f16, $f0, $f10            
/* 01E40 80ADADD0 46128102 */  mul.s   $f4, $f16, $f18            
/* 01E44 80ADADD4 46002183 */  div.s   $f6, $f4, $f0              
/* 01E48 80ADADD8 4458F800 */  cfc1    $t8, $31
/* 01E4C 80ADADDC 44D9F800 */  ctc1    $t9, $31
/* 01E50 80ADADE0 00000000 */  nop
/* 01E54 80ADADE4 46003224 */  cvt.w.s $f8, $f6                   
/* 01E58 80ADADE8 4459F800 */  cfc1    $t9, $31
/* 01E5C 80ADADEC 00000000 */  nop
/* 01E60 80ADADF0 33390078 */  andi    $t9, $t9, 0x0078           ## $t9 = 00000000
/* 01E64 80ADADF4 53200013 */  beql    $t9, $zero, .L80ADAE44     
/* 01E68 80ADADF8 44194000 */  mfc1    $t9, $f8                   
/* 01E6C 80ADADFC 44814000 */  mtc1    $at, $f8                   ## $f8 = 2147483648.00
/* 01E70 80ADAE00 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 01E74 80ADAE04 46083201 */  sub.s   $f8, $f6, $f8              
/* 01E78 80ADAE08 44D9F800 */  ctc1    $t9, $31
/* 01E7C 80ADAE0C 00000000 */  nop
/* 01E80 80ADAE10 46004224 */  cvt.w.s $f8, $f8                   
/* 01E84 80ADAE14 4459F800 */  cfc1    $t9, $31
/* 01E88 80ADAE18 00000000 */  nop
/* 01E8C 80ADAE1C 33390078 */  andi    $t9, $t9, 0x0078           ## $t9 = 00000000
/* 01E90 80ADAE20 17200005 */  bne     $t9, $zero, .L80ADAE38     
/* 01E94 80ADAE24 00000000 */  nop
/* 01E98 80ADAE28 44194000 */  mfc1    $t9, $f8                   
/* 01E9C 80ADAE2C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01EA0 80ADAE30 10000007 */  beq     $zero, $zero, .L80ADAE50   
/* 01EA4 80ADAE34 0321C825 */  or      $t9, $t9, $at              ## $t9 = 80000000
.L80ADAE38:
/* 01EA8 80ADAE38 10000005 */  beq     $zero, $zero, .L80ADAE50   
/* 01EAC 80ADAE3C 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 01EB0 80ADAE40 44194000 */  mfc1    $t9, $f8                   
.L80ADAE44:
/* 01EB4 80ADAE44 00000000 */  nop
/* 01EB8 80ADAE48 0720FFFB */  bltz    $t9, .L80ADAE38            
/* 01EBC 80ADAE4C 00000000 */  nop
.L80ADAE50:
/* 01EC0 80ADAE50 44D8F800 */  ctc1    $t8, $31
/* 01EC4 80ADAE54 A0B90231 */  sb      $t9, 0x0231($a1)           ## 00000231
/* 01EC8 80ADAE58 00000000 */  nop
/* 01ECC 80ADAE5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADAE60:
/* 01ED0 80ADAE60 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01ED4 80ADAE64 03E00008 */  jr      $ra                        
/* 01ED8 80ADAE68 00000000 */  nop
