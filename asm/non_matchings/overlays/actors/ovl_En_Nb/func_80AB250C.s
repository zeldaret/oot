glabel func_80AB250C
/* 0177C 80AB250C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01780 80AB2510 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01784 80AB2514 908E014D */  lbu     $t6, 0x014D($a0)           ## 0000014D
/* 01788 80AB2518 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0178C 80AB251C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01790 80AB2520 15C1000F */  bne     $t6, $at, .L80AB2560       
/* 01794 80AB2524 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01798 80AB2528 3C054190 */  lui     $a1, 0x4190                ## $a1 = 41900000
/* 0179C 80AB252C AFA4001C */  sw      $a0, 0x001C($sp)           
/* 017A0 80AB2530 0C0295B2 */  jal     func_800A56C8              
/* 017A4 80AB2534 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 017A8 80AB2538 14400005 */  bne     $v0, $zero, .L80AB2550     
/* 017AC 80AB253C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 017B0 80AB2540 0C0295B2 */  jal     func_800A56C8              
/* 017B4 80AB2544 3C0541C8 */  lui     $a1, 0x41C8                ## $a1 = 41C80000
/* 017B8 80AB2548 50400006 */  beql    $v0, $zero, .L80AB2564     
/* 017BC 80AB254C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AB2550:
/* 017C0 80AB2550 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 017C4 80AB2554 24052896 */  addiu   $a1, $zero, 0x2896         ## $a1 = 00002896
/* 017C8 80AB2558 0C01E245 */  jal     func_80078914              
/* 017CC 80AB255C 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
.L80AB2560:
/* 017D0 80AB2560 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AB2564:
/* 017D4 80AB2564 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 017D8 80AB2568 03E00008 */  jr      $ra                        
/* 017DC 80AB256C 00000000 */  nop


