glabel func_80ABE040
/* 01490 80ABE040 27BDFF40 */  addiu   $sp, $sp, 0xFF40           ## $sp = FFFFFF40
/* 01494 80ABE044 AFBF0064 */  sw      $ra, 0x0064($sp)           
/* 01498 80ABE048 AFBE0060 */  sw      $s8, 0x0060($sp)           
/* 0149C 80ABE04C AFB7005C */  sw      $s7, 0x005C($sp)           
/* 014A0 80ABE050 AFB60058 */  sw      $s6, 0x0058($sp)           
/* 014A4 80ABE054 AFB50054 */  sw      $s5, 0x0054($sp)           
/* 014A8 80ABE058 AFB40050 */  sw      $s4, 0x0050($sp)           
/* 014AC 80ABE05C AFB3004C */  sw      $s3, 0x004C($sp)           
/* 014B0 80ABE060 AFB20048 */  sw      $s2, 0x0048($sp)           
/* 014B4 80ABE064 AFB10044 */  sw      $s1, 0x0044($sp)           
/* 014B8 80ABE068 AFB00040 */  sw      $s0, 0x0040($sp)           
/* 014BC 80ABE06C F7B80038 */  sdc1    $f24, 0x0038($sp)          
/* 014C0 80ABE070 F7B60030 */  sdc1    $f22, 0x0030($sp)          
/* 014C4 80ABE074 F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 014C8 80ABE078 AFA500C4 */  sw      $a1, 0x00C4($sp)           
/* 014CC 80ABE07C 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 014D0 80ABE080 0080A025 */  or      $s4, $a0, $zero            ## $s4 = 00000000
/* 014D4 80ABE084 3C0680AC */  lui     $a2, %hi(D_80ABE484)       ## $a2 = 80AC0000
/* 014D8 80ABE088 24C6E484 */  addiu   $a2, $a2, %lo(D_80ABE484)  ## $a2 = 80ABE484
/* 014DC 80ABE08C 27A4009C */  addiu   $a0, $sp, 0x009C           ## $a0 = FFFFFFDC
/* 014E0 80ABE090 24070384 */  addiu   $a3, $zero, 0x0384         ## $a3 = 00000384
/* 014E4 80ABE094 0C031AB1 */  jal     func_800C6AC4              
/* 014E8 80ABE098 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 014EC 80ABE09C 8FAF00C4 */  lw      $t7, 0x00C4($sp)           
/* 014F0 80ABE0A0 0C024F46 */  jal     func_80093D18              
/* 014F4 80ABE0A4 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 014F8 80ABE0A8 8E4202C0 */  lw      $v0, 0x02C0($s2)           ## 000002C0
/* 014FC 80ABE0AC 3C19FB00 */  lui     $t9, 0xFB00                ## $t9 = FB000000
/* 01500 80ABE0B0 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 01504 80ABE0B4 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01508 80ABE0B8 AE5802C0 */  sw      $t8, 0x02C0($s2)           ## 000002C0
/* 0150C 80ABE0BC AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 01510 80ABE0C0 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 01514 80ABE0C4 8E4202C0 */  lw      $v0, 0x02C0($s2)           ## 000002C0
/* 01518 80ABE0C8 3C0AE200 */  lui     $t2, 0xE200                ## $t2 = E2000000
/* 0151C 80ABE0CC 3C0BC811 */  lui     $t3, 0xC811                ## $t3 = C8110000
/* 01520 80ABE0D0 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 01524 80ABE0D4 AE4902C0 */  sw      $t1, 0x02C0($s2)           ## 000002C0
/* 01528 80ABE0D8 356B2078 */  ori     $t3, $t3, 0x2078           ## $t3 = C8112078
/* 0152C 80ABE0DC 354A001C */  ori     $t2, $t2, 0x001C           ## $t2 = E200001C
/* 01530 80ABE0E0 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 01534 80ABE0E4 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 01538 80ABE0E8 8E4202C0 */  lw      $v0, 0x02C0($s2)           ## 000002C0
/* 0153C 80ABE0EC 3C0DE700 */  lui     $t5, 0xE700                ## $t5 = E7000000
/* 01540 80ABE0F0 3C0180AC */  lui     $at, %hi(D_80ABE4E4)       ## $at = 80AC0000
/* 01544 80ABE0F4 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 01548 80ABE0F8 AE4C02C0 */  sw      $t4, 0x02C0($s2)           ## 000002C0
/* 0154C 80ABE0FC AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 01550 80ABE100 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 01554 80ABE104 C438E4E4 */  lwc1    $f24, %lo(D_80ABE4E4)($at) 
/* 01558 80ABE108 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0155C 80ABE10C 4481B000 */  mtc1    $at, $f22                  ## $f22 = 1.00
/* 01560 80ABE110 3C0180AC */  lui     $at, %hi(D_80ABE4E8)       ## $at = 80AC0000
/* 01564 80ABE114 3C1680AC */  lui     $s6, %hi(D_80ABE494)       ## $s6 = 80AC0000
/* 01568 80ABE118 3C15DA38 */  lui     $s5, 0xDA38                ## $s5 = DA380000
/* 0156C 80ABE11C 36B50003 */  ori     $s5, $s5, 0x0003           ## $s5 = DA380003
/* 01570 80ABE120 26D6E494 */  addiu   $s6, $s6, %lo(D_80ABE494)  ## $s6 = 80ABE494
/* 01574 80ABE124 C434E4E8 */  lwc1    $f20, %lo(D_80ABE4E8)($at) 
/* 01578 80ABE128 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 0157C 80ABE12C 241E0008 */  addiu   $s8, $zero, 0x0008         ## $s8 = 00000008
/* 01580 80ABE130 3C17DE00 */  lui     $s7, 0xDE00                ## $s7 = DE000000
/* 01584 80ABE134 868E01C8 */  lh      $t6, 0x01C8($s4)           ## 000001C8
.L80ABE138:
/* 01588 80ABE138 260F0016 */  addiu   $t7, $s0, 0x0016           ## $t7 = 00000016
/* 0158C 80ABE13C 0010C080 */  sll     $t8, $s0,  2               
/* 01590 80ABE140 01CF082A */  slt     $at, $t6, $t7              
/* 01594 80ABE144 10200026 */  beq     $at, $zero, .L80ABE1E0     
/* 01598 80ABE148 0310C023 */  subu    $t8, $t8, $s0              
/* 0159C 80ABE14C 0018C080 */  sll     $t8, $t8,  2               
/* 015A0 80ABE150 02981021 */  addu    $v0, $s4, $t8              
/* 015A4 80ABE154 3C130600 */  lui     $s3, 0x0600                ## $s3 = 06000000
/* 015A8 80ABE158 26731DD0 */  addiu   $s3, $s3, 0x1DD0           ## $s3 = 06001DD0
/* 015AC 80ABE15C C44C01F8 */  lwc1    $f12, 0x01F8($v0)          ## 000001F8
/* 015B0 80ABE160 C44E01FC */  lwc1    $f14, 0x01FC($v0)          ## 000001FC
/* 015B4 80ABE164 8C460200 */  lw      $a2, 0x0200($v0)           ## 00000200
/* 015B8 80ABE168 0C034261 */  jal     Matrix_Translate              
/* 015BC 80ABE16C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 015C0 80ABE170 44904000 */  mtc1    $s0, $f8                   ## $f8 = 0.00
/* 015C4 80ABE174 C6840050 */  lwc1    $f4, 0x0050($s4)           ## 00000050
/* 015C8 80ABE178 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 015CC 80ABE17C 468042A0 */  cvt.s.w $f10, $f8                  
/* 015D0 80ABE180 46142182 */  mul.s   $f6, $f4, $f20             
/* 015D4 80ABE184 00000000 */  nop
/* 015D8 80ABE188 46185402 */  mul.s   $f16, $f10, $f24           
/* 015DC 80ABE18C 4610B480 */  add.s   $f18, $f22, $f16           
/* 015E0 80ABE190 46123302 */  mul.s   $f12, $f6, $f18            
/* 015E4 80ABE194 44066000 */  mfc1    $a2, $f12                  
/* 015E8 80ABE198 0C0342A3 */  jal     Matrix_Scale              
/* 015EC 80ABE19C 46006386 */  mov.s   $f14, $f12                 
/* 015F0 80ABE1A0 8E4202C0 */  lw      $v0, 0x02C0($s2)           ## 000002C0
/* 015F4 80ABE1A4 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 80ABE494
/* 015F8 80ABE1A8 24060390 */  addiu   $a2, $zero, 0x0390         ## $a2 = 00000390
/* 015FC 80ABE1AC 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 01600 80ABE1B0 AE5902C0 */  sw      $t9, 0x02C0($s2)           ## 000002C0
/* 01604 80ABE1B4 AC550000 */  sw      $s5, 0x0000($v0)           ## 00000000
/* 01608 80ABE1B8 8FA800C4 */  lw      $t0, 0x00C4($sp)           
/* 0160C 80ABE1BC 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 01610 80ABE1C0 0C0346A2 */  jal     Matrix_NewMtx              
/* 01614 80ABE1C4 8D040000 */  lw      $a0, 0x0000($t0)           ## 00000000
/* 01618 80ABE1C8 AE220004 */  sw      $v0, 0x0004($s1)           ## 00000004
/* 0161C 80ABE1CC 8E4202C0 */  lw      $v0, 0x02C0($s2)           ## 000002C0
/* 01620 80ABE1D0 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 01624 80ABE1D4 AE4902C0 */  sw      $t1, 0x02C0($s2)           ## 000002C0
/* 01628 80ABE1D8 AC530004 */  sw      $s3, 0x0004($v0)           ## 00000004
/* 0162C 80ABE1DC AC570000 */  sw      $s7, 0x0000($v0)           ## 00000000
.L80ABE1E0:
/* 01630 80ABE1E0 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 01634 80ABE1E4 561EFFD4 */  bnel    $s0, $s8, .L80ABE138       
/* 01638 80ABE1E8 868E01C8 */  lh      $t6, 0x01C8($s4)           ## 000001C8
/* 0163C 80ABE1EC 8FAA00C4 */  lw      $t2, 0x00C4($sp)           
/* 01640 80ABE1F0 3C0680AC */  lui     $a2, %hi(D_80ABE4A4)       ## $a2 = 80AC0000
/* 01644 80ABE1F4 24C6E4A4 */  addiu   $a2, $a2, %lo(D_80ABE4A4)  ## $a2 = 80ABE4A4
/* 01648 80ABE1F8 27A4009C */  addiu   $a0, $sp, 0x009C           ## $a0 = FFFFFFDC
/* 0164C 80ABE1FC 24070397 */  addiu   $a3, $zero, 0x0397         ## $a3 = 00000397
/* 01650 80ABE200 0C031AD5 */  jal     func_800C6B54              
/* 01654 80ABE204 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000000
/* 01658 80ABE208 868201CA */  lh      $v0, 0x01CA($s4)           ## 000001CA
/* 0165C 80ABE20C 1040002F */  beq     $v0, $zero, .L80ABE2CC     
/* 01660 80ABE210 2451FFFF */  addiu   $s1, $v0, 0xFFFF           ## $s1 = FFFFFFFF
/* 01664 80ABE214 928B0114 */  lbu     $t3, 0x0114($s4)           ## 00000114
/* 01668 80ABE218 00118C00 */  sll     $s1, $s1, 16               
/* 0166C 80ABE21C 00118C03 */  sra     $s1, $s1, 16               
/* 01670 80ABE220 322D0001 */  andi    $t5, $s1, 0x0001           ## $t5 = 00000001
/* 01674 80ABE224 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 01678 80ABE228 15A00028 */  bne     $t5, $zero, .L80ABE2CC     
/* 0167C 80ABE22C A28C0114 */  sb      $t4, 0x0114($s4)           ## 00000114
/* 01680 80ABE230 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01684 80ABE234 4481A000 */  mtc1    $at, $f20                  ## $f20 = 5.00
/* 01688 80ABE238 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 0168C 80ABE23C 4600A306 */  mov.s   $f12, $f20                 
/* 01690 80ABE240 322E0003 */  andi    $t6, $s1, 0x0003           ## $t6 = 00000003
/* 01694 80ABE244 000E7880 */  sll     $t7, $t6,  2               
/* 01698 80ABE248 01EE7823 */  subu    $t7, $t7, $t6              
/* 0169C 80ABE24C 3C1880AC */  lui     $t8, %hi(D_80ABE3A8)       ## $t8 = 80AC0000
/* 016A0 80ABE250 2718E3A8 */  addiu   $t8, $t8, %lo(D_80ABE3A8)  ## $t8 = 80ABE3A8
/* 016A4 80ABE254 000F7880 */  sll     $t7, $t7,  2               
/* 016A8 80ABE258 01F88021 */  addu    $s0, $t7, $t8              
/* 016AC 80ABE25C C6080000 */  lwc1    $f8, 0x0000($s0)           ## 00000001
/* 016B0 80ABE260 C6840024 */  lwc1    $f4, 0x0024($s4)           ## 00000024
/* 016B4 80ABE264 4600A306 */  mov.s   $f12, $f20                 
/* 016B8 80ABE268 46082280 */  add.s   $f10, $f4, $f8             
/* 016BC 80ABE26C 460A0400 */  add.s   $f16, $f0, $f10            
/* 016C0 80ABE270 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 016C4 80ABE274 E7B0007C */  swc1    $f16, 0x007C($sp)          
/* 016C8 80ABE278 C6860028 */  lwc1    $f6, 0x0028($s4)           ## 00000028
/* 016CC 80ABE27C C6120004 */  lwc1    $f18, 0x0004($s0)          ## 00000005
/* 016D0 80ABE280 4600A306 */  mov.s   $f12, $f20                 
/* 016D4 80ABE284 46123100 */  add.s   $f4, $f6, $f18             
/* 016D8 80ABE288 46040200 */  add.s   $f8, $f0, $f4              
/* 016DC 80ABE28C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 016E0 80ABE290 E7A80080 */  swc1    $f8, 0x0080($sp)           
/* 016E4 80ABE294 C68A002C */  lwc1    $f10, 0x002C($s4)          ## 0000002C
/* 016E8 80ABE298 C6100008 */  lwc1    $f16, 0x0008($s0)          ## 00000009
/* 016EC 80ABE29C 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 016F0 80ABE2A0 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 016F4 80ABE2A4 46105180 */  add.s   $f6, $f10, $f16            
/* 016F8 80ABE2A8 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 016FC 80ABE2AC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01700 80ABE2B0 8FA400C4 */  lw      $a0, 0x00C4($sp)           
/* 01704 80ABE2B4 46060480 */  add.s   $f18, $f0, $f6             
/* 01708 80ABE2B8 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 0170C 80ABE2BC 27A6007C */  addiu   $a2, $sp, 0x007C           ## $a2 = FFFFFFBC
/* 01710 80ABE2C0 24070064 */  addiu   $a3, $zero, 0x0064         ## $a3 = 00000064
/* 01714 80ABE2C4 0C00A935 */  jal     func_8002A4D4              
/* 01718 80ABE2C8 E7B20084 */  swc1    $f18, 0x0084($sp)          
.L80ABE2CC:
/* 0171C 80ABE2CC 8FBF0064 */  lw      $ra, 0x0064($sp)           
/* 01720 80ABE2D0 D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 01724 80ABE2D4 D7B60030 */  ldc1    $f22, 0x0030($sp)          
/* 01728 80ABE2D8 D7B80038 */  ldc1    $f24, 0x0038($sp)          
/* 0172C 80ABE2DC 8FB00040 */  lw      $s0, 0x0040($sp)           
/* 01730 80ABE2E0 8FB10044 */  lw      $s1, 0x0044($sp)           
/* 01734 80ABE2E4 8FB20048 */  lw      $s2, 0x0048($sp)           
/* 01738 80ABE2E8 8FB3004C */  lw      $s3, 0x004C($sp)           
/* 0173C 80ABE2EC 8FB40050 */  lw      $s4, 0x0050($sp)           
/* 01740 80ABE2F0 8FB50054 */  lw      $s5, 0x0054($sp)           
/* 01744 80ABE2F4 8FB60058 */  lw      $s6, 0x0058($sp)           
/* 01748 80ABE2F8 8FB7005C */  lw      $s7, 0x005C($sp)           
/* 0174C 80ABE2FC 8FBE0060 */  lw      $s8, 0x0060($sp)           
/* 01750 80ABE300 03E00008 */  jr      $ra                        
/* 01754 80ABE304 27BD00C0 */  addiu   $sp, $sp, 0x00C0           ## $sp = 00000000
/* 01758 80ABE308 00000000 */  nop
/* 0175C 80ABE30C 00000000 */  nop

