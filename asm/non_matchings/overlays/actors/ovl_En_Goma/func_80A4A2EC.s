glabel func_80A4A2EC
/* 0142C 80A4A2EC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01430 80A4A2F0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01434 80A4A2F4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01438 80A4A2F8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0143C 80A4A2FC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01440 80A4A300 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01444 80A4A304 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01448 80A4A308 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 0144C 80A4A30C 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 01450 80A4A310 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 01454 80A4A314 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 01458 80A4A318 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 0145C 80A4A31C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01460 80A4A320 0C00B69E */  jal     func_8002DA78              
/* 01464 80A4A324 8DC51C44 */  lw      $a1, 0x1C44($t6)           ## 00001C44
/* 01468 80A4A328 00022C00 */  sll     $a1, $v0, 16               
/* 0146C 80A4A32C 00052C03 */  sra     $a1, $a1, 16               
/* 01470 80A4A330 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 01474 80A4A334 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01478 80A4A338 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 0147C 80A4A33C 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 01480 80A4A340 860F02CC */  lh      $t7, 0x02CC($s0)           ## 000002CC
/* 01484 80A4A344 55E00004 */  bnel    $t7, $zero, .L80A4A358     
/* 01488 80A4A348 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0148C 80A4A34C 0C2927C4 */  jal     func_80A49F10              
/* 01490 80A4A350 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01494 80A4A354 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A4A358:
/* 01498 80A4A358 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0149C 80A4A35C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 014A0 80A4A360 03E00008 */  jr      $ra                        
/* 014A4 80A4A364 00000000 */  nop
