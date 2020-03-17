glabel func_80B8B564
/* 00464 80B8B564 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00468 80B8B568 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0046C 80B8B56C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00470 80B8B570 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00474 80B8B574 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00478 80B8B578 0C01B231 */  jal     func_8006C8C4              
/* 0047C 80B8B57C 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 00480 80B8B580 50400004 */  beql    $v0, $zero, .L80B8B594     
/* 00484 80B8B584 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00488 80B8B588 0C00B55C */  jal     Actor_Kill
              
/* 0048C 80B8B58C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00490 80B8B590 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B8B594:
/* 00494 80B8B594 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00498 80B8B598 03E00008 */  jr      $ra                        
/* 0049C 80B8B59C 00000000 */  nop


