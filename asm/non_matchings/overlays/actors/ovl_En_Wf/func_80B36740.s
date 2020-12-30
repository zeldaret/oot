.late_rodata
glabel D_80B37BC4
 .word 0x3E333333
glabel D_80B37BC8
 .word 0x3E333333

.text
glabel func_80B36740
/* 02A90 80B36740 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 02A94 80B36744 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 02A98 80B36748 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 02A9C 80B3674C AFA50074 */  sw      $a1, 0x0074($sp)           
/* 02AA0 80B36750 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 02AA4 80B36754 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02AA8 80B36758 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02AAC 80B3675C AFAF0068 */  sw      $t7, 0x0068($sp)           
/* 02AB0 80B36760 E7A40058 */  swc1    $f4, 0x0058($sp)           
/* 02AB4 80B36764 861902FE */  lh      $t9, 0x02FE($s0)           ## 000002FE
/* 02AB8 80B36768 8618008A */  lh      $t8, 0x008A($s0)           ## 0000008A
/* 02ABC 80B3676C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 02AC0 80B36770 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 02AC4 80B36774 03192821 */  addu    $a1, $t8, $t9              
/* 02AC8 80B36778 00052C00 */  sll     $a1, $a1, 16               
/* 02ACC 80B3677C 00052C03 */  sra     $a1, $a1, 16               
/* 02AD0 80B36780 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 02AD4 80B36784 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 02AD8 80B36788 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 02ADC 80B3678C 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 02AE0 80B36790 96030088 */  lhu     $v1, 0x0088($s0)           ## 00000088
/* 02AE4 80B36794 30630008 */  andi    $v1, $v1, 0x0008           ## $v1 = 00000000
/* 02AE8 80B36798 14600009 */  bne     $v1, $zero, .L80B367C0     
/* 02AEC 80B3679C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02AF0 80B367A0 8FA50074 */  lw      $a1, 0x0074($sp)           
/* 02AF4 80B367A4 8E060068 */  lw      $a2, 0x0068($s0)           ## 00000068
/* 02AF8 80B367A8 0C00CE6E */  jal     func_800339B8              
/* 02AFC 80B367AC 860700B6 */  lh      $a3, 0x00B6($s0)           ## 000000B6
/* 02B00 80B367B0 54400018 */  bnel    $v0, $zero, .L80B36814     
/* 02B04 80B367B4 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 02B08 80B367B8 96030088 */  lhu     $v1, 0x0088($s0)           ## 00000088
/* 02B0C 80B367BC 30630008 */  andi    $v1, $v1, 0x0008           ## $v1 = 00000000
.L80B367C0:
/* 02B10 80B367C0 10600009 */  beq     $v1, $zero, .L80B367E8     
/* 02B14 80B367C4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 02B18 80B367C8 8609007E */  lh      $t1, 0x007E($s0)           ## 0000007E
/* 02B1C 80B367CC 860A008A */  lh      $t2, 0x008A($s0)           ## 0000008A
/* 02B20 80B367D0 860C02FE */  lh      $t4, 0x02FE($s0)           ## 000002FE
/* 02B24 80B367D4 012A5823 */  subu    $t3, $t1, $t2              
/* 02B28 80B367D8 016C1023 */  subu    $v0, $t3, $t4              
/* 02B2C 80B367DC 00021400 */  sll     $v0, $v0, 16               
/* 02B30 80B367E0 10000001 */  beq     $zero, $zero, .L80B367E8   
/* 02B34 80B367E4 00021403 */  sra     $v0, $v0, 16               
.L80B367E8:
/* 02B38 80B367E8 04400003 */  bltz    $v0, .L80B367F8            
/* 02B3C 80B367EC 00021823 */  subu    $v1, $zero, $v0            
/* 02B40 80B367F0 10000001 */  beq     $zero, $zero, .L80B367F8   
/* 02B44 80B367F4 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80B367F8:
/* 02B48 80B367F8 28612EE1 */  slti    $at, $v1, 0x2EE1           
/* 02B4C 80B367FC 54200005 */  bnel    $at, $zero, .L80B36814     
/* 02B50 80B36800 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 02B54 80B36804 860D02FE */  lh      $t5, 0x02FE($s0)           ## 000002FE
/* 02B58 80B36808 000D7023 */  subu    $t6, $zero, $t5            
/* 02B5C 80B3680C A60E02FE */  sh      $t6, 0x02FE($s0)           ## 000002FE
/* 02B60 80B36810 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
.L80B36814:
/* 02B64 80B36814 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02B68 80B36818 A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
/* 02B6C 80B3681C 0C00CEAE */  jal     func_80033AB8              
/* 02B70 80B36820 8FA40074 */  lw      $a0, 0x0074($sp)           
/* 02B74 80B36824 10400004 */  beq     $v0, $zero, .L80B36838     
/* 02B78 80B36828 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 02B7C 80B3682C 44811000 */  mtc1    $at, $f2                   ## $f2 = 150.00
/* 02B80 80B36830 00000000 */  nop
/* 02B84 80B36834 E7A20058 */  swc1    $f2, 0x0058($sp)           
.L80B36838:
/* 02B88 80B36838 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 02B8C 80B3683C C7A20058 */  lwc1    $f2, 0x0058($sp)           
/* 02B90 80B36840 44813000 */  mtc1    $at, $f6                   ## $f6 = 60.00
/* 02B94 80B36844 C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 02B98 80B36848 46023200 */  add.s   $f8, $f6, $f2              
/* 02B9C 80B3684C 4608003E */  c.le.s  $f0, $f8                   
/* 02BA0 80B36850 00000000 */  nop
/* 02BA4 80B36854 4502000B */  bc1fl   .L80B36884                 
/* 02BA8 80B36858 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 02BAC 80B3685C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 02BB0 80B36860 260402EC */  addiu   $a0, $s0, 0x02EC           ## $a0 = 000002EC
/* 02BB4 80B36864 3C05C080 */  lui     $a1, 0xC080                ## $a1 = C0800000
/* 02BB8 80B36868 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02BBC 80B3686C 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 02BC0 80B36870 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 02BC4 80B36874 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 02BC8 80B36878 1000001A */  beq     $zero, $zero, .L80B368E4   
/* 02BCC 80B3687C C60202EC */  lwc1    $f2, 0x02EC($s0)           ## 000002EC
/* 02BD0 80B36880 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
.L80B36884:
/* 02BD4 80B36884 44819000 */  mtc1    $at, $f18                  ## $f18 = 80.00
/* 02BD8 80B36888 260402EC */  addiu   $a0, $s0, 0x02EC           ## $a0 = 000002EC
/* 02BDC 80B3688C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 02BE0 80B36890 46029100 */  add.s   $f4, $f18, $f2             
/* 02BE4 80B36894 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02BE8 80B36898 3C0740D4 */  lui     $a3, 0x40D4                ## $a3 = 40D40000
/* 02BEC 80B3689C 4600203C */  c.lt.s  $f4, $f0                   
/* 02BF0 80B368A0 00000000 */  nop
/* 02BF4 80B368A4 4502000B */  bc1fl   .L80B368D4                 
/* 02BF8 80B368A8 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 02BFC 80B368AC 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 02C00 80B368B0 260402EC */  addiu   $a0, $s0, 0x02EC           ## $a0 = 000002EC
/* 02C04 80B368B4 3C054080 */  lui     $a1, 0x4080                ## $a1 = 40800000
/* 02C08 80B368B8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02C0C 80B368BC 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 02C10 80B368C0 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 02C14 80B368C4 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 02C18 80B368C8 10000006 */  beq     $zero, $zero, .L80B368E4   
/* 02C1C 80B368CC C60202EC */  lwc1    $f2, 0x02EC($s0)           ## 000002EC
/* 02C20 80B368D0 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
.L80B368D4:
/* 02C24 80B368D4 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 0000CCCD
/* 02C28 80B368D8 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 02C2C 80B368DC E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 02C30 80B368E0 C60202EC */  lwc1    $f2, 0x02EC($s0)           ## 000002EC
.L80B368E4:
/* 02C34 80B368E4 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 02C38 80B368E8 00000000 */  nop
/* 02C3C 80B368EC 46025032 */  c.eq.s  $f10, $f2                  
/* 02C40 80B368F0 00000000 */  nop
/* 02C44 80B368F4 45030010 */  bc1tl   .L80B36938                 
/* 02C48 80B368F8 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 02C4C 80B368FC 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 02C50 80B36900 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 02C54 80B36904 C60402EC */  lwc1    $f4, 0x02EC($s0)           ## 000002EC
/* 02C58 80B36908 C6120024 */  lwc1    $f18, 0x0024($s0)          ## 00000024
/* 02C5C 80B3690C 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 02C60 80B36910 46040182 */  mul.s   $f6, $f0, $f4              
/* 02C64 80B36914 46069200 */  add.s   $f8, $f18, $f6             
/* 02C68 80B36918 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 02C6C 80B3691C E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000024
/* 02C70 80B36920 C60202EC */  lwc1    $f2, 0x02EC($s0)           ## 000002EC
/* 02C74 80B36924 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 02C78 80B36928 46020102 */  mul.s   $f4, $f0, $f2              
/* 02C7C 80B3692C 46045480 */  add.s   $f18, $f10, $f4            
/* 02C80 80B36930 E612002C */  swc1    $f18, 0x002C($s0)          ## 0000002C
/* 02C84 80B36934 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
.L80B36938:
/* 02C88 80B36938 00000000 */  nop
/* 02C8C 80B3693C 4602803E */  c.le.s  $f16, $f2                  
/* 02C90 80B36940 00000000 */  nop
/* 02C94 80B36944 45020004 */  bc1fl   .L80B36958                 
/* 02C98 80B36948 46001387 */  neg.s   $f14, $f2                  
/* 02C9C 80B3694C 10000002 */  beq     $zero, $zero, .L80B36958   
/* 02CA0 80B36950 46001386 */  mov.s   $f14, $f2                  
/* 02CA4 80B36954 46001387 */  neg.s   $f14, $f2                  
.L80B36958:
/* 02CA8 80B36958 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 02CAC 80B3695C 3C0180B3 */  lui     $at, %hi(D_80B37BC8)       ## $at = 80B30000
/* 02CB0 80B36960 4600803E */  c.le.s  $f16, $f0                  
/* 02CB4 80B36964 00000000 */  nop
/* 02CB8 80B36968 45020004 */  bc1fl   .L80B3697C                 
/* 02CBC 80B3696C 46000307 */  neg.s   $f12, $f0                  
/* 02CC0 80B36970 10000002 */  beq     $zero, $zero, .L80B3697C   
/* 02CC4 80B36974 46000306 */  mov.s   $f12, $f0                  
/* 02CC8 80B36978 46000307 */  neg.s   $f12, $f0                  
.L80B3697C:
/* 02CCC 80B3697C 460C703C */  c.lt.s  $f14, $f12                 
/* 02CD0 80B36980 00000000 */  nop
/* 02CD4 80B36984 45000006 */  bc1f    .L80B369A0                 
/* 02CD8 80B36988 00000000 */  nop
/* 02CDC 80B3698C 3C0180B3 */  lui     $at, %hi(D_80B37BC4)       ## $at = 80B30000
/* 02CE0 80B36990 C4267BC4 */  lwc1    $f6, %lo(D_80B37BC4)($at)  
/* 02CE4 80B36994 46060202 */  mul.s   $f8, $f0, $f6              
/* 02CE8 80B36998 10000004 */  beq     $zero, $zero, .L80B369AC   
/* 02CEC 80B3699C E60801A4 */  swc1    $f8, 0x01A4($s0)           ## 000001A4
.L80B369A0:
/* 02CF0 80B369A0 C42A7BC8 */  lwc1    $f10, %lo(D_80B37BC8)($at) 
/* 02CF4 80B369A4 460A1102 */  mul.s   $f4, $f2, $f10             
/* 02CF8 80B369A8 E60401A4 */  swc1    $f4, 0x01A4($s0)           ## 000001A4
.L80B369AC:
/* 02CFC 80B369AC 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 02D00 80B369B0 44811000 */  mtc1    $at, $f2                   ## $f2 = -3.00
/* 02D04 80B369B4 C60001A4 */  lwc1    $f0, 0x01A4($s0)           ## 000001A4
/* 02D08 80B369B8 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 02D0C 80B369BC 4602003C */  c.lt.s  $f0, $f2                   
/* 02D10 80B369C0 00000000 */  nop
/* 02D14 80B369C4 45020004 */  bc1fl   .L80B369D8                 
/* 02D18 80B369C8 44819000 */  mtc1    $at, $f18                  ## $f18 = 3.00
/* 02D1C 80B369CC 1000000C */  beq     $zero, $zero, .L80B36A00   
/* 02D20 80B369D0 E60201A4 */  swc1    $f2, 0x01A4($s0)           ## 000001A4
/* 02D24 80B369D4 44819000 */  mtc1    $at, $f18                  ## $f18 = 3.00
.L80B369D8:
/* 02D28 80B369D8 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 02D2C 80B369DC 4600903C */  c.lt.s  $f18, $f0                  
/* 02D30 80B369E0 00000000 */  nop
/* 02D34 80B369E4 45020005 */  bc1fl   .L80B369FC                 
/* 02D38 80B369E8 46000306 */  mov.s   $f12, $f0                  
/* 02D3C 80B369EC 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 02D40 80B369F0 10000003 */  beq     $zero, $zero, .L80B36A00   
/* 02D44 80B369F4 E60C01A4 */  swc1    $f12, 0x01A4($s0)          ## 000001A4
/* 02D48 80B369F8 46000306 */  mov.s   $f12, $f0                  
.L80B369FC:
/* 02D4C 80B369FC E60C01A4 */  swc1    $f12, 0x01A4($s0)          ## 000001A4
.L80B36A00:
/* 02D50 80B36A00 C60601A0 */  lwc1    $f6, 0x01A0($s0)           ## 000001A0
/* 02D54 80B36A04 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 02D58 80B36A08 4600320D */  trunc.w.s $f8, $f6                   
/* 02D5C 80B36A0C 44194000 */  mfc1    $t9, $f8                   
/* 02D60 80B36A10 0C02927F */  jal     SkelAnime_Update
              
