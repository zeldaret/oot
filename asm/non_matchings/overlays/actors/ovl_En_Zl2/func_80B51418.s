glabel func_80B51418
/* 02A88 80B51418 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02A8C 80B5141C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02A90 80B51420 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02A94 80B51424 0C2D3A6C */  jal     func_80B4E9B0              
/* 02A98 80B51428 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02A9C 80B5142C 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 02AA0 80B51430 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02AA4 80B51434 95CF1D74 */  lhu     $t7, 0x1D74($t6)           ## 00001D74
/* 02AA8 80B51438 29E101AF */  slti    $at, $t7, 0x01AF           
/* 02AAC 80B5143C 10200005 */  beq     $at, $zero, .L80B51454     
/* 02AB0 80B51440 00000000 */  nop
/* 02AB4 80B51444 0C2D3B46 */  jal     func_80B4ED18              
/* 02AB8 80B51448 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02ABC 80B5144C 10000004 */  beq     $zero, $zero, .L80B51460   
/* 02AC0 80B51450 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B51454:
/* 02AC4 80B51454 0C2D3B46 */  jal     func_80B4ED18              
/* 02AC8 80B51458 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02ACC 80B5145C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B51460:
/* 02AD0 80B51460 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02AD4 80B51464 03E00008 */  jr      $ra                        
/* 02AD8 80B51468 00000000 */  nop
