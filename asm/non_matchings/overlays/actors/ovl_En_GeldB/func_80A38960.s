.late_rodata
glabel D_80A3A264
    .float -0.8
    .balign 4

glabel D_80A3A268
    .float -0.8
    .balign 4

.text
glabel func_80A38960
/* 03650 80A38960 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 03654 80A38964 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 03658 80A38968 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0365C 80A3896C AFA5005C */  sw      $a1, 0x005C($sp)           
/* 03660 80A38970 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 03664 80A38974 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03668 80A38978 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 0366C 80A3897C AFAF0050 */  sw      $t7, 0x0050($sp)           
/* 03670 80A38980 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 03674 80A38984 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 03678 80A38988 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 0367C 80A3898C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 03680 80A38990 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 03684 80A38994 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 03688 80A38998 8FB90050 */  lw      $t9, 0x0050($sp)           
/* 0368C 80A3899C 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 03690 80A389A0 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 03694 80A389A4 872300B6 */  lh      $v1, 0x00B6($t9)           ## 000000B6
/* 03698 80A389A8 00611821 */  addu    $v1, $v1, $at              
/* 0369C 80A389AC 00031C00 */  sll     $v1, $v1, 16               
/* 036A0 80A389B0 00031C03 */  sra     $v1, $v1, 16               
/* 036A4 80A389B4 00682023 */  subu    $a0, $v1, $t0              
/* 036A8 80A389B8 00042400 */  sll     $a0, $a0, 16               
/* 036AC 80A389BC 00042403 */  sra     $a0, $a0, 16               
/* 036B0 80A389C0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 036B4 80A389C4 A7A30056 */  sh      $v1, 0x0056($sp)           
/* 036B8 80A389C8 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 036BC 80A389CC 87A30056 */  lh      $v1, 0x0056($sp)           
/* 036C0 80A389D0 4600603C */  c.lt.s  $f12, $f0                  
/* 036C4 80A389D4 00000000 */  nop
/* 036C8 80A389D8 45000006 */  bc1f    .L80A389F4                 
/* 036CC 80A389DC 3C013E00 */  lui     $at, 0x3E00                ## $at = 3E000000
/* 036D0 80A389E0 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.12
/* 036D4 80A389E4 C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 036D8 80A389E8 46062200 */  add.s   $f8, $f4, $f6              
/* 036DC 80A389EC 10000011 */  beq     $zero, $zero, .L80A38A34   
/* 036E0 80A389F0 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
.L80A389F4:
/* 036E4 80A389F4 860900B6 */  lh      $t1, 0x00B6($s0)           ## 000000B6
/* 036E8 80A389F8 00692023 */  subu    $a0, $v1, $t1              
/* 036EC 80A389FC 00042400 */  sll     $a0, $a0, 16               
/* 036F0 80A38A00 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 036F4 80A38A04 00042403 */  sra     $a0, $a0, 16               
/* 036F8 80A38A08 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 036FC 80A38A0C 3C013E00 */  lui     $at, 0x3E00                ## $at = 3E000000
/* 03700 80A38A10 460C003E */  c.le.s  $f0, $f12                  
/* 03704 80A38A14 00000000 */  nop
/* 03708 80A38A18 45020007 */  bc1fl   .L80A38A38                 
/* 0370C 80A38A1C 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 03710 80A38A20 C60A0068 */  lwc1    $f10, 0x0068($s0)          ## 00000068
/* 03714 80A38A24 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.12
/* 03718 80A38A28 00000000 */  nop
/* 0371C 80A38A2C 46125101 */  sub.s   $f4, $f10, $f18            
/* 03720 80A38A30 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
.L80A38A34:
/* 03724 80A38A34 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
.L80A38A38:
/* 03728 80A38A38 30420008 */  andi    $v0, $v0, 0x0008           ## $v0 = 00000000
/* 0372C 80A38A3C 1440000E */  bne     $v0, $zero, .L80A38A78     
/* 03730 80A38A40 00000000 */  nop
/* 03734 80A38A44 860700B6 */  lh      $a3, 0x00B6($s0)           ## 000000B6
/* 03738 80A38A48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0373C 80A38A4C 8FA5005C */  lw      $a1, 0x005C($sp)           
/* 03740 80A38A50 24E73E80 */  addiu   $a3, $a3, 0x3E80           ## $a3 = 00003E80
/* 03744 80A38A54 00073C00 */  sll     $a3, $a3, 16               
/* 03748 80A38A58 00073C03 */  sra     $a3, $a3, 16               
/* 0374C 80A38A5C 0C00CE6E */  jal     func_800339B8              
/* 03750 80A38A60 8E060068 */  lw      $a2, 0x0068($s0)           ## 00000068
/* 03754 80A38A64 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 03758 80A38A68 54400039 */  bnel    $v0, $zero, .L80A38B50     
/* 0375C 80A38A6C C6080068 */  lwc1    $f8, 0x0068($s0)           ## 00000068
/* 03760 80A38A70 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 03764 80A38A74 30420008 */  andi    $v0, $v0, 0x0008           ## $v0 = 00000000
.L80A38A78:
/* 03768 80A38A78 10400014 */  beq     $v0, $zero, .L80A38ACC     
/* 0376C 80A38A7C 3C0180A4 */  lui     $at, %hi(D_80A3A264)       ## $at = 80A40000
/* 03770 80A38A80 C6060068 */  lwc1    $f6, 0x0068($s0)           ## 00000068
/* 03774 80A38A84 4606603E */  c.le.s  $f12, $f6                  
/* 03778 80A38A88 00000000 */  nop
/* 0377C 80A38A8C 45020007 */  bc1fl   .L80A38AAC                 
/* 03780 80A38A90 860300B6 */  lh      $v1, 0x00B6($s0)           ## 000000B6
/* 03784 80A38A94 860300B6 */  lh      $v1, 0x00B6($s0)           ## 000000B6
/* 03788 80A38A98 24633E80 */  addiu   $v1, $v1, 0x3E80           ## $v1 = 00003E80
/* 0378C 80A38A9C 00031C00 */  sll     $v1, $v1, 16               
/* 03790 80A38AA0 10000005 */  beq     $zero, $zero, .L80A38AB8   
/* 03794 80A38AA4 00031C03 */  sra     $v1, $v1, 16               
/* 03798 80A38AA8 860300B6 */  lh      $v1, 0x00B6($s0)           ## 000000B6
.L80A38AAC:
/* 0379C 80A38AAC 2463C180 */  addiu   $v1, $v1, 0xC180           ## $v1 = 00000000
/* 037A0 80A38AB0 00031C00 */  sll     $v1, $v1, 16               
/* 037A4 80A38AB4 00031C03 */  sra     $v1, $v1, 16               
.L80A38AB8:
/* 037A8 80A38AB8 860A007E */  lh      $t2, 0x007E($s0)           ## 0000007E
/* 037AC 80A38ABC 01431823 */  subu    $v1, $t2, $v1              
/* 037B0 80A38AC0 00031C00 */  sll     $v1, $v1, 16               
/* 037B4 80A38AC4 10000006 */  beq     $zero, $zero, .L80A38AE0   
/* 037B8 80A38AC8 00031C03 */  sra     $v1, $v1, 16               
.L80A38ACC:
/* 037BC 80A38ACC C6080068 */  lwc1    $f8, 0x0068($s0)           ## 00000068
/* 037C0 80A38AD0 C42AA264 */  lwc1    $f10, %lo(D_80A3A264)($at) 
/* 037C4 80A38AD4 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 037C8 80A38AD8 460A4482 */  mul.s   $f18, $f8, $f10            
/* 037CC 80A38ADC E6120068 */  swc1    $f18, 0x0068($s0)          ## 00000068
.L80A38AE0:
/* 037D0 80A38AE0 04600003 */  bltz    $v1, .L80A38AF0            
/* 037D4 80A38AE4 00031023 */  subu    $v0, $zero, $v1            
/* 037D8 80A38AE8 10000001 */  beq     $zero, $zero, .L80A38AF0   
/* 037DC 80A38AEC 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80A38AF0:
/* 037E0 80A38AF0 28414001 */  slti    $at, $v0, 0x4001           
/* 037E4 80A38AF4 14200015 */  bne     $at, $zero, .L80A38B4C     
/* 037E8 80A38AF8 3C0180A4 */  lui     $at, %hi(D_80A3A268)       ## $at = 80A40000
/* 037EC 80A38AFC C426A268 */  lwc1    $f6, %lo(D_80A3A268)($at)  
/* 037F0 80A38B00 C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 037F4 80A38B04 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 037F8 80A38B08 46062202 */  mul.s   $f8, $f4, $f6              
/* 037FC 80A38B0C E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 03800 80A38B10 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 03804 80A38B14 460C003C */  c.lt.s  $f0, $f12                  
/* 03808 80A38B18 00000000 */  nop
/* 0380C 80A38B1C 45020008 */  bc1fl   .L80A38B40                 
/* 03810 80A38B20 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 03814 80A38B24 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 03818 80A38B28 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 0381C 80A38B2C 00000000 */  nop
/* 03820 80A38B30 460A0481 */  sub.s   $f18, $f0, $f10            
/* 03824 80A38B34 10000005 */  beq     $zero, $zero, .L80A38B4C   
/* 03828 80A38B38 E6120068 */  swc1    $f18, 0x0068($s0)          ## 00000068
/* 0382C 80A38B3C 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
.L80A38B40:
/* 03830 80A38B40 00000000 */  nop
/* 03834 80A38B44 46040180 */  add.s   $f6, $f0, $f4              
/* 03838 80A38B48 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
.L80A38B4C:
/* 0383C 80A38B4C C6080068 */  lwc1    $f8, 0x0068($s0)           ## 00000068
.L80A38B50:
/* 03840 80A38B50 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 03844 80A38B54 44815000 */  mtc1    $at, $f10                  ## $f10 = 45.00
/* 03848 80A38B58 4608603E */  c.le.s  $f12, $f8                  
/* 0384C 80A38B5C 860300B6 */  lh      $v1, 0x00B6($s0)           ## 000000B6
/* 03850 80A38B60 45000003 */  bc1f    .L80A38B70                 
/* 03854 80A38B64 246B3E80 */  addiu   $t3, $v1, 0x3E80           ## $t3 = 00003E80
/* 03858 80A38B68 10000003 */  beq     $zero, $zero, .L80A38B78   
/* 0385C 80A38B6C A60B0032 */  sh      $t3, 0x0032($s0)           ## 00000032
.L80A38B70:
/* 03860 80A38B70 246CC180 */  addiu   $t4, $v1, 0xC180           ## $t4 = FFFFC180
/* 03864 80A38B74 A60C0032 */  sh      $t4, 0x0032($s0)           ## 00000032
.L80A38B78:
/* 03868 80A38B78 C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 0386C 80A38B7C 460A003E */  c.le.s  $f0, $f10                  
/* 03870 80A38B80 00000000 */  nop
/* 03874 80A38B84 45000009 */  bc1f    .L80A38BAC                 
/* 03878 80A38B88 26040304 */  addiu   $a0, $s0, 0x0304           ## $a0 = 00000304
/* 0387C 80A38B8C 3C05C080 */  lui     $a1, 0xC080                ## $a1 = C0800000
/* 03880 80A38B90 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 03884 80A38B94 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 03888 80A38B98 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 0388C 80A38B9C E7AC0010 */  swc1    $f12, 0x0010($sp)          
/* 03890 80A38BA0 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 03894 80A38BA4 10000019 */  beq     $zero, $zero, .L80A38C0C   
/* 03898 80A38BA8 C6020304 */  lwc1    $f2, 0x0304($s0)           ## 00000304
.L80A38BAC:
/* 0389C 80A38BAC 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 038A0 80A38BB0 44819000 */  mtc1    $at, $f18                  ## $f18 = 40.00
/* 038A4 80A38BB4 3C0740D4 */  lui     $a3, 0x40D4                ## $a3 = 40D40000
/* 038A8 80A38BB8 3C054080 */  lui     $a1, 0x4080                ## $a1 = 40800000
/* 038AC 80A38BBC 4600903C */  c.lt.s  $f18, $f0                  
/* 038B0 80A38BC0 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 40D4CCCD
/* 038B4 80A38BC4 26040304 */  addiu   $a0, $s0, 0x0304           ## $a0 = 00000304
/* 038B8 80A38BC8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 038BC 80A38BCC 4502000A */  bc1fl   .L80A38BF8                 
/* 038C0 80A38BD0 44056000 */  mfc1    $a1, $f12                  
/* 038C4 80A38BD4 26040304 */  addiu   $a0, $s0, 0x0304           ## $a0 = 00000304
/* 038C8 80A38BD8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 038CC 80A38BDC 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 038D0 80A38BE0 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 038D4 80A38BE4 E7AC0010 */  swc1    $f12, 0x0010($sp)          
/* 038D8 80A38BE8 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 038DC 80A38BEC 10000007 */  beq     $zero, $zero, .L80A38C0C   
/* 038E0 80A38BF0 C6020304 */  lwc1    $f2, 0x0304($s0)           ## 00000304
/* 038E4 80A38BF4 44056000 */  mfc1    $a1, $f12                  
.L80A38BF8:
/* 038E8 80A38BF8 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 038EC 80A38BFC E7AC0010 */  swc1    $f12, 0x0010($sp)          
/* 038F0 80A38C00 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 038F4 80A38C04 00000000 */  nop
/* 038F8 80A38C08 C6020304 */  lwc1    $f2, 0x0304($s0)           ## 00000304
.L80A38C0C:
/* 038FC 80A38C0C 46026032 */  c.eq.s  $f12, $f2                  
/* 03900 80A38C10 00000000 */  nop
/* 03904 80A38C14 45030010 */  bc1tl   .L80A38C58                 
/* 03908 80A38C18 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 0390C 80A38C1C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 03910 80A38C20 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 03914 80A38C24 C6060304 */  lwc1    $f6, 0x0304($s0)           ## 00000304
/* 03918 80A38C28 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 0391C 80A38C2C 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 03920 80A38C30 46060202 */  mul.s   $f8, $f0, $f6              
/* 03924 80A38C34 46082280 */  add.s   $f10, $f4, $f8             
/* 03928 80A38C38 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0392C 80A38C3C E60A0024 */  swc1    $f10, 0x0024($s0)          ## 00000024
/* 03930 80A38C40 C6020304 */  lwc1    $f2, 0x0304($s0)           ## 00000304
/* 03934 80A38C44 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 03938 80A38C48 46020182 */  mul.s   $f6, $f0, $f2              
/* 0393C 80A38C4C 46069100 */  add.s   $f4, $f18, $f6             
/* 03940 80A38C50 E604002C */  swc1    $f4, 0x002C($s0)           ## 0000002C
/* 03944 80A38C54 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
.L80A38C58:
/* 03948 80A38C58 00000000 */  nop
/* 0394C 80A38C5C 4602803E */  c.le.s  $f16, $f2                  
/* 03950 80A38C60 00000000 */  nop
/* 03954 80A38C64 45020004 */  bc1fl   .L80A38C78                 
/* 03958 80A38C68 46001307 */  neg.s   $f12, $f2                  
/* 0395C 80A38C6C 10000002 */  beq     $zero, $zero, .L80A38C78   
/* 03960 80A38C70 46001306 */  mov.s   $f12, $f2                  
/* 03964 80A38C74 46001307 */  neg.s   $f12, $f2                  
.L80A38C78:
/* 03968 80A38C78 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 0396C 80A38C7C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 03970 80A38C80 4600803E */  c.le.s  $f16, $f0                  
/* 03974 80A38C84 00000000 */  nop
/* 03978 80A38C88 45020004 */  bc1fl   .L80A38C9C                 
/* 0397C 80A38C8C 46000387 */  neg.s   $f14, $f0                  
/* 03980 80A38C90 10000002 */  beq     $zero, $zero, .L80A38C9C   
/* 03984 80A38C94 46000386 */  mov.s   $f14, $f0                  
/* 03988 80A38C98 46000387 */  neg.s   $f14, $f0                  
.L80A38C9C:
/* 0398C 80A38C9C 460E603C */  c.lt.s  $f12, $f14                 
/* 03990 80A38CA0 00000000 */  nop
/* 03994 80A38CA4 45020008 */  bc1fl   .L80A38CC8                 
/* 03998 80A38CA8 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 0399C 80A38CAC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 039A0 80A38CB0 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 039A4 80A38CB4 46000207 */  neg.s   $f8, $f0                   
/* 039A8 80A38CB8 460A4482 */  mul.s   $f18, $f8, $f10            
/* 039AC 80A38CBC 10000005 */  beq     $zero, $zero, .L80A38CD4   
/* 039B0 80A38CC0 E61201A4 */  swc1    $f18, 0x01A4($s0)          ## 000001A4
/* 039B4 80A38CC4 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
.L80A38CC8:
/* 039B8 80A38CC8 46001187 */  neg.s   $f6, $f2                   
/* 039BC 80A38CCC 46043202 */  mul.s   $f8, $f6, $f4              
/* 039C0 80A38CD0 E60801A4 */  swc1    $f8, 0x01A4($s0)           ## 000001A4
.L80A38CD4:
/* 039C4 80A38CD4 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 039C8 80A38CD8 44811000 */  mtc1    $at, $f2                   ## $f2 = -3.00
/* 039CC 80A38CDC C60001A4 */  lwc1    $f0, 0x01A4($s0)           ## 000001A4
/* 039D0 80A38CE0 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 039D4 80A38CE4 4602003C */  c.lt.s  $f0, $f2                   
/* 039D8 80A38CE8 00000000 */  nop
/* 039DC 80A38CEC 45020004 */  bc1fl   .L80A38D00                 
/* 039E0 80A38CF0 44811000 */  mtc1    $at, $f2                   ## $f2 = 3.00
/* 039E4 80A38CF4 1000000B */  beq     $zero, $zero, .L80A38D24   
/* 039E8 80A38CF8 E60201A4 */  swc1    $f2, 0x01A4($s0)           ## 000001A4
/* 039EC 80A38CFC 44811000 */  mtc1    $at, $f2                   ## $f2 = 3.00
.L80A38D00:
/* 039F0 80A38D00 00000000 */  nop
/* 039F4 80A38D04 4600103C */  c.lt.s  $f2, $f0                   
/* 039F8 80A38D08 00000000 */  nop
/* 039FC 80A38D0C 45020004 */  bc1fl   .L80A38D20                 
/* 03A00 80A38D10 46000386 */  mov.s   $f14, $f0                  
/* 03A04 80A38D14 10000002 */  beq     $zero, $zero, .L80A38D20   
/* 03A08 80A38D18 46001386 */  mov.s   $f14, $f2                  
/* 03A0C 80A38D1C 46000386 */  mov.s   $f14, $f0                  
.L80A38D20:
/* 03A10 80A38D20 E60E01A4 */  swc1    $f14, 0x01A4($s0)          ## 000001A4
.L80A38D24:
/* 03A14 80A38D24 C60A01A0 */  lwc1    $f10, 0x01A0($s0)          ## 000001A0
/* 03A18 80A38D28 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 03A1C 80A38D2C 4600548D */  trunc.w.s $f18, $f10                 
/* 03A20 80A38D30 440E9000 */  mfc1    $t6, $f18                  
/* 03A24 80A38D34 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 03A28 80A38D38 AFAE004C */  sw      $t6, 0x004C($sp)           
/* 03A2C 80A38D3C 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 03A30 80A38D40 C60001A4 */  lwc1    $f0, 0x01A4($s0)           ## 000001A4
/* 03A34 80A38D44 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 03A38 80A38D48 4600803E */  c.le.s  $f16, $f0                  
/* 03A3C 80A38D4C 00000000 */  nop
/* 03A40 80A38D50 45020004 */  bc1fl   .L80A38D64                 
/* 03A44 80A38D54 46000387 */  neg.s   $f14, $f0                  
/* 03A48 80A38D58 10000002 */  beq     $zero, $zero, .L80A38D64   
/* 03A4C 80A38D5C 46000386 */  mov.s   $f14, $f0                  
/* 03A50 80A38D60 46000387 */  neg.s   $f14, $f0                  
.L80A38D64:
/* 03A54 80A38D64 C60601A0 */  lwc1    $f6, 0x01A0($s0)           ## 000001A0
/* 03A58 80A38D68 4600803E */  c.le.s  $f16, $f0                  
/* 03A5C 80A38D6C 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 03A60 80A38D70 460E3101 */  sub.s   $f4, $f6, $f14             
/* 03A64 80A38D74 4600220D */  trunc.w.s $f8, $f4                   
/* 03A68 80A38D78 44184000 */  mfc1    $t8, $f8                   
/* 03A6C 80A38D7C 45000003 */  bc1f    .L80A38D8C                 
/* 03A70 80A38D80 AFB80048 */  sw      $t8, 0x0048($sp)           
/* 03A74 80A38D84 10000002 */  beq     $zero, $zero, .L80A38D90   
/* 03A78 80A38D88 46000386 */  mov.s   $f14, $f0                  
.L80A38D8C:
/* 03A7C 80A38D8C 46000387 */  neg.s   $f14, $f0                  
.L80A38D90:
/* 03A80 80A38D90 0C28E78B */  jal     func_80A39E2C              
/* 03A84 80A38D94 E7AE0030 */  swc1    $f14, 0x0030($sp)          
/* 03A88 80A38D98 144000B3 */  bne     $v0, $zero, .L80A39068     
/* 03A8C 80A38D9C C7AE0030 */  lwc1    $f14, 0x0030($sp)          
/* 03A90 80A38DA0 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 03A94 80A38DA4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 03A98 80A38DA8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 03A9C 80A38DAC 0C28D567 */  jal     func_80A3559C              
/* 03AA0 80A38DB0 E7AE0030 */  swc1    $f14, 0x0030($sp)          
/* 03AA4 80A38DB4 144000AC */  bne     $v0, $zero, .L80A39068     
/* 03AA8 80A38DB8 C7AE0030 */  lwc1    $f14, 0x0030($sp)          
/* 03AAC 80A38DBC 8E190300 */  lw      $t9, 0x0300($s0)           ## 00000300
/* 03AB0 80A38DC0 2728FFFF */  addiu   $t0, $t9, 0xFFFF           ## $t0 = FFFFFFFF
/* 03AB4 80A38DC4 15000081 */  bne     $t0, $zero, .L80A38FCC     
/* 03AB8 80A38DC8 AE080300 */  sw      $t0, 0x0300($s0)           ## 00000300
/* 03ABC 80A38DCC 8FAA0050 */  lw      $t2, 0x0050($sp)           
/* 03AC0 80A38DD0 860300B6 */  lh      $v1, 0x00B6($s0)           ## 000000B6
/* 03AC4 80A38DD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03AC8 80A38DD8 854B00B6 */  lh      $t3, 0x00B6($t2)           ## 000000B6
/* 03ACC 80A38DDC 8FA7005C */  lw      $a3, 0x005C($sp)           
/* 03AD0 80A38DE0 01631023 */  subu    $v0, $t3, $v1              
/* 03AD4 80A38DE4 00021400 */  sll     $v0, $v0, 16               
/* 03AD8 80A38DE8 00021403 */  sra     $v0, $v0, 16               
/* 03ADC 80A38DEC 04430005 */  bgezl   $v0, .L80A38E04            
/* 03AE0 80A38DF0 28413A98 */  slti    $at, $v0, 0x3A98           
/* 03AE4 80A38DF4 00021023 */  subu    $v0, $zero, $v0            
/* 03AE8 80A38DF8 00021400 */  sll     $v0, $v0, 16               
/* 03AEC 80A38DFC 00021403 */  sra     $v0, $v0, 16               
/* 03AF0 80A38E00 28413A98 */  slti    $at, $v0, 0x3A98           
.L80A38E04:
/* 03AF4 80A38E04 54200011 */  bnel    $at, $zero, .L80A38E4C     
/* 03AF8 80A38E08 8CE21C44 */  lw      $v0, 0x1C44($a3)           ## 00001C44
/* 03AFC 80A38E0C 0C28D752 */  jal     func_80A35D48              
/* 03B00 80A38E10 E7AE0030 */  swc1    $f14, 0x0030($sp)          
/* 03B04 80A38E14 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 03B08 80A38E18 00000000 */  nop
/* 03B0C 80A38E1C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 03B10 80A38E20 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 03B14 80A38E24 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 03B18 80A38E28 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 03B1C 80A38E2C 460A0482 */  mul.s   $f18, $f0, $f10            
/* 03B20 80A38E30 C7AE0030 */  lwc1    $f14, 0x0030($sp)          
/* 03B24 80A38E34 46069100 */  add.s   $f4, $f18, $f6             
/* 03B28 80A38E38 4600220D */  trunc.w.s $f8, $f4                   
/* 03B2C 80A38E3C 440D4000 */  mfc1    $t5, $f8                   
/* 03B30 80A38E40 10000062 */  beq     $zero, $zero, .L80A38FCC   
/* 03B34 80A38E44 AE0D0300 */  sw      $t5, 0x0300($s0)           ## 00000300
/* 03B38 80A38E48 8CE21C44 */  lw      $v0, 0x1C44($a3)           ## 00001C44
.L80A38E4C:
/* 03B3C 80A38E4C 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 03B40 80A38E50 44815000 */  mtc1    $at, $f10                  ## $f10 = 45.00
/* 03B44 80A38E54 C6120090 */  lwc1    $f18, 0x0090($s0)          ## 00000090
/* 03B48 80A38E58 844E00B6 */  lh      $t6, 0x00B6($v0)           ## 000000B6
/* 03B4C 80A38E5C A6030032 */  sh      $v1, 0x0032($s0)           ## 00000032
/* 03B50 80A38E60 460A903E */  c.le.s  $f18, $f10                 
/* 03B54 80A38E64 01C33023 */  subu    $a2, $t6, $v1              
/* 03B58 80A38E68 00063400 */  sll     $a2, $a2, 16               
/* 03B5C 80A38E6C 00063403 */  sra     $a2, $a2, 16               
/* 03B60 80A38E70 4500001B */  bc1f    .L80A38EE0                 
/* 03B64 80A38E74 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 03B68 80A38E78 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 03B6C 80A38E7C A7A6003A */  sh      $a2, 0x003A($sp)           
/* 03B70 80A38E80 0C00CEAE */  jal     func_80033AB8              
/* 03B74 80A38E84 E7AE0030 */  swc1    $f14, 0x0030($sp)          
/* 03B78 80A38E88 87A6003A */  lh      $a2, 0x003A($sp)           
/* 03B7C 80A38E8C 14400014 */  bne     $v0, $zero, .L80A38EE0     
/* 03B80 80A38E90 C7AE0030 */  lwc1    $f14, 0x0030($sp)          
/* 03B84 80A38E94 8FAF005C */  lw      $t7, 0x005C($sp)           
/* 03B88 80A38E98 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 03B8C 80A38E9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03B90 80A38EA0 030FC021 */  addu    $t8, $t8, $t7              
/* 03B94 80A38EA4 8F181DE4 */  lw      $t8, 0x1DE4($t8)           ## 00011DE4
/* 03B98 80A38EA8 33190003 */  andi    $t9, $t8, 0x0003           ## $t9 = 00000000
/* 03B9C 80A38EAC 13200008 */  beq     $t9, $zero, .L80A38ED0     
/* 03BA0 80A38EB0 00000000 */  nop
/* 03BA4 80A38EB4 04C00003 */  bltz    $a2, .L80A38EC4            
/* 03BA8 80A38EB8 00061023 */  subu    $v0, $zero, $a2            
/* 03BAC 80A38EBC 10000001 */  beq     $zero, $zero, .L80A38EC4   
/* 03BB0 80A38EC0 00C01025 */  or      $v0, $a2, $zero            ## $v0 = 00000000
.L80A38EC4:
/* 03BB4 80A38EC4 284138E0 */  slti    $at, $v0, 0x38E0           
/* 03BB8 80A38EC8 50200006 */  beql    $at, $zero, .L80A38EE4     
/* 03BBC 80A38ECC 3C014352 */  lui     $at, 0x4352                ## $at = 43520000
.L80A38ED0:
/* 03BC0 80A38ED0 0C28DD9C */  jal     func_80A37670              
/* 03BC4 80A38ED4 E7AE0030 */  swc1    $f14, 0x0030($sp)          
/* 03BC8 80A38ED8 1000003C */  beq     $zero, $zero, .L80A38FCC   
/* 03BCC 80A38EDC C7AE0030 */  lwc1    $f14, 0x0030($sp)          
.L80A38EE0:
/* 03BD0 80A38EE0 3C014352 */  lui     $at, 0x4352                ## $at = 43520000
.L80A38EE4:
/* 03BD4 80A38EE4 44813000 */  mtc1    $at, $f6                   ## $f6 = 210.00
/* 03BD8 80A38EE8 C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 03BDC 80A38EEC 8FA7005C */  lw      $a3, 0x005C($sp)           
/* 03BE0 80A38EF0 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 03BE4 80A38EF4 4606003C */  c.lt.s  $f0, $f6                   
/* 03BE8 80A38EF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03BEC 80A38EFC 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 03BF0 80A38F00 4500002F */  bc1f    .L80A38FC0                 
/* 03BF4 80A38F04 00000000 */  nop
/* 03BF8 80A38F08 44812000 */  mtc1    $at, $f4                   ## $f4 = 150.00
/* 03BFC 80A38F0C 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 03C00 80A38F10 01074021 */  addu    $t0, $t0, $a3              
/* 03C04 80A38F14 4600203C */  c.lt.s  $f4, $f0                   
/* 03C08 80A38F18 00000000 */  nop
/* 03C0C 80A38F1C 45000028 */  bc1f    .L80A38FC0                 
/* 03C10 80A38F20 00000000 */  nop
/* 03C14 80A38F24 8D081DE4 */  lw      $t0, 0x1DE4($t0)           ## 00011DE4
/* 03C18 80A38F28 31090001 */  andi    $t1, $t0, 0x0001           ## $t1 = 00000000
/* 03C1C 80A38F2C 15200024 */  bne     $t1, $zero, .L80A38FC0     
/* 03C20 80A38F30 00000000 */  nop
/* 03C24 80A38F34 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 03C28 80A38F38 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 03C2C 80A38F3C A7A6003A */  sh      $a2, 0x003A($sp)           
/* 03C30 80A38F40 0C00CEAE */  jal     func_80033AB8              
/* 03C34 80A38F44 E7AE0030 */  swc1    $f14, 0x0030($sp)          
/* 03C38 80A38F48 87A6003A */  lh      $a2, 0x003A($sp)           
/* 03C3C 80A38F4C 14400013 */  bne     $v0, $zero, .L80A38F9C     
/* 03C40 80A38F50 C7AE0030 */  lwc1    $f14, 0x0030($sp)          
/* 03C44 80A38F54 A7A6003A */  sh      $a2, 0x003A($sp)           
/* 03C48 80A38F58 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 03C4C 80A38F5C E7AE0030 */  swc1    $f14, 0x0030($sp)          
/* 03C50 80A38F60 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 03C54 80A38F64 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 03C58 80A38F68 87A6003A */  lh      $a2, 0x003A($sp)           
/* 03C5C 80A38F6C C7AE0030 */  lwc1    $f14, 0x0030($sp)          
/* 03C60 80A38F70 4600403C */  c.lt.s  $f8, $f0                   
/* 03C64 80A38F74 00000000 */  nop
/* 03C68 80A38F78 45030009 */  bc1tl   .L80A38FA0                 
/* 03C6C 80A38F7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03C70 80A38F80 04C00003 */  bltz    $a2, .L80A38F90            
/* 03C74 80A38F84 00061023 */  subu    $v0, $zero, $a2            
/* 03C78 80A38F88 10000001 */  beq     $zero, $zero, .L80A38F90   
/* 03C7C 80A38F8C 00C01025 */  or      $v0, $a2, $zero            ## $v0 = 00000000
.L80A38F90:
/* 03C80 80A38F90 284138E0 */  slti    $at, $v0, 0x38E0           
/* 03C84 80A38F94 10200006 */  beq     $at, $zero, .L80A38FB0     
/* 03C88 80A38F98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A38F9C:
/* 03C8C 80A38F9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A38FA0:
/* 03C90 80A38FA0 0C28D977 */  jal     func_80A365DC              
/* 03C94 80A38FA4 E7AE0030 */  swc1    $f14, 0x0030($sp)          
/* 03C98 80A38FA8 10000008 */  beq     $zero, $zero, .L80A38FCC   
/* 03C9C 80A38FAC C7AE0030 */  lwc1    $f14, 0x0030($sp)          
.L80A38FB0:
/* 03CA0 80A38FB0 0C28DE4B */  jal     func_80A3792C              
/* 03CA4 80A38FB4 E7AE0030 */  swc1    $f14, 0x0030($sp)          
/* 03CA8 80A38FB8 10000004 */  beq     $zero, $zero, .L80A38FCC   
/* 03CAC 80A38FBC C7AE0030 */  lwc1    $f14, 0x0030($sp)          
.L80A38FC0:
/* 03CB0 80A38FC0 0C28D82C */  jal     func_80A360B0              
/* 03CB4 80A38FC4 E7AE0030 */  swc1    $f14, 0x0030($sp)          
/* 03CB8 80A38FC8 C7AE0030 */  lwc1    $f14, 0x0030($sp)          
.L80A38FCC:
/* 03CBC 80A38FCC C60A01A0 */  lwc1    $f10, 0x01A0($s0)          ## 000001A0
/* 03CC0 80A38FD0 8FA3004C */  lw      $v1, 0x004C($sp)           
/* 03CC4 80A38FD4 8FA2005C */  lw      $v0, 0x005C($sp)           
/* 03CC8 80A38FD8 4600548D */  trunc.w.s $f18, $f10                 
/* 03CCC 80A38FDC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 03CD0 80A38FE0 8FA40048 */  lw      $a0, 0x0048($sp)           
/* 03CD4 80A38FE4 00411021 */  addu    $v0, $v0, $at              
/* 03CD8 80A38FE8 440B9000 */  mfc1    $t3, $f18                  
/* 03CDC 80A38FEC 00000000 */  nop
/* 03CE0 80A38FF0 506B0017 */  beql    $v1, $t3, .L80A39050       
/* 03CE4 80A38FF4 8C481DE4 */  lw      $t0, 0x1DE4($v0)           ## 00001DE4
/* 03CE8 80A38FF8 04810007 */  bgez    $a0, .L80A39018            
/* 03CEC 80A38FFC 28810005 */  slti    $at, $a0, 0x0005           
/* 03CF0 80A39000 4600718D */  trunc.w.s $f6, $f14                  
/* 03CF4 80A39004 440D3000 */  mfc1    $t5, $f6                   
/* 03CF8 80A39008 00000000 */  nop
/* 03CFC 80A3900C 01A37021 */  addu    $t6, $t5, $v1              
/* 03D00 80A39010 5DC0000A */  bgtzl   $t6, .L80A3903C            
/* 03D04 80A39014 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A39018:
/* 03D08 80A39018 5020000D */  beql    $at, $zero, .L80A39050     
/* 03D0C 80A3901C 8C481DE4 */  lw      $t0, 0x1DE4($v0)           ## 00001DE4
/* 03D10 80A39020 4600710D */  trunc.w.s $f4, $f14                  
/* 03D14 80A39024 44182000 */  mfc1    $t8, $f4                   
/* 03D18 80A39028 00000000 */  nop
/* 03D1C 80A3902C 0303C821 */  addu    $t9, $t8, $v1              
/* 03D20 80A39030 2B210006 */  slti    $at, $t9, 0x0006           
/* 03D24 80A39034 14200005 */  bne     $at, $zero, .L80A3904C     
/* 03D28 80A39038 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A3903C:
/* 03D2C 80A3903C 240539A0 */  addiu   $a1, $zero, 0x39A0         ## $a1 = 000039A0
/* 03D30 80A39040 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 03D34 80A39044 AFA20028 */  sw      $v0, 0x0028($sp)           
/* 03D38 80A39048 8FA20028 */  lw      $v0, 0x0028($sp)           
.L80A3904C:
/* 03D3C 80A3904C 8C481DE4 */  lw      $t0, 0x1DE4($v0)           ## 00001DE4
.L80A39050:
/* 03D40 80A39050 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03D44 80A39054 3109005F */  andi    $t1, $t0, 0x005F           ## $t1 = 00000000
/* 03D48 80A39058 55200004 */  bnel    $t1, $zero, .L80A3906C     
/* 03D4C 80A3905C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03D50 80A39060 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 03D54 80A39064 240539C6 */  addiu   $a1, $zero, 0x39C6         ## $a1 = 000039C6
.L80A39068:
/* 03D58 80A39068 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A3906C:
/* 03D5C 80A3906C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 03D60 80A39070 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 03D64 80A39074 03E00008 */  jr      $ra                        
/* 03D68 80A39078 00000000 */  nop


