glabel func_80A3ACAC
/* 0055C 80A3ACAC 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 00560 80A3ACB0 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 00564 80A3ACB4 3C0F8012 */  lui     $t7, %hi(gUpgradeMasks+0x18)
/* 00568 80A3ACB8 8DEF71C8 */  lw      $t7, %lo(gUpgradeMasks+0x18)($t7)
/* 0056C 80A3ACBC 8C6E00A0 */  lw      $t6, 0x00A0($v1)           ## 8015E700
/* 00570 80A3ACC0 3C198012 */  lui     $t9, %hi(gUpgradeShifts+6)
/* 00574 80A3ACC4 933971FA */  lbu     $t9, %lo(gUpgradeShifts+6)($t9)
/* 00578 80A3ACC8 01CFC024 */  and     $t8, $t6, $t7              
/* 0057C 80A3ACCC 3C028012 */  lui     $v0, %hi(gUpgradeCapacities+0x30)
/* 00580 80A3ACD0 03384007 */  srav    $t0, $t8, $t9              
/* 00584 80A3ACD4 00084840 */  sll     $t1, $t0,  1               
/* 00588 80A3ACD8 00491021 */  addu    $v0, $v0, $t1              
/* 0058C 80A3ACDC 9442722C */  lhu     $v0, %lo(gUpgradeCapacities+0x30)($v0)
/* 00590 80A3ACE0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00594 80A3ACE4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00598 80A3ACE8 1040000A */  beq     $v0, $zero, .L80A3AD14     
/* 0059C 80A3ACEC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 005A0 80A3ACF0 3C0A8012 */  lui     $t2, %hi(gItemSlots)
/* 005A4 80A3ACF4 914A7464 */  lbu     $t2, %lo(gItemSlots)($t2)
/* 005A8 80A3ACF8 006A5821 */  addu    $t3, $v1, $t2              
/* 005AC 80A3ACFC 816C008C */  lb      $t4, 0x008C($t3)           ## 0000008C
/* 005B0 80A3AD00 0182082A */  slt     $at, $t4, $v0              
/* 005B4 80A3AD04 54200004 */  bnel    $at, $zero, .L80A3AD18     
/* 005B8 80A3AD08 846D0034 */  lh      $t5, 0x0034($v1)           ## 8015E694
/* 005BC 80A3AD0C 10000010 */  beq     $zero, $zero, .L80A3AD50   
/* 005C0 80A3AD10 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
.L80A3AD14:
/* 005C4 80A3AD14 846D0034 */  lh      $t5, 0x0034($v1)           ## 8015E694
.L80A3AD18:
/* 005C8 80A3AD18 84AE01C8 */  lh      $t6, 0x01C8($a1)           ## 000001C8
/* 005CC 80A3AD1C 01AE082A */  slt     $at, $t5, $t6              
/* 005D0 80A3AD20 10200003 */  beq     $at, $zero, .L80A3AD30     
/* 005D4 80A3AD24 00000000 */  nop
/* 005D8 80A3AD28 10000009 */  beq     $zero, $zero, .L80A3AD50   
/* 005DC 80A3AD2C 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80A3AD30:
/* 005E0 80A3AD30 0C0218E2 */  jal     Item_CheckObtainability              
/* 005E4 80A3AD34 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 005E8 80A3AD38 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 005EC 80A3AD3C 54410004 */  bnel    $v0, $at, .L80A3AD50       
/* 005F0 80A3AD40 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 005F4 80A3AD44 10000002 */  beq     $zero, $zero, .L80A3AD50   
/* 005F8 80A3AD48 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 005FC 80A3AD4C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3AD50:
/* 00600 80A3AD50 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00604 80A3AD54 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00608 80A3AD58 03E00008 */  jr      $ra                        
/* 0060C 80A3AD5C 00000000 */  nop
