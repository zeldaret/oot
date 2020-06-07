glabel func_8096A338
/* 00868 8096A338 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0086C 8096A33C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00870 8096A340 0C25A716 */  jal     func_80969C58              
/* 00874 8096A344 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00878 8096A348 0C25A70E */  jal     func_80969C38              
/* 0087C 8096A34C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00880 8096A350 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00884 8096A354 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00888 8096A358 03E00008 */  jr      $ra                        
/* 0088C 8096A35C 00000000 */  nop
