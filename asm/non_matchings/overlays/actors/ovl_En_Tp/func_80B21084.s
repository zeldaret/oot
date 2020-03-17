glabel func_80B21084
/* 002A4 80B21084 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002A8 80B21088 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002AC 80B2108C 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 002B0 80B21090 3C0580B2 */  lui     $a1, %hi(func_80B210B0)    ## $a1 = 80B20000
/* 002B4 80B21094 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 002B8 80B21098 0C2C8378 */  jal     func_80B20DE0              
/* 002BC 80B2109C 24A510B0 */  addiu   $a1, $a1, %lo(func_80B210B0) ## $a1 = 80B210B0
/* 002C0 80B210A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002C4 80B210A4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002C8 80B210A8 03E00008 */  jr      $ra                        
/* 002CC 80B210AC 00000000 */  nop


