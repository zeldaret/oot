glabel func_80A5F3A8
/* 040B8 80A5F3A8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 040BC 80A5F3AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 040C0 80A5F3B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 040C4 80A5F3B4 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 040C8 80A5F3B8 44060000 */  mfc1    $a2, $f0                   
/* 040CC 80A5F3BC 44070000 */  mfc1    $a3, $f0                   
/* 040D0 80A5F3C0 AC8E0210 */  sw      $t6, 0x0210($a0)           ## 00000210
/* 040D4 80A5F3C4 0C297C6C */  jal     func_80A5F1B0              
/* 040D8 80A5F3C8 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 040DC 80A5F3CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 040E0 80A5F3D0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 040E4 80A5F3D4 03E00008 */  jr      $ra                        
/* 040E8 80A5F3D8 00000000 */  nop


