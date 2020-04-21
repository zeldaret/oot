glabel func_80A5B5E0
/* 002F0 80A5B5E0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002F4 80A5B5E4 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 002F8 80A5B5E8 00073C00 */  sll     $a3, $a3, 16               
/* 002FC 80A5B5EC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00300 80A5B5F0 00073C03 */  sra     $a3, $a3, 16               
/* 00304 80A5B5F4 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00308 80A5B5F8 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 0030C 80A5B5FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00310 80A5B600 00073400 */  sll     $a2, $a3, 16               
/* 00314 80A5B604 0C01B767 */  jal     func_8006DD9C              
/* 00318 80A5B608 00063403 */  sra     $a2, $a2, 16               
/* 0031C 80A5B60C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00320 80A5B610 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00324 80A5B614 03E00008 */  jr      $ra                        
/* 00328 80A5B618 00000000 */  nop
