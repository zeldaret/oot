glabel EnTk_Init
/* 01160 80B1CA60 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01164 80B1CA64 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 01168 80B1CA68 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0116C 80B1CA6C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 01170 80B1CA70 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 01174 80B1CA74 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 01178 80B1CA78 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 0117C 80B1CA7C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01180 80B1CA80 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 01184 80B1CA84 0C00AC78 */  jal     ActorShape_Init
              
/* 01188 80B1CA88 3C0741C0 */  lui     $a3, 0x41C0                ## $a3 = 41C00000
/* 0118C 80B1CA8C 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 01190 80B1CA90 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 01194 80B1CA94 260E022A */  addiu   $t6, $s0, 0x022A           ## $t6 = 0000022A
/* 01198 80B1CA98 260F0296 */  addiu   $t7, $s0, 0x0296           ## $t7 = 00000296
/* 0119C 80B1CA9C 24180012 */  addiu   $t8, $zero, 0x0012         ## $t8 = 00000012
/* 011A0 80B1CAA0 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 011A4 80B1CAA4 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 011A8 80B1CAA8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 011AC 80B1CAAC 24C6BE40 */  addiu   $a2, $a2, 0xBE40           ## $a2 = 0600BE40
/* 011B0 80B1CAB0 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 011B4 80B1CAB4 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 011B8 80B1CAB8 0C0291BE */  jal     func_800A46F8              
/* 011BC 80B1CABC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 011C0 80B1CAC0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 011C4 80B1CAC4 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 011C8 80B1CAC8 24842F84 */  addiu   $a0, $a0, 0x2F84           ## $a0 = 06002F84
/* 011CC 80B1CACC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 011D0 80B1CAD0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 011D4 80B1CAD4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 011D8 80B1CAD8 468021A0 */  cvt.s.w $f6, $f4                   
/* 011DC 80B1CADC 44070000 */  mfc1    $a3, $f0                   
/* 011E0 80B1CAE0 24A52F84 */  addiu   $a1, $a1, 0x2F84           ## $a1 = 06002F84
/* 011E4 80B1CAE4 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 011E8 80B1CAE8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 011EC 80B1CAEC AFA00014 */  sw      $zero, 0x0014($sp)         
/* 011F0 80B1CAF0 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 011F4 80B1CAF4 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 011F8 80B1CAF8 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 011FC 80B1CAFC 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 01200 80B1CB00 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 01204 80B1CB04 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 01208 80B1CB08 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 0120C 80B1CB0C 3C0780B2 */  lui     $a3, %hi(D_80B1D508)       ## $a3 = 80B20000
/* 01210 80B1CB10 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 01214 80B1CB14 24E7D508 */  addiu   $a3, $a3, %lo(D_80B1D508)  ## $a3 = 80B1D508
/* 01218 80B1CB18 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 0121C 80B1CB1C 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 01220 80B1CB20 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 01224 80B1CB24 3C0680B2 */  lui     $a2, %hi(D_80B1D534)       ## $a2 = 80B20000
/* 01228 80B1CB28 24C6D534 */  addiu   $a2, $a2, %lo(D_80B1D534)  ## $a2 = 80B1D534
/* 0122C 80B1CB2C 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 01230 80B1CB30 0C0187BF */  jal     func_80061EFC              
/* 01234 80B1CB34 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01238 80B1CB38 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 0123C 80B1CB3C 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 01240 80B1CB40 9462000C */  lhu     $v0, 0x000C($v1)           ## 8015E66C
/* 01244 80B1CB44 3401C001 */  ori     $at, $zero, 0xC001         ## $at = 0000C001
/* 01248 80B1CB48 0041082A */  slt     $at, $v0, $at              
/* 0124C 80B1CB4C 1420000D */  bne     $at, $zero, .L80B1CB84     
/* 01250 80B1CB50 3401E000 */  ori     $at, $zero, 0xE000         ## $at = 0000E000
/* 01254 80B1CB54 0041082A */  slt     $at, $v0, $at              
/* 01258 80B1CB58 1020000A */  beq     $at, $zero, .L80B1CB84     
/* 0125C 80B1CB5C 00000000 */  nop
/* 01260 80B1CB60 8C790004 */  lw      $t9, 0x0004($v1)           ## 8015E664
/* 01264 80B1CB64 8FA80044 */  lw      $t0, 0x0044($sp)           
/* 01268 80B1CB68 13200006 */  beq     $t9, $zero, .L80B1CB84     
/* 0126C 80B1CB6C 00000000 */  nop
/* 01270 80B1CB70 850900A4 */  lh      $t1, 0x00A4($t0)           ## 000000A4
/* 01274 80B1CB74 24010053 */  addiu   $at, $zero, 0x0053         ## $at = 00000053
/* 01278 80B1CB78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0127C 80B1CB7C 11210005 */  beq     $t1, $at, .L80B1CB94       
/* 01280 80B1CB80 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
.L80B1CB84:
/* 01284 80B1CB84 0C00B55C */  jal     Actor_Kill
              
/* 01288 80B1CB88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0128C 80B1CB8C 1000000F */  beq     $zero, $zero, .L80B1CBCC   
/* 01290 80B1CB90 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80B1CB94:
/* 01294 80B1CB94 0C00B58B */  jal     Actor_SetScale
              
/* 01298 80B1CB98 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 0000D70A
/* 0129C 80B1CB9C 240A0006 */  addiu   $t2, $zero, 0x0006         ## $t2 = 00000006
/* 012A0 80B1CBA0 A20A001F */  sb      $t2, 0x001F($s0)           ## 0000001F
/* 012A4 80B1CBA4 3C0180B2 */  lui     $at, %hi(D_80B1D684)       ## $at = 80B20000
/* 012A8 80B1CBA8 C428D684 */  lwc1    $f8, %lo(D_80B1D684)($at)  
/* 012AC 80B1CBAC 3C0C80B2 */  lui     $t4, %hi(func_80B1CC04)    ## $t4 = 80B20000
/* 012B0 80B1CBB0 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 012B4 80B1CBB4 258CCC04 */  addiu   $t4, $t4, %lo(func_80B1CC04) ## $t4 = 80B1CC04
/* 012B8 80B1CBB8 AE0B0214 */  sw      $t3, 0x0214($s0)           ## 00000214
/* 012BC 80B1CBBC AE000210 */  sw      $zero, 0x0210($s0)         ## 00000210
/* 012C0 80B1CBC0 AE0C0190 */  sw      $t4, 0x0190($s0)           ## 00000190
/* 012C4 80B1CBC4 E608006C */  swc1    $f8, 0x006C($s0)           ## 0000006C
/* 012C8 80B1CBC8 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80B1CBCC:
/* 012CC 80B1CBCC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 012D0 80B1CBD0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 012D4 80B1CBD4 03E00008 */  jr      $ra                        
/* 012D8 80B1CBD8 00000000 */  nop


