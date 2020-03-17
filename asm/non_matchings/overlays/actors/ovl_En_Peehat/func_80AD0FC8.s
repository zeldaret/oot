glabel func_80AD0FC8
/* 01B28 80AD0FC8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01B2C 80AD0FCC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01B30 80AD0FD0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01B34 80AD0FD4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01B38 80AD0FD8 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 01B3C 80AD0FDC 3C014296 */  lui     $at, 0x4296                ## $at = 42960000
/* 01B40 80AD0FE0 44812000 */  mtc1    $at, $f4                   ## $f4 = 75.00
/* 01B44 80AD0FE4 AFAF0028 */  sw      $t7, 0x0028($sp)           
/* 01B48 80AD0FE8 C4860080 */  lwc1    $f6, 0x0080($a0)           ## 00000080
/* 01B4C 80AD0FEC C4800028 */  lwc1    $f0, 0x0028($a0)           ## 00000028
/* 01B50 80AD0FF0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01B54 80AD0FF4 46060201 */  sub.s   $f8, $f0, $f6              
/* 01B58 80AD0FF8 4608203C */  c.lt.s  $f4, $f8                   
/* 01B5C 80AD0FFC 00000000 */  nop
/* 01B60 80AD1000 45000005 */  bc1f    .L80AD1018                 
/* 01B64 80AD1004 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01B68 80AD1008 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 01B6C 80AD100C 00000000 */  nop
/* 01B70 80AD1010 460A0401 */  sub.s   $f16, $f0, $f10            
/* 01B74 80AD1014 E4900028 */  swc1    $f16, 0x0028($a0)          ## 00000028
.L80AD1018:
/* 01B78 80AD1018 0C0329DD */  jal     func_800CA774              
/* 01B7C 80AD101C C60C02E0 */  lwc1    $f12, 0x02E0($s0)          ## 000002E0
/* 01B80 80AD1020 3C0180AD */  lui     $at, %hi(D_80AD2938)       ## $at = 80AD0000
/* 01B84 80AD1024 C4262938 */  lwc1    $f6, %lo(D_80AD2938)($at)  
/* 01B88 80AD1028 C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 01B8C 80AD102C C60C02E0 */  lwc1    $f12, 0x02E0($s0)          ## 000002E0
/* 01B90 80AD1030 46060102 */  mul.s   $f4, $f0, $f6              
/* 01B94 80AD1034 46049200 */  add.s   $f8, $f18, $f4             
/* 01B98 80AD1038 0C0329DD */  jal     func_800CA774              
/* 01B9C 80AD103C E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 01BA0 80AD1040 3C0180AD */  lui     $at, %hi(D_80AD293C)       ## $at = 80AD0000
/* 01BA4 80AD1044 C42A293C */  lwc1    $f10, %lo(D_80AD293C)($at) 
/* 01BA8 80AD1048 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 01BAC 80AD104C 3C0180AD */  lui     $at, %hi(D_80AD2940)       ## $at = 80AD0000
/* 01BB0 80AD1050 460A0082 */  mul.s   $f2, $f0, $f10             
/* 01BB4 80AD1054 4602803E */  c.le.s  $f16, $f2                  
/* 01BB8 80AD1058 00000000 */  nop
/* 01BBC 80AD105C 45020004 */  bc1fl   .L80AD1070                 
/* 01BC0 80AD1060 46001007 */  neg.s   $f0, $f2                   
/* 01BC4 80AD1064 10000002 */  beq     $zero, $zero, .L80AD1070   
/* 01BC8 80AD1068 46001006 */  mov.s   $f0, $f2                   
/* 01BCC 80AD106C 46001007 */  neg.s   $f0, $f2                   
.L80AD1070:
/* 01BD0 80AD1070 C4322940 */  lwc1    $f18, %lo(D_80AD2940)($at) 
/* 01BD4 80AD1074 C60602E0 */  lwc1    $f6, 0x02E0($s0)           ## 000002E0
/* 01BD8 80AD1078 8E1802D4 */  lw      $t8, 0x02D4($s0)           ## 000002D4
/* 01BDC 80AD107C 46120100 */  add.s   $f4, $f0, $f18             
/* 01BE0 80AD1080 2719FFFF */  addiu   $t9, $t8, 0xFFFF           ## $t9 = FFFFFFFF
/* 01BE4 80AD1084 AE1902D4 */  sw      $t9, 0x02D4($s0)           ## 000002D4
/* 01BE8 80AD1088 46043200 */  add.s   $f8, $f6, $f4              
/* 01BEC 80AD108C 1F20001E */  bgtz    $t9, .L80AD1108            
/* 01BF0 80AD1090 E60802E0 */  swc1    $f8, 0x02E0($s0)           ## 000002E0
/* 01BF4 80AD1094 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01BF8 80AD1098 00000000 */  nop
/* 01BFC 80AD109C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01C00 80AD10A0 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 01C04 80AD10A4 3C014020 */  lui     $at, 0x4020                ## $at = 40200000
/* 01C08 80AD10A8 44819000 */  mtc1    $at, $f18                  ## $f18 = 2.50
/* 01C0C 80AD10AC 460A0402 */  mul.s   $f16, $f0, $f10            
/* 01C10 80AD10B0 46128180 */  add.s   $f6, $f16, $f18            
/* 01C14 80AD10B4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01C18 80AD10B8 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 01C1C 80AD10BC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01C20 80AD10C0 44811000 */  mtc1    $at, $f2                   ## $f2 = 10.00
/* 01C24 80AD10C4 00000000 */  nop
/* 01C28 80AD10C8 46020102 */  mul.s   $f4, $f0, $f2              
/* 01C2C 80AD10CC 46022200 */  add.s   $f8, $f4, $f2              
/* 01C30 80AD10D0 4600428D */  trunc.w.s $f10, $f8                  
/* 01C34 80AD10D4 440A5000 */  mfc1    $t2, $f10                  
/* 01C38 80AD10D8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01C3C 80AD10DC AE0A02D4 */  sw      $t2, 0x02D4($s0)           ## 000002D4
/* 01C40 80AD10E0 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01C44 80AD10E4 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 01C48 80AD10E8 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 01C4C 80AD10EC 44813000 */  mtc1    $at, $f6                   ## $f6 = 1000.00
/* 01C50 80AD10F0 46100481 */  sub.s   $f18, $f0, $f16            
/* 01C54 80AD10F4 46069102 */  mul.s   $f4, $f18, $f6             
/* 01C58 80AD10F8 4600220D */  trunc.w.s $f8, $f4                   
/* 01C5C 80AD10FC 440C4000 */  mfc1    $t4, $f8                   
/* 01C60 80AD1100 00000000 */  nop
/* 01C64 80AD1104 A60C02F4 */  sh      $t4, 0x02F4($s0)           ## 000002F4
.L80AD1108:
/* 01C68 80AD1108 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01C6C 80AD110C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01C70 80AD1110 860D0032 */  lh      $t5, 0x0032($s0)           ## 00000032
/* 01C74 80AD1114 860E02F4 */  lh      $t6, 0x02F4($s0)           ## 000002F4
/* 01C78 80AD1118 860202F8 */  lh      $v0, 0x02F8($s0)           ## 000002F8
/* 01C7C 80AD111C 01AE7821 */  addu    $t7, $t5, $t6              
/* 01C80 80AD1120 1C400006 */  bgtz    $v0, .L80AD113C            
/* 01C84 80AD1124 A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
/* 01C88 80AD1128 0C2B42CF */  jal     func_80AD0B3C              
/* 01C8C 80AD112C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C90 80AD1130 24180028 */  addiu   $t8, $zero, 0x0028         ## $t8 = 00000028
/* 01C94 80AD1134 10000003 */  beq     $zero, $zero, .L80AD1144   
/* 01C98 80AD1138 A61802F6 */  sh      $t8, 0x02F6($s0)           ## 000002F6
.L80AD113C:
/* 01C9C 80AD113C 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 01CA0 80AD1140 A61902F8 */  sh      $t9, 0x02F8($s0)           ## 000002F8
.L80AD1144:
/* 01CA4 80AD1144 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 01CA8 80AD1148 3C0A8016 */  lui     $t2, 0x8016                ## $t2 = 80160000
/* 01CAC 80AD114C 2509015E */  addiu   $t1, $t0, 0x015E           ## $t1 = 0000015E
/* 01CB0 80AD1150 A60900B6 */  sh      $t1, 0x00B6($s0)           ## 000000B6
/* 01CB4 80AD1154 8D4AE670 */  lw      $t2, -0x1990($t2)          ## 8015E670
/* 01CB8 80AD1158 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 01CBC 80AD115C 15400013 */  bne     $t2, $zero, .L80AD11AC     
/* 01CC0 80AD1160 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 01CC4 80AD1164 0C01E00A */  jal     Math_Vec3f_DistXZ
              
