glabel func_80B9BB70
/* 009F0 80B9BB70 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 009F4 80B9BB74 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 009F8 80B9BB78 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 009FC 80B9BB7C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A00 80B9BB80 0C2E6CB6 */  jal     func_80B9B2D8              
/* 00A04 80B9BB84 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00A08 80B9BB88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A0C 80B9BB8C 0C2E6E32 */  jal     func_80B9B8C8              
/* 00A10 80B9BB90 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00A14 80B9BB94 0C2E6E8A */  jal     func_80B9BA28              
/* 00A18 80B9BB98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A1C 80B9BB9C A60201BC */  sh      $v0, 0x01BC($s0)           ## 000001BC
/* 00A20 80B9BBA0 860E01BC */  lh      $t6, 0x01BC($s0)           ## 000001BC
/* 00A24 80B9BBA4 000E7880 */  sll     $t7, $t6,  2               
/* 00A28 80B9BBA8 020FC021 */  addu    $t8, $s0, $t7              
/* 00A2C 80B9BBAC C70401A8 */  lwc1    $f4, 0x01A8($t8)           ## 000001A8
/* 00A30 80B9BBB0 E6040080 */  swc1    $f4, 0x0080($s0)           ## 00000080
/* 00A34 80B9BBB4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A38 80B9BBB8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00A3C 80B9BBBC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00A40 80B9BBC0 03E00008 */  jr      $ra                        
/* 00A44 80B9BBC4 00000000 */  nop
