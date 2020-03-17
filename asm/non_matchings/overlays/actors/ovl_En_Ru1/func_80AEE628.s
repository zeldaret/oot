glabel func_80AEE628
/* 03A18 80AEE628 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 03A1C 80AEE62C 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 03A20 80AEE630 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 03A24 80AEE634 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 03A28 80AEE638 01C57021 */  addu    $t6, $t6, $a1              
/* 03A2C 80AEE63C 81CE1CBC */  lb      $t6, 0x1CBC($t6)           ## 00011CBC
/* 03A30 80AEE640 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 03A34 80AEE644 0C2BABCE */  jal     func_80AEAF38              
/* 03A38 80AEE648 A3AE002F */  sb      $t6, 0x002F($sp)           
/* 03A3C 80AEE64C 10400019 */  beq     $v0, $zero, .L80AEE6B4     
/* 03A40 80AEE650 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 03A44 80AEE654 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 03A48 80AEE658 24846B9C */  addiu   $a0, $a0, 0x6B9C           ## $a0 = 06006B9C
/* 03A4C 80AEE65C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 03A50 80AEE660 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 03A54 80AEE664 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 03A58 80AEE668 468021A0 */  cvt.s.w $f6, $f4                   
/* 03A5C 80AEE66C 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 03A60 80AEE670 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 03A64 80AEE674 24A56B9C */  addiu   $a1, $a1, 0x6B9C           ## $a1 = 06006B9C
/* 03A68 80AEE678 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 03A6C 80AEE67C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 03A70 80AEE680 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 03A74 80AEE684 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 03A78 80AEE688 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 03A7C 80AEE68C 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 03A80 80AEE690 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 03A84 80AEE694 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 03A88 80AEE698 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 03A8C 80AEE69C 944F0F20 */  lhu     $t7, 0x0F20($v0)           ## 8015F580
/* 03A90 80AEE6A0 8FA80038 */  lw      $t0, 0x0038($sp)           
/* 03A94 80AEE6A4 2419001F */  addiu   $t9, $zero, 0x001F         ## $t9 = 0000001F
/* 03A98 80AEE6A8 35F80010 */  ori     $t8, $t7, 0x0010           ## $t8 = 00000010
/* 03A9C 80AEE6AC A4580F20 */  sh      $t8, 0x0F20($v0)           ## 8015F580
/* 03AA0 80AEE6B0 AD190264 */  sw      $t9, 0x0264($t0)           ## 00000264
.L80AEE6B4:
/* 03AA4 80AEE6B4 83A9002F */  lb      $t1, 0x002F($sp)           
/* 03AA8 80AEE6B8 8FAA0038 */  lw      $t2, 0x0038($sp)           
/* 03AAC 80AEE6BC A1490286 */  sb      $t1, 0x0286($t2)           ## 00000286
/* 03AB0 80AEE6C0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03AB4 80AEE6C4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 03AB8 80AEE6C8 03E00008 */  jr      $ra                        
/* 03ABC 80AEE6CC 00000000 */  nop


