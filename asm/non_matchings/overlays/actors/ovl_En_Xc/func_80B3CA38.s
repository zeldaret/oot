glabel func_80B3CA38
/* 00858 80B3CA38 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 0085C 80B3CA3C 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00860 80B3CA40 944E0EDE */  lhu     $t6, 0x0EDE($v0)           ## 8015F53E
/* 00864 80B3CA44 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00868 80B3CA48 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0086C 80B3CA4C 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00870 80B3CA50 15E00006 */  bne     $t7, $zero, .L80B3CA6C     
/* 00874 80B3CA54 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00878 80B3CA58 8C580004 */  lw      $t8, 0x0004($v0)           ## 8015E664
/* 0087C 80B3CA5C 17000003 */  bne     $t8, $zero, .L80B3CA6C     
/* 00880 80B3CA60 00000000 */  nop
/* 00884 80B3CA64 10000003 */  beq     $zero, $zero, .L80B3CA74   
/* 00888 80B3CA68 AC800260 */  sw      $zero, 0x0260($a0)         ## 00000260
.L80B3CA6C:
/* 0088C 80B3CA6C 0C00B55C */  jal     Actor_Kill
              
/* 00890 80B3CA70 00000000 */  nop
.L80B3CA74:
/* 00894 80B3CA74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00898 80B3CA78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0089C 80B3CA7C 03E00008 */  jr      $ra                        
/* 008A0 80B3CA80 00000000 */  nop
