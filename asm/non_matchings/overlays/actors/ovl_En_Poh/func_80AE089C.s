.late_rodata
glabel D_80AE1C60
 .word 0x418547AE
glabel D_80AE1C64
 .word 0x41855555

.text
glabel func_80AE089C
/* 02B4C 80AE089C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02B50 80AE08A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02B54 80AE08A4 8C820190 */  lw      $v0, 0x0190($a0)           ## 00000190
/* 02B58 80AE08A8 3C0E80AE */  lui     $t6, %hi(func_80ADEF38)    ## $t6 = 80AE0000
/* 02B5C 80AE08AC 25CEEF38 */  addiu   $t6, $t6, %lo(func_80ADEF38) ## $t6 = 80ADEF38
/* 02B60 80AE08B0 11C20003 */  beq     $t6, $v0, .L80AE08C0       
/* 02B64 80AE08B4 3C0F80AE */  lui     $t7, %hi(func_80ADF0B8)    ## $t7 = 80AE0000
/* 02B68 80AE08B8 25EFF0B8 */  addiu   $t7, $t7, %lo(func_80ADF0B8) ## $t7 = 80ADF0B8
/* 02B6C 80AE08BC 15E20039 */  bne     $t7, $v0, .L80AE09A4       
.L80AE08C0:
/* 02B70 80AE08C0 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 02B74 80AE08C4 44812000 */  mtc1    $at, $f4                   ## $f4 = 12.00
/* 02B78 80AE08C8 C4800164 */  lwc1    $f0, 0x0164($a0)           ## 00000164
/* 02B7C 80AE08CC 3C0180AE */  lui     $at, %hi(D_80AE1C60)       ## $at = 80AE0000
/* 02B80 80AE08D0 4604003C */  c.lt.s  $f0, $f4                   
/* 02B84 80AE08D4 00000000 */  nop
/* 02B88 80AE08D8 45000032 */  bc1f    .L80AE09A4                 
/* 02B8C 80AE08DC 00000000 */  nop
/* 02B90 80AE08E0 C4261C60 */  lwc1    $f6, %lo(D_80AE1C60)($at)  
/* 02B94 80AE08E4 3C0180AE */  lui     $at, %hi(D_80AE1C64)       ## $at = 80AE0000
/* 02B98 80AE08E8 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 02B9C 80AE08EC 46060202 */  mul.s   $f8, $f0, $f6              
/* 02BA0 80AE08F0 4600428D */  trunc.w.s $f10, $f8                  
/* 02BA4 80AE08F4 44025000 */  mfc1    $v0, $f10                  
/* 02BA8 80AE08F8 00000000 */  nop
/* 02BAC 80AE08FC 00021400 */  sll     $v0, $v0, 16               
/* 02BB0 80AE0900 00021403 */  sra     $v0, $v0, 16               
/* 02BB4 80AE0904 24420037 */  addiu   $v0, $v0, 0x0037           ## $v0 = 00000037
/* 02BB8 80AE0908 A08202A0 */  sb      $v0, 0x02A0($a0)           ## 000002A0
/* 02BBC 80AE090C A082029F */  sb      $v0, 0x029F($a0)           ## 0000029F
/* 02BC0 80AE0910 A082029E */  sb      $v0, 0x029E($a0)           ## 0000029E
/* 02BC4 80AE0914 C4301C64 */  lwc1    $f16, %lo(D_80AE1C64)($at) 
/* 02BC8 80AE0918 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 02BCC 80AE091C 46100482 */  mul.s   $f18, $f0, $f16            
/* 02BD0 80AE0920 4459F800 */  cfc1    $t9, $31
/* 02BD4 80AE0924 44C8F800 */  ctc1    $t0, $31
/* 02BD8 80AE0928 00000000 */  nop
/* 02BDC 80AE092C 46009124 */  cvt.w.s $f4, $f18                  
/* 02BE0 80AE0930 4448F800 */  cfc1    $t0, $31
/* 02BE4 80AE0934 00000000 */  nop
/* 02BE8 80AE0938 31080078 */  andi    $t0, $t0, 0x0078           ## $t0 = 00000000
/* 02BEC 80AE093C 51000013 */  beql    $t0, $zero, .L80AE098C     
/* 02BF0 80AE0940 44082000 */  mfc1    $t0, $f4                   
/* 02BF4 80AE0944 44812000 */  mtc1    $at, $f4                   ## $f4 = 2147483648.00
/* 02BF8 80AE0948 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 02BFC 80AE094C 46049101 */  sub.s   $f4, $f18, $f4             
/* 02C00 80AE0950 44C8F800 */  ctc1    $t0, $31
/* 02C04 80AE0954 00000000 */  nop
/* 02C08 80AE0958 46002124 */  cvt.w.s $f4, $f4                   
/* 02C0C 80AE095C 4448F800 */  cfc1    $t0, $31
/* 02C10 80AE0960 00000000 */  nop
/* 02C14 80AE0964 31080078 */  andi    $t0, $t0, 0x0078           ## $t0 = 00000000
/* 02C18 80AE0968 15000005 */  bne     $t0, $zero, .L80AE0980     
/* 02C1C 80AE096C 00000000 */  nop
/* 02C20 80AE0970 44082000 */  mfc1    $t0, $f4                   
/* 02C24 80AE0974 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02C28 80AE0978 10000007 */  beq     $zero, $zero, .L80AE0998   
/* 02C2C 80AE097C 01014025 */  or      $t0, $t0, $at              ## $t0 = 80000000
.L80AE0980:
/* 02C30 80AE0980 10000005 */  beq     $zero, $zero, .L80AE0998   
/* 02C34 80AE0984 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 02C38 80AE0988 44082000 */  mfc1    $t0, $f4                   
.L80AE098C:
/* 02C3C 80AE098C 00000000 */  nop
/* 02C40 80AE0990 0500FFFB */  bltz    $t0, .L80AE0980            
/* 02C44 80AE0994 00000000 */  nop
.L80AE0998:
/* 02C48 80AE0998 44D9F800 */  ctc1    $t9, $31
/* 02C4C 80AE099C 1000001B */  beq     $zero, $zero, .L80AE0A0C   
/* 02C50 80AE09A0 A08802A1 */  sb      $t0, 0x02A1($a0)           ## 000002A1
.L80AE09A4:
/* 02C54 80AE09A4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 02C58 80AE09A8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02C5C 80AE09AC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 02C60 80AE09B0 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 02C64 80AE09B4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 02C68 80AE09B8 44818000 */  mtc1    $at, $f16                  ## $f16 = 100.00
/* 02C6C 80AE09BC 46060202 */  mul.s   $f8, $f0, $f6              
/* 02C70 80AE09C0 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 02C74 80AE09C4 44813000 */  mtc1    $at, $f6                   ## $f6 = 160.00
/* 02C78 80AE09C8 46100482 */  mul.s   $f18, $f0, $f16            
/* 02C7C 80AE09CC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02C80 80AE09D0 240E00C8 */  addiu   $t6, $zero, 0x00C8         ## $t6 = 000000C8
/* 02C84 80AE09D4 A08E02A1 */  sb      $t6, 0x02A1($a0)           ## 000002A1
/* 02C88 80AE09D8 4600428D */  trunc.w.s $f10, $f8                  
/* 02C8C 80AE09DC 46060202 */  mul.s   $f8, $f0, $f6              
/* 02C90 80AE09E0 440C5000 */  mfc1    $t4, $f10                  
/* 02C94 80AE09E4 4600910D */  trunc.w.s $f4, $f18                  
/* 02C98 80AE09E8 258D00E1 */  addiu   $t5, $t4, 0x00E1           ## $t5 = 000000E1
/* 02C9C 80AE09EC A08D029E */  sb      $t5, 0x029E($a0)           ## 0000029E
/* 02CA0 80AE09F0 4600428D */  trunc.w.s $f10, $f8                  
/* 02CA4 80AE09F4 44192000 */  mfc1    $t9, $f4                   
/* 02CA8 80AE09F8 440C5000 */  mfc1    $t4, $f10                  
/* 02CAC 80AE09FC 2728009B */  addiu   $t0, $t9, 0x009B           ## $t0 = 0000009B
/* 02CB0 80AE0A00 A088029F */  sb      $t0, 0x029F($a0)           ## 0000029F
/* 02CB4 80AE0A04 258D005F */  addiu   $t5, $t4, 0x005F           ## $t5 = 0000005F
/* 02CB8 80AE0A08 A08D02A0 */  sb      $t5, 0x02A0($a0)           ## 000002A0
.L80AE0A0C:
/* 02CBC 80AE0A0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02CC0 80AE0A10 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02CC4 80AE0A14 03E00008 */  jr      $ra                        
/* 02CC8 80AE0A18 00000000 */  nop