/* 01CC8 80AD1168 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
/* 01CCC 80AD116C C60A02D8 */  lwc1    $f10, 0x02D8($s0)          ## 000002D8
/* 01CD0 80AD1170 460A003C */  c.lt.s  $f0, $f10                  
/* 01CD4 80AD1174 00000000 */  nop
/* 01CD8 80AD1178 4500000C */  bc1f    .L80AD11AC                 
/* 01CDC 80AD117C 00000000 */  nop
/* 01CE0 80AD1180 860B008A */  lh      $t3, 0x008A($s0)           ## 0000008A
/* 01CE4 80AD1184 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CE8 80AD1188 0C2B4156 */  jal     func_80AD0558              
/* 01CEC 80AD118C A60B0032 */  sh      $t3, 0x0032($s0)           ## 00000032
/* 01CF0 80AD1190 8FAC0034 */  lw      $t4, 0x0034($sp)           
/* 01CF4 80AD1194 3C0D0001 */  lui     $t5, 0x0001                ## $t5 = 00010000
/* 01CF8 80AD1198 01AC6821 */  addu    $t5, $t5, $t4              
/* 01CFC 80AD119C 8DAD1DE4 */  lw      $t5, 0x1DE4($t5)           ## 00011DE4
/* 01D00 80AD11A0 31AE0001 */  andi    $t6, $t5, 0x0001           ## $t6 = 00000000
/* 01D04 80AD11A4 10000003 */  beq     $zero, $zero, .L80AD11B4   
/* 01D08 80AD11A8 A60E02FA */  sh      $t6, 0x02FA($s0)           ## 000002FA
.L80AD11AC:
/* 01D0C 80AD11AC 0C2B4488 */  jal     func_80AD1220              
/* 01D10 80AD11B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AD11B4:
/* 01D14 80AD11B4 260402F0 */  addiu   $a0, $s0, 0x02F0           ## $a0 = 000002F0
/* 01D18 80AD11B8 24050FA0 */  addiu   $a1, $zero, 0x0FA0         ## $a1 = 00000FA0
/* 01D1C 80AD11BC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01D20 80AD11C0 240701F4 */  addiu   $a3, $zero, 0x01F4         ## $a3 = 000001F4
/* 01D24 80AD11C4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01D28 80AD11C8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01D2C 80AD11CC 860F02F2 */  lh      $t7, 0x02F2($s0)           ## 000002F2
/* 01D30 80AD11D0 861802F0 */  lh      $t8, 0x02F0($s0)           ## 000002F0
/* 01D34 80AD11D4 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 01D38 80AD11D8 3C053D99 */  lui     $a1, 0x3D99                ## $a1 = 3D990000
/* 01D3C 80AD11DC 01F8C821 */  addu    $t9, $t7, $t8              
/* 01D40 80AD11E0 A61902F2 */  sh      $t9, 0x02F2($s0)           ## 000002F2
/* 01D44 80AD11E4 3C073BA3 */  lui     $a3, 0x3BA3                ## $a3 = 3BA30000
/* 01D48 80AD11E8 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3BA3D70A
/* 01D4C 80AD11EC 34A5999A */  ori     $a1, $a1, 0x999A           ## $a1 = 3D99999A
/* 01D50 80AD11F0 260402EC */  addiu   $a0, $s0, 0x02EC           ## $a0 = 000002EC
/* 01D54 80AD11F4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01D58 80AD11F8 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01D5C 80AD11FC E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 01D60 80AD1200 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D64 80AD1204 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01D68 80AD1208 24053155 */  addiu   $a1, $zero, 0x3155         ## $a1 = 00003155
/* 01D6C 80AD120C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01D70 80AD1210 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01D74 80AD1214 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01D78 80AD1218 03E00008 */  jr      $ra                        
/* 01D7C 80AD121C 00000000 */  nop


