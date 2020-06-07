glabel func_8084D5CC
/* 1B3BC 8084D5CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1B3C0 8084D5D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1B3C4 8084D5D4 3C068085 */  lui     $a2, %hi(func_8084DAB4)    ## $a2 = 80850000
/* 1B3C8 8084D5D8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 1B3CC 8084D5DC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 1B3D0 8084D5E0 24C6DAB4 */  addiu   $a2, $a2, %lo(func_8084DAB4) ## $a2 = 8084DAB4
/* 1B3D4 8084D5E4 0C20D716 */  jal     func_80835C58              
/* 1B3D8 8084D5E8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 1B3DC 8084D5EC 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 1B3E0 8084D5F0 24C632F0 */  addiu   $a2, $a2, 0x32F0           ## $a2 = 040032F0
/* 1B3E4 8084D5F4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 1B3E8 8084D5F8 0C20CB1B */  jal     func_80832C6C              
/* 1B3EC 8084D5FC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 1B3F0 8084D600 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1B3F4 8084D604 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1B3F8 8084D608 03E00008 */  jr      $ra                        
/* 1B3FC 8084D60C 00000000 */  nop
