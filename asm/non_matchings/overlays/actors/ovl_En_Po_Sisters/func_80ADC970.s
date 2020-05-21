.rdata
glabel D_80ADD810
    .asciz "../z_en_po_sisters.c"
    .balign 4

.late_rodata
glabel D_80ADD8A0
    .float 0.3

glabel D_80ADD8A4
    .float 0.7

.text
glabel func_80ADC970
/* 039E0 80ADC970 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 039E4 80ADC974 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 039E8 80ADC978 8FB00058 */  lw      $s0, 0x0058($sp)           
/* 039EC 80ADC97C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 039F0 80ADC980 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 039F4 80ADC984 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 039F8 80ADC988 AFA60050 */  sw      $a2, 0x0050($sp)           
/* 039FC 80ADC98C AFA70054 */  sw      $a3, 0x0054($sp)           
/* 03A00 80ADC990 8E0F0190 */  lw      $t7, 0x0190($s0)           ## 00000190
/* 03A04 80ADC994 3C0E80AE */  lui     $t6, %hi(func_80ADAFC0)    ## $t6 = 80AE0000
/* 03A08 80ADC998 25CEAFC0 */  addiu   $t6, $t6, %lo(func_80ADAFC0) ## $t6 = 80ADAFC0
/* 03A0C 80ADC99C 55CF0020 */  bnel    $t6, $t7, .L80ADCA20       
/* 03A10 80ADC9A0 8FAE004C */  lw      $t6, 0x004C($sp)           
/* 03A14 80ADC9A4 8618019A */  lh      $t8, 0x019A($s0)           ## 0000019A
/* 03A18 80ADC9A8 2B010008 */  slti    $at, $t8, 0x0008           
/* 03A1C 80ADC9AC 1420001B */  bne     $at, $zero, .L80ADCA1C     
/* 03A20 80ADC9B0 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 03A24 80ADC9B4 14A10019 */  bne     $a1, $at, .L80ADCA1C       
/* 03A28 80ADC9B8 8FA7005C */  lw      $a3, 0x005C($sp)           
/* 03A2C 80ADC9BC 8CE20000 */  lw      $v0, 0x0000($a3)           ## 00000000
/* 03A30 80ADC9C0 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 03A34 80ADC9C4 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 03A38 80ADC9C8 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 03A3C 80ADC9CC ACE80000 */  sw      $t0, 0x0000($a3)           ## 00000000
/* 03A40 80ADC9D0 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 03A44 80ADC9D4 8FAA0048 */  lw      $t2, 0x0048($sp)           
/* 03A48 80ADC9D8 3C0580AE */  lui     $a1, %hi(D_80ADD810)       ## $a1 = 80AE0000
/* 03A4C 80ADC9DC 24A5D810 */  addiu   $a1, $a1, %lo(D_80ADD810)  ## $a1 = 80ADD810
/* 03A50 80ADC9E0 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 03A54 80ADC9E4 24060B3C */  addiu   $a2, $zero, 0x0B3C         ## $a2 = 00000B3C
/* 03A58 80ADC9E8 0C0346A2 */  jal     Matrix_NewMtx              
/* 03A5C 80ADC9EC AFA20038 */  sw      $v0, 0x0038($sp)           
/* 03A60 80ADC9F0 8FA30038 */  lw      $v1, 0x0038($sp)           
/* 03A64 80ADC9F4 8FA7005C */  lw      $a3, 0x005C($sp)           
/* 03A68 80ADC9F8 3C0D0600 */  lui     $t5, 0x0600                ## $t5 = 06000000
/* 03A6C 80ADC9FC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03A70 80ADCA00 8CE20000 */  lw      $v0, 0x0000($a3)           ## 00000000
/* 03A74 80ADCA04 25AD46E0 */  addiu   $t5, $t5, 0x46E0           ## $t5 = 060046E0
/* 03A78 80ADCA08 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 03A7C 80ADCA0C 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 03A80 80ADCA10 ACEB0000 */  sw      $t3, 0x0000($a3)           ## 00000000
/* 03A84 80ADCA14 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 03A88 80ADCA18 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
.L80ADCA1C:
/* 03A8C 80ADCA1C 8FAE004C */  lw      $t6, 0x004C($sp)           
.L80ADCA20:
/* 03A90 80ADCA20 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 03A94 80ADCA24 55C10183 */  bnel    $t6, $at, .L80ADD034       
/* 03A98 80ADCA28 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 03A9C 80ADCA2C 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 03AA0 80ADCA30 3C0F80AE */  lui     $t7, %hi(func_80ADB2B8)    ## $t7 = 80AE0000
/* 03AA4 80ADCA34 25EFB2B8 */  addiu   $t7, $t7, %lo(func_80ADB2B8) ## $t7 = 80ADB2B8
/* 03AA8 80ADCA38 51E2017E */  beql    $t7, $v0, .L80ADD034       
/* 03AAC 80ADCA3C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 03AB0 80ADCA40 92180199 */  lbu     $t8, 0x0199($s0)           ## 00000199
/* 03AB4 80ADCA44 3C0B80AE */  lui     $t3, %hi(func_80ADBD8C)    ## $t3 = 80AE0000
/* 03AB8 80ADCA48 256BBD8C */  addiu   $t3, $t3, %lo(func_80ADBD8C) ## $t3 = 80ADBD8C
/* 03ABC 80ADCA4C 33190020 */  andi    $t9, $t8, 0x0020           ## $t9 = 00000000
/* 03AC0 80ADCA50 1320001A */  beq     $t9, $zero, .L80ADCABC     
/* 03AC4 80ADCA54 00000000 */  nop
/* 03AC8 80ADCA58 92020198 */  lbu     $v0, 0x0198($s0)           ## 00000198
/* 03ACC 80ADCA5C 2442FFFF */  addiu   $v0, $v0, 0xFFFF           ## $v0 = FFFFFFFF
/* 03AD0 80ADCA60 18400010 */  blez    $v0, .L80ADCAA4            
/* 03AD4 80ADCA64 00024080 */  sll     $t0, $v0,  2               
/* 03AD8 80ADCA68 01024023 */  subu    $t0, $t0, $v0              
/* 03ADC 80ADCA6C 00084080 */  sll     $t0, $t0,  2               
/* 03AE0 80ADCA70 02082821 */  addu    $a1, $s0, $t0              
/* 03AE4 80ADCA74 24A30234 */  addiu   $v1, $a1, 0x0234           ## $v1 = 00000234
/* 03AE8 80ADCA78 24A40228 */  addiu   $a0, $a1, 0x0228           ## $a0 = 00000228
.L80ADCA7C:
/* 03AEC 80ADCA7C 8C8A0000 */  lw      $t2, 0x0000($a0)           ## 00000228
/* 03AF0 80ADCA80 2442FFFF */  addiu   $v0, $v0, 0xFFFF           ## $v0 = FFFFFFFE
/* 03AF4 80ADCA84 2463FFF4 */  addiu   $v1, $v1, 0xFFF4           ## $v1 = 00000228
/* 03AF8 80ADCA88 AC6A000C */  sw      $t2, 0x000C($v1)           ## 00000234
/* 03AFC 80ADCA8C 8C890004 */  lw      $t1, 0x0004($a0)           ## 0000022C
/* 03B00 80ADCA90 2484FFF4 */  addiu   $a0, $a0, 0xFFF4           ## $a0 = 0000021C
/* 03B04 80ADCA94 AC690010 */  sw      $t1, 0x0010($v1)           ## 00000238
/* 03B08 80ADCA98 8C8A0014 */  lw      $t2, 0x0014($a0)           ## 00000230
/* 03B0C 80ADCA9C 1C40FFF7 */  bgtz    $v0, .L80ADCA7C            
/* 03B10 80ADCAA0 AC6A0014 */  sw      $t2, 0x0014($v1)           ## 0000023C
.L80ADCAA4:
/* 03B14 80ADCAA4 3C0480AE */  lui     $a0, %hi(D_80ADD7F8)       ## $a0 = 80AE0000
/* 03B18 80ADCAA8 2484D7F8 */  addiu   $a0, $a0, %lo(D_80ADD7F8)  ## $a0 = 80ADD7F8
/* 03B1C 80ADCAAC 0C0346BD */  jal     Matrix_MultVec3f              
/* 03B20 80ADCAB0 26050234 */  addiu   $a1, $s0, 0x0234           ## $a1 = 00000234
/* 03B24 80ADCAB4 10000007 */  beq     $zero, $zero, .L80ADCAD4   
/* 03B28 80ADCAB8 920C0198 */  lbu     $t4, 0x0198($s0)           ## 00000198
.L80ADCABC:
/* 03B2C 80ADCABC 15620004 */  bne     $t3, $v0, .L80ADCAD0       
/* 03B30 80ADCAC0 3C0480AE */  lui     $a0, %hi(D_80ADD7F8)       ## $a0 = 80AE0000
/* 03B34 80ADCAC4 2484D7F8 */  addiu   $a0, $a0, %lo(D_80ADD7F8)  ## $a0 = 80ADD7F8
/* 03B38 80ADCAC8 0C0346BD */  jal     Matrix_MultVec3f              
/* 03B3C 80ADCACC 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
.L80ADCAD0:
/* 03B40 80ADCAD0 920C0198 */  lbu     $t4, 0x0198($s0)           ## 00000198
.L80ADCAD4:
/* 03B44 80ADCAD4 2604029C */  addiu   $a0, $s0, 0x029C           ## $a0 = 0000029C
/* 03B48 80ADCAD8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 03B4C 80ADCADC 1980014B */  blez    $t4, .L80ADD00C            
/* 03B50 80ADCAE0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 03B54 80ADCAE4 920D0194 */  lbu     $t5, 0x0194($s0)           ## 00000194
/* 03B58 80ADCAE8 3C0F80AE */  lui     $t7, %hi(D_80ADD6F0)       ## $t7 = 80AE0000
/* 03B5C 80ADCAEC 25EFD6F0 */  addiu   $t7, $t7, %lo(D_80ADD6F0)  ## $t7 = 80ADD6F0
/* 03B60 80ADCAF0 000D7080 */  sll     $t6, $t5,  2               
/* 03B64 80ADCAF4 01CF1821 */  addu    $v1, $t6, $t7              
/* 03B68 80ADCAF8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 03B6C 80ADCAFC AFA30030 */  sw      $v1, 0x0030($sp)           
/* 03B70 80ADCB00 3C0180AE */  lui     $at, %hi(D_80ADD8A0)       ## $at = 80AE0000
/* 03B74 80ADCB04 C424D8A0 */  lwc1    $f4, %lo(D_80ADD8A0)($at)  
/* 03B78 80ADCB08 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 03B7C 80ADCB0C 3C0180AE */  lui     $at, %hi(D_80ADD8A4)       ## $at = 80AE0000
/* 03B80 80ADCB10 46040182 */  mul.s   $f6, $f0, $f4              
/* 03B84 80ADCB14 C428D8A4 */  lwc1    $f8, %lo(D_80ADD8A4)($at)  
/* 03B88 80ADCB18 3C1880AE */  lui     $t8, %hi(func_80ADB17C)    ## $t8 = 80AE0000
/* 03B8C 80ADCB1C 2718B17C */  addiu   $t8, $t8, %lo(func_80ADB17C) ## $t8 = 80ADB17C
/* 03B90 80ADCB20 8FA30030 */  lw      $v1, 0x0030($sp)           
/* 03B94 80ADCB24 3C1980AE */  lui     $t9, %hi(func_80ADBD38)    ## $t9 = 80AE0000
/* 03B98 80ADCB28 13020007 */  beq     $t8, $v0, .L80ADCB48       
/* 03B9C 80ADCB2C 46083080 */  add.s   $f2, $f6, $f8              
/* 03BA0 80ADCB30 2739BD38 */  addiu   $t9, $t9, %lo(func_80ADBD38) ## $t9 = 80ADBD38
/* 03BA4 80ADCB34 13220004 */  beq     $t9, $v0, .L80ADCB48       
/* 03BA8 80ADCB38 3C0880AE */  lui     $t0, %hi(func_80ADBEE8)    ## $t0 = 80AE0000
/* 03BAC 80ADCB3C 2508BEE8 */  addiu   $t0, $t0, %lo(func_80ADBEE8) ## $t0 = 80ADBEE8
/* 03BB0 80ADCB40 1502009A */  bne     $t0, $v0, .L80ADCDAC       
/* 03BB4 80ADCB44 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
.L80ADCB48:
/* 03BB8 80ADCB48 C60A0234 */  lwc1    $f10, 0x0234($s0)          ## 00000234
/* 03BBC 80ADCB4C 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 03BC0 80ADCB50 44812000 */  mtc1    $at, $f4                   ## $f4 = 15.00
/* 03BC4 80ADCB54 C6120238 */  lwc1    $f18, 0x0238($s0)          ## 00000238
/* 03BC8 80ADCB58 4600540D */  trunc.w.s $f16, $f10                 
/* 03BCC 80ADCB5C C60A023C */  lwc1    $f10, 0x023C($s0)          ## 0000023C
/* 03BD0 80ADCB60 906C0000 */  lbu     $t4, 0x0000($v1)           ## 00000000
/* 03BD4 80ADCB64 46049180 */  add.s   $f6, $f18, $f4             
/* 03BD8 80ADCB68 44058000 */  mfc1    $a1, $f16                  
/* 03BDC 80ADCB6C 448C9000 */  mtc1    $t4, $f18                  ## $f18 = 0.00
/* 03BE0 80ADCB70 4600540D */  trunc.w.s $f16, $f10                 
/* 03BE4 80ADCB74 00052C00 */  sll     $a1, $a1, 16               
/* 03BE8 80ADCB78 00052C03 */  sra     $a1, $a1, 16               
/* 03BEC 80ADCB7C 4600320D */  trunc.w.s $f8, $f6                   
/* 03BF0 80ADCB80 44078000 */  mfc1    $a3, $f16                  
/* 03BF4 80ADCB84 2604029C */  addiu   $a0, $s0, 0x029C           ## $a0 = 0000029C
/* 03BF8 80ADCB88 46809120 */  cvt.s.w $f4, $f18                  
/* 03BFC 80ADCB8C 44064000 */  mfc1    $a2, $f8                   
/* 03C00 80ADCB90 00073C00 */  sll     $a3, $a3, 16               
/* 03C04 80ADCB94 00073C03 */  sra     $a3, $a3, 16               
/* 03C08 80ADCB98 00063400 */  sll     $a2, $a2, 16               
/* 03C0C 80ADCB9C 05810005 */  bgez    $t4, .L80ADCBB4            
/* 03C10 80ADCBA0 00063403 */  sra     $a2, $a2, 16               
/* 03C14 80ADCBA4 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 03C18 80ADCBA8 44813000 */  mtc1    $at, $f6                   ## $f6 = 4294967296.00
/* 03C1C 80ADCBAC 00000000 */  nop
/* 03C20 80ADCBB0 46062100 */  add.s   $f4, $f4, $f6              
.L80ADCBB4:
/* 03C24 80ADCBB4 46022202 */  mul.s   $f8, $f4, $f2              
/* 03C28 80ADCBB8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 03C2C 80ADCBBC 240B00C8 */  addiu   $t3, $zero, 0x00C8         ## $t3 = 000000C8
/* 03C30 80ADCBC0 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 03C34 80ADCBC4 444DF800 */  cfc1    $t5, $31
/* 03C38 80ADCBC8 44CEF800 */  ctc1    $t6, $31
/* 03C3C 80ADCBCC 00000000 */  nop
/* 03C40 80ADCBD0 460042A4 */  cvt.w.s $f10, $f8                  
/* 03C44 80ADCBD4 444EF800 */  cfc1    $t6, $31
/* 03C48 80ADCBD8 00000000 */  nop
/* 03C4C 80ADCBDC 31CE0078 */  andi    $t6, $t6, 0x0078           ## $t6 = 00000000
/* 03C50 80ADCBE0 51C00013 */  beql    $t6, $zero, .L80ADCC30     
/* 03C54 80ADCBE4 440E5000 */  mfc1    $t6, $f10                  
/* 03C58 80ADCBE8 44815000 */  mtc1    $at, $f10                  ## $f10 = 2147483648.00
/* 03C5C 80ADCBEC 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 03C60 80ADCBF0 460A4281 */  sub.s   $f10, $f8, $f10            
/* 03C64 80ADCBF4 44CEF800 */  ctc1    $t6, $31
/* 03C68 80ADCBF8 00000000 */  nop
/* 03C6C 80ADCBFC 460052A4 */  cvt.w.s $f10, $f10                 
/* 03C70 80ADCC00 444EF800 */  cfc1    $t6, $31
/* 03C74 80ADCC04 00000000 */  nop
/* 03C78 80ADCC08 31CE0078 */  andi    $t6, $t6, 0x0078           ## $t6 = 00000000
/* 03C7C 80ADCC0C 15C00005 */  bne     $t6, $zero, .L80ADCC24     
/* 03C80 80ADCC10 00000000 */  nop
/* 03C84 80ADCC14 440E5000 */  mfc1    $t6, $f10                  
/* 03C88 80ADCC18 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 03C8C 80ADCC1C 10000007 */  beq     $zero, $zero, .L80ADCC3C   
/* 03C90 80ADCC20 01C17025 */  or      $t6, $t6, $at              ## $t6 = 80000000
.L80ADCC24:
/* 03C94 80ADCC24 10000005 */  beq     $zero, $zero, .L80ADCC3C   
/* 03C98 80ADCC28 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 03C9C 80ADCC2C 440E5000 */  mfc1    $t6, $f10                  
.L80ADCC30:
/* 03CA0 80ADCC30 00000000 */  nop
/* 03CA4 80ADCC34 05C0FFFB */  bltz    $t6, .L80ADCC24            
/* 03CA8 80ADCC38 00000000 */  nop
.L80ADCC3C:
/* 03CAC 80ADCC3C AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 03CB0 80ADCC40 906F0001 */  lbu     $t7, 0x0001($v1)           ## 00000001
/* 03CB4 80ADCC44 44CDF800 */  ctc1    $t5, $31
/* 03CB8 80ADCC48 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 03CBC 80ADCC4C 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 03CC0 80ADCC50 05E10004 */  bgez    $t7, .L80ADCC64            
/* 03CC4 80ADCC54 468084A0 */  cvt.s.w $f18, $f16                 
/* 03CC8 80ADCC58 44813000 */  mtc1    $at, $f6                   ## $f6 = 4294967296.00
/* 03CCC 80ADCC5C 00000000 */  nop
/* 03CD0 80ADCC60 46069480 */  add.s   $f18, $f18, $f6            
.L80ADCC64:
/* 03CD4 80ADCC64 46029102 */  mul.s   $f4, $f18, $f2             
/* 03CD8 80ADCC68 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 03CDC 80ADCC6C 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 03CE0 80ADCC70 4458F800 */  cfc1    $t8, $31
/* 03CE4 80ADCC74 44D9F800 */  ctc1    $t9, $31
/* 03CE8 80ADCC78 00000000 */  nop
/* 03CEC 80ADCC7C 46002224 */  cvt.w.s $f8, $f4                   
/* 03CF0 80ADCC80 4459F800 */  cfc1    $t9, $31
/* 03CF4 80ADCC84 00000000 */  nop
/* 03CF8 80ADCC88 33390078 */  andi    $t9, $t9, 0x0078           ## $t9 = 00000000
/* 03CFC 80ADCC8C 53200013 */  beql    $t9, $zero, .L80ADCCDC     
/* 03D00 80ADCC90 44194000 */  mfc1    $t9, $f8                   
/* 03D04 80ADCC94 44814000 */  mtc1    $at, $f8                   ## $f8 = 2147483648.00
/* 03D08 80ADCC98 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 03D0C 80ADCC9C 46082201 */  sub.s   $f8, $f4, $f8              
/* 03D10 80ADCCA0 44D9F800 */  ctc1    $t9, $31
/* 03D14 80ADCCA4 00000000 */  nop
/* 03D18 80ADCCA8 46004224 */  cvt.w.s $f8, $f8                   
/* 03D1C 80ADCCAC 4459F800 */  cfc1    $t9, $31
/* 03D20 80ADCCB0 00000000 */  nop
/* 03D24 80ADCCB4 33390078 */  andi    $t9, $t9, 0x0078           ## $t9 = 00000000
/* 03D28 80ADCCB8 17200005 */  bne     $t9, $zero, .L80ADCCD0     
/* 03D2C 80ADCCBC 00000000 */  nop
/* 03D30 80ADCCC0 44194000 */  mfc1    $t9, $f8                   
/* 03D34 80ADCCC4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 03D38 80ADCCC8 10000007 */  beq     $zero, $zero, .L80ADCCE8   
/* 03D3C 80ADCCCC 0321C825 */  or      $t9, $t9, $at              ## $t9 = 80000000
.L80ADCCD0:
/* 03D40 80ADCCD0 10000005 */  beq     $zero, $zero, .L80ADCCE8   
/* 03D44 80ADCCD4 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 03D48 80ADCCD8 44194000 */  mfc1    $t9, $f8                   
.L80ADCCDC:
/* 03D4C 80ADCCDC 00000000 */  nop
/* 03D50 80ADCCE0 0720FFFB */  bltz    $t9, .L80ADCCD0            
/* 03D54 80ADCCE4 00000000 */  nop
.L80ADCCE8:
/* 03D58 80ADCCE8 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 03D5C 80ADCCEC 90680002 */  lbu     $t0, 0x0002($v1)           ## 00000002
/* 03D60 80ADCCF0 44D8F800 */  ctc1    $t8, $31
/* 03D64 80ADCCF4 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 03D68 80ADCCF8 44885000 */  mtc1    $t0, $f10                  ## $f10 = -0.00
/* 03D6C 80ADCCFC 05010004 */  bgez    $t0, .L80ADCD10            
/* 03D70 80ADCD00 46805420 */  cvt.s.w $f16, $f10                 
/* 03D74 80ADCD04 44813000 */  mtc1    $at, $f6                   ## $f6 = 4294967296.00
/* 03D78 80ADCD08 00000000 */  nop
/* 03D7C 80ADCD0C 46068400 */  add.s   $f16, $f16, $f6            
.L80ADCD10:
/* 03D80 80ADCD10 46028482 */  mul.s   $f18, $f16, $f2            
/* 03D84 80ADCD14 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 03D88 80ADCD18 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 03D8C 80ADCD1C 4449F800 */  cfc1    $t1, $31
/* 03D90 80ADCD20 44CAF800 */  ctc1    $t2, $31
/* 03D94 80ADCD24 00000000 */  nop
/* 03D98 80ADCD28 46009124 */  cvt.w.s $f4, $f18                  
/* 03D9C 80ADCD2C 444AF800 */  cfc1    $t2, $31
/* 03DA0 80ADCD30 00000000 */  nop
/* 03DA4 80ADCD34 314A0078 */  andi    $t2, $t2, 0x0078           ## $t2 = 00000000
/* 03DA8 80ADCD38 51400013 */  beql    $t2, $zero, .L80ADCD88     
/* 03DAC 80ADCD3C 440A2000 */  mfc1    $t2, $f4                   
/* 03DB0 80ADCD40 44812000 */  mtc1    $at, $f4                   ## $f4 = 2147483648.00
/* 03DB4 80ADCD44 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 03DB8 80ADCD48 46049101 */  sub.s   $f4, $f18, $f4             
/* 03DBC 80ADCD4C 44CAF800 */  ctc1    $t2, $31
/* 03DC0 80ADCD50 00000000 */  nop
/* 03DC4 80ADCD54 46002124 */  cvt.w.s $f4, $f4                   
/* 03DC8 80ADCD58 444AF800 */  cfc1    $t2, $31
/* 03DCC 80ADCD5C 00000000 */  nop
/* 03DD0 80ADCD60 314A0078 */  andi    $t2, $t2, 0x0078           ## $t2 = 00000000
/* 03DD4 80ADCD64 15400005 */  bne     $t2, $zero, .L80ADCD7C     
/* 03DD8 80ADCD68 00000000 */  nop
/* 03DDC 80ADCD6C 440A2000 */  mfc1    $t2, $f4                   
/* 03DE0 80ADCD70 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 03DE4 80ADCD74 10000007 */  beq     $zero, $zero, .L80ADCD94   
/* 03DE8 80ADCD78 01415025 */  or      $t2, $t2, $at              ## $t2 = 80000000
.L80ADCD7C:
/* 03DEC 80ADCD7C 10000005 */  beq     $zero, $zero, .L80ADCD94   
/* 03DF0 80ADCD80 240AFFFF */  addiu   $t2, $zero, 0xFFFF         ## $t2 = FFFFFFFF
/* 03DF4 80ADCD84 440A2000 */  mfc1    $t2, $f4                   
.L80ADCD88:
/* 03DF8 80ADCD88 00000000 */  nop
/* 03DFC 80ADCD8C 0540FFFB */  bltz    $t2, .L80ADCD7C            
/* 03E00 80ADCD90 00000000 */  nop
.L80ADCD94:
/* 03E04 80ADCD94 44C9F800 */  ctc1    $t1, $31
/* 03E08 80ADCD98 AFAA0018 */  sw      $t2, 0x0018($sp)           
/* 03E0C 80ADCD9C 0C01E763 */  jal     Lights_InitType0PositionalLight
              
