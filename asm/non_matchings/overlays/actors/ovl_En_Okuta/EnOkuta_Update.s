glabel EnOkuta_Update
/* 01974 80AC1FD4 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 01978 80AC1FD8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0197C 80AC1FDC AFB10020 */  sw      $s1, 0x0020($sp)           
/* 01980 80AC1FE0 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 01984 80AC1FE4 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 01988 80AC1FE8 3C013000 */  lui     $at, 0x3000                ## $at = 30000000
/* 0198C 80AC1FEC 342100C0 */  ori     $at, $at, 0x00C0           ## $at = 300000C0
/* 01990 80AC1FF0 8C4E067C */  lw      $t6, 0x067C($v0)           ## 0000067C
/* 01994 80AC1FF4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01998 80AC1FF8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0199C 80AC1FFC 01C17824 */  and     $t7, $t6, $at              
/* 019A0 80AC2000 55E000CF */  bnel    $t7, $zero, .L80AC2340     
/* 019A4 80AC2004 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 019A8 80AC2008 8498001C */  lh      $t8, 0x001C($a0)           ## 0000001C
/* 019AC 80AC200C 5700001D */  bnel    $t8, $zero, .L80AC2084     
/* 019B0 80AC2010 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 019B4 80AC2014 0C2B07CA */  jal     func_80AC1F28              
/* 019B8 80AC2018 00000000 */  nop
/* 019BC 80AC201C 8E060024 */  lw      $a2, 0x0024($s0)           ## 00000024
/* 019C0 80AC2020 8E07002C */  lw      $a3, 0x002C($s0)           ## 0000002C
/* 019C4 80AC2024 27B90044 */  addiu   $t9, $sp, 0x0044           ## $t9 = FFFFFFEC
/* 019C8 80AC2028 27A80048 */  addiu   $t0, $sp, 0x0048           ## $t0 = FFFFFFF0
/* 019CC 80AC202C AFA80014 */  sw      $t0, 0x0014($sp)           
/* 019D0 80AC2030 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 019D4 80AC2034 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 019D8 80AC2038 0C010891 */  jal     func_80042244              
/* 019DC 80AC203C 262507C0 */  addiu   $a1, $s1, 0x07C0           ## $a1 = 000007C0
/* 019E0 80AC2040 10400007 */  beq     $v0, $zero, .L80AC2060     
/* 019E4 80AC2044 C7A40044 */  lwc1    $f4, 0x0044($sp)           
/* 019E8 80AC2048 C6060080 */  lwc1    $f6, 0x0080($s0)           ## 00000080
/* 019EC 80AC204C C7A80044 */  lwc1    $f8, 0x0044($sp)           
/* 019F0 80AC2050 4606203C */  c.lt.s  $f4, $f6                   
/* 019F4 80AC2054 00000000 */  nop
/* 019F8 80AC2058 45020009 */  bc1fl   .L80AC2080                 
/* 019FC 80AC205C E608000C */  swc1    $f8, 0x000C($s0)           ## 0000000C
.L80AC2060:
/* 01A00 80AC2060 920900AF */  lbu     $t1, 0x00AF($s0)           ## 000000AF
/* 01A04 80AC2064 51200007 */  beql    $t1, $zero, .L80AC2084     
/* 01A08 80AC2068 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 01A0C 80AC206C 0C00B55C */  jal     Actor_Kill
              
