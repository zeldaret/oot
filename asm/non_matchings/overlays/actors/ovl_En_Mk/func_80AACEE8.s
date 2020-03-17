glabel func_80AACEE8
/* 005E8 80AACEE8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 005EC 80AACEEC AFB00028 */  sw      $s0, 0x0028($sp)           
/* 005F0 80AACEF0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005F4 80AACEF4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 005F8 80AACEF8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 005FC 80AACEFC 0C042F6F */  jal     func_8010BDBC              
/* 00600 80AACF00 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00604 80AACF04 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00608 80AACF08 5441001E */  bnel    $v0, $at, .L80AACF84       
/* 0060C 80AACF0C 9619027E */  lhu     $t9, 0x027E($s0)           ## 0000027E
/* 00610 80AACF10 0C041AF2 */  jal     func_80106BC8              
/* 00614 80AACF14 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00618 80AACF18 10400019 */  beq     $v0, $zero, .L80AACF80     
/* 0061C 80AACF1C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00620 80AACF20 0C042DC8 */  jal     func_8010B720              
/* 00624 80AACF24 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00628 80AACF28 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0062C 80AACF2C 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00630 80AACF30 24840AC0 */  addiu   $a0, $a0, 0x0AC0           ## $a0 = 06000AC0
/* 00634 80AACF34 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00638 80AACF38 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 0063C 80AACF3C 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 00640 80AACF40 468021A0 */  cvt.s.w $f6, $f4                   
/* 00644 80AACF44 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00648 80AACF48 24A50AC0 */  addiu   $a1, $a1, 0x0AC0           ## $a1 = 06000AC0
/* 0064C 80AACF4C 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 00650 80AACF50 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00654 80AACF54 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00658 80AACF58 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 0065C 80AACF5C AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00660 80AACF60 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00664 80AACF64 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 00668 80AACF68 960E027E */  lhu     $t6, 0x027E($s0)           ## 0000027E
/* 0066C 80AACF6C 3C1880AB */  lui     $t8, %hi(func_80AACE2C)    ## $t8 = 80AB0000
/* 00670 80AACF70 2718CE2C */  addiu   $t8, $t8, %lo(func_80AACE2C) ## $t8 = 80AACE2C
/* 00674 80AACF74 31CFFFFD */  andi    $t7, $t6, 0xFFFD           ## $t7 = 00000000
/* 00678 80AACF78 A60F027E */  sh      $t7, 0x027E($s0)           ## 0000027E
/* 0067C 80AACF7C AE180284 */  sw      $t8, 0x0284($s0)           ## 00000284
.L80AACF80:
/* 00680 80AACF80 9619027E */  lhu     $t9, 0x027E($s0)           ## 0000027E
.L80AACF84:
/* 00684 80AACF84 37280001 */  ori     $t0, $t9, 0x0001           ## $t0 = 00000001
/* 00688 80AACF88 A608027E */  sh      $t0, 0x027E($s0)           ## 0000027E
/* 0068C 80AACF8C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00690 80AACF90 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00694 80AACF94 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00698 80AACF98 03E00008 */  jr      $ra                        
/* 0069C 80AACF9C 00000000 */  nop


