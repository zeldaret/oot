glabel func_80ADAAA4
/* 01B14 80ADAAA4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01B18 80ADAAA8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01B1C 80ADAAAC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01B20 80ADAAB0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01B24 80ADAAB4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01B28 80ADAAB8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01B2C 80ADAABC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01B30 80ADAAC0 50400020 */  beql    $v0, $zero, .L80ADAB44     
/* 01B34 80ADAAC4 92020195 */  lbu     $v0, 0x0195($s0)           ## 00000195
/* 01B38 80ADAAC8 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 01B3C 80ADAACC 31CF8000 */  andi    $t7, $t6, 0x8000           ## $t7 = 00000000
/* 01B40 80ADAAD0 55E0001C */  bnel    $t7, $zero, .L80ADAB44     
/* 01B44 80ADAAD4 92020195 */  lbu     $v0, 0x0195($s0)           ## 00000195
/* 01B48 80ADAAD8 921800AF */  lbu     $t8, 0x00AF($s0)           ## 000000AF
/* 01B4C 80ADAADC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B50 80ADAAE0 13000015 */  beq     $t8, $zero, .L80ADAB38     
/* 01B54 80ADAAE4 00000000 */  nop
/* 01B58 80ADAAE8 92190194 */  lbu     $t9, 0x0194($s0)           ## 00000194
/* 01B5C 80ADAAEC 53200006 */  beql    $t9, $zero, .L80ADAB08     
/* 01B60 80ADAAF0 92080195 */  lbu     $t0, 0x0195($s0)           ## 00000195
/* 01B64 80ADAAF4 0C2B65A9 */  jal     func_80AD96A4              
/* 01B68 80ADAAF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B6C 80ADAAFC 10000011 */  beq     $zero, $zero, .L80ADAB44   
/* 01B70 80ADAB00 92020195 */  lbu     $v0, 0x0195($s0)           ## 00000195
/* 01B74 80ADAB04 92080195 */  lbu     $t0, 0x0195($s0)           ## 00000195
.L80ADAB08:
/* 01B78 80ADAB08 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01B7C 80ADAB0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B80 80ADAB10 11000005 */  beq     $t0, $zero, .L80ADAB28     
/* 01B84 80ADAB14 00000000 */  nop
/* 01B88 80ADAB18 0C2B6709 */  jal     func_80AD9C24              
/* 01B8C 80ADAB1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B90 80ADAB20 10000008 */  beq     $zero, $zero, .L80ADAB44   
/* 01B94 80ADAB24 92020195 */  lbu     $v0, 0x0195($s0)           ## 00000195
.L80ADAB28:
/* 01B98 80ADAB28 0C2B6709 */  jal     func_80AD9C24              
/* 01B9C 80ADAB2C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01BA0 80ADAB30 10000004 */  beq     $zero, $zero, .L80ADAB44   
/* 01BA4 80ADAB34 92020195 */  lbu     $v0, 0x0195($s0)           ## 00000195
.L80ADAB38:
/* 01BA8 80ADAB38 0C2B6675 */  jal     func_80AD99D4              
/* 01BAC 80ADAB3C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01BB0 80ADAB40 92020195 */  lbu     $v0, 0x0195($s0)           ## 00000195
.L80ADAB44:
/* 01BB4 80ADAB44 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01BB8 80ADAB48 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 01BBC 80ADAB4C 5040003D */  beql    $v0, $zero, .L80ADAC44     
/* 01BC0 80ADAB50 920D0194 */  lbu     $t5, 0x0194($s0)           ## 00000194
/* 01BC4 80ADAB54 54410004 */  bnel    $v0, $at, .L80ADAB68       
/* 01BC8 80ADAB58 24020400 */  addiu   $v0, $zero, 0x0400         ## $v0 = 00000400
/* 01BCC 80ADAB5C 10000002 */  beq     $zero, $zero, .L80ADAB68   
/* 01BD0 80ADAB60 24020800 */  addiu   $v0, $zero, 0x0800         ## $v0 = 00000800
/* 01BD4 80ADAB64 24020400 */  addiu   $v0, $zero, 0x0400         ## $v0 = 00000400
.L80ADAB68:
/* 01BD8 80ADAB68 8E090118 */  lw      $t1, 0x0118($s0)           ## 00000118
/* 01BDC 80ADAB6C 00023400 */  sll     $a2, $v0, 16               
/* 01BE0 80ADAB70 00063403 */  sra     $a2, $a2, 16               
/* 01BE4 80ADAB74 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01BE8 80ADAB78 852500B6 */  lh      $a1, 0x00B6($t1)           ## 000000B6
/* 01BEC 80ADAB7C C600015C */  lwc1    $f0, 0x015C($s0)           ## 0000015C
/* 01BF0 80ADAB80 C6040164 */  lwc1    $f4, 0x0164($s0)           ## 00000164
/* 01BF4 80ADAB84 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 01BF8 80ADAB88 44814000 */  mtc1    $at, $f8                   ## $f8 = 255.00
/* 01BFC 80ADAB8C 46040181 */  sub.s   $f6, $f0, $f4              
/* 01C00 80ADAB90 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 01C04 80ADAB94 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 01C08 80ADAB98 46083282 */  mul.s   $f10, $f6, $f8             
/* 01C0C 80ADAB9C 46005403 */  div.s   $f16, $f10, $f0            
/* 01C10 80ADABA0 444AF800 */  cfc1    $t2, $31
/* 01C14 80ADABA4 44CBF800 */  ctc1    $t3, $31
/* 01C18 80ADABA8 00000000 */  nop
/* 01C1C 80ADABAC 460084A4 */  cvt.w.s $f18, $f16                 
/* 01C20 80ADABB0 444BF800 */  cfc1    $t3, $31
/* 01C24 80ADABB4 00000000 */  nop
/* 01C28 80ADABB8 316B0078 */  andi    $t3, $t3, 0x0078           ## $t3 = 00000000
/* 01C2C 80ADABBC 51600013 */  beql    $t3, $zero, .L80ADAC0C     
/* 01C30 80ADABC0 440B9000 */  mfc1    $t3, $f18                  
/* 01C34 80ADABC4 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 01C38 80ADABC8 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 01C3C 80ADABCC 46128481 */  sub.s   $f18, $f16, $f18           
/* 01C40 80ADABD0 44CBF800 */  ctc1    $t3, $31
/* 01C44 80ADABD4 00000000 */  nop
/* 01C48 80ADABD8 460094A4 */  cvt.w.s $f18, $f18                 
/* 01C4C 80ADABDC 444BF800 */  cfc1    $t3, $31
/* 01C50 80ADABE0 00000000 */  nop
/* 01C54 80ADABE4 316B0078 */  andi    $t3, $t3, 0x0078           ## $t3 = 00000000
/* 01C58 80ADABE8 15600005 */  bne     $t3, $zero, .L80ADAC00     
/* 01C5C 80ADABEC 00000000 */  nop
/* 01C60 80ADABF0 440B9000 */  mfc1    $t3, $f18                  
/* 01C64 80ADABF4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01C68 80ADABF8 10000007 */  beq     $zero, $zero, .L80ADAC18   
/* 01C6C 80ADABFC 01615825 */  or      $t3, $t3, $at              ## $t3 = 80000000
.L80ADAC00:
/* 01C70 80ADAC00 10000005 */  beq     $zero, $zero, .L80ADAC18   
/* 01C74 80ADAC04 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 01C78 80ADAC08 440B9000 */  mfc1    $t3, $f18                  
.L80ADAC0C:
/* 01C7C 80ADAC0C 00000000 */  nop
/* 01C80 80ADAC10 0560FFFB */  bltz    $t3, .L80ADAC00            
/* 01C84 80ADAC14 00000000 */  nop
.L80ADAC18:
/* 01C88 80ADAC18 8E0C0118 */  lw      $t4, 0x0118($s0)           ## 00000118
/* 01C8C 80ADAC1C A20B0231 */  sb      $t3, 0x0231($s0)           ## 00000231
/* 01C90 80ADAC20 44CAF800 */  ctc1    $t2, $31
/* 01C94 80ADAC24 C5840028 */  lwc1    $f4, 0x0028($t4)           ## 00000028
/* 01C98 80ADAC28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C9C 80ADAC2C E6040028 */  swc1    $f4, 0x0028($s0)           ## 00000028
/* 01CA0 80ADAC30 0C2B65F2 */  jal     func_80AD97C8              
/* 01CA4 80ADAC34 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01CA8 80ADAC38 10000009 */  beq     $zero, $zero, .L80ADAC60   
/* 01CAC 80ADAC3C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01CB0 80ADAC40 920D0194 */  lbu     $t5, 0x0194($s0)           ## 00000194
.L80ADAC44:
/* 01CB4 80ADAC44 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 01CB8 80ADAC48 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01CBC 80ADAC4C 51A00004 */  beql    $t5, $zero, .L80ADAC60     
/* 01CC0 80ADAC50 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01CC4 80ADAC54 0C01DE80 */  jal     Math_ApproxF
              
/* 01CC8 80ADAC58 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 01CCC 80ADAC5C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ADAC60:
/* 01CD0 80ADAC60 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01CD4 80ADAC64 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01CD8 80ADAC68 03E00008 */  jr      $ra                        
/* 01CDC 80ADAC6C 00000000 */  nop
