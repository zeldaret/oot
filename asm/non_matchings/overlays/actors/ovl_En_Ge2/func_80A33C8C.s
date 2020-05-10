glabel func_80A33C8C
/* 010BC 80A33C8C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 010C0 80A33C90 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 010C4 80A33C94 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 010C8 80A33C98 0C00B638 */  jal     Actor_MoveForward
              
/* 010CC 80A33C9C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 010D0 80A33CA0 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 010D4 80A33CA4 2404003C */  addiu   $a0, $zero, 0x003C         ## $a0 = 0000003C
/* 010D8 80A33CA8 2405003C */  addiu   $a1, $zero, 0x003C         ## $a1 = 0000003C
/* 010DC 80A33CAC 84C302E6 */  lh      $v1, 0x02E6($a2)           ## 000002E6
/* 010E0 80A33CB0 14600003 */  bne     $v1, $zero, .L80A33CC0     
/* 010E4 80A33CB4 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 010E8 80A33CB8 10000004 */  beq     $zero, $zero, .L80A33CCC   
/* 010EC 80A33CBC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A33CC0:
/* 010F0 80A33CC0 A4CE02E6 */  sh      $t6, 0x02E6($a2)           ## 000002E6
/* 010F4 80A33CC4 84C302E6 */  lh      $v1, 0x02E6($a2)           ## 000002E6
/* 010F8 80A33CC8 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80A33CCC:
/* 010FC 80A33CCC 54400007 */  bnel    $v0, $zero, .L80A33CEC     
/* 01100 80A33CD0 A4C302E4 */  sh      $v1, 0x02E4($a2)           ## 000002E4
/* 01104 80A33CD4 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 01108 80A33CD8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 0110C 80A33CDC 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01110 80A33CE0 A4C202E6 */  sh      $v0, 0x02E6($a2)           ## 000002E6
/* 01114 80A33CE4 84C302E6 */  lh      $v1, 0x02E6($a2)           ## 000002E6
/* 01118 80A33CE8 A4C302E4 */  sh      $v1, 0x02E4($a2)           ## 000002E4
.L80A33CEC:
/* 0111C 80A33CEC 84CF02E4 */  lh      $t7, 0x02E4($a2)           ## 000002E4
/* 01120 80A33CF0 29E10003 */  slti    $at, $t7, 0x0003           
/* 01124 80A33CF4 54200003 */  bnel    $at, $zero, .L80A33D04     
/* 01128 80A33CF8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0112C 80A33CFC A4C002E4 */  sh      $zero, 0x02E4($a2)         ## 000002E4
/* 01130 80A33D00 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A33D04:
/* 01134 80A33D04 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01138 80A33D08 03E00008 */  jr      $ra                        
/* 0113C 80A33D0C 00000000 */  nop
