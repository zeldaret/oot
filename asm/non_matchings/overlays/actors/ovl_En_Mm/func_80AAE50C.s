glabel func_80AAE50C
/* 00D9C 80AAE50C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00DA0 80AAE510 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00DA4 80AAE514 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00DA8 80AAE518 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00DAC 80AAE51C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00DB0 80AAE520 0C02927F */  jal     SkelAnime_Update
              
/* 00DB4 80AAE524 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00DB8 80AAE528 10400016 */  beq     $v0, $zero, .L80AAE584     
/* 00DBC 80AAE52C 3C0E80AB */  lui     $t6, %hi(func_80AAE294)    ## $t6 = 80AB0000
/* 00DC0 80AAE530 25CEE294 */  addiu   $t6, $t6, %lo(func_80AAE294) ## $t6 = 80AAE294
/* 00DC4 80AAE534 AE00025C */  sw      $zero, 0x025C($s0)         ## 0000025C
/* 00DC8 80AAE538 AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
/* 00DCC 80AAE53C 3C0F8016 */  lui     $t7, %hi(gSaveContext+0xef6)
/* 00DD0 80AAE540 95EFF556 */  lhu     $t7, %lo(gSaveContext+0xef6)($t7)
/* 00DD4 80AAE544 26060258 */  addiu   $a2, $s0, 0x0258           ## $a2 = 00000258
/* 00DD8 80AAE548 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DDC 80AAE54C 31F80800 */  andi    $t8, $t7, 0x0800           ## $t8 = 00000000
/* 00DE0 80AAE550 13000006 */  beq     $t8, $zero, .L80AAE56C     
/* 00DE4 80AAE554 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00DE8 80AAE558 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DEC 80AAE55C 0C2AB5DC */  jal     func_80AAD770              
/* 00DF0 80AAE560 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 00DF4 80AAE564 10000005 */  beq     $zero, $zero, .L80AAE57C   
/* 00DF8 80AAE568 AE0001E4 */  sw      $zero, 0x01E4($s0)         ## 000001E4
.L80AAE56C:
/* 00DFC 80AAE56C 0C2AB5DC */  jal     func_80AAD770              
/* 00E00 80AAE570 26060258 */  addiu   $a2, $s0, 0x0258           ## $a2 = 00000258
/* 00E04 80AAE574 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00E08 80AAE578 AE1901E4 */  sw      $t9, 0x01E4($s0)           ## 000001E4
.L80AAE57C:
/* 00E0C 80AAE57C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00E10 80AAE580 AE0801E8 */  sw      $t0, 0x01E8($s0)           ## 000001E8
.L80AAE584:
/* 00E14 80AAE584 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00E18 80AAE588 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00E1C 80AAE58C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00E20 80AAE590 03E00008 */  jr      $ra                        
/* 00E24 80AAE594 00000000 */  nop
