glabel func_8084DBC4
/* 1B9B4 8084DBC4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 1B9B8 8084DBC8 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 1B9BC 8084DBCC 8FAE0030 */  lw      $t6, 0x0030($sp)           
/* 1B9C0 8084DBD0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 1B9C4 8084DBD4 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 1B9C8 8084DBD8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 1B9CC 8084DBDC AFA60038 */  sw      $a2, 0x0038($sp)           
/* 1B9D0 8084DBE0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 1B9D4 8084DBE4 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFFC
/* 1B9D8 8084DBE8 27A6002A */  addiu   $a2, $sp, 0x002A           ## $a2 = FFFFFFFA
/* 1B9DC 8084DBEC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 1B9E0 8084DBF0 0C20DC9A */  jal     func_80837268              
/* 1B9E4 8084DBF4 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 1B9E8 8084DBF8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 1B9EC 8084DBFC 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 1B9F0 8084DC00 C7A4002C */  lwc1    $f4, 0x002C($sp)           
/* 1B9F4 8084DC04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1B9F8 8084DC08 26050838 */  addiu   $a1, $s0, 0x0838           ## $a1 = 00000838
/* 1B9FC 8084DC0C 46062202 */  mul.s   $f8, $f4, $f6              
/* 1BA00 8084DC10 87A7002A */  lh      $a3, 0x002A($sp)           
/* 1BA04 8084DC14 44064000 */  mfc1    $a2, $f8                   
/* 1BA08 8084DC18 0C212BBB */  jal     func_8084AEEC              
/* 1BA0C 8084DC1C 00000000 */  nop
/* 1BA10 8084DC20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1BA14 8084DC24 26050060 */  addiu   $a1, $s0, 0x0060           ## $a1 = 00000060
/* 1BA18 8084DC28 8FA60038 */  lw      $a2, 0x0038($sp)           
/* 1BA1C 8084DC2C 0C212BBB */  jal     func_8084AEEC              
/* 1BA20 8084DC30 8607083C */  lh      $a3, 0x083C($s0)           ## 0000083C
/* 1BA24 8084DC34 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 1BA28 8084DC38 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 1BA2C 8084DC3C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 1BA30 8084DC40 03E00008 */  jr      $ra                        
/* 1BA34 8084DC44 00000000 */  nop
