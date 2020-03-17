glabel func_80B4FDD4
/* 01444 80B4FDD4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01448 80B4FDD8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0144C 80B4FDDC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01450 80B4FDE0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01454 80B4FDE4 0C0295B2 */  jal     func_800A56C8              
/* 01458 80B4FDE8 3C054160 */  lui     $a1, 0x4160                ## $a1 = 41600000
/* 0145C 80B4FDEC 10400004 */  beq     $v0, $zero, .L80B4FE00     
/* 01460 80B4FDF0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01464 80B4FDF4 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 01468 80B4FDF8 0C01E245 */  jal     func_80078914              
/* 0146C 80B4FDFC 24050802 */  addiu   $a1, $zero, 0x0802         ## $a1 = 00000802
.L80B4FE00:
/* 01470 80B4FE00 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01474 80B4FE04 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01478 80B4FE08 03E00008 */  jr      $ra                        
/* 0147C 80B4FE0C 00000000 */  nop


