glabel func_8086C55C
/* 008BC 8086C55C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008C0 8086C560 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008C4 8086C564 848E016A */  lh      $t6, 0x016A($a0)           ## 0000016A
/* 008C8 8086C568 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 008CC 8086C56C 2401FFD8 */  addiu   $at, $zero, 0xFFD8         ## $at = FFFFFFD8
/* 008D0 8086C570 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 008D4 8086C574 A48F016A */  sh      $t7, 0x016A($a0)           ## 0000016A
/* 008D8 8086C578 8482016A */  lh      $v0, 0x016A($a0)           ## 0000016A
/* 008DC 8086C57C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 008E0 8086C580 14400005 */  bne     $v0, $zero, .L8086C598     
/* 008E4 8086C584 00000000 */  nop
/* 008E8 8086C588 0C00B2ED */  jal     Flags_UnsetSwitch
              
/* 008EC 8086C58C 90C50168 */  lbu     $a1, 0x0168($a2)           ## 00000168
/* 008F0 8086C590 10000007 */  beq     $zero, $zero, .L8086C5B0   
/* 008F4 8086C594 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8086C598:
/* 008F8 8086C598 14410004 */  bne     $v0, $at, .L8086C5AC       
/* 008FC 8086C59C 3C188087 */  lui     $t8, %hi(func_8086C3D8)    ## $t8 = 80870000
/* 00900 8086C5A0 2718C3D8 */  addiu   $t8, $t8, %lo(func_8086C3D8) ## $t8 = 8086C3D8
/* 00904 8086C5A4 A4C0016A */  sh      $zero, 0x016A($a2)         ## 0000016A
/* 00908 8086C5A8 ACD80164 */  sw      $t8, 0x0164($a2)           ## 00000164
.L8086C5AC:
/* 0090C 8086C5AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8086C5B0:
/* 00910 8086C5B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00914 8086C5B4 03E00008 */  jr      $ra                        
/* 00918 8086C5B8 00000000 */  nop


