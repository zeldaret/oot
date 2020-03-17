glabel func_80B3F7BC
/* 035DC 80B3F7BC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 035E0 80B3F7C0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 035E4 80B3F7C4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 035E8 80B3F7C8 24060009 */  addiu   $a2, $zero, 0x0009         ## $a2 = 00000009
/* 035EC 80B3F7CC 0C2CF13C */  jal     func_80B3C4F0              
/* 035F0 80B3F7D0 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 035F4 80B3F7D4 10400004 */  beq     $v0, $zero, .L80B3F7E8     
/* 035F8 80B3F7D8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 035FC 80B3F7DC 240E0034 */  addiu   $t6, $zero, 0x0034         ## $t6 = 00000034
/* 03600 80B3F7E0 AC8E0260 */  sw      $t6, 0x0260($a0)           ## 00000260
/* 03604 80B3F7E4 AC800264 */  sw      $zero, 0x0264($a0)         ## 00000264
.L80B3F7E8:
/* 03608 80B3F7E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0360C 80B3F7EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03610 80B3F7F0 03E00008 */  jr      $ra                        
/* 03614 80B3F7F4 00000000 */  nop


