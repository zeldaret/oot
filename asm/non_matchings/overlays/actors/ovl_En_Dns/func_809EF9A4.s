glabel func_809EF9A4
/* 00654 809EF9A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00658 809EF9A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0065C 809EF9AC 0C021AAF */  jal     Inventory_HasEmptyBottle              
/* 00660 809EF9B0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00664 809EF9B4 14400003 */  bne     $v0, $zero, .L809EF9C4     
/* 00668 809EF9B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0066C 809EF9BC 1000000C */  beq     $zero, $zero, .L809EF9F0   
/* 00670 809EF9C0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L809EF9C4:
/* 00674 809EF9C4 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 00678 809EF9C8 3C0E8016 */  lui     $t6, %hi(gSaveContext+0x34)
/* 0067C 809EF9CC 85CEE694 */  lh      $t6, %lo(gSaveContext+0x34)($t6)
/* 00680 809EF9D0 8DF802C0 */  lw      $t8, 0x02C0($t7)           ## 000002C0
/* 00684 809EF9D4 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
/* 00688 809EF9D8 87190000 */  lh      $t9, 0x0000($t8)           ## 00000000
/* 0068C 809EF9DC 01D9082A */  slt     $at, $t6, $t9              
/* 00690 809EF9E0 10200003 */  beq     $at, $zero, .L809EF9F0     
/* 00694 809EF9E4 00000000 */  nop
/* 00698 809EF9E8 10000001 */  beq     $zero, $zero, .L809EF9F0   
/* 0069C 809EF9EC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809EF9F0:
/* 006A0 809EF9F0 03E00008 */  jr      $ra                        
/* 006A4 809EF9F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
