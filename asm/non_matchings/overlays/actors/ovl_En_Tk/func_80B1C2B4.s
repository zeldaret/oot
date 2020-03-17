glabel func_80B1C2B4
/* 009B4 80B1C2B4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 009B8 80B1C2B8 3C0F80B2 */  lui     $t7, %hi(D_80B1D540)       ## $t7 = 80B20000
/* 009BC 80B1C2BC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 009C0 80B1C2C0 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 009C4 80B1C2C4 25EFD540 */  addiu   $t7, $t7, %lo(D_80B1D540)  ## $t7 = 80B1D540
/* 009C8 80B1C2C8 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B1D540
/* 009CC 80B1C2CC 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B1D544
/* 009D0 80B1C2D0 27AE0028 */  addiu   $t6, $sp, 0x0028           ## $t6 = FFFFFFF8
/* 009D4 80B1C2D4 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF8
/* 009D8 80B1C2D8 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFFC
/* 009DC 80B1C2DC 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 009E0 80B1C2E0 C4800164 */  lwc1    $f0, 0x0164($a0)           ## 00000164
/* 009E4 80B1C2E4 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 009E8 80B1C2E8 240538B8 */  addiu   $a1, $zero, 0x38B8         ## $a1 = 000038B8
/* 009EC 80B1C2EC 46007032 */  c.eq.s  $f14, $f0                  
/* 009F0 80B1C2F0 00000000 */  nop
/* 009F4 80B1C2F4 45010007 */  bc1t    .L80B1C314                 
/* 009F8 80B1C2F8 00000000 */  nop
/* 009FC 80B1C2FC 44812000 */  mtc1    $at, $f4                   ## $f4 = 25.00
/* 00A00 80B1C300 00000000 */  nop
/* 00A04 80B1C304 46002032 */  c.eq.s  $f4, $f0                   
/* 00A08 80B1C308 00000000 */  nop
/* 00A0C 80B1C30C 45020006 */  bc1fl   .L80B1C328                 
/* 00A10 80B1C310 8C890154 */  lw      $t1, 0x0154($a0)           ## 00000154
.L80B1C314:
/* 00A14 80B1C314 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00A18 80B1C318 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00A1C 80B1C31C 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 00A20 80B1C320 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00A24 80B1C324 8C890154 */  lw      $t1, 0x0154($a0)           ## 00000154
.L80B1C328:
/* 00A28 80B1C328 3C080600 */  lui     $t0, 0x0600                ## $t0 = 06000000
/* 00A2C 80B1C32C 25081FA8 */  addiu   $t0, $t0, 0x1FA8           ## $t0 = 06001FA8
/* 00A30 80B1C330 11090003 */  beq     $t0, $t1, .L80B1C340       
/* 00A34 80B1C334 27A20028 */  addiu   $v0, $sp, 0x0028           ## $v0 = FFFFFFF8
/* 00A38 80B1C338 10000024 */  beq     $zero, $zero, .L80B1C3CC   
/* 00A3C 80B1C33C 46007006 */  mov.s   $f0, $f14                  
.L80B1C340:
/* 00A40 80B1C340 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 00A44 80B1C344 44816000 */  mtc1    $at, $f12                  ## $f12 = 12.00
/* 00A48 80B1C348 C4820164 */  lwc1    $f2, 0x0164($a0)           ## 00000164
/* 00A4C 80B1C34C 27A30030 */  addiu   $v1, $sp, 0x0030           ## $v1 = 00000000
/* 00A50 80B1C350 C4400000 */  lwc1    $f0, 0x0000($v0)           ## FFFFFFF8
.L80B1C354:
/* 00A54 80B1C354 460C0180 */  add.s   $f6, $f0, $f12             
/* 00A58 80B1C358 4606103C */  c.lt.s  $f2, $f6                   
/* 00A5C 80B1C35C 00000000 */  nop
/* 00A60 80B1C360 45020006 */  bc1fl   .L80B1C37C                 
/* 00A64 80B1C364 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = FFFFFFFC
/* 00A68 80B1C368 4602003E */  c.le.s  $f0, $f2                   
/* 00A6C 80B1C36C 00000000 */  nop
/* 00A70 80B1C370 45030005 */  bc1tl   .L80B1C388                 
/* 00A74 80B1C374 27AA0030 */  addiu   $t2, $sp, 0x0030           ## $t2 = 00000000
/* 00A78 80B1C378 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 00000000
.L80B1C37C:
/* 00A7C 80B1C37C 5443FFF5 */  bnel    $v0, $v1, .L80B1C354       
/* 00A80 80B1C380 C4400000 */  lwc1    $f0, 0x0000($v0)           ## 00000000
/* 00A84 80B1C384 27AA0030 */  addiu   $t2, $sp, 0x0030           ## $t2 = 00000000
.L80B1C388:
/* 00A88 80B1C388 004A082B */  sltu    $at, $v0, $t2              
/* 00A8C 80B1C38C 54200004 */  bnel    $at, $zero, .L80B1C3A0     
/* 00A90 80B1C390 C4480000 */  lwc1    $f8, 0x0000($v0)           ## 00000000
/* 00A94 80B1C394 1000000D */  beq     $zero, $zero, .L80B1C3CC   
/* 00A98 80B1C398 46007006 */  mov.s   $f0, $f14                  
/* 00A9C 80B1C39C C4480000 */  lwc1    $f8, 0x0000($v0)           ## 00000000
.L80B1C3A0:
/* 00AA0 80B1C3A0 3C0180B2 */  lui     $at, %hi(D_80B1D638)       ## $at = 80B20000
/* 00AA4 80B1C3A4 C430D638 */  lwc1    $f16, %lo(D_80B1D638)($at) 
/* 00AA8 80B1C3A8 46081281 */  sub.s   $f10, $f2, $f8             
/* 00AAC 80B1C3AC 46105082 */  mul.s   $f2, $f10, $f16            
/* 00AB0 80B1C3B0 4600148D */  trunc.w.s $f18, $f2                  
/* 00AB4 80B1C3B4 44049000 */  mfc1    $a0, $f18                  
/* 00AB8 80B1C3B8 00000000 */  nop
/* 00ABC 80B1C3BC 00042400 */  sll     $a0, $a0, 16               
/* 00AC0 80B1C3C0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00AC4 80B1C3C4 00042403 */  sra     $a0, $a0, 16               
/* 00AC8 80B1C3C8 46000000 */  add.s   $f0, $f0, $f0              
.L80B1C3CC:
/* 00ACC 80B1C3CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AD0 80B1C3D0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00AD4 80B1C3D4 03E00008 */  jr      $ra                        
/* 00AD8 80B1C3D8 00000000 */  nop


