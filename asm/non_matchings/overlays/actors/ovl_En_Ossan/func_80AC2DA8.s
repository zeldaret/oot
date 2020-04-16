glabel func_80AC2DA8
/* 00108 80AC2DA8 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 0010C 80AC2DAC 95CEF556 */  lhu     $t6, -0x0AAA($t6)          ## 8015F556
/* 00110 80AC2DB0 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 00114 80AC2DB4 00042400 */  sll     $a0, $a0, 16               
/* 00118 80AC2DB8 31CF8000 */  andi    $t7, $t6, 0x8000           ## $t7 = 00000000
/* 0011C 80AC2DBC 11E00003 */  beq     $t7, $zero, .L80AC2DCC     
/* 00120 80AC2DC0 00042403 */  sra     $a0, $a0, 16               
/* 00124 80AC2DC4 03E00008 */  jr      $ra                        
/* 00128 80AC2DC8 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
.L80AC2DCC:
/* 0012C 80AC2DCC 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
/* 00130 80AC2DD0 03E00008 */  jr      $ra                        
/* 00134 80AC2DD4 00000000 */  nop
