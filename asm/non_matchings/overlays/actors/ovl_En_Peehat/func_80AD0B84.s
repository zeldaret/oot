glabel func_80AD0B84
/* 016E4 80AD0B84 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 016E8 80AD0B88 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 016EC 80AD0B8C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 016F0 80AD0B90 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 016F4 80AD0B94 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 016F8 80AD0B98 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 016FC 80AD0B9C 3C05C47A */  lui     $a1, 0xC47A                ## $a1 = C47A0000
/* 01700 80AD0BA0 248400BC */  addiu   $a0, $a0, 0x00BC           ## $a0 = 000000BC
/* 01704 80AD0BA4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01708 80AD0BA8 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 0170C 80AD0BAC 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01710 80AD0BB0 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 01714 80AD0BB4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01718 80AD0BB8 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 0171C 80AD0BBC 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 01720 80AD0BC0 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 01724 80AD0BC4 44060000 */  mfc1    $a2, $f0                   
/* 01728 80AD0BC8 44070000 */  mfc1    $a3, $f0                   
/* 0172C 80AD0BCC 44051000 */  mfc1    $a1, $f2                   
/* 01730 80AD0BD0 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01734 80AD0BD4 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 01738 80AD0BD8 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 0173C 80AD0BDC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01740 80AD0BE0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01744 80AD0BE4 24070032 */  addiu   $a3, $zero, 0x0032         ## $a3 = 00000032
/* 01748 80AD0BE8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0174C 80AD0BEC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01750 80AD0BF0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01754 80AD0BF4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01758 80AD0BF8 5040000B */  beql    $v0, $zero, .L80AD0C28     
/* 0175C 80AD0BFC C6000080 */  lwc1    $f0, 0x0080($s0)           ## 00000080
/* 01760 80AD0C00 0C2B3ECD */  jal     func_80ACFB34              
/* 01764 80AD0C04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01768 80AD0C08 C6060080 */  lwc1    $f6, 0x0080($s0)           ## 00000080
/* 0176C 80AD0C0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01770 80AD0C10 24053957 */  addiu   $a1, $zero, 0x3957         ## $a1 = 00003957
/* 01774 80AD0C14 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01778 80AD0C18 E6060028 */  swc1    $f6, 0x0028($s0)           ## 00000028
/* 0177C 80AD0C1C 10000039 */  beq     $zero, $zero, .L80AD0D04   
/* 01780 80AD0C20 260402F0 */  addiu   $a0, $s0, 0x02F0           ## $a0 = 000002F0
/* 01784 80AD0C24 C6000080 */  lwc1    $f0, 0x0080($s0)           ## 00000080
.L80AD0C28:
/* 01788 80AD0C28 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 0178C 80AD0C2C 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 01790 80AD0C30 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 01794 80AD0C34 4608003C */  c.lt.s  $f0, $f8                   
/* 01798 80AD0C38 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 0179C 80AD0C3C 3C074060 */  lui     $a3, 0x4060                ## $a3 = 40600000
/* 017A0 80AD0C40 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 017A4 80AD0C44 4502002F */  bc1fl   .L80AD0D04                 
/* 017A8 80AD0C48 260402F0 */  addiu   $a0, $s0, 0x02F0           ## $a0 = 000002F0
/* 017AC 80AD0C4C 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.25
/* 017B0 80AD0C50 44050000 */  mfc1    $a1, $f0                   
/* 017B4 80AD0C54 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 017B8 80AD0C58 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 017BC 80AD0C5C C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 017C0 80AD0C60 C6120080 */  lwc1    $f18, 0x0080($s0)          ## 00000080
/* 017C4 80AD0C64 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 017C8 80AD0C68 44813000 */  mtc1    $at, $f6                   ## $f6 = 60.00
/* 017CC 80AD0C6C 46128101 */  sub.s   $f4, $f16, $f18            
/* 017D0 80AD0C70 4606203C */  c.lt.s  $f4, $f6                   
/* 017D4 80AD0C74 00000000 */  nop
/* 017D8 80AD0C78 45020022 */  bc1fl   .L80AD0D04                 
/* 017DC 80AD0C7C 260402F0 */  addiu   $a0, $s0, 0x02F0           ## $a0 = 000002F0
/* 017E0 80AD0C80 8E0F0024 */  lw      $t7, 0x0024($s0)           ## 00000024
/* 017E4 80AD0C84 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFF4
/* 017E8 80AD0C88 24180096 */  addiu   $t8, $zero, 0x0096         ## $t8 = 00000096
/* 017EC 80AD0C8C ACAF0000 */  sw      $t7, 0x0000($a1)           ## FFFFFFF4
/* 017F0 80AD0C90 8E0E0028 */  lw      $t6, 0x0028($s0)           ## 00000028
/* 017F4 80AD0C94 24190064 */  addiu   $t9, $zero, 0x0064         ## $t9 = 00000064
/* 017F8 80AD0C98 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 017FC 80AD0C9C ACAE0004 */  sw      $t6, 0x0004($a1)           ## FFFFFFF8
/* 01800 80AD0CA0 8E0F002C */  lw      $t7, 0x002C($s0)           ## 0000002C
/* 01804 80AD0CA4 3C0642A0 */  lui     $a2, 0x42A0                ## $a2 = 42A00000
/* 01808 80AD0CA8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0180C 80AD0CAC ACAF0008 */  sw      $t7, 0x0008($a1)           ## FFFFFFFC
/* 01810 80AD0CB0 C6080080 */  lwc1    $f8, 0x0080($s0)           ## 00000080
/* 01814 80AD0CB4 AFA80018 */  sw      $t0, 0x0018($sp)           
/* 01818 80AD0CB8 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 0181C 80AD0CBC AFB80010 */  sw      $t8, 0x0010($sp)           
/* 01820 80AD0CC0 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 01824 80AD0CC4 0C00CD20 */  jal     func_80033480              
/* 01828 80AD0CC8 E7A80038 */  swc1    $f8, 0x0038($sp)           
/* 0182C 80AD0CCC 3C0180AD */  lui     $at, %hi(D_80AD2930)       ## $at = 80AD0000
/* 01830 80AD0CD0 C42A2930 */  lwc1    $f10, %lo(D_80AD2930)($at) 
/* 01834 80AD0CD4 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01838 80AD0CD8 44818000 */  mtc1    $at, $f16                  ## $f16 = 2.00
/* 0183C 80AD0CDC 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 01840 80AD0CE0 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 01844 80AD0CE4 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 01848 80AD0CE8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0184C 80AD0CEC 27A60034 */  addiu   $a2, $sp, 0x0034           ## $a2 = FFFFFFF4
/* 01850 80AD0CF0 3C074296 */  lui     $a3, 0x4296                ## $a3 = 42960000
/* 01854 80AD0CF4 E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 01858 80AD0CF8 0C2B3DE2 */  jal     func_80ACF788              
/* 0185C 80AD0CFC E7B00018 */  swc1    $f16, 0x0018($sp)          
/* 01860 80AD0D00 260402F0 */  addiu   $a0, $s0, 0x02F0           ## $a0 = 000002F0
.L80AD0D04:
/* 01864 80AD0D04 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01868 80AD0D08 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0186C 80AD0D0C 24070064 */  addiu   $a3, $zero, 0x0064         ## $a3 = 00000064
/* 01870 80AD0D10 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01874 80AD0D14 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01878 80AD0D18 860A02F2 */  lh      $t2, 0x02F2($s0)           ## 000002F2
/* 0187C 80AD0D1C 860B02F0 */  lh      $t3, 0x02F0($s0)           ## 000002F0
/* 01880 80AD0D20 014B6021 */  addu    $t4, $t2, $t3              
/* 01884 80AD0D24 A60C02F2 */  sh      $t4, 0x02F2($s0)           ## 000002F2
/* 01888 80AD0D28 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0188C 80AD0D2C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 01890 80AD0D30 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 01894 80AD0D34 03E00008 */  jr      $ra                        
/* 01898 80AD0D38 00000000 */  nop


