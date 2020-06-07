glabel MagicDark_Destroy
/* 000E0 80B874B0 3C0E8016 */  lui     $t6, %hi(gSaveContext+0x13c8)
/* 000E4 80B874B4 85CEFA28 */  lh      $t6, %lo(gSaveContext+0x13c8)($t6)
/* 000E8 80B874B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000EC 80B874BC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000F0 80B874C0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000F4 80B874C4 15C00003 */  bne     $t6, $zero, .L80B874D4     
/* 000F8 80B874C8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000FC 80B874CC 0C021DB2 */  jal     func_800876C8              
/* 00100 80B874D0 00000000 */  nop
.L80B874D4:
/* 00104 80B874D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00108 80B874D8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0010C 80B874DC 03E00008 */  jr      $ra                        
/* 00110 80B874E0 00000000 */  nop
