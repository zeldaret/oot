glabel func_8096B360
/* 01890 8096B360 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01894 8096B364 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01898 8096B368 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0189C 8096B36C 0C25A716 */  jal     func_80969C58              
/* 018A0 8096B370 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 018A4 8096B374 0C25A70E */  jal     func_80969C38              
/* 018A8 8096B378 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 018AC 8096B37C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 018B0 8096B380 0C25A94A */  jal     func_8096A528              
/* 018B4 8096B384 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 018B8 8096B388 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 018BC 8096B38C 0C25ABDB */  jal     func_8096AF6C              
/* 018C0 8096B390 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 018C4 8096B394 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 018C8 8096B398 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 018CC 8096B39C 03E00008 */  jr      $ra                        
/* 018D0 8096B3A0 00000000 */  nop
