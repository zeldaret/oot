.late_rodata
glabel D_80AAD660
    .float 0.025

.text
glabel EnMk_Update
/* 009D0 80AAD2D0 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 009D4 80AAD2D4 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 009D8 80AAD2D8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009DC 80AAD2DC AFBF002C */  sw      $ra, 0x002C($sp)           
/* 009E0 80AAD2E0 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 009E4 80AAD2E4 2606014C */  addiu   $a2, $s0, 0x014C           ## $a2 = 0000014C
/* 009E8 80AAD2E8 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 0000014C
/* 009EC 80AAD2EC 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 009F0 80AAD2F0 AFA60034 */  sw      $a2, 0x0034($sp)           
/* 009F4 80AAD2F4 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 009F8 80AAD2F8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 009FC 80AAD2FC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00A00 80AAD300 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 00A04 80AAD304 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 00A08 80AAD308 00812821 */  addu    $a1, $a0, $at              
/* 00A0C 80AAD30C 0C00B638 */  jal     Actor_MoveForward
              
/* 00A10 80AAD310 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A14 80AAD314 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00A18 80AAD318 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 00A1C 80AAD31C AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00A20 80AAD320 44060000 */  mfc1    $a2, $f0                   
/* 00A24 80AAD324 44070000 */  mfc1    $a3, $f0                   
/* 00A28 80AAD328 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00A2C 80AAD32C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00A30 80AAD330 0C00B92D */  jal     func_8002E4B4              
/* 00A34 80AAD334 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00A38 80AAD338 960F027E */  lhu     $t7, 0x027E($s0)           ## 0000027E
/* 00A3C 80AAD33C 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 00A40 80AAD340 57000009 */  bnel    $t8, $zero, .L80AAD368     
/* 00A44 80AAD344 8E190284 */  lw      $t9, 0x0284($s0)           ## 00000284
/* 00A48 80AAD348 0C02927F */  jal     SkelAnime_Update
              
