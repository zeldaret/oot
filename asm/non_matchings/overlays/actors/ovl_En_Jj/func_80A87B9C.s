glabel func_80A87B9C
/* 0039C 80A87B9C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003A0 80A87BA0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003A4 80A87BA4 84820308 */  lh      $v0, 0x0308($a0)           ## 00000308
/* 003A8 80A87BA8 8C830300 */  lw      $v1, 0x0300($a0)           ## 00000300
/* 003AC 80A87BAC 2841EBB0 */  slti    $at, $v0, 0xEBB0           
/* 003B0 80A87BB0 1420000A */  bne     $at, $zero, .L80A87BDC     
/* 003B4 80A87BB4 244EFF9A */  addiu   $t6, $v0, 0xFF9A           ## $t6 = FFFFFF9A
/* 003B8 80A87BB8 A48E0308 */  sh      $t6, 0x0308($a0)           ## 00000308
/* 003BC 80A87BBC 848F0308 */  lh      $t7, 0x0308($a0)           ## 00000308
/* 003C0 80A87BC0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 003C4 80A87BC4 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 003C8 80A87BC8 29E1F5D8 */  slti    $at, $t7, 0xF5D8           
/* 003CC 80A87BCC 50200004 */  beql    $at, $zero, .L80A87BE0     
/* 003D0 80A87BD0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003D4 80A87BD4 0C00FAFE */  jal     func_8003EBF8              
/* 003D8 80A87BD8 8C66014C */  lw      $a2, 0x014C($v1)           ## 0000014C
.L80A87BDC:
/* 003DC 80A87BDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A87BE0:
/* 003E0 80A87BE0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003E4 80A87BE4 03E00008 */  jr      $ra                        
/* 003E8 80A87BE8 00000000 */  nop


