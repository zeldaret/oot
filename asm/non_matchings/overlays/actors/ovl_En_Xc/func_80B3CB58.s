glabel func_80B3CB58
/* 00978 80B3CB58 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0097C 80B3CB5C 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00980 80B3CB60 944E0EDE */  lhu     $t6, 0x0EDE($v0)           ## 8015F53E
/* 00984 80B3CB64 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00988 80B3CB68 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0098C 80B3CB6C 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 00990 80B3CB70 15E00006 */  bne     $t7, $zero, .L80B3CB8C     
/* 00994 80B3CB74 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00998 80B3CB78 8C580004 */  lw      $t8, 0x0004($v0)           ## 8015E664
/* 0099C 80B3CB7C 17000003 */  bne     $t8, $zero, .L80B3CB8C     
/* 009A0 80B3CB80 00000000 */  nop
/* 009A4 80B3CB84 10000003 */  beq     $zero, $zero, .L80B3CB94   
/* 009A8 80B3CB88 AC800260 */  sw      $zero, 0x0260($a0)         ## 00000260
.L80B3CB8C:
/* 009AC 80B3CB8C 0C00B55C */  jal     Actor_Kill
              
/* 009B0 80B3CB90 00000000 */  nop
.L80B3CB94:
/* 009B4 80B3CB94 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 009B8 80B3CB98 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 009BC 80B3CB9C 03E00008 */  jr      $ra                        
/* 009C0 80B3CBA0 00000000 */  nop
