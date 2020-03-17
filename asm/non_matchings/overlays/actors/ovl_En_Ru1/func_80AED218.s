glabel func_80AED218
/* 02608 80AED218 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0260C 80AED21C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 02610 80AED220 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 02614 80AED224 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 02618 80AED228 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0261C 80AED22C 0C2BB421 */  jal     func_80AED084              
/* 02620 80AED230 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 02624 80AED234 10400016 */  beq     $v0, $zero, .L80AED290     
/* 02628 80AED238 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0262C 80AED23C 8FAE0034 */  lw      $t6, 0x0034($sp)           
/* 02630 80AED240 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 02634 80AED244 51C0002B */  beql    $t6, $zero, .L80AED2F4     
/* 02638 80AED248 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0263C 80AED24C 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 02640 80AED250 24842058 */  addiu   $a0, $a0, 0x2058           ## $a0 = 06002058
/* 02644 80AED254 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 02648 80AED258 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 0264C 80AED25C 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 02650 80AED260 468021A0 */  cvt.s.w $f6, $f4                   
/* 02654 80AED264 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02658 80AED268 24A52058 */  addiu   $a1, $a1, 0x2058           ## $a1 = 06002058
/* 0265C 80AED26C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02660 80AED270 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02664 80AED274 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02668 80AED278 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 0266C 80AED27C AFA00014 */  sw      $zero, 0x0014($sp)         
/* 02670 80AED280 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 02674 80AED284 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 02678 80AED288 1000001A */  beq     $zero, $zero, .L80AED2F4   
/* 0267C 80AED28C 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AED290:
/* 02680 80AED290 0C2BB421 */  jal     func_80AED084              
/* 02684 80AED294 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 02688 80AED298 10400015 */  beq     $v0, $zero, .L80AED2F0     
/* 0268C 80AED29C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 02690 80AED2A0 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 02694 80AED2A4 24842990 */  addiu   $a0, $a0, 0x2990           ## $a0 = 06002990
/* 02698 80AED2A8 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 0269C 80AED2AC 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 026A0 80AED2B0 44819000 */  mtc1    $at, $f18                  ## $f18 = -8.00
/* 026A4 80AED2B4 46805420 */  cvt.s.w $f16, $f10                 
/* 026A8 80AED2B8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 026AC 80AED2BC 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 026B0 80AED2C0 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 026B4 80AED2C4 24A52990 */  addiu   $a1, $a1, 0x2990           ## $a1 = 06002990
/* 026B8 80AED2C8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 026BC 80AED2CC E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 026C0 80AED2D0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 026C4 80AED2D4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 026C8 80AED2D8 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 026CC 80AED2DC E7B20018 */  swc1    $f18, 0x0018($sp)          
/* 026D0 80AED2E0 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 026D4 80AED2E4 24180015 */  addiu   $t8, $zero, 0x0015         ## $t8 = 00000015
/* 026D8 80AED2E8 AE180264 */  sw      $t8, 0x0264($s0)           ## 00000264
/* 026DC 80AED2EC E604027C */  swc1    $f4, 0x027C($s0)           ## 0000027C
.L80AED2F0:
/* 026E0 80AED2F0 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AED2F4:
/* 026E4 80AED2F4 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 026E8 80AED2F8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 026EC 80AED2FC 03E00008 */  jr      $ra                        
/* 026F0 80AED300 00000000 */  nop


