glabel func_80AC2CB8
/* 00018 80AC2CB8 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 0001C 80AC2CBC 95CEF556 */  lhu     $t6, -0x0AAA($t6)          ## 8015F556
/* 00020 80AC2CC0 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 00024 80AC2CC4 00042400 */  sll     $a0, $a0, 16               
/* 00028 80AC2CC8 31CF0200 */  andi    $t7, $t6, 0x0200           ## $t7 = 00000000
/* 0002C 80AC2CCC 11E00003 */  beq     $t7, $zero, .L80AC2CDC     
/* 00030 80AC2CD0 00042403 */  sra     $a0, $a0, 16               
/* 00034 80AC2CD4 03E00008 */  jr      $ra                        
/* 00038 80AC2CD8 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
.L80AC2CDC:
/* 0003C 80AC2CDC 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
/* 00040 80AC2CE0 03E00008 */  jr      $ra                        
/* 00044 80AC2CE4 00000000 */  nop
