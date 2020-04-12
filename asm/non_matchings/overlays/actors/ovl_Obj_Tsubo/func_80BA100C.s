.late_rodata
glabel D_80BA1C58
 .word 0x3E6B851F
glabel D_80BA1C5C
    .float 0.2

glabel D_80BA1C60
    .float 0.6

.text
glabel func_80BA100C
/* 002AC 80BA100C 27BDFF20 */  addiu   $sp, $sp, 0xFF20           ## $sp = FFFFFF20
/* 002B0 80BA1010 F7BE0070 */  sdc1    $f30, 0x0070($sp)          
/* 002B4 80BA1014 3C0180BA */  lui     $at, %hi(D_80BA1C58)       ## $at = 80BA0000
/* 002B8 80BA1018 C43E1C58 */  lwc1    $f30, %lo(D_80BA1C58)($at) 
/* 002BC 80BA101C F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 002C0 80BA1020 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 002C4 80BA1024 4481E000 */  mtc1    $at, $f28                  ## $f28 = 2.00
/* 002C8 80BA1028 F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 002CC 80BA102C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 002D0 80BA1030 4481D000 */  mtc1    $at, $f26                  ## $f26 = 5.00
/* 002D4 80BA1034 AFBE0098 */  sw      $s8, 0x0098($sp)           
/* 002D8 80BA1038 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 002DC 80BA103C 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 002E0 80BA1040 AFB70094 */  sw      $s7, 0x0094($sp)           
/* 002E4 80BA1044 AFB60090 */  sw      $s6, 0x0090($sp)           
/* 002E8 80BA1048 AFB5008C */  sw      $s5, 0x008C($sp)           
/* 002EC 80BA104C AFB40088 */  sw      $s4, 0x0088($sp)           
/* 002F0 80BA1050 AFB30084 */  sw      $s3, 0x0084($sp)           
/* 002F4 80BA1054 AFB20080 */  sw      $s2, 0x0080($sp)           
/* 002F8 80BA1058 AFB1007C */  sw      $s1, 0x007C($sp)           
/* 002FC 80BA105C 3C1E80BA */  lui     $s8, %hi(D_80BA1B80)       ## $s8 = 80BA0000
/* 00300 80BA1060 4481C000 */  mtc1    $at, $f24                  ## $f24 = 8.00
/* 00304 80BA1064 0080A825 */  or      $s5, $a0, $zero            ## $s5 = 00000000
/* 00308 80BA1068 00A0B025 */  or      $s6, $a1, $zero            ## $s6 = 00000000
/* 0030C 80BA106C AFBF009C */  sw      $ra, 0x009C($sp)           
/* 00310 80BA1070 AFB00078 */  sw      $s0, 0x0078($sp)           
/* 00314 80BA1074 F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 00318 80BA1078 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 0031C 80BA107C 27DE1B80 */  addiu   $s8, $s8, %lo(D_80BA1B80)  ## $s8 = 80BA1B80
/* 00320 80BA1080 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00324 80BA1084 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 00328 80BA1088 27B300C8 */  addiu   $s3, $sp, 0x00C8           ## $s3 = FFFFFFE8
/* 0032C 80BA108C 24940024 */  addiu   $s4, $a0, 0x0024           ## $s4 = 00000024
/* 00330 80BA1090 27B700BC */  addiu   $s7, $sp, 0x00BC           ## $s7 = FFFFFFDC
.L80BA1094:
/* 00334 80BA1094 00112400 */  sll     $a0, $s1, 16               
/* 00338 80BA1098 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0033C 80BA109C 00042403 */  sra     $a0, $a0, 16               
/* 00340 80BA10A0 00112400 */  sll     $a0, $s1, 16               
/* 00344 80BA10A4 46000506 */  mov.s   $f20, $f0                  
/* 00348 80BA10A8 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0034C 80BA10AC 00042403 */  sra     $a0, $a0, 16               
/* 00350 80BA10B0 4618A102 */  mul.s   $f4, $f20, $f24            
/* 00354 80BA10B4 46000586 */  mov.s   $f22, $f0                  
/* 00358 80BA10B8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0035C 80BA10BC E7A400C8 */  swc1    $f4, 0x00C8($sp)           
/* 00360 80BA10C0 461A0182 */  mul.s   $f6, $f0, $f26             
/* 00364 80BA10C4 C7B000C8 */  lwc1    $f16, 0x00C8($sp)          
/* 00368 80BA10C8 4618B282 */  mul.s   $f10, $f22, $f24           
/* 0036C 80BA10CC 00000000 */  nop
/* 00370 80BA10D0 461E8482 */  mul.s   $f18, $f16, $f30           
/* 00374 80BA10D4 461C3200 */  add.s   $f8, $f6, $f28             
/* 00378 80BA10D8 E7AA00D0 */  swc1    $f10, 0x00D0($sp)          
/* 0037C 80BA10DC E7A800CC */  swc1    $f8, 0x00CC($sp)           
/* 00380 80BA10E0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00384 80BA10E4 E7B200BC */  swc1    $f18, 0x00BC($sp)          
/* 00388 80BA10E8 461A0102 */  mul.s   $f4, $f0, $f26             
/* 0038C 80BA10EC C7A800D0 */  lwc1    $f8, 0x00D0($sp)           
/* 00390 80BA10F0 02602025 */  or      $a0, $s3, $zero            ## $a0 = FFFFFFE8
/* 00394 80BA10F4 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000024
/* 00398 80BA10F8 461E4282 */  mul.s   $f10, $f8, $f30            
/* 0039C 80BA10FC 02603025 */  or      $a2, $s3, $zero            ## $a2 = FFFFFFE8
/* 003A0 80BA1100 461C2180 */  add.s   $f6, $f4, $f28             
/* 003A4 80BA1104 E7AA00C4 */  swc1    $f10, 0x00C4($sp)          
/* 003A8 80BA1108 0C01DFA7 */  jal     Math_Vec3f_Sum
              ## Vec3f_Add