/* 02D64 80B36A14 AFB90064 */  sw      $t9, 0x0064($sp)           
/* 02D68 80B36A18 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 02D6C 80B36A1C C60001A4 */  lwc1    $f0, 0x01A4($s0)           ## 000001A4
/* 02D70 80B36A20 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02D74 80B36A24 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02D78 80B36A28 4600803E */  c.le.s  $f16, $f0                  
/* 02D7C 80B36A2C 00000000 */  nop
/* 02D80 80B36A30 45020004 */  bc1fl   .L80B36A44                 
/* 02D84 80B36A34 46000307 */  neg.s   $f12, $f0                  
/* 02D88 80B36A38 10000002 */  beq     $zero, $zero, .L80B36A44   
/* 02D8C 80B36A3C 46000306 */  mov.s   $f12, $f0                  
/* 02D90 80B36A40 46000307 */  neg.s   $f12, $f0                  
.L80B36A44:
/* 02D94 80B36A44 C60A01A0 */  lwc1    $f10, 0x01A0($s0)          ## 000001A0
/* 02D98 80B36A48 4600803E */  c.le.s  $f16, $f0                  
/* 02D9C 80B36A4C 8FA40074 */  lw      $a0, 0x0074($sp)           
/* 02DA0 80B36A50 460C5101 */  sub.s   $f4, $f10, $f12            
/* 02DA4 80B36A54 4600248D */  trunc.w.s $f18, $f4                  
/* 02DA8 80B36A58 44099000 */  mfc1    $t1, $f18                  
/* 02DAC 80B36A5C 45000003 */  bc1f    .L80B36A6C                 
/* 02DB0 80B36A60 AFA90060 */  sw      $t1, 0x0060($sp)           
/* 02DB4 80B36A64 10000002 */  beq     $zero, $zero, .L80B36A70   
/* 02DB8 80B36A68 46000306 */  mov.s   $f12, $f0                  
.L80B36A6C:
/* 02DBC 80B36A6C 46000307 */  neg.s   $f12, $f0                  
.L80B36A70:
/* 02DC0 80B36A70 0C2CCFEC */  jal     func_80B33FB0              
/* 02DC4 80B36A74 E7AC0044 */  swc1    $f12, 0x0044($sp)          
/* 02DC8 80B36A78 1440007F */  bne     $v0, $zero, .L80B36C78     
/* 02DCC 80B36A7C C7AC0044 */  lwc1    $f12, 0x0044($sp)          
/* 02DD0 80B36A80 8E0A02E8 */  lw      $t2, 0x02E8($s0)           ## 000002E8
/* 02DD4 80B36A84 254BFFFF */  addiu   $t3, $t2, 0xFFFF           ## $t3 = FFFFFFFF
/* 02DD8 80B36A88 1560004C */  bne     $t3, $zero, .L80B36BBC     
/* 02DDC 80B36A8C AE0B02E8 */  sw      $t3, 0x02E8($s0)           ## 000002E8
/* 02DE0 80B36A90 8FAD0068 */  lw      $t5, 0x0068($sp)           
/* 02DE4 80B36A94 8603008A */  lh      $v1, 0x008A($s0)           ## 0000008A
/* 02DE8 80B36A98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02DEC 80B36A9C 85AE00B6 */  lh      $t6, 0x00B6($t5)           ## 000000B6
/* 02DF0 80B36AA0 8FB90074 */  lw      $t9, 0x0074($sp)           
/* 02DF4 80B36AA4 01C31023 */  subu    $v0, $t6, $v1              
/* 02DF8 80B36AA8 00021400 */  sll     $v0, $v0, 16               
/* 02DFC 80B36AAC 00021403 */  sra     $v0, $v0, 16               
/* 02E00 80B36AB0 04430005 */  bgezl   $v0, .L80B36AC8            
/* 02E04 80B36AB4 28413A98 */  slti    $at, $v0, 0x3A98           
/* 02E08 80B36AB8 00021023 */  subu    $v0, $zero, $v0            
/* 02E0C 80B36ABC 00021400 */  sll     $v0, $v0, 16               
/* 02E10 80B36AC0 00021403 */  sra     $v0, $v0, 16               
/* 02E14 80B36AC4 28413A98 */  slti    $at, $v0, 0x3A98           
.L80B36AC8:
/* 02E18 80B36AC8 54200011 */  bnel    $at, $zero, .L80B36B10     
/* 02E1C 80B36ACC 8F221C44 */  lw      $v0, 0x1C44($t9)           ## 00001C44
/* 02E20 80B36AD0 0C2CD157 */  jal     func_80B3455C              
/* 02E24 80B36AD4 E7AC0044 */  swc1    $f12, 0x0044($sp)          
/* 02E28 80B36AD8 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 02E2C 80B36ADC 00000000 */  nop
/* 02E30 80B36AE0 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 02E34 80B36AE4 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 02E38 80B36AE8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02E3C 80B36AEC 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 02E40 80B36AF0 46060202 */  mul.s   $f8, $f0, $f6              
/* 02E44 80B36AF4 C7AC0044 */  lwc1    $f12, 0x0044($sp)          
/* 02E48 80B36AF8 460A4100 */  add.s   $f4, $f8, $f10             
/* 02E4C 80B36AFC 4600248D */  trunc.w.s $f18, $f4                  
/* 02E50 80B36B00 44189000 */  mfc1    $t8, $f18                  
/* 02E54 80B36B04 1000002D */  beq     $zero, $zero, .L80B36BBC   
/* 02E58 80B36B08 AE1802E8 */  sw      $t8, 0x02E8($s0)           ## 000002E8
/* 02E5C 80B36B0C 8F221C44 */  lw      $v0, 0x1C44($t9)           ## 00001C44
.L80B36B10:
/* 02E60 80B36B10 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 02E64 80B36B14 44813000 */  mtc1    $at, $f6                   ## $f6 = 80.00
/* 02E68 80B36B18 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 02E6C 80B36B1C 844800B6 */  lh      $t0, 0x00B6($v0)           ## 000000B6
/* 02E70 80B36B20 860900B6 */  lh      $t1, 0x00B6($s0)           ## 000000B6
/* 02E74 80B36B24 4606403E */  c.le.s  $f8, $f6                   
/* 02E78 80B36B28 01033023 */  subu    $a2, $t0, $v1              
/* 02E7C 80B36B2C 00063400 */  sll     $a2, $a2, 16               
/* 02E80 80B36B30 00063403 */  sra     $a2, $a2, 16               
/* 02E84 80B36B34 4500001C */  bc1f    .L80B36BA8                 
/* 02E88 80B36B38 A6090032 */  sh      $t1, 0x0032($s0)           ## 00000032
/* 02E8C 80B36B3C 8FA40074 */  lw      $a0, 0x0074($sp)           
/* 02E90 80B36B40 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02E94 80B36B44 A7A6004E */  sh      $a2, 0x004E($sp)           
/* 02E98 80B36B48 0C00CEAE */  jal     func_80033AB8              
/* 02E9C 80B36B4C E7AC0044 */  swc1    $f12, 0x0044($sp)          
/* 02EA0 80B36B50 87A6004E */  lh      $a2, 0x004E($sp)           
/* 02EA4 80B36B54 14400014 */  bne     $v0, $zero, .L80B36BA8     
/* 02EA8 80B36B58 C7AC0044 */  lwc1    $f12, 0x0044($sp)          
/* 02EAC 80B36B5C 8FAA0074 */  lw      $t2, 0x0074($sp)           
/* 02EB0 80B36B60 3C0B0001 */  lui     $t3, 0x0001                ## $t3 = 00010000
/* 02EB4 80B36B64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02EB8 80B36B68 016A5821 */  addu    $t3, $t3, $t2              
/* 02EBC 80B36B6C 8D6B1DE4 */  lw      $t3, 0x1DE4($t3)           ## 00011DE4
/* 02EC0 80B36B70 316C0003 */  andi    $t4, $t3, 0x0003           ## $t4 = 00000000
/* 02EC4 80B36B74 11800008 */  beq     $t4, $zero, .L80B36B98     
/* 02EC8 80B36B78 00000000 */  nop
/* 02ECC 80B36B7C 04C00003 */  bltz    $a2, .L80B36B8C            
/* 02ED0 80B36B80 00061823 */  subu    $v1, $zero, $a2            
/* 02ED4 80B36B84 10000001 */  beq     $zero, $zero, .L80B36B8C   
/* 02ED8 80B36B88 00C01825 */  or      $v1, $a2, $zero            ## $v1 = 00000000
.L80B36B8C:
/* 02EDC 80B36B8C 286138E0 */  slti    $at, $v1, 0x38E0           
/* 02EE0 80B36B90 50200006 */  beql    $at, $zero, .L80B36BAC     
/* 02EE4 80B36B94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B36B98:
/* 02EE8 80B36B98 0C2CD550 */  jal     func_80B35540              
/* 02EEC 80B36B9C E7AC0044 */  swc1    $f12, 0x0044($sp)          
/* 02EF0 80B36BA0 10000006 */  beq     $zero, $zero, .L80B36BBC   
/* 02EF4 80B36BA4 C7AC0044 */  lwc1    $f12, 0x0044($sp)          
.L80B36BA8:
/* 02EF8 80B36BA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B36BAC:
/* 02EFC 80B36BAC 8FA50074 */  lw      $a1, 0x0074($sp)           
/* 02F00 80B36BB0 0C2CD1FF */  jal     func_80B347FC              
/* 02F04 80B36BB4 E7AC0044 */  swc1    $f12, 0x0044($sp)          
/* 02F08 80B36BB8 C7AC0044 */  lwc1    $f12, 0x0044($sp)          
.L80B36BBC:
/* 02F0C 80B36BBC 8FAD0074 */  lw      $t5, 0x0074($sp)           
/* 02F10 80B36BC0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02F14 80B36BC4 8FA20064 */  lw      $v0, 0x0064($sp)           
/* 02F18 80B36BC8 01A17021 */  addu    $t6, $t5, $at              
/* 02F1C 80B36BCC AFAE003C */  sw      $t6, 0x003C($sp)           
/* 02F20 80B36BD0 C60A01A0 */  lwc1    $f10, 0x01A0($s0)          ## 000001A0
/* 02F24 80B36BD4 8FB90060 */  lw      $t9, 0x0060($sp)           
/* 02F28 80B36BD8 4600510D */  trunc.w.s $f4, $f10                  
/* 02F2C 80B36BDC 44182000 */  mfc1    $t8, $f4                   
/* 02F30 80B36BE0 00000000 */  nop
/* 02F34 80B36BE4 5058001D */  beql    $v0, $t8, .L80B36C5C       
/* 02F38 80B36BE8 8FAF003C */  lw      $t7, 0x003C($sp)           
/* 02F3C 80B36BEC 5F20001B */  bgtzl   $t9, .L80B36C5C            
/* 02F40 80B36BF0 8FAF003C */  lw      $t7, 0x003C($sp)           
/* 02F44 80B36BF4 4600648D */  trunc.w.s $f18, $f12                 
/* 02F48 80B36BF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F4C 80B36BFC 44099000 */  mfc1    $t1, $f18                  
/* 02F50 80B36C00 00000000 */  nop
/* 02F54 80B36C04 01225021 */  addu    $t2, $t1, $v0              
/* 02F58 80B36C08 59400014 */  blezl   $t2, .L80B36C5C            
/* 02F5C 80B36C0C 8FAF003C */  lw      $t7, 0x003C($sp)           
/* 02F60 80B36C10 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02F64 80B36C14 2405385A */  addiu   $a1, $zero, 0x385A         ## $a1 = 0000385A
/* 02F68 80B36C18 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 02F6C 80B36C1C 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 02F70 80B36C20 240B0003 */  addiu   $t3, $zero, 0x0003         ## $t3 = 00000003
/* 02F74 80B36C24 240C0032 */  addiu   $t4, $zero, 0x0032         ## $t4 = 00000032
/* 02F78 80B36C28 240D0032 */  addiu   $t5, $zero, 0x0032         ## $t5 = 00000032
/* 02F7C 80B36C2C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 02F80 80B36C30 AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 02F84 80B36C34 AFAD001C */  sw      $t5, 0x001C($sp)           
/* 02F88 80B36C38 AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 02F8C 80B36C3C AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 02F90 80B36C40 8FA40074 */  lw      $a0, 0x0074($sp)           
/* 02F94 80B36C44 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02F98 80B36C48 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 02F9C 80B36C4C 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 02FA0 80B36C50 0C00CC98 */  jal     func_80033260              
/* 02FA4 80B36C54 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 02FA8 80B36C58 8FAF003C */  lw      $t7, 0x003C($sp)           
.L80B36C5C:
/* 02FAC 80B36C5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02FB0 80B36C60 8DF81DE4 */  lw      $t8, 0x1DE4($t7)           ## 00001DE4
/* 02FB4 80B36C64 3319005F */  andi    $t9, $t8, 0x005F           ## $t9 = 00000000
/* 02FB8 80B36C68 57200004 */  bnel    $t9, $zero, .L80B36C7C     
/* 02FBC 80B36C6C 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 02FC0 80B36C70 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02FC4 80B36C74 2405383E */  addiu   $a1, $zero, 0x383E         ## $a1 = 0000383E
.L80B36C78:
/* 02FC8 80B36C78 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80B36C7C:
/* 02FCC 80B36C7C 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 02FD0 80B36C80 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
/* 02FD4 80B36C84 03E00008 */  jr      $ra                        
/* 02FD8 80B36C88 00000000 */  nop
