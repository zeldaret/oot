glabel EnStream_Update
/* 00378 80B0BB18 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0037C 80B0BB1C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00380 80B0BB20 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00384 80B0BB24 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 00388 80B0BB28 0320F809 */  jalr    $ra, $t9                   
/* 0038C 80B0BB2C 00000000 */  nop
/* 00390 80B0BB30 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00394 80B0BB34 0C00BE52 */  jal     func_8002F948              
/* 00398 80B0BB38 240520DD */  addiu   $a1, $zero, 0x20DD         ## $a1 = 000020DD
/* 0039C 80B0BB3C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003A0 80B0BB40 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003A4 80B0BB44 03E00008 */  jr      $ra                        
/* 003A8 80B0BB48 00000000 */  nop
