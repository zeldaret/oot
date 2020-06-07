glabel func_80B14DD8
/* 01338 80B14DD8 3C0E8016 */  lui     $t6, %hi(gSaveContext+0x34)
/* 0133C 80B14DDC 85CEE694 */  lh      $t6, %lo(gSaveContext+0x34)($t6)
/* 01340 80B14DE0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01344 80B14DE4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01348 80B14DE8 29C1001E */  slti    $at, $t6, 0x001E           
/* 0134C 80B14DEC 10200003 */  beq     $at, $zero, .L80B14DFC     
/* 01350 80B14DF0 00000000 */  nop
/* 01354 80B14DF4 10000008 */  beq     $zero, $zero, .L80B14E18   
/* 01358 80B14DF8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B14DFC:
/* 0135C 80B14DFC 0C021AAF */  jal     Inventory_HasEmptyBottle              
/* 01360 80B14E00 00000000 */  nop
/* 01364 80B14E04 54400004 */  bnel    $v0, $zero, .L80B14E18     
/* 01368 80B14E08 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
/* 0136C 80B14E0C 10000002 */  beq     $zero, $zero, .L80B14E18   
/* 01370 80B14E10 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 01374 80B14E14 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
.L80B14E18:
/* 01378 80B14E18 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0137C 80B14E1C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01380 80B14E20 03E00008 */  jr      $ra                        
/* 01384 80B14E24 00000000 */  nop
