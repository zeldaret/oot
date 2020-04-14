glabel func_80B85C64
/* 00674 80B85C64 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00678 80B85C68 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0067C 80B85C6C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00680 80B85C70 90AE1C27 */  lbu     $t6, 0x1C27($a1)           ## 00001C27
/* 00684 80B85C74 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00688 80B85C78 51C0000C */  beql    $t6, $zero, .L80B85CAC     
/* 0068C 80B85C7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00690 80B85C80 0C00BAF3 */  jal     func_8002EBCC              
/* 00694 80B85C84 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00698 80B85C88 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0069C 80B85C8C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 006A0 80B85C90 0C00BB60 */  jal     func_8002ED80              
/* 006A4 80B85C94 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 006A8 80B85C98 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 006AC 80B85C9C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 006B0 80B85CA0 0C01A528 */  jal     func_800694A0              
/* 006B4 80B85CA4 85E50150 */  lh      $a1, 0x0150($t7)           ## 00000150
/* 006B8 80B85CA8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B85CAC:
/* 006BC 80B85CAC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006C0 80B85CB0 03E00008 */  jr      $ra                        
/* 006C4 80B85CB4 00000000 */  nop
