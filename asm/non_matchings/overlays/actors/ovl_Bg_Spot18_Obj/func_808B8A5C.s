glabel func_808B8A5C
/* 0014C 808B8A5C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00150 808B8A60 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00154 808B8A64 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00158 808B8A68 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 0015C 808B8A6C 3C05808C */  lui     $a1, %hi(D_808B90F4)       ## $a1 = 808C0000
/* 00160 808B8A70 31CF000F */  andi    $t7, $t6, 0x000F           ## $t7 = 00000000
/* 00164 808B8A74 000FC080 */  sll     $t8, $t7,  2               
/* 00168 808B8A78 00B82821 */  addu    $a1, $a1, $t8              
/* 0016C 808B8A7C 0C00B58B */  jal     Actor_SetScale
              
/* 00170 808B8A80 8CA590F4 */  lw      $a1, %lo(D_808B90F4)($a1)  
/* 00174 808B8A84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00178 808B8A88 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0017C 808B8A8C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00180 808B8A90 03E00008 */  jr      $ra                        
/* 00184 808B8A94 00000000 */  nop


