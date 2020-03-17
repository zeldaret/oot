glabel func_80B3CD00
/* 00B20 80B3CD00 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00B24 80B3CD04 3C0E8012 */  lui     $t6, 0x8012                ## $t6 = 80120000
/* 00B28 80B3CD08 3C0F8012 */  lui     $t7, 0x8012                ## $t7 = 80120000
/* 00B2C 80B3CD0C 91EF71F3 */  lbu     $t7, 0x71F3($t7)           ## 801271F3
/* 00B30 80B3CD10 8DCE7124 */  lw      $t6, 0x7124($t6)           ## 80127124
/* 00B34 80B3CD14 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00B38 80B3CD18 9459009C */  lhu     $t9, 0x009C($v0)           ## 8015E6FC
/* 00B3C 80B3CD1C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B40 80B3CD20 01EEC004 */  sllv    $t8, $t6, $t7              
/* 00B44 80B3CD24 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00B48 80B3CD28 03194024 */  and     $t0, $t8, $t9              
/* 00B4C 80B3CD2C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00B50 80B3CD30 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B54 80B3CD34 1500000F */  bne     $t0, $zero, .L80B3CD74     
/* 00B58 80B3CD38 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B5C 80B3CD3C 94490EDE */  lhu     $t1, 0x0EDE($v0)           ## 8015F53E
/* 00B60 80B3CD40 312A0004 */  andi    $t2, $t1, 0x0004           ## $t2 = 00000000
/* 00B64 80B3CD44 1540000B */  bne     $t2, $zero, .L80B3CD74     
/* 00B68 80B3CD48 00000000 */  nop
/* 00B6C 80B3CD4C 8C4B0004 */  lw      $t3, 0x0004($v0)           ## 8015E664
/* 00B70 80B3CD50 240C001D */  addiu   $t4, $zero, 0x001D         ## $t4 = 0000001D
/* 00B74 80B3CD54 15600007 */  bne     $t3, $zero, .L80B3CD74     
/* 00B78 80B3CD58 00000000 */  nop
/* 00B7C 80B3CD5C AC8C0260 */  sw      $t4, 0x0260($a0)           ## 00000260
/* 00B80 80B3CD60 3C0480B4 */  lui     $a0, %hi(D_80B41F50)       ## $a0 = 80B40000
/* 00B84 80B3CD64 0C00084C */  jal     osSyncPrintf
              
/* 00B88 80B3CD68 24841F50 */  addiu   $a0, $a0, %lo(D_80B41F50)  ## $a0 = 80B41F50
/* 00B8C 80B3CD6C 10000007 */  beq     $zero, $zero, .L80B3CD8C   
/* 00B90 80B3CD70 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B3CD74:
/* 00B94 80B3CD74 0C00B55C */  jal     Actor_Kill
              
/* 00B98 80B3CD78 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00B9C 80B3CD7C 3C0480B4 */  lui     $a0, %hi(D_80B41F80)       ## $a0 = 80B40000
/* 00BA0 80B3CD80 0C00084C */  jal     osSyncPrintf
              
/* 00BA4 80B3CD84 24841F80 */  addiu   $a0, $a0, %lo(D_80B41F80)  ## $a0 = 80B41F80
/* 00BA8 80B3CD88 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B3CD8C:
/* 00BAC 80B3CD8C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BB0 80B3CD90 03E00008 */  jr      $ra                        
/* 00BB4 80B3CD94 00000000 */  nop


