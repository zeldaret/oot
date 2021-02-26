glabel func_80A43564
/* 00834 80A43564 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00838 80A43568 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 0083C 80A4356C 944E0F1A */  lhu     $t6, 0x0F1A($v0)           ## 8015F57A
/* 00840 80A43570 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 00844 80A43574 3C198012 */  lui     $t9, %hi(gUpgradeMasks+4)
/* 00848 80A43578 31CF4000 */  andi    $t7, $t6, 0x4000           ## $t7 = 00000000
/* 0084C 80A4357C 11E00003 */  beq     $t7, $zero, .L80A4358C     
/* 00850 80A43580 3C098012 */  lui     $t1, %hi(gUpgradeShifts+1)
/* 00854 80A43584 03E00008 */  jr      $ra                        
/* 00858 80A43588 24023013 */  addiu   $v0, $zero, 0x3013         ## $v0 = 00003013
.L80A4358C:
/* 0085C 80A4358C 8C5800A0 */  lw      $t8, 0x00A0($v0)           ## 000030B3
/* 00860 80A43590 8F3971B4 */  lw      $t9, %lo(gUpgradeMasks+4)($t9)
/* 00864 80A43594 912971F5 */  lbu     $t1, %lo(gUpgradeShifts+1)($t1)
/* 00868 80A43598 3C0C8012 */  lui     $t4, %hi(gUpgradeCapacities+8)
/* 0086C 80A4359C 03194024 */  and     $t0, $t8, $t9              
/* 00870 80A435A0 01285007 */  srav    $t2, $t0, $t1              
/* 00874 80A435A4 000A5840 */  sll     $t3, $t2,  1               
/* 00878 80A435A8 018B6021 */  addu    $t4, $t4, $t3              
/* 0087C 80A435AC 958C7204 */  lhu     $t4, %lo(gUpgradeCapacities+8)($t4)
/* 00880 80A435B0 29810014 */  slti    $at, $t4, 0x0014           
/* 00884 80A435B4 5420000A */  bnel    $at, $zero, .L80A435E0     
/* 00888 80A435B8 24023011 */  addiu   $v0, $zero, 0x3011         ## $v0 = 00003011
/* 0088C 80A435BC 80A20210 */  lb      $v0, 0x0210($a1)           ## 00000210
/* 00890 80A435C0 28410008 */  slti    $at, $v0, 0x0008           
/* 00894 80A435C4 14200005 */  bne     $at, $zero, .L80A435DC     
/* 00898 80A435C8 2841000C */  slti    $at, $v0, 0x000C           
/* 0089C 80A435CC 50200004 */  beql    $at, $zero, .L80A435E0     
/* 008A0 80A435D0 24023011 */  addiu   $v0, $zero, 0x3011         ## $v0 = 00003011
/* 008A4 80A435D4 03E00008 */  jr      $ra                        
/* 008A8 80A435D8 24023012 */  addiu   $v0, $zero, 0x3012         ## $v0 = 00003012
.L80A435DC:
/* 008AC 80A435DC 24023011 */  addiu   $v0, $zero, 0x3011         ## $v0 = 00003011
.L80A435E0:
/* 008B0 80A435E0 03E00008 */  jr      $ra                        
/* 008B4 80A435E4 00000000 */  nop
