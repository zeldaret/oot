glabel EnDu_Init
/* 0057C 809FE1AC 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00580 809FE1B0 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00584 809FE1B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00588 809FE1B8 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0058C 809FE1BC AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00590 809FE1C0 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00594 809FE1C4 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 00598 809FE1C8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0059C 809FE1CC 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 005A0 809FE1D0 0C00AC78 */  jal     ActorShape_Init
              
/* 005A4 809FE1D4 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 005A8 809FE1D8 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 005AC 809FE1DC 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 005B0 809FE1E0 24C61CA8 */  addiu   $a2, $a2, 0x1CA8           ## $a2 = 06011CA8
/* 005B4 809FE1E4 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 005B8 809FE1E8 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 005BC 809FE1EC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 005C0 809FE1F0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 005C4 809FE1F4 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 005C8 809FE1F8 0C0291BE */  jal     func_800A46F8              
/* 005CC 809FE1FC AFA00018 */  sw      $zero, 0x0018($sp)         
/* 005D0 809FE200 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 005D4 809FE204 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 005D8 809FE208 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 005DC 809FE20C 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 005E0 809FE210 3C0780A0 */  lui     $a3, %hi(D_809FF230)       ## $a3 = 80A00000
/* 005E4 809FE214 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 005E8 809FE218 24E7F230 */  addiu   $a3, $a3, %lo(D_809FF230)  ## $a3 = 809FF230
/* 005EC 809FE21C 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 005F0 809FE220 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 005F4 809FE224 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 005F8 809FE228 0C016C80 */  jal     CollisionBtlTbl_Get
              
/* 005FC 809FE22C 24040016 */  addiu   $a0, $zero, 0x0016         ## $a0 = 00000016
/* 00600 809FE230 3C0680A0 */  lui     $a2, %hi(D_809FF25C)       ## $a2 = 80A00000
/* 00604 809FE234 24C6F25C */  addiu   $a2, $a2, %lo(D_809FF25C)  ## $a2 = 809FF25C
/* 00608 809FE238 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 0060C 809FE23C 0C0187BF */  jal     func_80061EFC              
/* 00610 809FE240 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 00614 809FE244 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00618 809FE248 0C27F76D */  jal     func_809FDDB4              
/* 0061C 809FE24C 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 00620 809FE250 14400005 */  bne     $v0, $zero, .L809FE268     
/* 00624 809FE254 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 00628 809FE258 0C00B55C */  jal     Actor_Kill
              
/* 0062C 809FE25C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00630 809FE260 10000042 */  beq     $zero, $zero, .L809FE36C   
/* 00634 809FE264 8FBF002C */  lw      $ra, 0x002C($sp)           
.L809FE268:
/* 00638 809FE268 3C0580A0 */  lui     $a1, %hi(D_809FF268)       ## $a1 = 80A00000
/* 0063C 809FE26C 24A5F268 */  addiu   $a1, $a1, %lo(D_809FF268)  ## $a1 = 809FF268
/* 00640 809FE270 0C00D3B0 */  jal     func_80034EC0              
/* 00644 809FE274 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00648 809FE278 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 0064C 809FE27C 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00650 809FE280 0C00B58B */  jal     Actor_SetScale
              
