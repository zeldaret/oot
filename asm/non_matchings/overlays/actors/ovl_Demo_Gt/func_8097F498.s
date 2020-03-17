glabel func_8097F498
/* 01E28 8097F498 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01E2C 8097F49C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01E30 8097F4A0 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 01E34 8097F4A4 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 01E38 8097F4A8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01E3C 8097F4AC 0C25FCA0 */  jal     func_8097F280              
/* 01E40 8097F4B0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01E44 8097F4B4 0C25FC76 */  jal     func_8097F1D8              
/* 01E48 8097F4B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E4C 8097F4BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E50 8097F4C0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01E54 8097F4C4 0C25FB59 */  jal     func_8097ED64              
/* 01E58 8097F4C8 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01E5C 8097F4CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E60 8097F4D0 0C25FC67 */  jal     func_8097F19C              
/* 01E64 8097F4D4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01E68 8097F4D8 0C25F5AD */  jal     func_8097D6B4              
/* 01E6C 8097F4DC 00000000 */  nop
/* 01E70 8097F4E0 0C25F5C7 */  jal     func_8097D71C              
/* 01E74 8097F4E4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01E78 8097F4E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E7C 8097F4EC 0C25FBC0 */  jal     func_8097EF00              
/* 01E80 8097F4F0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01E84 8097F4F4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01E88 8097F4F8 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 01E8C 8097F4FC 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 01E90 8097F500 03E00008 */  jr      $ra                        
/* 01E94 8097F504 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


