glabel func_80B3C888
/* 006A8 80B3C888 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006AC 80B3C88C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006B0 80B3C890 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 006B4 80B3C894 0C2CF200 */  jal     func_80B3C800              
/* 006B8 80B3C898 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 006BC 80B3C89C 10400007 */  beq     $v0, $zero, .L80B3C8BC     
/* 006C0 80B3C8A0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 006C4 80B3C8A4 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 006C8 80B3C8A8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 006CC 80B3C8AC 55C10004 */  bnel    $t6, $at, .L80B3C8C0       
/* 006D0 80B3C8B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006D4 80B3C8B4 0C2CF208 */  jal     func_80B3C820              
/* 006D8 80B3C8B8 00000000 */  nop
.L80B3C8BC:
/* 006DC 80B3C8BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B3C8C0:
/* 006E0 80B3C8C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006E4 80B3C8C4 03E00008 */  jr      $ra                        
/* 006E8 80B3C8C8 00000000 */  nop