/* 003AC 80BA110C E7A600C0 */  swc1    $f6, 0x00C0($sp)           
/* 003B0 80BA1110 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 003B4 80BA1114 00000000 */  nop
/* 003B8 80BA1118 3C0180BA */  lui     $at, %hi(D_80BA1C5C)       ## $at = 80BA0000
/* 003BC 80BA111C C4301C5C */  lwc1    $f16, %lo(D_80BA1C5C)($at) 
/* 003C0 80BA1120 3C0180BA */  lui     $at, %hi(D_80BA1C60)       ## $at = 80BA0000
/* 003C4 80BA1124 4610003C */  c.lt.s  $f0, $f16                  
/* 003C8 80BA1128 00000000 */  nop
/* 003CC 80BA112C 45000003 */  bc1f    .L80BA113C                 
/* 003D0 80BA1130 00000000 */  nop
/* 003D4 80BA1134 10000009 */  beq     $zero, $zero, .L80BA115C   
/* 003D8 80BA1138 24100060 */  addiu   $s0, $zero, 0x0060         ## $s0 = 00000060
.L80BA113C:
/* 003DC 80BA113C C4321C60 */  lwc1    $f18, %lo(D_80BA1C60)($at) 
/* 003E0 80BA1140 24100020 */  addiu   $s0, $zero, 0x0020         ## $s0 = 00000020
/* 003E4 80BA1144 4612003C */  c.lt.s  $f0, $f18                  
/* 003E8 80BA1148 00000000 */  nop
/* 003EC 80BA114C 45000003 */  bc1f    .L80BA115C                 
/* 003F0 80BA1150 00000000 */  nop
/* 003F4 80BA1154 10000001 */  beq     $zero, $zero, .L80BA115C   
/* 003F8 80BA1158 24100040 */  addiu   $s0, $zero, 0x0040         ## $s0 = 00000040
.L80BA115C:
/* 003FC 80BA115C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00400 80BA1160 00000000 */  nop
/* 00404 80BA1164 3C0142BE */  lui     $at, 0x42BE                ## $at = 42BE0000
/* 00408 80BA1168 44812000 */  mtc1    $at, $f4                   ## $f4 = 95.00
/* 0040C 80BA116C 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00410 80BA1170 44814000 */  mtc1    $at, $f8                   ## $f8 = 15.00
/* 00414 80BA1174 46040182 */  mul.s   $f6, $f0, $f4              
/* 00418 80BA1178 240EFF10 */  addiu   $t6, $zero, 0xFF10         ## $t6 = FFFFFF10
/* 0041C 80BA117C 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 00420 80BA1180 2418000A */  addiu   $t8, $zero, 0x000A         ## $t8 = 0000000A
/* 00424 80BA1184 24090020 */  addiu   $t1, $zero, 0x0020         ## $t1 = 00000020
/* 00428 80BA1188 240A003C */  addiu   $t2, $zero, 0x003C         ## $t2 = 0000003C
/* 0042C 80BA118C 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 00430 80BA1190 46083280 */  add.s   $f10, $f6, $f8             
/* 00434 80BA1194 AFAB0034 */  sw      $t3, 0x0034($sp)           
/* 00438 80BA1198 AFAA0030 */  sw      $t2, 0x0030($sp)           
/* 0043C 80BA119C AFA9002C */  sw      $t1, 0x002C($sp)           
/* 00440 80BA11A0 4600540D */  trunc.w.s $f16, $f10                 
/* 00444 80BA11A4 AFB8001C */  sw      $t8, 0x001C($sp)           
/* 00448 80BA11A8 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 0044C 80BA11AC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00450 80BA11B0 44088000 */  mfc1    $t0, $f16                  
/* 00454 80BA11B4 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00458 80BA11B8 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 0045C 80BA11BC AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00460 80BA11C0 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 00464 80BA11C4 86A2001C */  lh      $v0, 0x001C($s5)           ## 0000001C
/* 00468 80BA11C8 3C1880BA */  lui     $t8, %hi(D_80BA1B8C)       ## $t8 = 80BA0000
/* 0046C 80BA11CC 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 00470 80BA11D0 00021203 */  sra     $v0, $v0,  8               
/* 00474 80BA11D4 30420001 */  andi    $v0, $v0, 0x0001           ## $v0 = 00000000
/* 00478 80BA11D8 00026040 */  sll     $t4, $v0,  1               
/* 0047C 80BA11DC 00027880 */  sll     $t7, $v0,  2               
/* 00480 80BA11E0 030FC021 */  addu    $t8, $t8, $t7              
/* 00484 80BA11E4 03CC6821 */  addu    $t5, $s8, $t4              
/* 00488 80BA11E8 85AE0000 */  lh      $t6, 0x0000($t5)           ## 00000000
/* 0048C 80BA11EC 8F181B8C */  lw      $t8, %lo(D_80BA1B8C)($t8)  
/* 00490 80BA11F0 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFE8
/* 00494 80BA11F4 02E03025 */  or      $a2, $s7, $zero            ## $a2 = FFFFFFDC
/* 00498 80BA11F8 02803825 */  or      $a3, $s4, $zero            ## $a3 = 00000024
/* 0049C 80BA11FC AFAE0038 */  sw      $t6, 0x0038($sp)           
/* 004A0 80BA1200 0C00A7A3 */  jal     Effect_SpawnFragment
              