/* 00654 809FE284 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00658 809FE288 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 0065C 809FE28C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00660 809FE290 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00664 809FE294 A20E001F */  sb      $t6, 0x001F($s0)           ## 0000001F
/* 00668 809FE298 A60001F4 */  sh      $zero, 0x01F4($s0)         ## 000001F4
/* 0066C 809FE29C 8C6F0008 */  lw      $t7, 0x0008($v1)           ## 8015E668
/* 00670 809FE2A0 3401FFF0 */  ori     $at, $zero, 0xFFF0         ## $at = 0000FFF0
/* 00674 809FE2A4 3C020200 */  lui     $v0, 0x0200                ## $v0 = 02000000
/* 00678 809FE2A8 01E1082A */  slt     $at, $t7, $at              
/* 0067C 809FE2AC 14200018 */  bne     $at, $zero, .L809FE310     
/* 00680 809FE2B0 8FAF004C */  lw      $t7, 0x004C($sp)           
/* 00684 809FE2B4 24426930 */  addiu   $v0, $v0, 0x6930           ## $v0 = 02006930
/* 00688 809FE2B8 0002C100 */  sll     $t8, $v0,  4               
/* 0068C 809FE2BC 0018CF02 */  srl     $t9, $t8, 28               
/* 00690 809FE2C0 00194080 */  sll     $t0, $t9,  2               
/* 00694 809FE2C4 3C098016 */  lui     $t1, 0x8016                ## $t1 = 80160000
/* 00698 809FE2C8 01284821 */  addu    $t1, $t1, $t0              
/* 0069C 809FE2CC 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 006A0 809FE2D0 8D296FA8 */  lw      $t1, 0x6FA8($t1)           ## 80166FA8
/* 006A4 809FE2D4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 006A8 809FE2D8 00415024 */  and     $t2, $v0, $at              
/* 006AC 809FE2DC 8FAD004C */  lw      $t5, 0x004C($sp)           
/* 006B0 809FE2E0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 006B4 809FE2E4 012A5821 */  addu    $t3, $t1, $t2              
/* 006B8 809FE2E8 01616021 */  addu    $t4, $t3, $at              
/* 006BC 809FE2EC 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 006C0 809FE2F0 3C0580A0 */  lui     $a1, %hi(func_809FE890)    ## $a1 = 80A00000
/* 006C4 809FE2F4 ADAC1D68 */  sw      $t4, 0x1D68($t5)           ## 00001D68
/* 006C8 809FE2F8 A06E1414 */  sb      $t6, 0x1414($v1)           ## 8015FA74
/* 006CC 809FE2FC 24A5E890 */  addiu   $a1, $a1, %lo(func_809FE890) ## $a1 = 809FE890
/* 006D0 809FE300 0C27F70C */  jal     func_809FDC30              
/* 006D4 809FE304 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006D8 809FE308 10000018 */  beq     $zero, $zero, .L809FE36C   
/* 006DC 809FE30C 8FBF002C */  lw      $ra, 0x002C($sp)           
.L809FE310:
/* 006E0 809FE310 85F800A4 */  lh      $t8, 0x00A4($t7)           ## 000000A4
/* 006E4 809FE314 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 006E8 809FE318 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006EC 809FE31C 17010005 */  bne     $t8, $at, .L809FE334       
/* 006F0 809FE320 3C0580A0 */  lui     $a1, %hi(func_809FE638)    ## $a1 = 80A00000
/* 006F4 809FE324 0C27F70C */  jal     func_809FDC30              
/* 006F8 809FE328 24A5E638 */  addiu   $a1, $a1, %lo(func_809FE638) ## $a1 = 809FE638
/* 006FC 809FE32C 1000000F */  beq     $zero, $zero, .L809FE36C   
/* 00700 809FE330 8FBF002C */  lw      $ra, 0x002C($sp)           
.L809FE334:
/* 00704 809FE334 8C790004 */  lw      $t9, 0x0004($v1)           ## 00000004
/* 00708 809FE338 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0070C 809FE33C 3C0580A0 */  lui     $a1, %hi(func_809FE3B4)    ## $a1 = 80A00000
/* 00710 809FE340 13200007 */  beq     $t9, $zero, .L809FE360     
/* 00714 809FE344 00000000 */  nop
/* 00718 809FE348 3C0580A0 */  lui     $a1, %hi(func_809FE3C0)    ## $a1 = 80A00000
/* 0071C 809FE34C 24A5E3C0 */  addiu   $a1, $a1, %lo(func_809FE3C0) ## $a1 = 809FE3C0
/* 00720 809FE350 0C27F70C */  jal     func_809FDC30              
/* 00724 809FE354 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00728 809FE358 10000004 */  beq     $zero, $zero, .L809FE36C   
/* 0072C 809FE35C 8FBF002C */  lw      $ra, 0x002C($sp)           
.L809FE360:
/* 00730 809FE360 0C27F70C */  jal     func_809FDC30              
/* 00734 809FE364 24A5E3B4 */  addiu   $a1, $a1, %lo(func_809FE3B4) ## $a1 = FFFFE3B4
/* 00738 809FE368 8FBF002C */  lw      $ra, 0x002C($sp)           
.L809FE36C:
/* 0073C 809FE36C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00740 809FE370 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00744 809FE374 03E00008 */  jr      $ra                        
/* 00748 809FE378 00000000 */  nop


