glabel func_8096B0C0
/* 015F0 8096B0C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 015F4 8096B0C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 015F8 8096B0C8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 015FC 8096B0CC 0C25A716 */  jal     func_80969C58              
/* 01600 8096B0D0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01604 8096B0D4 0C25A935 */  jal     func_8096A4D4              
/* 01608 8096B0D8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0160C 8096B0DC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01610 8096B0E0 0C25AAD5 */  jal     func_8096AB54              
/* 01614 8096B0E4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01618 8096B0E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0161C 8096B0EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01620 8096B0F0 03E00008 */  jr      $ra                        
/* 01624 8096B0F4 00000000 */  nop


