glabel func_80B6CAF8
/* 03158 80B6CAF8 27BDFF38 */  addiu   $sp, $sp, 0xFF38           ## $sp = FFFFFF38
/* 0315C 80B6CAFC 3C0F80B8 */  lui     $t7, %hi(D_80B7AE70)       ## $t7 = 80B80000
/* 03160 80B6CB00 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03164 80B6CB04 AFA400C8 */  sw      $a0, 0x00C8($sp)           
/* 03168 80B6CB08 AFA500CC */  sw      $a1, 0x00CC($sp)           
/* 0316C 80B6CB0C AFA600D0 */  sw      $a2, 0x00D0($sp)           
/* 03170 80B6CB10 AFA700D4 */  sw      $a3, 0x00D4($sp)           
/* 03174 80B6CB14 25EFAE70 */  addiu   $t7, $t7, %lo(D_80B7AE70)  ## $t7 = 80B7AE70
/* 03178 80B6CB18 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B7AE70
/* 0317C 80B6CB1C 27AE00A0 */  addiu   $t6, $sp, 0x00A0           ## $t6 = FFFFFFD8
/* 03180 80B6CB20 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B7AE74
/* 03184 80B6CB24 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFD8
/* 03188 80B6CB28 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B7AE78
/* 0318C 80B6CB2C ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFDC
/* 03190 80B6CB30 3C0680B8 */  lui     $a2, %hi(D_80B7B0D0)       ## $a2 = 80B80000
/* 03194 80B6CB34 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFE0
/* 03198 80B6CB38 8FA900C8 */  lw      $t1, 0x00C8($sp)           
/* 0319C 80B6CB3C 24C6B0D0 */  addiu   $a2, $a2, %lo(D_80B7B0D0)  ## $a2 = 80B7B0D0
/* 031A0 80B6CB40 24070B93 */  addiu   $a3, $zero, 0x0B93         ## $a3 = 00000B93
/* 031A4 80B6CB44 8D2A1C44 */  lw      $t2, 0x1C44($t1)           ## 00001C44
/* 031A8 80B6CB48 27A4007C */  addiu   $a0, $sp, 0x007C           ## $a0 = FFFFFFB4
/* 031AC 80B6CB4C AFAA0090 */  sw      $t2, 0x0090($sp)           
/* 031B0 80B6CB50 8D250000 */  lw      $a1, 0x0000($t1)           ## 00000000
/* 031B4 80B6CB54 0C031AB1 */  jal     func_800C6AC4              
/* 031B8 80B6CB58 AFA5008C */  sw      $a1, 0x008C($sp)           
/* 031BC 80B6CB5C 0C034213 */  jal     Matrix_Push              
/* 031C0 80B6CB60 00000000 */  nop
/* 031C4 80B6CB64 3C0B80B8 */  lui     $t3, %hi(D_80B7A694)       ## $t3 = 80B80000
/* 031C8 80B6CB68 856BA694 */  lh      $t3, %lo(D_80B7A694)($t3)  
/* 031CC 80B6CB6C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 031D0 80B6CB70 8FA200CC */  lw      $v0, 0x00CC($sp)           
/* 031D4 80B6CB74 15610017 */  bne     $t3, $at, .L80B6CBD4       
/* 031D8 80B6CB78 8FA300D0 */  lw      $v1, 0x00D0($sp)           
/* 031DC 80B6CB7C 8FAC00C8 */  lw      $t4, 0x00C8($sp)           
/* 031E0 80B6CB80 C4420004 */  lwc1    $f2, 0x0004($v0)           ## 00000004
/* 031E4 80B6CB84 3C1880B8 */  lui     $t8, %hi(D_80B7A68C)       ## $t8 = 80B80000
/* 031E8 80B6CB88 8D8D07C0 */  lw      $t5, 0x07C0($t4)           ## 000007C0
/* 031EC 80B6CB8C 8DAE0028 */  lw      $t6, 0x0028($t5)           ## 00000028
/* 031F0 80B6CB90 85CF0002 */  lh      $t7, 0x0002($t6)           ## 00000002
/* 031F4 80B6CB94 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 031F8 80B6CB98 00000000 */  nop
/* 031FC 80B6CB9C 468021A0 */  cvt.s.w $f6, $f4                   
/* 03200 80B6CBA0 4602303C */  c.lt.s  $f6, $f2                   
/* 03204 80B6CBA4 00000000 */  nop
/* 03208 80B6CBA8 45030008 */  bc1tl   .L80B6CBCC                 
/* 0320C 80B6CBAC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 03210 80B6CBB0 9318A68C */  lbu     $t8, %lo(D_80B7A68C)($t8)  
/* 03214 80B6CBB4 93B900D7 */  lbu     $t9, 0x00D7($sp)           
/* 03218 80B6CBB8 53000007 */  beql    $t8, $zero, .L80B6CBD8     
/* 0321C 80B6CBBC 8FAA00C8 */  lw      $t2, 0x00C8($sp)           
/* 03220 80B6CBC0 53200005 */  beql    $t9, $zero, .L80B6CBD8     
/* 03224 80B6CBC4 8FAA00C8 */  lw      $t2, 0x00C8($sp)           
/* 03228 80B6CBC8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L80B6CBCC:
/* 0322C 80B6CBCC 10000015 */  beq     $zero, $zero, .L80B6CC24   
/* 03230 80B6CBD0 C4660004 */  lwc1    $f6, 0x0004($v1)           ## 00000004
.L80B6CBD4:
/* 03234 80B6CBD4 8FAA00C8 */  lw      $t2, 0x00C8($sp)           
.L80B6CBD8:
/* 03238 80B6CBD8 C4420004 */  lwc1    $f2, 0x0004($v0)           ## 00000004
/* 0323C 80B6CBDC 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 03240 80B6CBE0 8D4907C0 */  lw      $t1, 0x07C0($t2)           ## 000007C0
/* 03244 80B6CBE4 8D2B0028 */  lw      $t3, 0x0028($t1)           ## 00000028
/* 03248 80B6CBE8 856C0002 */  lh      $t4, 0x0002($t3)           ## 80B80002
/* 0324C 80B6CBEC 448C4000 */  mtc1    $t4, $f8                   ## $f8 = 0.00
/* 03250 80B6CBF0 00000000 */  nop
/* 03254 80B6CBF4 468042A0 */  cvt.s.w $f10, $f8                  
/* 03258 80B6CBF8 460A103C */  c.lt.s  $f2, $f10                  
/* 0325C 80B6CBFC 00000000 */  nop
/* 03260 80B6CC00 45020006 */  bc1fl   .L80B6CC1C                 
/* 03264 80B6CC04 44810000 */  mtc1    $at, $f0                   ## $f0 = -3.00
/* 03268 80B6CC08 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 0326C 80B6CC0C 44810000 */  mtc1    $at, $f0                   ## $f0 = -1.00
/* 03270 80B6CC10 10000004 */  beq     $zero, $zero, .L80B6CC24   
/* 03274 80B6CC14 C4660004 */  lwc1    $f6, 0x0004($v1)           ## 00000004
/* 03278 80B6CC18 44810000 */  mtc1    $at, $f0                   ## $f0 = -1.00
.L80B6CC1C:
/* 0327C 80B6CC1C 00000000 */  nop
/* 03280 80B6CC20 C4660004 */  lwc1    $f6, 0x0004($v1)           ## 00000004
.L80B6CC24:
/* 03284 80B6CC24 C4720000 */  lwc1    $f18, 0x0000($v1)          ## 00000000
/* 03288 80B6CC28 C4440000 */  lwc1    $f4, 0x0000($v0)           ## 00000000
/* 0328C 80B6CC2C 46023201 */  sub.s   $f8, $f6, $f2              
/* 03290 80B6CC30 46049381 */  sub.s   $f14, $f18, $f4            
/* 03294 80B6CC34 46004280 */  add.s   $f10, $f8, $f0             
/* 03298 80B6CC38 E7AA00C0 */  swc1    $f10, 0x00C0($sp)          
/* 0329C 80B6CC3C C4440008 */  lwc1    $f4, 0x0008($v0)           ## 00000008
/* 032A0 80B6CC40 C4720008 */  lwc1    $f18, 0x0008($v1)          ## 00000008
/* 032A4 80B6CC44 E7AE00C4 */  swc1    $f14, 0x00C4($sp)          
/* 032A8 80B6CC48 46049301 */  sub.s   $f12, $f18, $f4            
/* 032AC 80B6CC4C 0C0341F5 */  jal     atan2f
              
