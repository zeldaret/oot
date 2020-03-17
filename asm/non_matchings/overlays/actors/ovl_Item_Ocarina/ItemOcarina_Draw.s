glabel ItemOcarina_Draw
/* 0067C 80B867AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00680 80B867B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00684 80B867B4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00688 80B867B8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0068C 80B867BC 0C00BAF3 */  jal     func_8002EBCC              
/* 00690 80B867C0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00694 80B867C4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00698 80B867C8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0069C 80B867CC 0C00BB60 */  jal     func_8002ED80              
/* 006A0 80B867D0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 006A4 80B867D4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 006A8 80B867D8 0C01A528 */  jal     func_800694A0              
/* 006AC 80B867DC 2405002E */  addiu   $a1, $zero, 0x002E         ## $a1 = 0000002E
/* 006B0 80B867E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006B4 80B867E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006B8 80B867E8 03E00008 */  jr      $ra                        
/* 006BC 80B867EC 00000000 */  nop

