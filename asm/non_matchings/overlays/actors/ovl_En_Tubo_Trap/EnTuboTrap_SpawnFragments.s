.late_rodata
glabel D_80B265C0
    .float 0.23

glabel D_80B265C4
    .float 0.2

glabel D_80B265C8
    .float 0.6

.text
glabel EnTuboTrap_SpawnFragments
/* 00128 80B25A18 27BDFF20 */  addiu   $sp, $sp, 0xFF20           ## $sp = FFFFFF20
/* 0012C 80B25A1C F7BE0070 */  sdc1    $f30, 0x0070($sp)          
/* 00130 80B25A20 3C0180B2 */  lui     $at, %hi(D_80B265C0)       ## $at = 80B20000
/* 00134 80B25A24 C43E65C0 */  lwc1    $f30, %lo(D_80B265C0)($at) 
/* 00138 80B25A28 F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 0013C 80B25A2C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00140 80B25A30 4481E000 */  mtc1    $at, $f28                  ## $f28 = 2.00
/* 00144 80B25A34 F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 00148 80B25A38 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 0014C 80B25A3C 4481D000 */  mtc1    $at, $f26                  ## $f26 = 5.00
/* 00150 80B25A40 AFB60090 */  sw      $s6, 0x0090($sp)           
/* 00154 80B25A44 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 00158 80B25A48 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 0015C 80B25A4C AFBE0098 */  sw      $s8, 0x0098($sp)           
/* 00160 80B25A50 AFB70094 */  sw      $s7, 0x0094($sp)           
/* 00164 80B25A54 AFB5008C */  sw      $s5, 0x008C($sp)           
/* 00168 80B25A58 AFB40088 */  sw      $s4, 0x0088($sp)           
/* 0016C 80B25A5C AFB30084 */  sw      $s3, 0x0084($sp)           
/* 00170 80B25A60 AFB20080 */  sw      $s2, 0x0080($sp)           
/* 00174 80B25A64 AFB1007C */  sw      $s1, 0x007C($sp)           
/* 00178 80B25A68 3C160501 */  lui     $s6, 0x0501                ## $s6 = 05010000
/* 0017C 80B25A6C 4481C000 */  mtc1    $at, $f24                  ## $f24 = 8.00
/* 00180 80B25A70 00A0F025 */  or      $s8, $a1, $zero            ## $s8 = 00000000
/* 00184 80B25A74 AFBF009C */  sw      $ra, 0x009C($sp)           
/* 00188 80B25A78 AFB00078 */  sw      $s0, 0x0078($sp)           
/* 0018C 80B25A7C F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 00190 80B25A80 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 00194 80B25A84 26D67A60 */  addiu   $s6, $s6, 0x7A60           ## $s6 = 05017A60
/* 00198 80B25A88 24910024 */  addiu   $s1, $a0, 0x0024           ## $s1 = 00000024
/* 0019C 80B25A8C 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 001A0 80B25A90 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 001A4 80B25A94 27B400C8 */  addiu   $s4, $sp, 0x00C8           ## $s4 = FFFFFFE8
/* 001A8 80B25A98 27B500BC */  addiu   $s5, $sp, 0x00BC           ## $s5 = FFFFFFDC
/* 001AC 80B25A9C 2417000F */  addiu   $s7, $zero, 0x000F         ## $s7 = 0000000F
.L80B25AA0:
/* 001B0 80B25AA0 00122400 */  sll     $a0, $s2, 16               
/* 001B4 80B25AA4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 001B8 80B25AA8 00042403 */  sra     $a0, $a0, 16               
/* 001BC 80B25AAC 00122400 */  sll     $a0, $s2, 16               
/* 001C0 80B25AB0 46000506 */  mov.s   $f20, $f0                  
/* 001C4 80B25AB4 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 001C8 80B25AB8 00042403 */  sra     $a0, $a0, 16               
/* 001CC 80B25ABC 4618A102 */  mul.s   $f4, $f20, $f24            
/* 001D0 80B25AC0 46000586 */  mov.s   $f22, $f0                  
/* 001D4 80B25AC4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 001D8 80B25AC8 E7A400C8 */  swc1    $f4, 0x00C8($sp)           
/* 001DC 80B25ACC 461A0182 */  mul.s   $f6, $f0, $f26             
/* 001E0 80B25AD0 C7B000C8 */  lwc1    $f16, 0x00C8($sp)          
/* 001E4 80B25AD4 4618B282 */  mul.s   $f10, $f22, $f24           
/* 001E8 80B25AD8 00000000 */  nop
/* 001EC 80B25ADC 461E8482 */  mul.s   $f18, $f16, $f30           
/* 001F0 80B25AE0 461C3200 */  add.s   $f8, $f6, $f28             
/* 001F4 80B25AE4 E7AA00D0 */  swc1    $f10, 0x00D0($sp)          
/* 001F8 80B25AE8 E7A800CC */  swc1    $f8, 0x00CC($sp)           
/* 001FC 80B25AEC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00200 80B25AF0 E7B200BC */  swc1    $f18, 0x00BC($sp)          
/* 00204 80B25AF4 461A0102 */  mul.s   $f4, $f0, $f26             
/* 00208 80B25AF8 C7A800D0 */  lwc1    $f8, 0x00D0($sp)           
/* 0020C 80B25AFC C7B000C8 */  lwc1    $f16, 0x00C8($sp)          
/* 00210 80B25B00 461E4282 */  mul.s   $f10, $f8, $f30            
/* 00214 80B25B04 461C2180 */  add.s   $f6, $f4, $f28             
/* 00218 80B25B08 E7AA00C4 */  swc1    $f10, 0x00C4($sp)          
/* 0021C 80B25B0C E7A600C0 */  swc1    $f6, 0x00C0($sp)           
/* 00220 80B25B10 C6320000 */  lwc1    $f18, 0x0000($s1)          ## 00000024
/* 00224 80B25B14 C7A600CC */  lwc1    $f6, 0x00CC($sp)           
/* 00228 80B25B18 46128100 */  add.s   $f4, $f16, $f18            
/* 0022C 80B25B1C E7A400C8 */  swc1    $f4, 0x00C8($sp)           
/* 00230 80B25B20 C62A0004 */  lwc1    $f10, 0x0004($s1)          ## 00000028
/* 00234 80B25B24 460A3400 */  add.s   $f16, $f6, $f10            
/* 00238 80B25B28 E7B000CC */  swc1    $f16, 0x00CC($sp)          
/* 0023C 80B25B2C C6320008 */  lwc1    $f18, 0x0008($s1)          ## 0000002C
/* 00240 80B25B30 46124100 */  add.s   $f4, $f8, $f18             
/* 00244 80B25B34 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00248 80B25B38 E7A400D0 */  swc1    $f4, 0x00D0($sp)           
/* 0024C 80B25B3C 3C0180B2 */  lui     $at, %hi(D_80B265C4)       ## $at = 80B20000
/* 00250 80B25B40 C42665C4 */  lwc1    $f6, %lo(D_80B265C4)($at)  
/* 00254 80B25B44 3C0180B2 */  lui     $at, %hi(D_80B265C8)       ## $at = 80B20000
/* 00258 80B25B48 4606003C */  c.lt.s  $f0, $f6                   
/* 0025C 80B25B4C 00000000 */  nop
/* 00260 80B25B50 45000003 */  bc1f    .L80B25B60                 
/* 00264 80B25B54 00000000 */  nop
/* 00268 80B25B58 10000009 */  beq     $zero, $zero, .L80B25B80   
/* 0026C 80B25B5C 24100060 */  addiu   $s0, $zero, 0x0060         ## $s0 = 00000060
.L80B25B60:
/* 00270 80B25B60 C42A65C8 */  lwc1    $f10, %lo(D_80B265C8)($at) 
/* 00274 80B25B64 24100020 */  addiu   $s0, $zero, 0x0020         ## $s0 = 00000020
/* 00278 80B25B68 460A003C */  c.lt.s  $f0, $f10                  
/* 0027C 80B25B6C 00000000 */  nop
/* 00280 80B25B70 45000003 */  bc1f    .L80B25B80                 
/* 00284 80B25B74 00000000 */  nop
/* 00288 80B25B78 10000001 */  beq     $zero, $zero, .L80B25B80   
/* 0028C 80B25B7C 24100040 */  addiu   $s0, $zero, 0x0040         ## $s0 = 00000040
.L80B25B80:
/* 00290 80B25B80 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00294 80B25B84 00000000 */  nop
/* 00298 80B25B88 3C014282 */  lui     $at, 0x4282                ## $at = 42820000
/* 0029C 80B25B8C 44818000 */  mtc1    $at, $f16                  ## $f16 = 65.00
/* 002A0 80B25B90 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 002A4 80B25B94 44819000 */  mtc1    $at, $f18                  ## $f18 = 15.00
/* 002A8 80B25B98 46100202 */  mul.s   $f8, $f0, $f16             
/* 002AC 80B25B9C 240EFF10 */  addiu   $t6, $zero, 0xFF10         ## $t6 = FFFFFF10
/* 002B0 80B25BA0 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 002B4 80B25BA4 2418000A */  addiu   $t8, $zero, 0x000A         ## $t8 = 0000000A
/* 002B8 80B25BA8 24090020 */  addiu   $t1, $zero, 0x0020         ## $t1 = 00000020
/* 002BC 80B25BAC 240A003C */  addiu   $t2, $zero, 0x003C         ## $t2 = 0000003C
/* 002C0 80B25BB0 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 002C4 80B25BB4 46124100 */  add.s   $f4, $f8, $f18             
/* 002C8 80B25BB8 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 002CC 80B25BBC AFAC0038 */  sw      $t4, 0x0038($sp)           
/* 002D0 80B25BC0 AFAB0034 */  sw      $t3, 0x0034($sp)           
/* 002D4 80B25BC4 4600218D */  trunc.w.s $f6, $f4                   
/* 002D8 80B25BC8 AFAA0030 */  sw      $t2, 0x0030($sp)           
/* 002DC 80B25BCC AFA9002C */  sw      $t1, 0x002C($sp)           
/* 002E0 80B25BD0 AFB8001C */  sw      $t8, 0x001C($sp)           
/* 002E4 80B25BD4 44083000 */  mfc1    $t0, $f6                   
/* 002E8 80B25BD8 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 002EC 80B25BDC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 002F0 80B25BE0 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000000
/* 002F4 80B25BE4 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFE8
/* 002F8 80B25BE8 02A03025 */  or      $a2, $s5, $zero            ## $a2 = FFFFFFDC
/* 002FC 80B25BEC 02203825 */  or      $a3, $s1, $zero            ## $a3 = 00000024
/* 00300 80B25BF0 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00304 80B25BF4 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00308 80B25BF8 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 0030C 80B25BFC AFB6003C */  sw      $s6, 0x003C($sp)           
/* 00310 80B25C00 0C00A7A3 */  jal     Effect_SpawnFragment
              
