glabel func_80A6F6C0
/* 00110 80A6F6C0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00114 80A6F6C4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00118 80A6F6C8 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 0011C 80A6F6CC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00120 80A6F6D0 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00124 80A6F6D4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00128 80A6F6D8 00A12021 */  addu    $a0, $a1, $at              
/* 0012C 80A6F6DC 81C50198 */  lb      $a1, 0x0198($t6)           ## 00000198
/* 00130 80A6F6E0 0C026062 */  jal     Object_IsLoaded
              
/* 00134 80A6F6E4 AFA4001C */  sw      $a0, 0x001C($sp)           
/* 00138 80A6F6E8 14400003 */  bne     $v0, $zero, .L80A6F6F8     
/* 0013C 80A6F6EC 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 00140 80A6F6F0 10000010 */  beq     $zero, $zero, .L80A6F734   
/* 00144 80A6F6F4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A6F6F8:
/* 00148 80A6F6F8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0014C 80A6F6FC 0C026062 */  jal     Object_IsLoaded
              
/* 00150 80A6F700 81E50197 */  lb      $a1, 0x0197($t7)           ## 00000197
/* 00154 80A6F704 14400003 */  bne     $v0, $zero, .L80A6F714     
/* 00158 80A6F708 8FB80020 */  lw      $t8, 0x0020($sp)           
/* 0015C 80A6F70C 10000009 */  beq     $zero, $zero, .L80A6F734   
/* 00160 80A6F710 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A6F714:
/* 00164 80A6F714 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00168 80A6F718 0C026062 */  jal     Object_IsLoaded
              
/* 0016C 80A6F71C 83050196 */  lb      $a1, 0x0196($t8)           ## 00000196
/* 00170 80A6F720 54400004 */  bnel    $v0, $zero, .L80A6F734     
/* 00174 80A6F724 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00178 80A6F728 10000002 */  beq     $zero, $zero, .L80A6F734   
/* 0017C 80A6F72C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00180 80A6F730 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A6F734:
/* 00184 80A6F734 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00188 80A6F738 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0018C 80A6F73C 03E00008 */  jr      $ra                        
/* 00190 80A6F740 00000000 */  nop


