glabel func_80B3EC90
/* 02AB0 80B3EC90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02AB4 80B3EC94 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02AB8 80B3EC98 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 02ABC 80B3EC9C 51C0000B */  beql    $t6, $zero, .L80B3ECCC     
/* 02AC0 80B3ECA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02AC4 80B3ECA4 8CA21D9C */  lw      $v0, 0x1D9C($a1)           ## 00001D9C
/* 02AC8 80B3ECA8 50400008 */  beql    $v0, $zero, .L80B3ECCC     
/* 02ACC 80B3ECAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02AD0 80B3ECB0 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 02AD4 80B3ECB4 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 02AD8 80B3ECB8 51E10004 */  beql    $t7, $at, .L80B3ECCC       
/* 02ADC 80B3ECBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02AE0 80B3ECC0 0C2CF27B */  jal     func_80B3C9EC              
/* 02AE4 80B3ECC4 00000000 */  nop
/* 02AE8 80B3ECC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B3ECCC:
/* 02AEC 80B3ECCC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02AF0 80B3ECD0 03E00008 */  jr      $ra                        
/* 02AF4 80B3ECD4 00000000 */  nop
