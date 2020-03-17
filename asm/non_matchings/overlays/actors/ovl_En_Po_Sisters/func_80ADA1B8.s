glabel func_80ADA1B8
/* 01228 80ADA1B8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0122C 80ADA1BC AFB00028 */  sw      $s0, 0x0028($sp)           
/* 01230 80ADA1C0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01234 80ADA1C4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 01238 80ADA1C8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0123C 80ADA1CC 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 01240 80ADA1D0 2484119C */  addiu   $a0, $a0, 0x119C           ## $a0 = 0600119C
/* 01244 80ADA1D4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01248 80ADA1D8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0124C 80ADA1DC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01250 80ADA1E0 468021A0 */  cvt.s.w $f6, $f4                   
/* 01254 80ADA1E4 3C063F55 */  lui     $a2, 0x3F55                ## $a2 = 3F550000
/* 01258 80ADA1E8 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 0125C 80ADA1EC 44070000 */  mfc1    $a3, $f0                   
/* 01260 80ADA1F0 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 01264 80ADA1F4 34C63F7D */  ori     $a2, $a2, 0x3F7D           ## $a2 = 3F553F7D
/* 01268 80ADA1F8 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 0126C 80ADA1FC 24A5119C */  addiu   $a1, $a1, 0x119C           ## $a1 = 0600119C
/* 01270 80ADA200 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01274 80ADA204 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 01278 80ADA208 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 0127C 80ADA20C 92020194 */  lbu     $v0, 0x0194($s0)           ## 00000194
/* 01280 80ADA210 3C1980AE */  lui     $t9, %hi(func_80ADBD8C)    ## $t9 = 80AE0000
/* 01284 80ADA214 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01288 80ADA218 10400003 */  beq     $v0, $zero, .L80ADA228     
/* 0128C 80ADA21C 2739BD8C */  addiu   $t9, $t9, %lo(func_80ADBD8C) ## $t9 = 80ADBD8C
/* 01290 80ADA220 14410004 */  bne     $v0, $at, .L80ADA234       
/* 01294 80ADA224 2418004C */  addiu   $t8, $zero, 0x004C         ## $t8 = 0000004C
.L80ADA228:
/* 01298 80ADA228 240F0028 */  addiu   $t7, $zero, 0x0028         ## $t7 = 00000028
/* 0129C 80ADA22C 10000002 */  beq     $zero, $zero, .L80ADA238   
/* 012A0 80ADA230 A60F019A */  sh      $t7, 0x019A($s0)           ## 0000019A
.L80ADA234:
/* 012A4 80ADA234 A618019A */  sh      $t8, 0x019A($s0)           ## 0000019A
.L80ADA238:
/* 012A8 80ADA238 A2000198 */  sb      $zero, 0x0198($s0)         ## 00000198
/* 012AC 80ADA23C 3C0180AE */  lui     $at, %hi(D_80ADD784)       ## $at = 80AE0000
/* 012B0 80ADA240 AC20D784 */  sw      $zero, %lo(D_80ADD784)($at) 
/* 012B4 80ADA244 AE190190 */  sw      $t9, 0x0190($s0)           ## 00000190
/* 012B8 80ADA248 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 012BC 80ADA24C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 012C0 80ADA250 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 012C4 80ADA254 03E00008 */  jr      $ra                        
/* 012C8 80ADA258 00000000 */  nop


