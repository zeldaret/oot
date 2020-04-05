glabel BgTreemouth_Draw
/* 0071C 808BCC1C 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00720 808BCC20 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00724 808BCC24 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00728 808BCC28 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 0072C 808BCC2C 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00730 808BCC30 240901F4 */  addiu   $t1, $zero, 0x01F4         ## $t1 = 000001F4
/* 00734 808BCC34 3C06808C */  lui     $a2, %hi(D_808BD9E0)       ## $a2 = 808C0000
/* 00738 808BCC38 24C6D9E0 */  addiu   $a2, $a2, %lo(D_808BD9E0)  ## $a2 = 808BD9E0
/* 0073C 808BCC3C A7A90042 */  sh      $t1, 0x0042($sp)           
/* 00740 808BCC40 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFE4
/* 00744 808BCC44 2407037D */  addiu   $a3, $zero, 0x037D         ## $a3 = 0000037D
/* 00748 808BCC48 0C031AB1 */  jal     Graph_OpenDisps              
/* 0074C 808BCC4C AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00750 808BCC50 8FAF004C */  lw      $t7, 0x004C($sp)           
/* 00754 808BCC54 0C024F46 */  jal     func_80093D18              
/* 00758 808BCC58 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 0075C 808BCC5C 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00760 808BCC60 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00764 808BCC64 8C621360 */  lw      $v0, 0x1360($v1)           ## 8015F9C0
/* 00768 808BCC68 8FA8003C */  lw      $t0, 0x003C($sp)           
/* 0076C 808BCC6C 97A90042 */  lhu     $t1, 0x0042($sp)           
/* 00770 808BCC70 28410004 */  slti    $at, $v0, 0x0004           
/* 00774 808BCC74 14200004 */  bne     $at, $zero, .L808BCC88     
/* 00778 808BCC78 3C05808C */  lui     $a1, %hi(D_808BD9F4)       ## $a1 = 808C0000
/* 0077C 808BCC7C 8C780004 */  lw      $t8, 0x0004($v1)           ## 8015E664
/* 00780 808BCC80 57000007 */  bnel    $t8, $zero, .L808BCCA0     
/* 00784 808BCC84 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
.L808BCC88:
/* 00788 808BCC88 94790ED4 */  lhu     $t9, 0x0ED4($v1)           ## 8015F534
/* 0078C 808BCC8C 332A0080 */  andi    $t2, $t9, 0x0080           ## $t2 = 00000000
/* 00790 808BCC90 51400003 */  beql    $t2, $zero, .L808BCCA0     
/* 00794 808BCC94 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00798 808BCC98 24090866 */  addiu   $t1, $zero, 0x0866         ## $t1 = 00000866
/* 0079C 808BCC9C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
.L808BCCA0:
/* 007A0 808BCCA0 14410007 */  bne     $v0, $at, .L808BCCC0       
/* 007A4 808BCCA4 24A5D9F4 */  addiu   $a1, $a1, %lo(D_808BD9F4)  ## $a1 = 808BD9F4
/* 007A8 808BCCA8 8FAB004C */  lw      $t3, 0x004C($sp)           
/* 007AC 808BCCAC 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 007B0 808BCCB0 012B4821 */  addu    $t1, $t1, $t3              
/* 007B4 808BCCB4 85291D30 */  lh      $t1, 0x1D30($t1)           ## 00011D30
/* 007B8 808BCCB8 252901F4 */  addiu   $t1, $t1, 0x01F4           ## $t1 = 000101F4
/* 007BC 808BCCBC 3129FFFF */  andi    $t1, $t1, 0xFFFF           ## $t1 = 000001F4
.L808BCCC0:
/* 007C0 808BCCC0 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 007C4 808BCCC4 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 007C8 808BCCC8 3C0DFB00 */  lui     $t5, 0xFB00                ## $t5 = FB000000
/* 007CC 808BCCCC 246C0008 */  addiu   $t4, $v1, 0x0008           ## $t4 = 8015E668
/* 007D0 808BCCD0 AD0C02C0 */  sw      $t4, 0x02C0($t0)           ## 000002C0
/* 007D4 808BCCD4 AC6D0000 */  sw      $t5, 0x0000($v1)           ## 8015E660
/* 007D8 808BCCD8 05210005 */  bgez    $t1, .L808BCCF0            
/* 007DC 808BCCDC 468021A0 */  cvt.s.w $f6, $f4                   
/* 007E0 808BCCE0 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 007E4 808BCCE4 44814000 */  mtc1    $at, $f8                   ## $f8 = 4294967296.00
/* 007E8 808BCCE8 00000000 */  nop
/* 007EC 808BCCEC 46083180 */  add.s   $f6, $f6, $f8              
.L808BCCF0:
/* 007F0 808BCCF0 3C01808C */  lui     $at, %hi(D_808BDA54)       ## $at = 808C0000
/* 007F4 808BCCF4 C42ADA54 */  lwc1    $f10, %lo(D_808BDA54)($at) 
/* 007F8 808BCCF8 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 007FC 808BCCFC 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 00800 808BCD00 460A3402 */  mul.s   $f16, $f6, $f10            
/* 00804 808BCD04 444EF800 */  cfc1    $t6, $31
/* 00808 808BCD08 44CFF800 */  ctc1    $t7, $31
/* 0080C 808BCD0C 00000000 */  nop
/* 00810 808BCD10 460084A4 */  cvt.w.s $f18, $f16                 
/* 00814 808BCD14 444FF800 */  cfc1    $t7, $31
/* 00818 808BCD18 00000000 */  nop
/* 0081C 808BCD1C 31EF0078 */  andi    $t7, $t7, 0x0078           ## $t7 = 00000000
/* 00820 808BCD20 51E00013 */  beql    $t7, $zero, .L808BCD70     
/* 00824 808BCD24 440F9000 */  mfc1    $t7, $f18                  
/* 00828 808BCD28 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 0082C 808BCD2C 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00830 808BCD30 46128481 */  sub.s   $f18, $f16, $f18           
/* 00834 808BCD34 44CFF800 */  ctc1    $t7, $31
/* 00838 808BCD38 00000000 */  nop
/* 0083C 808BCD3C 460094A4 */  cvt.w.s $f18, $f18                 
/* 00840 808BCD40 444FF800 */  cfc1    $t7, $31
/* 00844 808BCD44 00000000 */  nop
/* 00848 808BCD48 31EF0078 */  andi    $t7, $t7, 0x0078           ## $t7 = 00000000
/* 0084C 808BCD4C 15E00005 */  bne     $t7, $zero, .L808BCD64     
/* 00850 808BCD50 00000000 */  nop
/* 00854 808BCD54 440F9000 */  mfc1    $t7, $f18                  
/* 00858 808BCD58 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0085C 808BCD5C 10000007 */  beq     $zero, $zero, .L808BCD7C   
/* 00860 808BCD60 01E17825 */  or      $t7, $t7, $at              ## $t7 = 80000000
.L808BCD64:
/* 00864 808BCD64 10000005 */  beq     $zero, $zero, .L808BCD7C   
/* 00868 808BCD68 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 0086C 808BCD6C 440F9000 */  mfc1    $t7, $f18                  
.L808BCD70:
/* 00870 808BCD70 00000000 */  nop
/* 00874 808BCD74 05E0FFFB */  bltz    $t7, .L808BCD64            
/* 00878 808BCD78 00000000 */  nop
.L808BCD7C:
/* 0087C 808BCD7C 3C018080 */  lui     $at, 0x8080                ## $at = 80800000
/* 00880 808BCD80 34218000 */  ori     $at, $at, 0x8000           ## $at = 80808000
/* 00884 808BCD84 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 000000FF
/* 00888 808BCD88 0301C825 */  or      $t9, $t8, $at              ## $t9 = 808080FF
/* 0088C 808BCD8C AC790004 */  sw      $t9, 0x0004($v1)           ## 8015E664
/* 00890 808BCD90 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 00894 808BCD94 3C0BDA38 */  lui     $t3, 0xDA38                ## $t3 = DA380000
/* 00898 808BCD98 356B0003 */  ori     $t3, $t3, 0x0003           ## $t3 = DA380003
/* 0089C 808BCD9C 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 008A0 808BCDA0 AD0A02C0 */  sw      $t2, 0x02C0($t0)           ## 000002C0
/* 008A4 808BCDA4 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 008A8 808BCDA8 8FAC004C */  lw      $t4, 0x004C($sp)           
/* 008AC 808BCDAC 44CEF800 */  ctc1    $t6, $31
/* 008B0 808BCDB0 240603A4 */  addiu   $a2, $zero, 0x03A4         ## $a2 = 000003A4
/* 008B4 808BCDB4 8D840000 */  lw      $a0, 0x0000($t4)           ## 8015E668
/* 008B8 808BCDB8 AFA8003C */  sw      $t0, 0x003C($sp)           
/* 008BC 808BCDBC 0C0346A2 */  jal     Matrix_NewMtx              
/* 008C0 808BCDC0 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 008C4 808BCDC4 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 008C8 808BCDC8 8FA8003C */  lw      $t0, 0x003C($sp)           
/* 008CC 808BCDCC 3C0F0600 */  lui     $t7, 0x0600                ## $t7 = 06000000
/* 008D0 808BCDD0 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 008D4 808BCDD4 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 008D8 808BCDD8 25EF09D0 */  addiu   $t7, $t7, 0x09D0           ## $t7 = 060009D0
/* 008DC 808BCDDC 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 008E0 808BCDE0 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 008E4 808BCDE4 AD0D02C0 */  sw      $t5, 0x02C0($t0)           ## 000002C0
/* 008E8 808BCDE8 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 008EC 808BCDEC AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 008F0 808BCDF0 8FB8004C */  lw      $t8, 0x004C($sp)           
/* 008F4 808BCDF4 3C06808C */  lui     $a2, %hi(D_808BDA08)       ## $a2 = 808C0000
/* 008F8 808BCDF8 24C6DA08 */  addiu   $a2, $a2, %lo(D_808BDA08)  ## $a2 = 808BDA08
/* 008FC 808BCDFC 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFE4
/* 00900 808BCE00 240703A9 */  addiu   $a3, $zero, 0x03A9         ## $a3 = 000003A9
/* 00904 808BCE04 0C031AD5 */  jal     Graph_CloseDisps              
/* 00908 808BCE08 8F050000 */  lw      $a1, 0x0000($t8)           ## 00000000
/* 0090C 808BCE0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00910 808BCE10 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00914 808BCE14 03E00008 */  jr      $ra                        
/* 00918 808BCE18 00000000 */  nop
/* 0091C 808BCE1C 00000000 */  nop

