glabel func_80B58A1C
/* 0566C 80B58A1C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 05670 80B58A20 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 05674 80B58A24 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 05678 80B58A28 0C2D624E */  jal     func_80B58938              
/* 0567C 80B58A2C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 05680 80B58A30 14400003 */  bne     $v0, $zero, .L80B58A40     
/* 05684 80B58A34 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 05688 80B58A38 0C2D6267 */  jal     func_80B5899C              
/* 0568C 80B58A3C 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80B58A40:
/* 05690 80B58A40 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 05694 80B58A44 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 05698 80B58A48 03E00008 */  jr      $ra                        
/* 0569C 80B58A4C 00000000 */  nop
