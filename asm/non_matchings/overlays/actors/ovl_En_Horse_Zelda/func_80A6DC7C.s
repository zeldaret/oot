glabel func_80A6DC7C
/* 003AC 80A6DC7C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003B0 80A6DC80 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003B4 80A6DC84 8C8E0150 */  lw      $t6, 0x0150($a0)           ## 00000150
/* 003B8 80A6DC88 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 003BC 80A6DC8C AC80014C */  sw      $zero, 0x014C($a0)         ## 0000014C
/* 003C0 80A6DC90 25C20001 */  addiu   $v0, $t6, 0x0001           ## $v0 = 00000001
/* 003C4 80A6DC94 18400003 */  blez    $v0, .L80A6DCA4            
/* 003C8 80A6DC98 AC820150 */  sw      $v0, 0x0150($a0)           ## 00000150
/* 003CC 80A6DC9C AC800150 */  sw      $zero, 0x0150($a0)         ## 00000150
/* 003D0 80A6DCA0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A6DCA4:
/* 003D4 80A6DCA4 0002C080 */  sll     $t8, $v0,  2               
/* 003D8 80A6DCA8 3C0580A7 */  lui     $a1, %hi(D_80A6E1D0)       ## $a1 = 80A70000
/* 003DC 80A6DCAC 00B82821 */  addu    $a1, $a1, $t8              
/* 003E0 80A6DCB0 8CA5E1D0 */  lw      $a1, %lo(D_80A6E1D0)($a1)  
/* 003E4 80A6DCB4 0C02947A */  jal     SkelAnimeChangeAnimationDefaultStop              
/* 003E8 80A6DCB8 24C401A0 */  addiu   $a0, $a2, 0x01A0           ## $a0 = 000001A0
/* 003EC 80A6DCBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003F0 80A6DCC0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003F4 80A6DCC4 03E00008 */  jr      $ra                        
/* 003F8 80A6DCC8 00000000 */  nop


