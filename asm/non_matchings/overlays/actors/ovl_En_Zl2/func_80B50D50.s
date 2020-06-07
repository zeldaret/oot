glabel func_80B50D50
/* 023C0 80B50D50 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 023C4 80B50D54 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 023C8 80B50D58 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 023CC 80B50D5C 0C2D3F33 */  jal     func_80B4FCCC              
/* 023D0 80B50D60 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 023D4 80B50D64 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 023D8 80B50D68 0C2D3B4B */  jal     func_80B4ED2C              
/* 023DC 80B50D6C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 023E0 80B50D70 0C2D3B5D */  jal     func_80B4ED74              
/* 023E4 80B50D74 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 023E8 80B50D78 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 023EC 80B50D7C 0C2D4281 */  jal     func_80B50A04              
/* 023F0 80B50D80 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 023F4 80B50D84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 023F8 80B50D88 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 023FC 80B50D8C 03E00008 */  jr      $ra                        
/* 02400 80B50D90 00000000 */  nop
