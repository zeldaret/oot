glabel func_80B9B584
/* 00404 80B9B584 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00408 80B9B588 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0040C 80B9B58C 8487001C */  lh      $a3, 0x001C($a0)           ## 0000001C
/* 00410 80B9B590 240601BC */  addiu   $a2, $zero, 0x01BC         ## $a2 = 000001BC
/* 00414 80B9B594 30EE000F */  andi    $t6, $a3, 0x000F           ## $t6 = 00000000
/* 00418 80B9B598 2DC10008 */  sltiu   $at, $t6, 0x0008           
/* 0041C 80B9B59C 1020000C */  beq     $at, $zero, .L80B9B5D0     
/* 00420 80B9B5A0 000E7080 */  sll     $t6, $t6,  2               
/* 00424 80B9B5A4 3C0180BA */  lui     $at, %hi(jtbl_80B9CCBC)       ## $at = 80BA0000
/* 00428 80B9B5A8 002E0821 */  addu    $at, $at, $t6              
/* 0042C 80B9B5AC 8C2ECCBC */  lw      $t6, %lo(jtbl_80B9CCBC)($at)  
/* 00430 80B9B5B0 01C00008 */  jr      $t6                        
/* 00434 80B9B5B4 00000000 */  nop
glabel L80B9B5B8
/* 00438 80B9B5B8 3C060500 */  lui     $a2, 0x0500                ## $a2 = 05000000
/* 0043C 80B9B5BC 24C64E98 */  addiu   $a2, $a2, 0x4E98           ## $a2 = 05004E98
/* 00440 80B9B5C0 0C2E6C60 */  jal     func_80B9B180              
/* 00444 80B9B5C4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00448 80B9B5C8 10000007 */  beq     $zero, $zero, .L80B9B5E8   
/* 0044C 80B9B5CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B9B5D0:
/* 00450 80B9B5D0 3C0480BA */  lui     $a0, %hi(D_80B9CB44)       ## $a0 = 80BA0000
/* 00454 80B9B5D4 3C0580BA */  lui     $a1, %hi(D_80B9CB7C)       ## $a1 = 80BA0000
/* 00458 80B9B5D8 24A5CB7C */  addiu   $a1, $a1, %lo(D_80B9CB7C)  ## $a1 = 80B9CB7C
/* 0045C 80B9B5DC 0C00084C */  jal     osSyncPrintf
              
/* 00460 80B9B5E0 2484CB44 */  addiu   $a0, $a0, %lo(D_80B9CB44)  ## $a0 = 80B9CB44
/* 00464 80B9B5E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B9B5E8:
/* 00468 80B9B5E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0046C 80B9B5EC 03E00008 */  jr      $ra                        
/* 00470 80B9B5F0 00000000 */  nop


