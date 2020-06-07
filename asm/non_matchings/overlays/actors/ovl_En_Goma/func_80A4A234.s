glabel func_80A4A234
/* 01374 80A4A234 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01378 80A4A238 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0137C 80A4A23C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01380 80A4A240 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01384 80A4A244 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 01388 80A4A248 3C010100 */  lui     $at, 0x0100                ## $at = 01000000
/* 0138C 80A4A24C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01390 80A4A250 01C17825 */  or      $t7, $t6, $at              ## $t7 = 01000000
/* 01394 80A4A254 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 01398 80A4A258 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0139C 80A4A25C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 013A0 80A4A260 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 013A4 80A4A264 3C054120 */  lui     $a1, 0x4120                ## $a1 = 41200000
/* 013A8 80A4A268 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 013AC 80A4A26C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 013B0 80A4A270 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 013B4 80A4A274 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 013B8 80A4A278 C6060060 */  lwc1    $f6, 0x0060($s0)           ## 00000060
/* 013BC 80A4A27C 4604303E */  c.le.s  $f6, $f4                   
/* 013C0 80A4A280 00000000 */  nop
/* 013C4 80A4A284 45020014 */  bc1fl   .L80A4A2D8                 
/* 013C8 80A4A288 A60002C4 */  sh      $zero, 0x02C4($s0)         ## 000002C4
/* 013CC 80A4A28C 96180088 */  lhu     $t8, 0x0088($s0)           ## 00000088
/* 013D0 80A4A290 33190001 */  andi    $t9, $t8, 0x0001           ## $t9 = 00000000
/* 013D4 80A4A294 53200010 */  beql    $t9, $zero, .L80A4A2D8     
/* 013D8 80A4A298 A60002C4 */  sh      $zero, 0x02C4($s0)         ## 000002C4
/* 013DC 80A4A29C 0C29282A */  jal     func_80A4A0A8              
/* 013E0 80A4A2A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013E4 80A4A2A4 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 013E8 80A4A2A8 240539E4 */  addiu   $a1, $zero, 0x39E4         ## $a1 = 000039E4
/* 013EC 80A4A2AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013F0 80A4A2B0 29010006 */  slti    $at, $t0, 0x0006           
/* 013F4 80A4A2B4 10200005 */  beq     $at, $zero, .L80A4A2CC     
/* 013F8 80A4A2B8 00000000 */  nop
/* 013FC 80A4A2BC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01400 80A4A2C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01404 80A4A2C4 10000004 */  beq     $zero, $zero, .L80A4A2D8   
/* 01408 80A4A2C8 A60002C4 */  sh      $zero, 0x02C4($s0)         ## 000002C4
.L80A4A2CC:
/* 0140C 80A4A2CC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01410 80A4A2D0 240539E6 */  addiu   $a1, $zero, 0x39E6         ## $a1 = 000039E6
/* 01414 80A4A2D4 A60002C4 */  sh      $zero, 0x02C4($s0)         ## 000002C4
.L80A4A2D8:
/* 01418 80A4A2D8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0141C 80A4A2DC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01420 80A4A2E0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01424 80A4A2E4 03E00008 */  jr      $ra                        
/* 01428 80A4A2E8 00000000 */  nop