/* 00A4C 80AAD34C 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 00A50 80AAD350 50400005 */  beql    $v0, $zero, .L80AAD368     
/* 00A54 80AAD354 8E190284 */  lw      $t9, 0x0284($s0)           ## 00000284
/* 00A58 80AAD358 9619027E */  lhu     $t9, 0x027E($s0)           ## 0000027E
/* 00A5C 80AAD35C 37280002 */  ori     $t0, $t9, 0x0002           ## $t0 = 00000002
/* 00A60 80AAD360 A608027E */  sh      $t0, 0x027E($s0)           ## 0000027E
/* 00A64 80AAD364 8E190284 */  lw      $t9, 0x0284($s0)           ## 00000284
.L80AAD368:
/* 00A68 80AAD368 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A6C 80AAD36C 8FA50054 */  lw      $a1, 0x0054($sp)           
/* 00A70 80AAD370 0320F809 */  jalr    $ra, $t9                   
/* 00A74 80AAD374 00000000 */  nop
/* 00A78 80AAD378 9609027E */  lhu     $t1, 0x027E($s0)           ## 0000027E
/* 00A7C 80AAD37C 26040278 */  addiu   $a0, $s0, 0x0278           ## $a0 = 00000278
/* 00A80 80AAD380 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00A84 80AAD384 312A0001 */  andi    $t2, $t1, 0x0001           ## $t2 = 00000000
/* 00A88 80AAD388 1140000E */  beq     $t2, $zero, .L80AAD3C4     
/* 00A8C 80AAD38C 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 00A90 80AAD390 8E0C0038 */  lw      $t4, 0x0038($s0)           ## 00000038
/* 00A94 80AAD394 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00A98 80AAD398 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00A9C 80AAD39C AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00AA0 80AAD3A0 8E0B003C */  lw      $t3, 0x003C($s0)           ## 0000003C
/* 00AA4 80AAD3A4 26060278 */  addiu   $a2, $s0, 0x0278           ## $a2 = 00000278
/* 00AA8 80AAD3A8 27A70040 */  addiu   $a3, $sp, 0x0040           ## $a3 = FFFFFFF0
/* 00AAC 80AAD3AC AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00AB0 80AAD3B0 8E0C0040 */  lw      $t4, 0x0040($s0)           ## 00000040
/* 00AB4 80AAD3B4 0C00E0A4 */  jal     func_80038290              
/* 00AB8 80AAD3B8 AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 00ABC 80AAD3BC 1000000D */  beq     $zero, $zero, .L80AAD3F4   
/* 00AC0 80AAD3C0 9605027E */  lhu     $a1, 0x027E($s0)           ## 0000027E
.L80AAD3C4:
/* 00AC4 80AAD3C4 240D0064 */  addiu   $t5, $zero, 0x0064         ## $t5 = 00000064
/* 00AC8 80AAD3C8 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 00ACC 80AAD3CC 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 00AD0 80AAD3D0 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00AD4 80AAD3D4 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 00AD8 80AAD3D8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00ADC 80AAD3DC 2604027A */  addiu   $a0, $s0, 0x027A           ## $a0 = 0000027A
/* 00AE0 80AAD3E0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00AE4 80AAD3E4 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 00AE8 80AAD3E8 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 00AEC 80AAD3EC 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00AF0 80AAD3F0 9605027E */  lhu     $a1, 0x027E($s0)           ## 0000027E
.L80AAD3F4:
/* 00AF4 80AAD3F4 8FAF0054 */  lw      $t7, 0x0054($sp)           
/* 00AF8 80AAD3F8 30B80008 */  andi    $t8, $a1, 0x0008           ## $t8 = 00000000
/* 00AFC 80AAD3FC 13000008 */  beq     $t8, $zero, .L80AAD420     
/* 00B00 80AAD400 8DE31C44 */  lw      $v1, 0x1C44($t7)           ## 00001C44
/* 00B04 80AAD404 8C680680 */  lw      $t0, 0x0680($v1)           ## 00000680
/* 00B08 80AAD408 30A9FFF7 */  andi    $t1, $a1, 0xFFF7           ## $t1 = 00000000
/* 00B0C 80AAD40C 31190400 */  andi    $t9, $t0, 0x0400           ## $t9 = 00000000
/* 00B10 80AAD410 5720003D */  bnel    $t9, $zero, .L80AAD508     
/* 00B14 80AAD414 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00B18 80AAD418 1000003A */  beq     $zero, $zero, .L80AAD504   
/* 00B1C 80AAD41C A609027E */  sh      $t1, 0x027E($s0)           ## 0000027E
.L80AAD420:
/* 00B20 80AAD420 806A014F */  lb      $t2, 0x014F($v1)           ## 0000014F
/* 00B24 80AAD424 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00B28 80AAD428 34AB0008 */  ori     $t3, $a1, 0x0008           ## $t3 = 00000008
/* 00B2C 80AAD42C 55410004 */  bnel    $t2, $at, .L80AAD440       
/* 00B30 80AAD430 8C6C0680 */  lw      $t4, 0x0680($v1)           ## 00000680
/* 00B34 80AAD434 10000033 */  beq     $zero, $zero, .L80AAD504   
/* 00B38 80AAD438 A60B027E */  sh      $t3, 0x027E($s0)           ## 0000027E
/* 00B3C 80AAD43C 8C6C0680 */  lw      $t4, 0x0680($v1)           ## 00000680
.L80AAD440:
/* 00B40 80AAD440 318D0400 */  andi    $t5, $t4, 0x0400           ## $t5 = 00000000
/* 00B44 80AAD444 51A00030 */  beql    $t5, $zero, .L80AAD508     
/* 00B48 80AAD448 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00B4C 80AAD44C C4640084 */  lwc1    $f4, 0x0084($v1)           ## 00000084
/* 00B50 80AAD450 4600218D */  trunc.w.s $f6, $f4                   
/* 00B54 80AAD454 44023000 */  mfc1    $v0, $f6                   
/* 00B58 80AAD458 00000000 */  nop
/* 00B5C 80AAD45C 00021400 */  sll     $v0, $v0, 16               
/* 00B60 80AAD460 00021403 */  sra     $v0, $v0, 16               
/* 00B64 80AAD464 18400027 */  blez    $v0, .L80AAD504            
/* 00B68 80AAD468 28410140 */  slti    $at, $v0, 0x0140           
/* 00B6C 80AAD46C 14200008 */  bne     $at, $zero, .L80AAD490     
/* 00B70 80AAD470 30A80004 */  andi    $t0, $a1, 0x0004           ## $t0 = 00000000
/* 00B74 80AAD474 28410163 */  slti    $at, $v0, 0x0163           
/* 00B78 80AAD478 14200003 */  bne     $at, $zero, .L80AAD488     
/* 00B7C 80AAD47C 00000000 */  nop
/* 00B80 80AAD480 10000012 */  beq     $zero, $zero, .L80AAD4CC   
/* 00B84 80AAD484 24020008 */  addiu   $v0, $zero, 0x0008         ## $v0 = 00000008
.L80AAD488:
/* 00B88 80AAD488 10000010 */  beq     $zero, $zero, .L80AAD4CC   
/* 00B8C 80AAD48C 24020007 */  addiu   $v0, $zero, 0x0007         ## $v0 = 00000007
.L80AAD490:
/* 00B90 80AAD490 28410050 */  slti    $at, $v0, 0x0050           
/* 00B94 80AAD494 50200004 */  beql    $at, $zero, .L80AAD4A8     
/* 00B98 80AAD498 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 00B9C 80AAD49C 1000000B */  beq     $zero, $zero, .L80AAD4CC   
/* 00BA0 80AAD4A0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00BA4 80AAD4A4 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
.L80AAD4A8:
/* 00BA8 80AAD4A8 3C0180AB */  lui     $at, %hi(D_80AAD660)       ## $at = 80AB0000
/* 00BAC 80AAD4AC C430D660 */  lwc1    $f16, %lo(D_80AAD660)($at) 
/* 00BB0 80AAD4B0 468042A0 */  cvt.s.w $f10, $f8                  
/* 00BB4 80AAD4B4 46105482 */  mul.s   $f18, $f10, $f16           
/* 00BB8 80AAD4B8 4600910D */  trunc.w.s $f4, $f18                  
/* 00BBC 80AAD4BC 44022000 */  mfc1    $v0, $f4                   
/* 00BC0 80AAD4C0 00000000 */  nop
/* 00BC4 80AAD4C4 00021400 */  sll     $v0, $v0, 16               
/* 00BC8 80AAD4C8 00021403 */  sra     $v0, $v0, 16               
.L80AAD4CC:
/* 00BCC 80AAD4CC 86180280 */  lh      $t8, 0x0280($s0)           ## 00000280
/* 00BD0 80AAD4D0 0302082A */  slt     $at, $t8, $v0              
/* 00BD4 80AAD4D4 5020000C */  beql    $at, $zero, .L80AAD508     
/* 00BD8 80AAD4D8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00BDC 80AAD4DC 15000009 */  bne     $t0, $zero, .L80AAD504     
/* 00BE0 80AAD4E0 A6020280 */  sh      $v0, 0x0280($s0)           ## 00000280
/* 00BE4 80AAD4E4 86190280 */  lh      $t9, 0x0280($s0)           ## 00000280
/* 00BE8 80AAD4E8 34A90004 */  ori     $t1, $a1, 0x0004           ## $t1 = 00000004
/* 00BEC 80AAD4EC 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 00BF0 80AAD4F0 2B210008 */  slti    $at, $t9, 0x0008           
/* 00BF4 80AAD4F4 54200004 */  bnel    $at, $zero, .L80AAD508     
/* 00BF8 80AAD4F8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00BFC 80AAD4FC 0C01E221 */  jal     func_80078884              
/* 00C00 80AAD500 A609027E */  sh      $t1, 0x027E($s0)           ## 0000027E
.L80AAD504:
/* 00C04 80AAD504 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AAD508:
/* 00C08 80AAD508 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00C0C 80AAD50C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00C10 80AAD510 03E00008 */  jr      $ra                        
/* 00C14 80AAD514 00000000 */  nop