/* 004A4 80BA1204 AFB8003C */  sw      $t8, 0x003C($sp)           
/* 004A8 80BA1208 26314E20 */  addiu   $s1, $s1, 0x4E20           ## $s1 = 00004E20
/* 004AC 80BA120C 00118C00 */  sll     $s1, $s1, 16               
/* 004B0 80BA1210 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 004B4 80BA1214 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 004B8 80BA1218 1641FF9E */  bne     $s2, $at, .L80BA1094       
/* 004BC 80BA121C 00118C03 */  sra     $s1, $s1, 16               
/* 004C0 80BA1220 24190014 */  addiu   $t9, $zero, 0x0014         ## $t9 = 00000014
/* 004C4 80BA1224 24080032 */  addiu   $t0, $zero, 0x0032         ## $t0 = 00000032
/* 004C8 80BA1228 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 004CC 80BA122C AFA90018 */  sw      $t1, 0x0018($sp)           
/* 004D0 80BA1230 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 004D4 80BA1234 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 004D8 80BA1238 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 004DC 80BA123C 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000024
/* 004E0 80BA1240 3C0641F0 */  lui     $a2, 0x41F0                ## $a2 = 41F00000
/* 004E4 80BA1244 0C00CD20 */  jal     func_80033480              
/* 004E8 80BA1248 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 004EC 80BA124C 8FBF009C */  lw      $ra, 0x009C($sp)           
/* 004F0 80BA1250 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 004F4 80BA1254 D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 004F8 80BA1258 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 004FC 80BA125C D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 00500 80BA1260 D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 00504 80BA1264 D7BE0070 */  ldc1    $f30, 0x0070($sp)          
/* 00508 80BA1268 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 0050C 80BA126C 8FB1007C */  lw      $s1, 0x007C($sp)           
/* 00510 80BA1270 8FB20080 */  lw      $s2, 0x0080($sp)           
/* 00514 80BA1274 8FB30084 */  lw      $s3, 0x0084($sp)           
/* 00518 80BA1278 8FB40088 */  lw      $s4, 0x0088($sp)           
/* 0051C 80BA127C 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 00520 80BA1280 8FB60090 */  lw      $s6, 0x0090($sp)           
/* 00524 80BA1284 8FB70094 */  lw      $s7, 0x0094($sp)           
/* 00528 80BA1288 8FBE0098 */  lw      $s8, 0x0098($sp)           
/* 0052C 80BA128C 03E00008 */  jr      $ra                        
/* 00530 80BA1290 27BD00E0 */  addiu   $sp, $sp, 0x00E0           ## $sp = 00000000
