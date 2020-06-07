glabel ObjMure_Update
/* 00F58 80B999F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00F5C 80B999FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00F60 80B99A00 848201A4 */  lh      $v0, 0x01A4($a0)           ## 000001A4
/* 00F64 80B99A04 18400002 */  blez    $v0, .L80B99A10            
/* 00F68 80B99A08 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00F6C 80B99A0C A48E01A4 */  sh      $t6, 0x01A4($a0)           ## 000001A4
.L80B99A10:
/* 00F70 80B99A10 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 00F74 80B99A14 0320F809 */  jalr    $ra, $t9                   
/* 00F78 80B99A18 00000000 */  nop
/* 00F7C 80B99A1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F80 80B99A20 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F84 80B99A24 03E00008 */  jr      $ra                        
/* 00F88 80B99A28 00000000 */  nop
/* 00F8C 80B99A2C 00000000 */  nop