/* 00314 80B25C04 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 00318 80B25C08 26524E20 */  addiu   $s2, $s2, 0x4E20           ## $s2 = 00004E20
/* 0031C 80B25C0C 00129400 */  sll     $s2, $s2, 16               
/* 00320 80B25C10 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 00324 80B25C14 1677FFA2 */  bne     $s3, $s7, .L80B25AA0       
/* 00328 80B25C18 00129403 */  sra     $s2, $s2, 16               
/* 0032C 80B25C1C 240D0014 */  addiu   $t5, $zero, 0x0014         ## $t5 = 00000014
/* 00330 80B25C20 240E0032 */  addiu   $t6, $zero, 0x0032         ## $t6 = 00000032
/* 00334 80B25C24 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00338 80B25C28 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 0033C 80B25C2C 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000000
/* 00340 80B25C30 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000024
/* 00344 80B25C34 3C0641F0 */  lui     $a2, 0x41F0                ## $a2 = 41F00000
/* 00348 80B25C38 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 0034C 80B25C3C 0C00CD20 */  jal     func_80033480              
/* 00350 80B25C40 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00354 80B25C44 8FBF009C */  lw      $ra, 0x009C($sp)           
/* 00358 80B25C48 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 0035C 80B25C4C D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 00360 80B25C50 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 00364 80B25C54 D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 00368 80B25C58 D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 0036C 80B25C5C D7BE0070 */  ldc1    $f30, 0x0070($sp)          
/* 00370 80B25C60 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 00374 80B25C64 8FB1007C */  lw      $s1, 0x007C($sp)           
/* 00378 80B25C68 8FB20080 */  lw      $s2, 0x0080($sp)           
/* 0037C 80B25C6C 8FB30084 */  lw      $s3, 0x0084($sp)           
/* 00380 80B25C70 8FB40088 */  lw      $s4, 0x0088($sp)           
/* 00384 80B25C74 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 00388 80B25C78 8FB60090 */  lw      $s6, 0x0090($sp)           
/* 0038C 80B25C7C 8FB70094 */  lw      $s7, 0x0094($sp)           
/* 00390 80B25C80 8FBE0098 */  lw      $s8, 0x0098($sp)           
/* 00394 80B25C84 03E00008 */  jr      $ra                        
/* 00398 80B25C88 27BD00E0 */  addiu   $sp, $sp, 0x00E0           ## $sp = 00000000


