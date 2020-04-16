glabel func_80B15E28
/* 02388 80B15E28 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0238C 80B15E2C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02390 80B15E30 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02394 80B15E34 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02398 80B15E38 0C00BCCD */  jal     func_8002F334              
/* 0239C 80B15E3C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 023A0 80B15E40 10400007 */  beq     $v0, $zero, .L80B15E60     
/* 023A4 80B15E44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 023A8 80B15E48 3C0580B1 */  lui     $a1, %hi(func_80B16504)    ## $a1 = 80B10000
/* 023AC 80B15E4C 0C2C53C8 */  jal     func_80B14F20              
/* 023B0 80B15E50 24A56504 */  addiu   $a1, $a1, %lo(func_80B16504) ## $a1 = 80B16504
/* 023B4 80B15E54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 023B8 80B15E58 0C2C4EAB */  jal     func_80B13AAC              
/* 023BC 80B15E5C 8FA50024 */  lw      $a1, 0x0024($sp)           
.L80B15E60:
/* 023C0 80B15E60 960E02E0 */  lhu     $t6, 0x02E0($s0)           ## 000002E0
/* 023C4 80B15E64 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 023C8 80B15E68 A60F02E0 */  sh      $t7, 0x02E0($s0)           ## 000002E0
/* 023CC 80B15E6C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 023D0 80B15E70 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 023D4 80B15E74 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 023D8 80B15E78 03E00008 */  jr      $ra                        
/* 023DC 80B15E7C 00000000 */  nop
