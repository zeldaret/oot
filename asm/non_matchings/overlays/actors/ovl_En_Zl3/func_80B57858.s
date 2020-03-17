glabel func_80B57858
/* 044A8 80B57858 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 044AC 80B5785C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 044B0 80B57860 3C0580B6 */  lui     $a1, %hi(D_80B5A498)       ## $a1 = 80B60000
/* 044B4 80B57864 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 044B8 80B57868 0C2D5DEF */  jal     func_80B577BC              
/* 044BC 80B5786C 24A5A498 */  addiu   $a1, $a1, %lo(D_80B5A498)  ## $a1 = 80B5A498
/* 044C0 80B57870 3C0580B6 */  lui     $a1, %hi(D_80B5A4A4)       ## $a1 = 80B60000
/* 044C4 80B57874 24A5A4A4 */  addiu   $a1, $a1, %lo(D_80B5A4A4)  ## $a1 = 80B5A4A4
/* 044C8 80B57878 0C2D5DEF */  jal     func_80B577BC              
/* 044CC 80B5787C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 044D0 80B57880 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 044D4 80B57884 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 044D8 80B57888 03E00008 */  jr      $ra                        
/* 044DC 80B5788C 00000000 */  nop


