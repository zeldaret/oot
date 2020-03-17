glabel func_809B0A6C
/* 006FC 809B0A6C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00700 809B0A70 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00704 809B0A74 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00708 809B0A78 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0070C 809B0A7C 24840198 */  addiu   $a0, $a0, 0x0198           ## $a0 = 00000198
/* 00710 809B0A80 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00714 809B0A84 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00718 809B0A88 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 0071C 809B0A8C 10400004 */  beq     $v0, $zero, .L809B0AA0     
/* 00720 809B0A90 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00724 809B0A94 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00728 809B0A98 00000000 */  nop
/* 0072C 809B0A9C E60401B0 */  swc1    $f4, 0x01B0($s0)           ## 000001B0
.L809B0AA0:
/* 00730 809B0AA0 8FAE003C */  lw      $t6, 0x003C($sp)           
/* 00734 809B0AA4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00738 809B0AA8 8DCF1D8C */  lw      $t7, 0x1D8C($t6)           ## 00001D8C
/* 0073C 809B0AAC 95F80000 */  lhu     $t8, 0x0000($t7)           ## 00000000
/* 00740 809B0AB0 57010015 */  bnel    $t8, $at, .L809B0B08       
/* 00744 809B0AB4 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00748 809B0AB8 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 0074C 809B0ABC 248467B8 */  addiu   $a0, $a0, 0x67B8           ## $a0 = 060067B8
/* 00750 809B0AC0 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 00754 809B0AC4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00758 809B0AC8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0075C 809B0ACC 46803220 */  cvt.s.w $f8, $f6                   
/* 00760 809B0AD0 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 00764 809B0AD4 44070000 */  mfc1    $a3, $f0                   
/* 00768 809B0AD8 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 0076C 809B0ADC 24A567B8 */  addiu   $a1, $a1, 0x67B8           ## $a1 = 060067B8
/* 00770 809B0AE0 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00774 809B0AE4 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 00778 809B0AE8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0077C 809B0AEC 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00780 809B0AF0 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 00784 809B0AF4 960802AA */  lhu     $t0, 0x02AA($s0)           ## 000002AA
/* 00788 809B0AF8 AE0000C0 */  sw      $zero, 0x00C0($s0)         ## 000000C0
/* 0078C 809B0AFC 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 00790 809B0B00 A60902AA */  sh      $t1, 0x02AA($s0)           ## 000002AA
/* 00794 809B0B04 8FBF002C */  lw      $ra, 0x002C($sp)           
.L809B0B08:
/* 00798 809B0B08 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 0079C 809B0B0C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 007A0 809B0B10 03E00008 */  jr      $ra                        
/* 007A4 809B0B14 00000000 */  nop


