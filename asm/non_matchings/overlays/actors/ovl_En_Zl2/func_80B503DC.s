glabel func_80B503DC
/* 01A4C 80B503DC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01A50 80B503E0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01A54 80B503E4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01A58 80B503E8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01A5C 80B503EC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01A60 80B503F0 0C2D3B65 */  jal     func_80B4ED94              
/* 01A64 80B503F4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01A68 80B503F8 10400008 */  beq     $v0, $zero, .L80B5041C     
/* 01A6C 80B503FC 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 01A70 80B50400 95CF1D74 */  lhu     $t7, 0x1D74($t6)           ## 00001D74
/* 01A74 80B50404 94580004 */  lhu     $t8, 0x0004($v0)           ## 00000004
/* 01A78 80B50408 8FA80018 */  lw      $t0, 0x0018($sp)           
/* 01A7C 80B5040C 01F8082A */  slt     $at, $t7, $t8              
/* 01A80 80B50410 14200002 */  bne     $at, $zero, .L80B5041C     
/* 01A84 80B50414 24190004 */  addiu   $t9, $zero, 0x0004         ## $t9 = 00000004
/* 01A88 80B50418 AD19019C */  sw      $t9, 0x019C($t0)           ## 0000019C
.L80B5041C:
/* 01A8C 80B5041C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01A90 80B50420 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01A94 80B50424 03E00008 */  jr      $ra                        
/* 01A98 80B50428 00000000 */  nop


