glabel func_808AB144
/* 00464 808AB144 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00468 808AB148 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0046C 808AB14C AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00470 808AB150 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00474 808AB154 0C22AC49 */  jal     func_808AB124              
/* 00478 808AB158 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 0047C 808AB15C 14400006 */  bne     $v0, $zero, .L808AB178     
/* 00480 808AB160 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 00484 808AB164 8FAF002C */  lw      $t7, 0x002C($sp)           
/* 00488 808AB168 8FAE0028 */  lw      $t6, 0x0028($sp)           
/* 0048C 808AB16C 000FC080 */  sll     $t8, $t7,  2               
/* 00490 808AB170 01D8C821 */  addu    $t9, $t6, $t8              
/* 00494 808AB174 8F231D8C */  lw      $v1, 0x1D8C($t9)           ## 00001D8C
.L808AB178:
/* 00498 808AB178 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0049C 808AB17C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 004A0 808AB180 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 004A4 808AB184 03E00008 */  jr      $ra                        
/* 004A8 808AB188 00000000 */  nop


