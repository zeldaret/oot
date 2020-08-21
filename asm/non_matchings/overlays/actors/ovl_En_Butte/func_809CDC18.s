.late_rodata
glabel D_809CE4B4
    .float 0.3

glabel D_809CE4B8
    .float 0.2

glabel D_809CE4BC
    .float 0.15

glabel D_809CE4C0
    .float 0.3

glabel D_809CE4C4
 .word 0x3FE66666

.text
glabel func_809CDC18
/* 00BA8 809CDC18 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 00BAC 809CDC1C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00BB0 809CDC20 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00BB4 809CDC24 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00BB8 809CDC28 AFA50064 */  sw      $a1, 0x0064($sp)           
/* 00BBC 809CDC2C 908E0256 */  lbu     $t6, 0x0256($a0)           ## 00000256
/* 00BC0 809CDC30 3C18809D */  lui     $t8, %hi(D_809CE380)       ## $t8 = 809D0000
/* 00BC4 809CDC34 2718E380 */  addiu   $t8, $t8, %lo(D_809CE380)  ## $t8 = 809CE380
/* 00BC8 809CDC38 000E7880 */  sll     $t7, $t6,  2               
/* 00BCC 809CDC3C 01EE7821 */  addu    $t7, $t7, $t6              
/* 00BD0 809CDC40 000F7880 */  sll     $t7, $t7,  2               
/* 00BD4 809CDC44 01F81021 */  addu    $v0, $t7, $t8              
/* 00BD8 809CDC48 8CB11C44 */  lw      $s1, 0x1C44($a1)           ## 00001C44
/* 00BDC 809CDC4C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BE0 809CDC50 0C27358D */  jal     func_809CD634              
/* 00BE4 809CDC54 AFA2005C */  sw      $v0, 0x005C($sp)           
/* 00BE8 809CDC58 8FA2005C */  lw      $v0, 0x005C($sp)           
/* 00BEC 809CDC5C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00BF0 809CDC60 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00BF4 809CDC64 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000004
/* 00BF8 809CDC68 8C460008 */  lw      $a2, 0x0008($v0)           ## 00000008
/* 00BFC 809CDC6C 8C47000C */  lw      $a3, 0x000C($v0)           ## 0000000C
/* 00C00 809CDC70 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00C04 809CDC74 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00C08 809CDC78 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00C0C 809CDC7C 00000000 */  nop
/* 00C10 809CDC80 E7A60040 */  swc1    $f6, 0x0040($sp)           
/* 00C14 809CDC84 92080256 */  lbu     $t0, 0x0256($s0)           ## 00000256
/* 00C18 809CDC88 51000045 */  beql    $t0, $zero, .L809CDDA0     
/* 00C1C 809CDC8C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00C20 809CDC90 86090254 */  lh      $t1, 0x0254($s0)           ## 00000254
/* 00C24 809CDC94 2921000C */  slti    $at, $t1, 0x000C           
/* 00C28 809CDC98 50200041 */  beql    $at, $zero, .L809CDDA0     
/* 00C2C 809CDC9C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00C30 809CDCA0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00C34 809CDCA4 862400B6 */  lh      $a0, 0x00B6($s1)           ## 000000B6
/* 00C38 809CDCA8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00C3C 809CDCAC 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 00C40 809CDCB0 C63208B8 */  lwc1    $f18, 0x08B8($s1)          ## 000008B8
/* 00C44 809CDCB4 46080282 */  mul.s   $f10, $f0, $f8             
/* 00C48 809CDCB8 46125100 */  add.s   $f4, $f10, $f18            
/* 00C4C 809CDCBC E7A40048 */  swc1    $f4, 0x0048($sp)           
/* 00C50 809CDCC0 C62608BC */  lwc1    $f6, 0x08BC($s1)           ## 000008BC
/* 00C54 809CDCC4 E7A6004C */  swc1    $f6, 0x004C($sp)           
/* 00C58 809CDCC8 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00C5C 809CDCCC 862400B6 */  lh      $a0, 0x00B6($s1)           ## 000000B6
/* 00C60 809CDCD0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00C64 809CDCD4 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 00C68 809CDCD8 C63208C0 */  lwc1    $f18, 0x08C0($s1)          ## 000008C0
/* 00C6C 809CDCDC 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 00C70 809CDCE0 46080282 */  mul.s   $f10, $f0, $f8             
/* 00C74 809CDCE4 27A50048 */  addiu   $a1, $sp, 0x0048           ## $a1 = FFFFFFE8
/* 00C78 809CDCE8 46125100 */  add.s   $f4, $f10, $f18            
/* 00C7C 809CDCEC 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 00C80 809CDCF0 E7A40050 */  swc1    $f4, 0x0050($sp)           
/* 00C84 809CDCF4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00C88 809CDCF8 A7A20038 */  sh      $v0, 0x0038($sp)           
/* 00C8C 809CDCFC 3C0A809D */  lui     $t2, %hi(D_809CE410)       ## $t2 = 809D0000
/* 00C90 809CDD00 8D4AE410 */  lw      $t2, %lo(D_809CE410)($t2)  
/* 00C94 809CDD04 87AF0038 */  lh      $t7, 0x0038($sp)           
/* 00C98 809CDD08 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00C9C 809CDD0C 448A3000 */  mtc1    $t2, $f6                   ## $f6 = -0.00
/* 00CA0 809CDD10 240607D0 */  addiu   $a2, $zero, 0x07D0         ## $a2 = 000007D0
/* 00CA4 809CDD14 46803220 */  cvt.s.w $f8, $f6                   
/* 00CA8 809CDD18 46080282 */  mul.s   $f10, $f0, $f8             
/* 00CAC 809CDD1C 4600548D */  trunc.w.s $f18, $f10                 
/* 00CB0 809CDD20 440E9000 */  mfc1    $t6, $f18                  
/* 00CB4 809CDD24 00000000 */  nop
/* 00CB8 809CDD28 01CF2821 */  addu    $a1, $t6, $t7              
/* 00CBC 809CDD2C 00052C00 */  sll     $a1, $a1, 16               
/* 00CC0 809CDD30 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00CC4 809CDD34 00052C03 */  sra     $a1, $a1, 16               
/* 00CC8 809CDD38 10400016 */  beq     $v0, $zero, .L809CDD94     
/* 00CCC 809CDD3C 3C01809D */  lui     $at, %hi(D_809CE4B4)       ## $at = 809D0000
/* 00CD0 809CDD40 8FB80064 */  lw      $t8, 0x0064($sp)           
/* 00CD4 809CDD44 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 00CD8 809CDD48 0338C821 */  addu    $t9, $t9, $t8              
/* 00CDC 809CDD4C 8F391DE4 */  lw      $t9, 0x1DE4($t9)           ## 00011DE4
/* 00CE0 809CDD50 33280001 */  andi    $t0, $t9, 0x0001           ## $t0 = 00000000
/* 00CE4 809CDD54 51000012 */  beql    $t0, $zero, .L809CDDA0     
/* 00CE8 809CDD58 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00CEC 809CDD5C 8609025C */  lh      $t1, 0x025C($s0)           ## 0000025C
/* 00CF0 809CDD60 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 00CF4 809CDD64 0C0400A4 */  jal     sinf
              