/* 01A10 80AC2070 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A14 80AC2074 100000B2 */  beq     $zero, $zero, .L80AC2340   
/* 01A18 80AC2078 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01A1C 80AC207C E608000C */  swc1    $f8, 0x000C($s0)           ## 0000000C
.L80AC2080:
/* 01A20 80AC2080 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
.L80AC2084:
/* 01A24 80AC2084 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A28 80AC2088 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01A2C 80AC208C 0320F809 */  jalr    $ra, $t9                   
/* 01A30 80AC2090 00000000 */  nop
/* 01A34 80AC2094 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 01A38 80AC2098 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A3C 80AC209C 15400017 */  bne     $t2, $zero, .L80AC20FC     
/* 01A40 80AC20A0 00000000 */  nop
/* 01A44 80AC20A4 0C2B06E0 */  jal     func_80AC1B80              
/* 01A48 80AC20A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A4C 80AC20AC 3C0B80AC */  lui     $t3, %hi(D_80AC286E)       ## $t3 = 80AC0000
/* 01A50 80AC20B0 856B286E */  lh      $t3, %lo(D_80AC286E)($t3)  
/* 01A54 80AC20B4 860C03B4 */  lh      $t4, 0x03B4($s0)           ## 000003B4
/* 01A58 80AC20B8 C6120368 */  lwc1    $f18, 0x0368($s0)          ## 00000368
/* 01A5C 80AC20BC 448B5000 */  mtc1    $t3, $f10                  ## $f10 = -0.00
/* 01A60 80AC20C0 448C3000 */  mtc1    $t4, $f6                   ## $f6 = 0.00
/* 01A64 80AC20C4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01A68 80AC20C8 46805420 */  cvt.s.w $f16, $f10                 
/* 01A6C 80AC20CC 46803220 */  cvt.s.w $f8, $f6                   
/* 01A70 80AC20D0 46128102 */  mul.s   $f4, $f16, $f18            
/* 01A74 80AC20D4 C6100054 */  lwc1    $f16, 0x0054($s0)          ## 00000054
/* 01A78 80AC20D8 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 01A7C 80AC20DC 46082281 */  sub.s   $f10, $f4, $f8             
/* 01A80 80AC20E0 46105482 */  mul.s   $f18, $f10, $f16           
/* 01A84 80AC20E4 00000000 */  nop
/* 01A88 80AC20E8 46069102 */  mul.s   $f4, $f18, $f6             
/* 01A8C 80AC20EC 4600220D */  trunc.w.s $f8, $f4                   
/* 01A90 80AC20F0 440E4000 */  mfc1    $t6, $f8                   
/* 01A94 80AC20F4 10000037 */  beq     $zero, $zero, .L80AC21D4   
/* 01A98 80AC20F8 A60E03B2 */  sh      $t6, 0x03B2($s0)           ## 000003B2
.L80AC20FC:
/* 01A9C 80AC20FC 0C00B638 */  jal     Actor_MoveForward
              
