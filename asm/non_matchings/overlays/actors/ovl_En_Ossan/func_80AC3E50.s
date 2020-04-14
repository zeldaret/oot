glabel func_80AC3E50
/* 011B0 80AC3E50 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 011B4 80AC3E54 30C300FF */  andi    $v1, $a2, 0x00FF           ## $v1 = 00000000
/* 011B8 80AC3E58 30A500FF */  andi    $a1, $a1, 0x00FF           ## $a1 = 00000000
/* 011BC 80AC3E5C 24670004 */  addiu   $a3, $v1, 0x0004           ## $a3 = 00000004
/* 011C0 80AC3E60 00A3082A */  slt     $at, $a1, $v1              
/* 011C4 80AC3E64 AFA60008 */  sw      $a2, 0x0008($sp)           
/* 011C8 80AC3E68 30E200FF */  andi    $v0, $a3, 0x00FF           ## $v0 = 00000004
/* 011CC 80AC3E6C 14200017 */  bne     $at, $zero, .L80AC3ECC     
/* 011D0 80AC3E70 00A04025 */  or      $t0, $a1, $zero            ## $t0 = 00000000
/* 011D4 80AC3E74 30E600FF */  andi    $a2, $a3, 0x00FF           ## $a2 = 00000004
/* 011D8 80AC3E78 00A6082A */  slt     $at, $a1, $a2              
/* 011DC 80AC3E7C 10200013 */  beq     $at, $zero, .L80AC3ECC     
/* 011E0 80AC3E80 2505FFFE */  addiu   $a1, $t0, 0xFFFE           ## $a1 = FFFFFFFE
.L80AC3E84:
/* 011E4 80AC3E84 30A500FF */  andi    $a1, $a1, 0x00FF           ## $a1 = 000000FE
/* 011E8 80AC3E88 00A3082A */  slt     $at, $a1, $v1              
/* 011EC 80AC3E8C 1420000A */  bne     $at, $zero, .L80AC3EB8     
/* 011F0 80AC3E90 00A04025 */  or      $t0, $a1, $zero            ## $t0 = 000000FE
/* 011F4 80AC3E94 00A6082A */  slt     $at, $a1, $a2              
/* 011F8 80AC3E98 10200007 */  beq     $at, $zero, .L80AC3EB8     
/* 011FC 80AC3E9C 00057080 */  sll     $t6, $a1,  2               
/* 01200 80AC3EA0 008E7821 */  addu    $t7, $a0, $t6              
/* 01204 80AC3EA4 8DF80200 */  lw      $t8, 0x0200($t7)           ## 00000200
/* 01208 80AC3EA8 53000004 */  beql    $t8, $zero, .L80AC3EBC     
/* 0120C 80AC3EAC 0103082A */  slt     $at, $t0, $v1              
/* 01210 80AC3EB0 03E00008 */  jr      $ra                        
/* 01214 80AC3EB4 00A01025 */  or      $v0, $a1, $zero            ## $v0 = 000000FE
.L80AC3EB8:
/* 01218 80AC3EB8 0103082A */  slt     $at, $t0, $v1              
.L80AC3EBC:
/* 0121C 80AC3EBC 14200003 */  bne     $at, $zero, .L80AC3ECC     
/* 01220 80AC3EC0 0102082A */  slt     $at, $t0, $v0              
/* 01224 80AC3EC4 5420FFEF */  bnel    $at, $zero, .L80AC3E84     
/* 01228 80AC3EC8 2505FFFE */  addiu   $a1, $t0, 0xFFFE           ## $a1 = 000000FC
.L80AC3ECC:
/* 0122C 80AC3ECC 240200FF */  addiu   $v0, $zero, 0x00FF         ## $v0 = 000000FF
/* 01230 80AC3ED0 03E00008 */  jr      $ra                        
/* 01234 80AC3ED4 00000000 */  nop