/* 00CF8 809CDD68 46802320 */  cvt.s.w $f12, $f4                  
/* 00CFC 809CDD6C 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00D00 809CDD70 44813000 */  mtc1    $at, $f6                   ## $f6 = 60.00
/* 00D04 809CDD74 860A0032 */  lh      $t2, 0x0032($s0)           ## 00000032
/* 00D08 809CDD78 46060202 */  mul.s   $f8, $f0, $f6              
/* 00D0C 809CDD7C 4600428D */  trunc.w.s $f10, $f8                  
/* 00D10 809CDD80 440E5000 */  mfc1    $t6, $f10                  
/* 00D14 809CDD84 00000000 */  nop
/* 00D18 809CDD88 014E7821 */  addu    $t7, $t2, $t6              
/* 00D1C 809CDD8C 10000003 */  beq     $zero, $zero, .L809CDD9C   
/* 00D20 809CDD90 A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
.L809CDD94:
/* 00D24 809CDD94 C432E4B4 */  lwc1    $f18, %lo(D_809CE4B4)($at) 
/* 00D28 809CDD98 E7B20040 */  swc1    $f18, 0x0040($sp)          
.L809CDD9C:
/* 00D2C 809CDD9C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
.L809CDDA0:
/* 00D30 809CDDA0 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 00D34 809CDDA4 C6240028 */  lwc1    $f4, 0x0028($s1)           ## 00000028
/* 00D38 809CDDA8 C62008BC */  lwc1    $f0, 0x08BC($s1)           ## 000008BC
/* 00D3C 809CDDAC 46062080 */  add.s   $f2, $f4, $f6              
/* 00D40 809CDDB0 4602003C */  c.lt.s  $f0, $f2                   
/* 00D44 809CDDB4 00000000 */  nop
/* 00D48 809CDDB8 45020004 */  bc1fl   .L809CDDCC                 
/* 00D4C 809CDDBC E6000264 */  swc1    $f0, 0x0264($s0)           ## 00000264
/* 00D50 809CDDC0 10000002 */  beq     $zero, $zero, .L809CDDCC   
/* 00D54 809CDDC4 E6020264 */  swc1    $f2, 0x0264($s0)           ## 00000264
/* 00D58 809CDDC8 E6000264 */  swc1    $f0, 0x0264($s0)           ## 00000264
.L809CDDCC:
/* 00D5C 809CDDCC 0C2735BF */  jal     func_809CD6FC              
/* 00D60 809CDDD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D64 809CDDD4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00D68 809CDDD8 86040260 */  lh      $a0, 0x0260($s0)           ## 00000260
/* 00D6C 809CDDDC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00D70 809CDDE0 E7A00030 */  swc1    $f0, 0x0030($sp)           
/* 00D74 809CDDE4 8604025E */  lh      $a0, 0x025E($s0)           ## 0000025E
/* 00D78 809CDDE8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00D7C 809CDDEC E7A00034 */  swc1    $f0, 0x0034($sp)           
/* 00D80 809CDDF0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00D84 809CDDF4 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 00D88 809CDDF8 3C01809D */  lui     $at, %hi(D_809CE4B8)       ## $at = 809D0000
/* 00D8C 809CDDFC C430E4B8 */  lwc1    $f16, %lo(D_809CE4B8)($at) 
/* 00D90 809CDE00 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00D94 809CDE04 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 00D98 809CDE08 C6080068 */  lwc1    $f8, 0x0068($s0)           ## 00000068
/* 00D9C 809CDE0C C7A20034 */  lwc1    $f2, 0x0034($sp)           
/* 00DA0 809CDE10 3C01809D */  lui     $at, %hi(D_809CE4BC)       ## $at = 809D0000
/* 00DA4 809CDE14 460A4482 */  mul.s   $f18, $f8, $f10            
/* 00DA8 809CDE18 C7A80030 */  lwc1    $f8, 0x0030($sp)           
/* 00DAC 809CDE1C 46101102 */  mul.s   $f4, $f2, $f16             
/* 00DB0 809CDE20 46087281 */  sub.s   $f10, $f14, $f8            
/* 00DB4 809CDE24 46049180 */  add.s   $f6, $f18, $f4             
/* 00DB8 809CDE28 C432E4BC */  lwc1    $f18, %lo(D_809CE4BC)($at) 
/* 00DBC 809CDE2C 3C01809D */  lui     $at, %hi(D_809CE4C0)       ## $at = 809D0000
/* 00DC0 809CDE30 46125102 */  mul.s   $f4, $f10, $f18            
/* 00DC4 809CDE34 46007281 */  sub.s   $f10, $f14, $f0            
/* 00DC8 809CDE38 C432E4C0 */  lwc1    $f18, %lo(D_809CE4C0)($at) 
/* 00DCC 809CDE3C 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 00DD0 809CDE40 46043200 */  add.s   $f8, $f6, $f4              
/* 00DD4 809CDE44 46125182 */  mul.s   $f6, $f10, $f18            
/* 00DD8 809CDE48 C7AA0040 */  lwc1    $f10, 0x0040($sp)          
/* 00DDC 809CDE4C 46083100 */  add.s   $f4, $f6, $f8              
/* 00DE0 809CDE50 460A2300 */  add.s   $f12, $f4, $f10            
/* 00DE4 809CDE54 4610603C */  c.lt.s  $f12, $f16                 
/* 00DE8 809CDE58 00000000 */  nop
/* 00DEC 809CDE5C 45020004 */  bc1fl   .L809CDE70                 
/* 00DF0 809CDE60 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.50
/* 00DF4 809CDE64 1000000B */  beq     $zero, $zero, .L809CDE94   
/* 00DF8 809CDE68 E61001C8 */  swc1    $f16, 0x01C8($s0)          ## 000001C8
/* 00DFC 809CDE6C 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.50
.L809CDE70:
/* 00E00 809CDE70 00000000 */  nop
/* 00E04 809CDE74 460C003C */  c.lt.s  $f0, $f12                  
/* 00E08 809CDE78 00000000 */  nop
/* 00E0C 809CDE7C 45020004 */  bc1fl   .L809CDE90                 
/* 00E10 809CDE80 46006086 */  mov.s   $f2, $f12                  
/* 00E14 809CDE84 10000002 */  beq     $zero, $zero, .L809CDE90   
/* 00E18 809CDE88 46000086 */  mov.s   $f2, $f0                   
/* 00E1C 809CDE8C 46006086 */  mov.s   $f2, $f12                  
.L809CDE90:
/* 00E20 809CDE90 E60201C8 */  swc1    $f2, 0x01C8($s0)           ## 000001C8
.L809CDE94:
/* 00E24 809CDE94 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00E28 809CDE98 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 00E2C 809CDE9C 86180254 */  lh      $t8, 0x0254($s0)           ## 00000254
/* 00E30 809CDEA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E34 809CDEA4 5F00000F */  bgtzl   $t8, .L809CDEE4            
/* 00E38 809CDEA8 C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 00000024
/* 00E3C 809CDEAC 92190256 */  lbu     $t9, 0x0256($s0)           ## 00000256
/* 00E40 809CDEB0 3C09809D */  lui     $t1, %hi(D_809CE380)       ## $t1 = 809D0000
/* 00E44 809CDEB4 2529E380 */  addiu   $t1, $t1, %lo(D_809CE380)  ## $t1 = 809CE380
/* 00E48 809CDEB8 00194080 */  sll     $t0, $t9,  2               
/* 00E4C 809CDEBC 01194021 */  addu    $t0, $t0, $t9              
/* 00E50 809CDEC0 00084080 */  sll     $t0, $t0,  2               
/* 00E54 809CDEC4 0C27341C */  jal     func_809CD070              
/* 00E58 809CDEC8 01092821 */  addu    $a1, $t0, $t1              
/* 00E5C 809CDECC 3C0B809D */  lui     $t3, %hi(D_809CE410)       ## $t3 = 809D0000
/* 00E60 809CDED0 8D6BE410 */  lw      $t3, %lo(D_809CE410)($t3)  
/* 00E64 809CDED4 3C01809D */  lui     $at, %hi(D_809CE410)       ## $at = 809D0000
/* 00E68 809CDED8 000B6023 */  subu    $t4, $zero, $t3            
/* 00E6C 809CDEDC AC2CE410 */  sw      $t4, %lo(D_809CE410)($at)  
/* 00E70 809CDEE0 C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 00000024
.L809CDEE4:
/* 00E74 809CDEE4 C60E002C */  lwc1    $f14, 0x002C($s0)          ## 0000002C
/* 00E78 809CDEE8 8E060008 */  lw      $a2, 0x0008($s0)           ## 00000008
/* 00E7C 809CDEEC 0C032D65 */  jal     Math3D_Dist2DSq              
/* 00E80 809CDEF0 8E070010 */  lw      $a3, 0x0010($s0)           ## 00000010
/* 00E84 809CDEF4 822D0151 */  lb      $t5, 0x0151($s1)           ## 00000151
/* 00E88 809CDEF8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00E8C 809CDEFC 46000086 */  mov.s   $f2, $f0                   
/* 00E90 809CDF00 15A10013 */  bne     $t5, $at, .L809CDF50       
/* 00E94 809CDF04 00000000 */  nop
/* 00E98 809CDF08 C6200068 */  lwc1    $f0, 0x0068($s1)           ## 00000068
/* 00E9C 809CDF0C 3C01809D */  lui     $at, %hi(D_809CE4C4)       ## $at = 809D0000
/* 00EA0 809CDF10 C432E4C4 */  lwc1    $f18, %lo(D_809CE4C4)($at) 
/* 00EA4 809CDF14 46000005 */  abs.s   $f0, $f0                   
/* 00EA8 809CDF18 4612003C */  c.lt.s  $f0, $f18                  
/* 00EAC 809CDF1C 00000000 */  nop
/* 00EB0 809CDF20 4500000B */  bc1f    .L809CDF50                 
/* 00EB4 809CDF24 00000000 */  nop
/* 00EB8 809CDF28 860A025A */  lh      $t2, 0x025A($s0)           ## 0000025A
/* 00EBC 809CDF2C 3C0147C8 */  lui     $at, 0x47C8                ## $at = 47C80000
/* 00EC0 809CDF30 1D400007 */  bgtz    $t2, .L809CDF50            
/* 00EC4 809CDF34 00000000 */  nop
/* 00EC8 809CDF38 44813000 */  mtc1    $at, $f6                   ## $f6 = 102400.00
/* 00ECC 809CDF3C 3C014761 */  lui     $at, 0x4761                ## $at = 47610000
/* 00ED0 809CDF40 4606103C */  c.lt.s  $f2, $f6                   
/* 00ED4 809CDF44 00000000 */  nop
/* 00ED8 809CDF48 45030006 */  bc1tl   .L809CDF64                 
/* 00EDC 809CDF4C 44814000 */  mtc1    $at, $f8                   ## $f8 = 57600.00
.L809CDF50:
/* 00EE0 809CDF50 0C2735E7 */  jal     func_809CD79C              
/* 00EE4 809CDF54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EE8 809CDF58 10000016 */  beq     $zero, $zero, .L809CDFB4   
/* 00EEC 809CDF5C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00EF0 809CDF60 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.00
.L809CDF64:
/* 00EF4 809CDF64 00000000 */  nop
/* 00EF8 809CDF68 4602403C */  c.lt.s  $f8, $f2                   
/* 00EFC 809CDF6C 00000000 */  nop
/* 00F00 809CDF70 45020010 */  bc1fl   .L809CDFB4                 
/* 00F04 809CDF74 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00F08 809CDF78 C62C08B8 */  lwc1    $f12, 0x08B8($s1)          ## 000008B8
/* 00F0C 809CDF7C C62E08C0 */  lwc1    $f14, 0x08C0($s1)          ## 000008C0
/* 00F10 809CDF80 8E060024 */  lw      $a2, 0x0024($s0)           ## 00000024
/* 00F14 809CDF84 0C032D65 */  jal     Math3D_Dist2DSq              
/* 00F18 809CDF88 8E07002C */  lw      $a3, 0x002C($s0)           ## 0000002C
/* 00F1C 809CDF8C 3C014561 */  lui     $at, 0x4561                ## $at = 45610000
/* 00F20 809CDF90 44812000 */  mtc1    $at, $f4                   ## $f4 = 3600.00
/* 00F24 809CDF94 00000000 */  nop
/* 00F28 809CDF98 4604003C */  c.lt.s  $f0, $f4                   
/* 00F2C 809CDF9C 00000000 */  nop
/* 00F30 809CDFA0 45020004 */  bc1fl   .L809CDFB4                 
/* 00F34 809CDFA4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00F38 809CDFA8 0C2737F1 */  jal     func_809CDFC4              
/* 00F3C 809CDFAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F40 809CDFB0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809CDFB4:
/* 00F44 809CDFB4 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00F48 809CDFB8 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00F4C 809CDFBC 03E00008 */  jr      $ra                        
/* 00F50 809CDFC0 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
