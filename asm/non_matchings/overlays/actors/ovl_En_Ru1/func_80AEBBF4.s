glabel func_80AEBBF4
/* 00FE4 80AEBBF4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00FE8 80AEBBF8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00FEC 80AEBBFC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00FF0 80AEBC00 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00FF4 80AEBC04 0C0295B2 */  jal     func_800A56C8              
/* 00FF8 80AEBC08 3C054100 */  lui     $a1, 0x4100                ## $a1 = 41000000
/* 00FFC 80AEBC0C 10400004 */  beq     $v0, $zero, .L80AEBC20     
/* 01000 80AEBC10 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01004 80AEBC14 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 01008 80AEBC18 0C01E245 */  jal     func_80078914              
/* 0100C 80AEBC1C 24050873 */  addiu   $a1, $zero, 0x0873         ## $a1 = 00000873
.L80AEBC20:
/* 01010 80AEBC20 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01014 80AEBC24 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01018 80AEBC28 03E00008 */  jr      $ra                        
/* 0101C 80AEBC2C 00000000 */  nop