/* 01AA0 80AC2100 AFA00034 */  sw      $zero, 0x0034($sp)         
/* 01AA4 80AC2104 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 01AA8 80AC2108 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 01AAC 80AC210C 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 01AB0 80AC2110 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE0
/* 01AB4 80AC2114 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01AB8 80AC2118 44815000 */  mtc1    $at, $f10                  ## $f10 = 30.00
/* 01ABC 80AC211C 240F0005 */  addiu   $t7, $zero, 0x0005         ## $t7 = 00000005
/* 01AC0 80AC2120 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 01AC4 80AC2124 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01AC8 80AC2128 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01ACC 80AC212C 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 01AD0 80AC2130 3C074170 */  lui     $a3, 0x4170                ## $a3 = 41700000
/* 01AD4 80AC2134 0C00B92D */  jal     func_8002E4B4              
/* 01AD8 80AC2138 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 01ADC 80AC213C 96180088 */  lhu     $t8, 0x0088($s0)           ## 00000088
/* 01AE0 80AC2140 262407C0 */  addiu   $a0, $s1, 0x07C0           ## $a0 = 000007C0
/* 01AE4 80AC2144 33080008 */  andi    $t0, $t8, 0x0008           ## $t0 = 00000000
/* 01AE8 80AC2148 5100000B */  beql    $t0, $zero, .L80AC2178     
/* 01AEC 80AC214C 960B0088 */  lhu     $t3, 0x0088($s0)           ## 00000088
/* 01AF0 80AC2150 8E050074 */  lw      $a1, 0x0074($s0)           ## 00000074
/* 01AF4 80AC2154 0C010812 */  jal     func_80042048              
/* 01AF8 80AC2158 9206007C */  lbu     $a2, 0x007C($s0)           ## 0000007C
/* 01AFC 80AC215C 10400005 */  beq     $v0, $zero, .L80AC2174     
/* 01B00 80AC2160 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 01B04 80AC2164 AFA90034 */  sw      $t1, 0x0034($sp)           
/* 01B08 80AC2168 96190088 */  lhu     $t9, 0x0088($s0)           ## 00000088
/* 01B0C 80AC216C 332AFFF7 */  andi    $t2, $t9, 0xFFF7           ## $t2 = 00000000
/* 01B10 80AC2170 A60A0088 */  sh      $t2, 0x0088($s0)           ## 00000088
.L80AC2174:
/* 01B14 80AC2174 960B0088 */  lhu     $t3, 0x0088($s0)           ## 00000088
.L80AC2178:
/* 01B18 80AC2178 262407C0 */  addiu   $a0, $s1, 0x07C0           ## $a0 = 000007C0
/* 01B1C 80AC217C 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 01B20 80AC2180 5180000B */  beql    $t4, $zero, .L80AC21B0     
/* 01B24 80AC2184 8FB80034 */  lw      $t8, 0x0034($sp)           
/* 01B28 80AC2188 8E050078 */  lw      $a1, 0x0078($s0)           ## 00000078
/* 01B2C 80AC218C 0C010812 */  jal     func_80042048              
/* 01B30 80AC2190 9206007D */  lbu     $a2, 0x007D($s0)           ## 0000007D
/* 01B34 80AC2194 10400005 */  beq     $v0, $zero, .L80AC21AC     
/* 01B38 80AC2198 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 01B3C 80AC219C AFAD0034 */  sw      $t5, 0x0034($sp)           
/* 01B40 80AC21A0 960E0088 */  lhu     $t6, 0x0088($s0)           ## 00000088
/* 01B44 80AC21A4 31CFFFFE */  andi    $t7, $t6, 0xFFFE           ## $t7 = 00000000
/* 01B48 80AC21A8 A60F0088 */  sh      $t7, 0x0088($s0)           ## 00000088
.L80AC21AC:
/* 01B4C 80AC21AC 8FB80034 */  lw      $t8, 0x0034($sp)           
.L80AC21B0:
/* 01B50 80AC21B0 53000009 */  beql    $t8, $zero, .L80AC21D8     
/* 01B54 80AC21B4 26050370 */  addiu   $a1, $s0, 0x0370           ## $a1 = 00000370
/* 01B58 80AC21B8 96080088 */  lhu     $t0, 0x0088($s0)           ## 00000088
/* 01B5C 80AC21BC 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 01B60 80AC21C0 31090009 */  andi    $t1, $t0, 0x0009           ## $t1 = 00000000
/* 01B64 80AC21C4 55200004 */  bnel    $t1, $zero, .L80AC21D8     
/* 01B68 80AC21C8 26050370 */  addiu   $a1, $s0, 0x0370           ## $a1 = 00000370
/* 01B6C 80AC21CC 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 01B70 80AC21D0 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFE0
.L80AC21D4:
/* 01B74 80AC21D4 26050370 */  addiu   $a1, $s0, 0x0370           ## $a1 = 00000370
.L80AC21D8:
/* 01B78 80AC21D8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01B7C 80AC21DC 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 01B80 80AC21E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B84 80AC21E4 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 01B88 80AC21E8 3C1980AC */  lui     $t9, %hi(func_80AC0F64)    ## $t9 = 80AC0000
/* 01B8C 80AC21EC 27390F64 */  addiu   $t9, $t9, %lo(func_80AC0F64) ## $t9 = 80AC0F64
/* 01B90 80AC21F0 13220004 */  beq     $t9, $v0, .L80AC2204       
/* 01B94 80AC21F4 3C0A80AC */  lui     $t2, %hi(func_80AC10A8)    ## $t2 = 80AC0000
/* 01B98 80AC21F8 254A10A8 */  addiu   $t2, $t2, %lo(func_80AC10A8) ## $t2 = 80AC10A8
/* 01B9C 80AC21FC 5542001E */  bnel    $t2, $v0, .L80AC2278       
/* 01BA0 80AC2200 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
.L80AC2204:
/* 01BA4 80AC2204 8E0B016C */  lw      $t3, 0x016C($s0)           ## 0000016C
/* 01BA8 80AC2208 C6060054 */  lwc1    $f6, 0x0054($s0)           ## 00000054
/* 01BAC 80AC220C C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 01BB0 80AC2210 856C0002 */  lh      $t4, 0x0002($t3)           ## 00000002
/* 01BB4 80AC2214 3C0F80AC */  lui     $t7, %hi(D_80AC286C)       ## $t7 = 80AC0000
/* 01BB8 80AC2218 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01BBC 80AC221C 448C8000 */  mtc1    $t4, $f16                  ## $f16 = 0.00
/* 01BC0 80AC2220 00000000 */  nop
/* 01BC4 80AC2224 468084A0 */  cvt.s.w $f18, $f16                 
/* 01BC8 80AC2228 46069102 */  mul.s   $f4, $f18, $f6             
/* 01BCC 80AC222C 46044280 */  add.s   $f10, $f8, $f4             
/* 01BD0 80AC2230 C6080050 */  lwc1    $f8, 0x0050($s0)           ## 00000050
/* 01BD4 80AC2234 4600540D */  trunc.w.s $f16, $f10                 
/* 01BD8 80AC2238 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 01BDC 80AC223C 440E8000 */  mfc1    $t6, $f16                  
/* 01BE0 80AC2240 00000000 */  nop
/* 01BE4 80AC2244 A60E03B8 */  sh      $t6, 0x03B8($s0)           ## 000003B8
/* 01BE8 80AC2248 85EF286C */  lh      $t7, %lo(D_80AC286C)($t7)  
/* 01BEC 80AC224C 448F9000 */  mtc1    $t7, $f18                  ## $f18 = -0.00
/* 01BF0 80AC2250 00000000 */  nop
/* 01BF4 80AC2254 468091A0 */  cvt.s.w $f6, $f18                  
/* 01BF8 80AC2258 46083102 */  mul.s   $f4, $f6, $f8              
/* 01BFC 80AC225C 00000000 */  nop
/* 01C00 80AC2260 460A2402 */  mul.s   $f16, $f4, $f10            
/* 01C04 80AC2264 4600848D */  trunc.w.s $f18, $f16                 
/* 01C08 80AC2268 44089000 */  mfc1    $t0, $f18                  
/* 01C0C 80AC226C 00000000 */  nop
/* 01C10 80AC2270 A60803B0 */  sh      $t0, 0x03B0($s0)           ## 000003B0
/* 01C14 80AC2274 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
.L80AC2278:
/* 01C18 80AC2278 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 01C1C 80AC227C 5521000C */  bnel    $t1, $at, .L80AC22B0       
/* 01C20 80AC2280 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 01C24 80AC2284 8E190004 */  lw      $t9, 0x0004($s0)           ## 00000004
/* 01C28 80AC2288 3C010100 */  lui     $at, 0x0100                ## $at = 01000000
/* 01C2C 80AC228C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01C30 80AC2290 03215025 */  or      $t2, $t9, $at              ## $t2 = 81AC0F64
/* 01C34 80AC2294 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01C38 80AC2298 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 01C3C 80AC229C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01C40 80AC22A0 02212821 */  addu    $a1, $s1, $at              
/* 01C44 80AC22A4 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 01C48 80AC22A8 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 01C4C 80AC22AC 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
.L80AC22B0:
/* 01C50 80AC22B0 3C0B80AC */  lui     $t3, %hi(func_80AC0F08)    ## $t3 = 80AC0000
/* 01C54 80AC22B4 256B0F08 */  addiu   $t3, $t3, %lo(func_80AC0F08) ## $t3 = 80AC0F08
/* 01C58 80AC22B8 11620014 */  beq     $t3, $v0, .L80AC230C       
/* 01C5C 80AC22BC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01C60 80AC22C0 3C0C80AC */  lui     $t4, %hi(func_80AC14A8)    ## $t4 = 80AC0000
/* 01C64 80AC22C4 258C14A8 */  addiu   $t4, $t4, %lo(func_80AC14A8) ## $t4 = 80AC14A8
/* 01C68 80AC22C8 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01C6C 80AC22CC 1182000C */  beq     $t4, $v0, .L80AC2300       
/* 01C70 80AC22D0 02212821 */  addu    $a1, $s1, $at              
/* 01C74 80AC22D4 3C0D80AC */  lui     $t5, %hi(func_80AC1458)    ## $t5 = 80AC0000
/* 01C78 80AC22D8 25AD1458 */  addiu   $t5, $t5, %lo(func_80AC1458) ## $t5 = 80AC1458
/* 01C7C 80AC22DC 11A20008 */  beq     $t5, $v0, .L80AC2300       
/* 01C80 80AC22E0 3C0E80AC */  lui     $t6, %hi(func_80AC17BC)    ## $t6 = 80AC0000
/* 01C84 80AC22E4 25CE17BC */  addiu   $t6, $t6, %lo(func_80AC17BC) ## $t6 = 80AC17BC
/* 01C88 80AC22E8 11C20005 */  beq     $t6, $v0, .L80AC2300       
/* 01C8C 80AC22EC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01C90 80AC22F0 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 01C94 80AC22F4 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01C98 80AC22F8 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 01C9C 80AC22FC 8FA50030 */  lw      $a1, 0x0030($sp)           
.L80AC2300:
/* 01CA0 80AC2300 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01CA4 80AC2304 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 01CA8 80AC2308 8FA6002C */  lw      $a2, 0x002C($sp)           
.L80AC230C:
/* 01CAC 80AC230C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CB0 80AC2310 0C00B56E */  jal     Actor_SetHeight
              
/* 01CB4 80AC2314 3C054170 */  lui     $a1, 0x4170                ## $a1 = 41700000
/* 01CB8 80AC2318 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 01CBC 80AC231C 55E00008 */  bnel    $t7, $zero, .L80AC2340     
/* 01CC0 80AC2320 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01CC4 80AC2324 8E180134 */  lw      $t8, 0x0134($s0)           ## 00000134
/* 01CC8 80AC2328 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CCC 80AC232C 53000004 */  beql    $t8, $zero, .L80AC2340     
/* 01CD0 80AC2330 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01CD4 80AC2334 0C2B027A */  jal     func_80AC09E8              
/* 01CD8 80AC2338 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01CDC 80AC233C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AC2340:
/* 01CE0 80AC2340 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 01CE4 80AC2344 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 01CE8 80AC2348 03E00008 */  jr      $ra                        
/* 01CEC 80AC234C 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