/* 032B0 80B6CC50 E7AC00BC */  swc1    $f12, 0x00BC($sp)          
/* 032B4 80B6CC54 C7A200C4 */  lwc1    $f2, 0x00C4($sp)           
/* 032B8 80B6CC58 C7B000BC */  lwc1    $f16, 0x00BC($sp)          
/* 032BC 80B6CC5C E7A000B4 */  swc1    $f0, 0x00B4($sp)           
/* 032C0 80B6CC60 46021182 */  mul.s   $f6, $f2, $f2              
/* 032C4 80B6CC64 C7AE00C0 */  lwc1    $f14, 0x00C0($sp)          
/* 032C8 80B6CC68 46108202 */  mul.s   $f8, $f16, $f16            
/* 032CC 80B6CC6C 46083000 */  add.s   $f0, $f6, $f8              
/* 032D0 80B6CC70 0C0341F5 */  jal     atan2f
              
/* 032D4 80B6CC74 46000304 */  sqrt.s  $f12, $f0                  
/* 032D8 80B6CC78 46000287 */  neg.s   $f10, $f0                  
/* 032DC 80B6CC7C C7AC00B4 */  lwc1    $f12, 0x00B4($sp)          
/* 032E0 80B6CC80 E7AA00B8 */  swc1    $f10, 0x00B8($sp)          
/* 032E4 80B6CC84 0C034348 */  jal     Matrix_RotateY              
/* 032E8 80B6CC88 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 032EC 80B6CC8C C7AC00B8 */  lwc1    $f12, 0x00B8($sp)          
/* 032F0 80B6CC90 0C0342DC */  jal     Matrix_RotateX              
/* 032F4 80B6CC94 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 032F8 80B6CC98 27A400A0 */  addiu   $a0, $sp, 0x00A0           ## $a0 = FFFFFFD8
/* 032FC 80B6CC9C 0C0346BD */  jal     Matrix_MultVec3f              
/* 03300 80B6CCA0 27A50094 */  addiu   $a1, $sp, 0x0094           ## $a1 = FFFFFFCC
/* 03304 80B6CCA4 8FA200CC */  lw      $v0, 0x00CC($sp)           
/* 03308 80B6CCA8 C7A40094 */  lwc1    $f4, 0x0094($sp)           
/* 0330C 80B6CCAC 8FA300D0 */  lw      $v1, 0x00D0($sp)           
/* 03310 80B6CCB0 C4520000 */  lwc1    $f18, 0x0000($v0)          ## 00000000
/* 03314 80B6CCB4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 03318 80B6CCB8 46049180 */  add.s   $f6, $f18, $f4             
/* 0331C 80B6CCBC E4660000 */  swc1    $f6, 0x0000($v1)           ## 00000000
/* 03320 80B6CCC0 C7AA0098 */  lwc1    $f10, 0x0098($sp)          
/* 03324 80B6CCC4 C4480004 */  lwc1    $f8, 0x0004($v0)           ## 00000004
/* 03328 80B6CCC8 460A4480 */  add.s   $f18, $f8, $f10            
/* 0332C 80B6CCCC E4720004 */  swc1    $f18, 0x0004($v1)          ## 00000004
/* 03330 80B6CCD0 C7A6009C */  lwc1    $f6, 0x009C($sp)           
/* 03334 80B6CCD4 C4440008 */  lwc1    $f4, 0x0008($v0)           ## 00000008
/* 03338 80B6CCD8 46062200 */  add.s   $f8, $f4, $f6              
/* 0333C 80B6CCDC E4680008 */  swc1    $f8, 0x0008($v1)           ## 00000008
/* 03340 80B6CCE0 8C460008 */  lw      $a2, 0x0008($v0)           ## 00000008
/* 03344 80B6CCE4 C44E0004 */  lwc1    $f14, 0x0004($v0)          ## 00000004
/* 03348 80B6CCE8 0C034261 */  jal     Matrix_Translate              
/* 0334C 80B6CCEC C44C0000 */  lwc1    $f12, 0x0000($v0)          ## 00000000
/* 03350 80B6CCF0 8FAD0090 */  lw      $t5, 0x0090($sp)           
/* 03354 80B6CCF4 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 03358 80B6CCF8 C5B20068 */  lwc1    $f18, 0x0068($t5)          ## 00000068
/* 0335C 80B6CCFC 46125032 */  c.eq.s  $f10, $f18                 
/* 03360 80B6CD00 00000000 */  nop
/* 03364 80B6CD04 45000013 */  bc1f    .L80B6CD54                 
/* 03368 80B6CD08 3C0180B8 */  lui     $at, %hi(D_80B7E138)       ## $at = 80B80000
/* 0336C 80B6CD0C C426E138 */  lwc1    $f6, %lo(D_80B7E138)($at)  
/* 03370 80B6CD10 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 03374 80B6CD14 93AE00D7 */  lbu     $t6, 0x00D7($sp)           
/* 03378 80B6CD18 3C1880B8 */  lui     $t8, %hi(D_80B7FDA0)       ## $t8 = 80B80000
/* 0337C 80B6CD1C 46062032 */  c.eq.s  $f4, $f6                   
/* 03380 80B6CD20 2718FDA0 */  addiu   $t8, $t8, %lo(D_80B7FDA0)  ## $t8 = 80B7FDA0
/* 03384 80B6CD24 000E7880 */  sll     $t7, $t6,  2               
/* 03388 80B6CD28 01F82021 */  addu    $a0, $t7, $t8              
/* 0338C 80B6CD2C 45000009 */  bc1f    .L80B6CD54                 
/* 03390 80B6CD30 8FA500B4 */  lw      $a1, 0x00B4($sp)           
/* 03394 80B6CD34 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 03398 80B6CD38 3C073E99 */  lui     $a3, 0x3E99                ## $a3 = 3E990000
/* 0339C 80B6CD3C 34E7999A */  ori     $a3, $a3, 0x999A           ## $a3 = 3E99999A
/* 033A0 80B6CD40 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 033A4 80B6CD44 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 033A8 80B6CD48 AFA4001C */  sw      $a0, 0x001C($sp)           
/* 033AC 80B6CD4C 10000008 */  beq     $zero, $zero, .L80B6CD70   
/* 033B0 80B6CD50 8FA4001C */  lw      $a0, 0x001C($sp)           
.L80B6CD54:
/* 033B4 80B6CD54 93B900D7 */  lbu     $t9, 0x00D7($sp)           
/* 033B8 80B6CD58 C7A800B4 */  lwc1    $f8, 0x00B4($sp)           
/* 033BC 80B6CD5C 3C0980B8 */  lui     $t1, %hi(D_80B7FDA0)       ## $t1 = 80B80000
/* 033C0 80B6CD60 2529FDA0 */  addiu   $t1, $t1, %lo(D_80B7FDA0)  ## $t1 = 80B7FDA0
/* 033C4 80B6CD64 00195080 */  sll     $t2, $t9,  2               
/* 033C8 80B6CD68 01492021 */  addu    $a0, $t2, $t1              
/* 033CC 80B6CD6C E4880000 */  swc1    $f8, 0x0000($a0)           ## 00000000
.L80B6CD70:
/* 033D0 80B6CD70 C48C0000 */  lwc1    $f12, 0x0000($a0)          ## 00000000
/* 033D4 80B6CD74 0C034348 */  jal     Matrix_RotateY              
/* 033D8 80B6CD78 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 033DC 80B6CD7C C7AC00B8 */  lwc1    $f12, 0x00B8($sp)          
/* 033E0 80B6CD80 0C0342DC */  jal     Matrix_RotateX              
/* 033E4 80B6CD84 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 033E8 80B6CD88 3C0180B8 */  lui     $at, %hi(D_80B7B3F8)       ## $at = 80B80000
/* 033EC 80B6CD8C C42CB3F8 */  lwc1    $f12, %lo(D_80B7B3F8)($at) 
/* 033F0 80B6CD90 3C063BA3 */  lui     $a2, 0x3BA3                ## $a2 = 3BA30000
/* 033F4 80B6CD94 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3BA3D70A
/* 033F8 80B6CD98 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 033FC 80B6CD9C 0C0342A3 */  jal     Matrix_Scale              
/* 03400 80B6CDA0 46006386 */  mov.s   $f14, $f12                 
/* 03404 80B6CDA4 3C0180B8 */  lui     $at, %hi(D_80B7B3FC)       ## $at = 80B80000
/* 03408 80B6CDA8 C42CB3FC */  lwc1    $f12, %lo(D_80B7B3FC)($at) 
/* 0340C 80B6CDAC 0C034348 */  jal     Matrix_RotateY              
/* 03410 80B6CDB0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 03414 80B6CDB4 8FA7008C */  lw      $a3, 0x008C($sp)           
/* 03418 80B6CDB8 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
/* 0341C 80B6CDBC 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = DA380003
/* 03420 80B6CDC0 8CE202C0 */  lw      $v0, 0x02C0($a3)           ## 000002C0
/* 03424 80B6CDC4 3C0580B8 */  lui     $a1, %hi(D_80B7B0E0)       ## $a1 = 80B80000
/* 03428 80B6CDC8 24A5B0E0 */  addiu   $a1, $a1, %lo(D_80B7B0E0)  ## $a1 = 80B7B0E0
/* 0342C 80B6CDCC 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 03430 80B6CDD0 ACEB02C0 */  sw      $t3, 0x02C0($a3)           ## 000002C0
/* 03434 80B6CDD4 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 03438 80B6CDD8 8FAD00C8 */  lw      $t5, 0x00C8($sp)           
/* 0343C 80B6CDDC 24060BD5 */  addiu   $a2, $zero, 0x0BD5         ## $a2 = 00000BD5
/* 03440 80B6CDE0 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 03444 80B6CDE4 0C0346A2 */  jal     Matrix_NewMtx              
/* 03448 80B6CDE8 AFA20078 */  sw      $v0, 0x0078($sp)           
/* 0344C 80B6CDEC 8FA30078 */  lw      $v1, 0x0078($sp)           
/* 03450 80B6CDF0 3C070601 */  lui     $a3, 0x0601                ## $a3 = 06010000
/* 03454 80B6CDF4 24E72160 */  addiu   $a3, $a3, 0x2160           ## $a3 = 06012160
/* 03458 80B6CDF8 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 0345C 80B6CDFC 8FA4008C */  lw      $a0, 0x008C($sp)           
/* 03460 80B6CE00 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 03464 80B6CE04 3C0180B8 */  lui     $at, %hi(D_80B7B400)       ## $at = 80B80000
/* 03468 80B6CE08 8C8202C0 */  lw      $v0, 0x02C0($a0)           ## 000002C0
/* 0346C 80B6CE0C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 03470 80B6CE10 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 03474 80B6CE14 AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 03478 80B6CE18 AC470004 */  sw      $a3, 0x0004($v0)           ## 00000004
/* 0347C 80B6CE1C AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 03480 80B6CE20 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 03484 80B6CE24 0C0343B5 */  jal     Matrix_RotateZ              
/* 03488 80B6CE28 C42CB400 */  lwc1    $f12, %lo(D_80B7B400)($at) 
/* 0348C 80B6CE2C 8FA8008C */  lw      $t0, 0x008C($sp)           
/* 03490 80B6CE30 8FA7001C */  lw      $a3, 0x001C($sp)           
/* 03494 80B6CE34 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 03498 80B6CE38 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 0349C 80B6CE3C 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 034A0 80B6CE40 3C0580B8 */  lui     $a1, %hi(D_80B7B0F0)       ## $a1 = 80B80000
/* 034A4 80B6CE44 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 034A8 80B6CE48 AD1802C0 */  sw      $t8, 0x02C0($t0)           ## 000002C0
/* 034AC 80B6CE4C AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 034B0 80B6CE50 8FAA00C8 */  lw      $t2, 0x00C8($sp)           
/* 034B4 80B6CE54 24A5B0F0 */  addiu   $a1, $a1, %lo(D_80B7B0F0)  ## $a1 = 80B7B0F0
/* 034B8 80B6CE58 24060BDA */  addiu   $a2, $zero, 0x0BDA         ## $a2 = 00000BDA
/* 034BC 80B6CE5C 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 034C0 80B6CE60 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 034C4 80B6CE64 0C0346A2 */  jal     Matrix_NewMtx              
/* 034C8 80B6CE68 AFA20070 */  sw      $v0, 0x0070($sp)           
/* 034CC 80B6CE6C 8FA30070 */  lw      $v1, 0x0070($sp)           
/* 034D0 80B6CE70 8FA7001C */  lw      $a3, 0x001C($sp)           
/* 034D4 80B6CE74 3C0BDE00 */  lui     $t3, 0xDE00                ## $t3 = DE000000
/* 034D8 80B6CE78 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 034DC 80B6CE7C 8FA4008C */  lw      $a0, 0x008C($sp)           
/* 034E0 80B6CE80 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 034E4 80B6CE84 3C0D80B8 */  lui     $t5, %hi(D_80B7A68C)       ## $t5 = 80B80000
/* 034E8 80B6CE88 8C8202C0 */  lw      $v0, 0x02C0($a0)           ## 000002C0
/* 034EC 80B6CE8C 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 034F0 80B6CE90 AC8902C0 */  sw      $t1, 0x02C0($a0)           ## 000002C0
/* 034F4 80B6CE94 AC470004 */  sw      $a3, 0x0004($v0)           ## 00000004
/* 034F8 80B6CE98 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 034FC 80B6CE9C 93AC00D7 */  lbu     $t4, 0x00D7($sp)           
/* 03500 80B6CEA0 1581005F */  bne     $t4, $at, .L80B6D020       
/* 03504 80B6CEA4 00000000 */  nop
/* 03508 80B6CEA8 91ADA68C */  lbu     $t5, %lo(D_80B7A68C)($t5)  
/* 0350C 80B6CEAC 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 03510 80B6CEB0 11A0005B */  beq     $t5, $zero, .L80B6D020     
/* 03514 80B6CEB4 00000000 */  nop
/* 03518 80B6CEB8 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
/* 0351C 80B6CEBC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 03520 80B6CEC0 44066000 */  mfc1    $a2, $f12                  
/* 03524 80B6CEC4 0C0342A3 */  jal     Matrix_Scale              
/* 03528 80B6CEC8 46006386 */  mov.s   $f14, $f12                 
/* 0352C 80B6CECC 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
/* 03530 80B6CED0 44816000 */  mtc1    $at, $f12                  ## $f12 = 250.00
/* 03534 80B6CED4 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 03538 80B6CED8 3C06C4AF */  lui     $a2, 0xC4AF                ## $a2 = C4AF0000
/* 0353C 80B6CEDC 0C034261 */  jal     Matrix_Translate              
/* 03540 80B6CEE0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 03544 80B6CEE4 0C034213 */  jal     Matrix_Push              
/* 03548 80B6CEE8 00000000 */  nop
/* 0354C 80B6CEEC 3C0E80B8 */  lui     $t6, %hi(D_80B7A690)       ## $t6 = 80B80000
/* 03550 80B6CEF0 91CEA690 */  lbu     $t6, %lo(D_80B7A690)($t6)  
/* 03554 80B6CEF4 8FAF00C8 */  lw      $t7, 0x00C8($sp)           
/* 03558 80B6CEF8 3C070001 */  lui     $a3, 0x0001                ## $a3 = 00010000
/* 0355C 80B6CEFC 11C00023 */  beq     $t6, $zero, .L80B6CF8C     
/* 03560 80B6CF00 00EF3821 */  addu    $a3, $a3, $t7              
/* 03564 80B6CF04 8CE51E10 */  lw      $a1, 0x1E10($a3)           ## 00011E10
/* 03568 80B6CF08 3C0480B8 */  lui     $a0, %hi(D_80B7A89C)       ## $a0 = 80B80000
/* 0356C 80B6CF0C 2484A89C */  addiu   $a0, $a0, %lo(D_80B7A89C)  ## $a0 = 80B7A89C
/* 03570 80B6CF10 0C0346BD */  jal     Matrix_MultVec3f              
/* 03574 80B6CF14 AFA50068 */  sw      $a1, 0x0068($sp)           
/* 03578 80B6CF18 0C034236 */  jal     Matrix_Get              
/* 0357C 80B6CF1C 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFF60
/* 03580 80B6CF20 3C0580B8 */  lui     $a1, %hi(D_80B7E09C)       ## $a1 = 80B80000
/* 03584 80B6CF24 24A5E09C */  addiu   $a1, $a1, %lo(D_80B7E09C)  ## $a1 = 80B7E09C
/* 03588 80B6CF28 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFF60
/* 0358C 80B6CF2C 0C034833 */  jal     func_800D20CC              
/* 03590 80B6CF30 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 03594 80B6CF34 3C0180B8 */  lui     $at, %hi(D_80B7A690)       ## $at = 80B80000
/* 03598 80B6CF38 8FA70068 */  lw      $a3, 0x0068($sp)           
/* 0359C 80B6CF3C A020A690 */  sb      $zero, %lo(D_80B7A690)($at) 
/* 035A0 80B6CF40 3C0180B8 */  lui     $at, %hi(D_80B7A68C)       ## $at = 80B80000
/* 035A4 80B6CF44 A020A68C */  sb      $zero, %lo(D_80B7A68C)($at) 
/* 035A8 80B6CF48 3C0280B8 */  lui     $v0, %hi(D_80B7A89C)       ## $v0 = 80B80000
/* 035AC 80B6CF4C 24180006 */  addiu   $t8, $zero, 0x0006         ## $t8 = 00000006
/* 035B0 80B6CF50 2442A89C */  addiu   $v0, $v0, %lo(D_80B7A89C)  ## $v0 = 80B7A89C
/* 035B4 80B6CF54 A0F80024 */  sb      $t8, 0x0024($a3)           ## 00000024
/* 035B8 80B6CF58 A4E0002C */  sh      $zero, 0x002C($a3)         ## 0000002C
/* 035BC 80B6CF5C 8C4A0000 */  lw      $t2, 0x0000($v0)           ## 80B7A89C
/* 035C0 80B6CF60 ACEA000C */  sw      $t2, 0x000C($a3)           ## 0000000C
/* 035C4 80B6CF64 8C590004 */  lw      $t9, 0x0004($v0)           ## 80B7A8A0
/* 035C8 80B6CF68 ACF90010 */  sw      $t9, 0x0010($a3)           ## 00000010
/* 035CC 80B6CF6C 8C4A0008 */  lw      $t2, 0x0008($v0)           ## 80B7A8A4
/* 035D0 80B6CF70 ACEA0014 */  sw      $t2, 0x0014($a3)           ## 00000014
/* 035D4 80B6CF74 8C4B0000 */  lw      $t3, 0x0000($v0)           ## 80B7A89C
/* 035D8 80B6CF78 ACEB0018 */  sw      $t3, 0x0018($a3)           ## 00000018
/* 035DC 80B6CF7C 8C490004 */  lw      $t1, 0x0004($v0)           ## 80B7A8A0
/* 035E0 80B6CF80 ACE9001C */  sw      $t1, 0x001C($a3)           ## 0000001C
/* 035E4 80B6CF84 8C4B0008 */  lw      $t3, 0x0008($v0)           ## 80B7A8A4
/* 035E8 80B6CF88 ACEB0020 */  sw      $t3, 0x0020($a3)           ## 00000020
.L80B6CF8C:
/* 035EC 80B6CF8C 0C034221 */  jal     Matrix_Pull              
/* 035F0 80B6CF90 00000000 */  nop
/* 035F4 80B6CF94 3C0180B8 */  lui     $at, %hi(D_80B7B404)       ## $at = 80B80000
/* 035F8 80B6CF98 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 035FC 80B6CF9C C42CB404 */  lwc1    $f12, %lo(D_80B7B404)($at) 
/* 03600 80B6CFA0 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 03604 80B6CFA4 0C034261 */  jal     Matrix_Translate              
/* 03608 80B6CFA8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0360C 80B6CFAC 3C0180B8 */  lui     $at, %hi(D_80B7B408)       ## $at = 80B80000
/* 03610 80B6CFB0 C42CB408 */  lwc1    $f12, %lo(D_80B7B408)($at) 
/* 03614 80B6CFB4 0C0342DC */  jal     Matrix_RotateX              
/* 03618 80B6CFB8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0361C 80B6CFBC 8FAC008C */  lw      $t4, 0x008C($sp)           
/* 03620 80B6CFC0 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 03624 80B6CFC4 35CE0003 */  ori     $t6, $t6, 0x0003           ## $t6 = DA380003
/* 03628 80B6CFC8 8D8202C0 */  lw      $v0, 0x02C0($t4)           ## 000002C0
/* 0362C 80B6CFCC 3C0580B8 */  lui     $a1, %hi(D_80B7B100)       ## $a1 = 80B80000
/* 03630 80B6CFD0 24A5B100 */  addiu   $a1, $a1, %lo(D_80B7B100)  ## $a1 = 80B7B100
/* 03634 80B6CFD4 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 03638 80B6CFD8 AD8D02C0 */  sw      $t5, 0x02C0($t4)           ## 000002C0
/* 0363C 80B6CFDC AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 03640 80B6CFE0 8FAF00C8 */  lw      $t7, 0x00C8($sp)           
/* 03644 80B6CFE4 24060C0D */  addiu   $a2, $zero, 0x0C0D         ## $a2 = 00000C0D
/* 03648 80B6CFE8 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 0364C 80B6CFEC 0C0346A2 */  jal     Matrix_NewMtx              
/* 03650 80B6CFF0 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 03654 80B6CFF4 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 03658 80B6CFF8 3C090600 */  lui     $t1, 0x0600                ## $t1 = 06000000
/* 0365C 80B6CFFC 252974C8 */  addiu   $t1, $t1, 0x74C8           ## $t1 = 060074C8
/* 03660 80B6D000 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03664 80B6D004 8FB8008C */  lw      $t8, 0x008C($sp)           
/* 03668 80B6D008 3C0ADE00 */  lui     $t2, 0xDE00                ## $t2 = DE000000
/* 0366C 80B6D00C 8F0202C0 */  lw      $v0, 0x02C0($t8)           ## 000002C0
/* 03670 80B6D010 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 03674 80B6D014 AF1902C0 */  sw      $t9, 0x02C0($t8)           ## 000002C0
/* 03678 80B6D018 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 0367C 80B6D01C AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
.L80B6D020:
/* 03680 80B6D020 0C034221 */  jal     Matrix_Pull              
/* 03684 80B6D024 00000000 */  nop
/* 03688 80B6D028 8FAB00C8 */  lw      $t3, 0x00C8($sp)           
/* 0368C 80B6D02C 3C0680B8 */  lui     $a2, %hi(D_80B7B110)       ## $a2 = 80B80000
/* 03690 80B6D030 24C6B110 */  addiu   $a2, $a2, %lo(D_80B7B110)  ## $a2 = 80B7B110
/* 03694 80B6D034 27A4007C */  addiu   $a0, $sp, 0x007C           ## $a0 = FFFFFFB4
/* 03698 80B6D038 24070C1A */  addiu   $a3, $zero, 0x0C1A         ## $a3 = 00000C1A
/* 0369C 80B6D03C 0C031AD5 */  jal     func_800C6B54              
/* 036A0 80B6D040 8D650000 */  lw      $a1, 0x0000($t3)           ## 00000000
/* 036A4 80B6D044 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 036A8 80B6D048 27BD00C8 */  addiu   $sp, $sp, 0x00C8           ## $sp = 00000000
/* 036AC 80B6D04C 03E00008 */  jr      $ra                        
/* 036B0 80B6D050 00000000 */  nop


