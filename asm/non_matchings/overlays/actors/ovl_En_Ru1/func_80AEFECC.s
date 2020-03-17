glabel func_80AEFECC
/* 052BC 80AEFECC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 052C0 80AEFED0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 052C4 80AEFED4 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 052C8 80AEFED8 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 052CC 80AEFEDC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 052D0 80AEFEE0 0C2BBBDA */  jal     func_80AEEF68              
/* 052D4 80AEFEE4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 052D8 80AEFEE8 0C2BACC8 */  jal     func_80AEB320              
/* 052DC 80AEFEEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 052E0 80AEFEF0 0C2BAB87 */  jal     func_80AEAE1C              
/* 052E4 80AEFEF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 052E8 80AEFEF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 052EC 80AEFEFC 0C2BAB04 */  jal     func_80AEAC10              
/* 052F0 80AEFF00 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 052F4 80AEFF04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 052F8 80AEFF08 0C2BABB3 */  jal     func_80AEAECC              
/* 052FC 80AEFF0C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05300 80AEFF10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05304 80AEFF14 0C2BBF70 */  jal     func_80AEFDC0              
/* 05308 80AEFF18 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0530C 80AEFF1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05310 80AEFF20 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05314 80AEFF24 0C2BBFA1 */  jal     func_80AEFE84              
/* 05318 80AEFF28 00403025 */  or      $a2, $v0, $zero            ## $a2 = 00000000
/* 0531C 80AEFF2C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 05320 80AEFF30 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 05324 80AEFF34 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 05328 80AEFF38 03E00008 */  jr      $ra                        
/* 0532C 80AEFF3C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