/* 03E10 80ADCDA0 AFAB001C */  sw      $t3, 0x001C($sp)           
/* 03E14 80ADCDA4 1000009D */  beq     $zero, $zero, .L80ADD01C   
/* 03E18 80ADCDA8 920F0199 */  lbu     $t7, 0x0199($s0)           ## 00000199
.L80ADCDAC:
/* 03E1C 80ADCDAC C6080234 */  lwc1    $f8, 0x0234($s0)           ## 00000234
/* 03E20 80ADCDB0 C6060238 */  lwc1    $f6, 0x0238($s0)           ## 00000238
/* 03E24 80ADCDB4 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.00
/* 03E28 80ADCDB8 4600428D */  trunc.w.s $f10, $f8                  
/* 03E2C 80ADCDBC C608023C */  lwc1    $f8, 0x023C($s0)           ## 0000023C
/* 03E30 80ADCDC0 906F0000 */  lbu     $t7, 0x0000($v1)           ## 00000000
/* 03E34 80ADCDC4 46103480 */  add.s   $f18, $f6, $f16            
/* 03E38 80ADCDC8 44055000 */  mfc1    $a1, $f10                  
/* 03E3C 80ADCDCC 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 03E40 80ADCDD0 4600428D */  trunc.w.s $f10, $f8                  
/* 03E44 80ADCDD4 00052C00 */  sll     $a1, $a1, 16               
/* 03E48 80ADCDD8 00052C03 */  sra     $a1, $a1, 16               
/* 03E4C 80ADCDDC 4600910D */  trunc.w.s $f4, $f18                  
/* 03E50 80ADCDE0 44075000 */  mfc1    $a3, $f10                  
/* 03E54 80ADCDE4 2604029C */  addiu   $a0, $s0, 0x029C           ## $a0 = 0000029C
/* 03E58 80ADCDE8 46803420 */  cvt.s.w $f16, $f6                  
/* 03E5C 80ADCDEC 44062000 */  mfc1    $a2, $f4                   
/* 03E60 80ADCDF0 00073C00 */  sll     $a3, $a3, 16               
/* 03E64 80ADCDF4 00073C03 */  sra     $a3, $a3, 16               
/* 03E68 80ADCDF8 00063400 */  sll     $a2, $a2, 16               
/* 03E6C 80ADCDFC 05E10005 */  bgez    $t7, .L80ADCE14            
/* 03E70 80ADCE00 00063403 */  sra     $a2, $a2, 16               
/* 03E74 80ADCE04 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 03E78 80ADCE08 44819000 */  mtc1    $at, $f18                  ## $f18 = 4294967296.00
/* 03E7C 80ADCE0C 00000000 */  nop
/* 03E80 80ADCE10 46128400 */  add.s   $f16, $f16, $f18           
.L80ADCE14:
/* 03E84 80ADCE14 46028102 */  mul.s   $f4, $f16, $f2             
/* 03E88 80ADCE18 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 03E8C 80ADCE1C 240E00C8 */  addiu   $t6, $zero, 0x00C8         ## $t6 = 000000C8
/* 03E90 80ADCE20 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 03E94 80ADCE24 4458F800 */  cfc1    $t8, $31
/* 03E98 80ADCE28 44D9F800 */  ctc1    $t9, $31
/* 03E9C 80ADCE2C 00000000 */  nop
/* 03EA0 80ADCE30 46002224 */  cvt.w.s $f8, $f4                   
/* 03EA4 80ADCE34 4459F800 */  cfc1    $t9, $31
/* 03EA8 80ADCE38 00000000 */  nop
/* 03EAC 80ADCE3C 33390078 */  andi    $t9, $t9, 0x0078           ## $t9 = 00000000
/* 03EB0 80ADCE40 53200013 */  beql    $t9, $zero, .L80ADCE90     
/* 03EB4 80ADCE44 44194000 */  mfc1    $t9, $f8                   
/* 03EB8 80ADCE48 44814000 */  mtc1    $at, $f8                   ## $f8 = 2147483648.00
/* 03EBC 80ADCE4C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 03EC0 80ADCE50 46082201 */  sub.s   $f8, $f4, $f8              
/* 03EC4 80ADCE54 44D9F800 */  ctc1    $t9, $31
/* 03EC8 80ADCE58 00000000 */  nop
/* 03ECC 80ADCE5C 46004224 */  cvt.w.s $f8, $f8                   
/* 03ED0 80ADCE60 4459F800 */  cfc1    $t9, $31
/* 03ED4 80ADCE64 00000000 */  nop
/* 03ED8 80ADCE68 33390078 */  andi    $t9, $t9, 0x0078           ## $t9 = 00000000
/* 03EDC 80ADCE6C 17200005 */  bne     $t9, $zero, .L80ADCE84     
/* 03EE0 80ADCE70 00000000 */  nop
/* 03EE4 80ADCE74 44194000 */  mfc1    $t9, $f8                   
/* 03EE8 80ADCE78 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 03EEC 80ADCE7C 10000007 */  beq     $zero, $zero, .L80ADCE9C   
/* 03EF0 80ADCE80 0321C825 */  or      $t9, $t9, $at              ## $t9 = 80000000
.L80ADCE84:
/* 03EF4 80ADCE84 10000005 */  beq     $zero, $zero, .L80ADCE9C   
/* 03EF8 80ADCE88 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 03EFC 80ADCE8C 44194000 */  mfc1    $t9, $f8                   
.L80ADCE90:
/* 03F00 80ADCE90 00000000 */  nop
/* 03F04 80ADCE94 0720FFFB */  bltz    $t9, .L80ADCE84            
/* 03F08 80ADCE98 00000000 */  nop
.L80ADCE9C:
/* 03F0C 80ADCE9C AFB90010 */  sw      $t9, 0x0010($sp)           
/* 03F10 80ADCEA0 90680001 */  lbu     $t0, 0x0001($v1)           ## 00000001
/* 03F14 80ADCEA4 44D8F800 */  ctc1    $t8, $31
/* 03F18 80ADCEA8 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 03F1C 80ADCEAC 44885000 */  mtc1    $t0, $f10                  ## $f10 = 0.00
/* 03F20 80ADCEB0 05010004 */  bgez    $t0, .L80ADCEC4            
/* 03F24 80ADCEB4 468051A0 */  cvt.s.w $f6, $f10                  
/* 03F28 80ADCEB8 44819000 */  mtc1    $at, $f18                  ## $f18 = 4294967296.00
/* 03F2C 80ADCEBC 00000000 */  nop
/* 03F30 80ADCEC0 46123180 */  add.s   $f6, $f6, $f18             
.L80ADCEC4:
/* 03F34 80ADCEC4 46023402 */  mul.s   $f16, $f6, $f2             
/* 03F38 80ADCEC8 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 03F3C 80ADCECC 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 03F40 80ADCED0 4449F800 */  cfc1    $t1, $31
/* 03F44 80ADCED4 44CAF800 */  ctc1    $t2, $31
/* 03F48 80ADCED8 00000000 */  nop
/* 03F4C 80ADCEDC 46008124 */  cvt.w.s $f4, $f16                  
/* 03F50 80ADCEE0 444AF800 */  cfc1    $t2, $31
/* 03F54 80ADCEE4 00000000 */  nop
/* 03F58 80ADCEE8 314A0078 */  andi    $t2, $t2, 0x0078           ## $t2 = 00000000
/* 03F5C 80ADCEEC 51400013 */  beql    $t2, $zero, .L80ADCF3C     
/* 03F60 80ADCEF0 440A2000 */  mfc1    $t2, $f4                   
/* 03F64 80ADCEF4 44812000 */  mtc1    $at, $f4                   ## $f4 = 2147483648.00
/* 03F68 80ADCEF8 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 03F6C 80ADCEFC 46048101 */  sub.s   $f4, $f16, $f4             
/* 03F70 80ADCF00 44CAF800 */  ctc1    $t2, $31
/* 03F74 80ADCF04 00000000 */  nop
/* 03F78 80ADCF08 46002124 */  cvt.w.s $f4, $f4                   
/* 03F7C 80ADCF0C 444AF800 */  cfc1    $t2, $31
/* 03F80 80ADCF10 00000000 */  nop
/* 03F84 80ADCF14 314A0078 */  andi    $t2, $t2, 0x0078           ## $t2 = 00000000
/* 03F88 80ADCF18 15400005 */  bne     $t2, $zero, .L80ADCF30     
/* 03F8C 80ADCF1C 00000000 */  nop
/* 03F90 80ADCF20 440A2000 */  mfc1    $t2, $f4                   
/* 03F94 80ADCF24 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 03F98 80ADCF28 10000007 */  beq     $zero, $zero, .L80ADCF48   
/* 03F9C 80ADCF2C 01415025 */  or      $t2, $t2, $at              ## $t2 = 80000000
.L80ADCF30:
/* 03FA0 80ADCF30 10000005 */  beq     $zero, $zero, .L80ADCF48   
/* 03FA4 80ADCF34 240AFFFF */  addiu   $t2, $zero, 0xFFFF         ## $t2 = FFFFFFFF
/* 03FA8 80ADCF38 440A2000 */  mfc1    $t2, $f4                   
.L80ADCF3C:
/* 03FAC 80ADCF3C 00000000 */  nop
/* 03FB0 80ADCF40 0540FFFB */  bltz    $t2, .L80ADCF30            
/* 03FB4 80ADCF44 00000000 */  nop
.L80ADCF48:
/* 03FB8 80ADCF48 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 03FBC 80ADCF4C 906B0002 */  lbu     $t3, 0x0002($v1)           ## 00000002
/* 03FC0 80ADCF50 44C9F800 */  ctc1    $t1, $31
/* 03FC4 80ADCF54 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 03FC8 80ADCF58 448B4000 */  mtc1    $t3, $f8                   ## $f8 = 0.00
/* 03FCC 80ADCF5C 05610004 */  bgez    $t3, .L80ADCF70            
/* 03FD0 80ADCF60 468042A0 */  cvt.s.w $f10, $f8                  
/* 03FD4 80ADCF64 44819000 */  mtc1    $at, $f18                  ## $f18 = 4294967296.00
/* 03FD8 80ADCF68 00000000 */  nop
/* 03FDC 80ADCF6C 46125280 */  add.s   $f10, $f10, $f18           
.L80ADCF70:
/* 03FE0 80ADCF70 46025182 */  mul.s   $f6, $f10, $f2             
/* 03FE4 80ADCF74 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 03FE8 80ADCF78 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 03FEC 80ADCF7C 444CF800 */  cfc1    $t4, $31
/* 03FF0 80ADCF80 44CDF800 */  ctc1    $t5, $31
/* 03FF4 80ADCF84 00000000 */  nop
/* 03FF8 80ADCF88 46003424 */  cvt.w.s $f16, $f6                  
/* 03FFC 80ADCF8C 444DF800 */  cfc1    $t5, $31
/* 04000 80ADCF90 00000000 */  nop
/* 04004 80ADCF94 31AD0078 */  andi    $t5, $t5, 0x0078           ## $t5 = 00000000
/* 04008 80ADCF98 51A00013 */  beql    $t5, $zero, .L80ADCFE8     
/* 0400C 80ADCF9C 440D8000 */  mfc1    $t5, $f16                  
/* 04010 80ADCFA0 44818000 */  mtc1    $at, $f16                  ## $f16 = 2147483648.00
/* 04014 80ADCFA4 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 04018 80ADCFA8 46103401 */  sub.s   $f16, $f6, $f16            
/* 0401C 80ADCFAC 44CDF800 */  ctc1    $t5, $31
/* 04020 80ADCFB0 00000000 */  nop
/* 04024 80ADCFB4 46008424 */  cvt.w.s $f16, $f16                 
/* 04028 80ADCFB8 444DF800 */  cfc1    $t5, $31
/* 0402C 80ADCFBC 00000000 */  nop
/* 04030 80ADCFC0 31AD0078 */  andi    $t5, $t5, 0x0078           ## $t5 = 00000000
/* 04034 80ADCFC4 15A00005 */  bne     $t5, $zero, .L80ADCFDC     
/* 04038 80ADCFC8 00000000 */  nop
/* 0403C 80ADCFCC 440D8000 */  mfc1    $t5, $f16                  
/* 04040 80ADCFD0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 04044 80ADCFD4 10000007 */  beq     $zero, $zero, .L80ADCFF4   
/* 04048 80ADCFD8 01A16825 */  or      $t5, $t5, $at              ## $t5 = 80000000
.L80ADCFDC:
/* 0404C 80ADCFDC 10000005 */  beq     $zero, $zero, .L80ADCFF4   
/* 04050 80ADCFE0 240DFFFF */  addiu   $t5, $zero, 0xFFFF         ## $t5 = FFFFFFFF
/* 04054 80ADCFE4 440D8000 */  mfc1    $t5, $f16                  
.L80ADCFE8:
/* 04058 80ADCFE8 00000000 */  nop
/* 0405C 80ADCFEC 05A0FFFB */  bltz    $t5, .L80ADCFDC            
/* 04060 80ADCFF0 00000000 */  nop
.L80ADCFF4:
/* 04064 80ADCFF4 44CCF800 */  ctc1    $t4, $31
/* 04068 80ADCFF8 AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 0406C 80ADCFFC 0C01E77C */  jal     Lights_InitType2PositionalLight
              
/* 04070 80ADD000 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 04074 80ADD004 10000005 */  beq     $zero, $zero, .L80ADD01C   
/* 04078 80ADD008 920F0199 */  lbu     $t7, 0x0199($s0)           ## 00000199
.L80ADD00C:
/* 0407C 80ADD00C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 04080 80ADD010 0C01E796 */  jal     Lights_SetPositionalLightColorAndRadius
              
/* 04084 80ADD014 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 04088 80ADD018 920F0199 */  lbu     $t7, 0x0199($s0)           ## 00000199
.L80ADD01C:
/* 0408C 80ADD01C 31F80080 */  andi    $t8, $t7, 0x0080           ## $t8 = 00000000
/* 04090 80ADD020 57000004 */  bnel    $t8, $zero, .L80ADD034     
/* 04094 80ADD024 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 04098 80ADD028 0C034236 */  jal     Matrix_Get              
/* 0409C 80ADD02C 260402F8 */  addiu   $a0, $s0, 0x02F8           ## $a0 = 000002F8
/* 040A0 80ADD030 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80ADD034:
/* 040A4 80ADD034 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 040A8 80ADD038 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 040AC 80ADD03C 03E00008 */  jr      $ra                        
/* 040B0 80ADD040 00000000 */  nop
