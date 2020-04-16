glabel func_80B1496C
/* 00ECC 80B1496C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00ED0 80B14970 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00ED4 80B14974 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00ED8 80B14978 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00EDC 80B1497C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00EE0 80B14980 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00EE4 80B14984 240E00FA */  addiu   $t6, $zero, 0x00FA         ## $t6 = 000000FA
/* 00EE8 80B14988 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 00EEC 80B1498C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00EF0 80B14990 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00EF4 80B14994 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00EF8 80B14998 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00EFC 80B1499C 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00F00 80B149A0 3C064248 */  lui     $a2, 0x4248                ## $a2 = 42480000
/* 00F04 80B149A4 0C00CD20 */  jal     func_80033480              
/* 00F08 80B149A8 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 00F0C 80B149AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F10 80B149B0 0C2C5206 */  jal     func_80B14818              
/* 00F14 80B149B4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00F18 80B149B8 861902CC */  lh      $t9, 0x02CC($s0)           ## 000002CC
/* 00F1C 80B149BC 3C0580B1 */  lui     $a1, %hi(func_80B1490C)    ## $a1 = 80B10000
/* 00F20 80B149C0 24A5490C */  addiu   $a1, $a1, %lo(func_80B1490C) ## $a1 = 80B1490C
/* 00F24 80B149C4 17200006 */  bne     $t9, $zero, .L80B149E0     
/* 00F28 80B149C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F2C 80B149CC 3C0680B1 */  lui     $a2, %hi(func_80B167C0)    ## $a2 = 80B10000
/* 00F30 80B149D0 0C2C4EA8 */  jal     func_80B13AA0              
/* 00F34 80B149D4 24C667C0 */  addiu   $a2, $a2, %lo(func_80B167C0) ## $a2 = 80B167C0
/* 00F38 80B149D8 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 00F3C 80B149DC A60802CC */  sh      $t0, 0x02CC($s0)           ## 000002CC
.L80B149E0:
/* 00F40 80B149E0 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00F44 80B149E4 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00F48 80B149E8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00F4C 80B149EC 03E00008 */  jr      $ra                        
/* 00F50 80B149F0 00000000 */  nop
