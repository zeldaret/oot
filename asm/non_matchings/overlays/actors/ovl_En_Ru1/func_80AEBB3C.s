glabel func_80AEBB3C
/* 00F2C 80AEBB3C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00F30 80AEBB40 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00F34 80AEBB44 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00F38 80AEBB48 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00F3C 80AEBB4C 0C0295B2 */  jal     func_800A56C8              
/* 00F40 80AEBB50 3C0540A0 */  lui     $a1, 0x40A0                ## $a1 = 40A00000
/* 00F44 80AEBB54 10400004 */  beq     $v0, $zero, .L80AEBB68     
/* 00F48 80AEBB58 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00F4C 80AEBB5C 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 00F50 80AEBB60 0C01E245 */  jal     func_80078914              
/* 00F54 80AEBB64 24050863 */  addiu   $a1, $zero, 0x0863         ## $a1 = 00000863
.L80AEBB68:
/* 00F58 80AEBB68 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F5C 80AEBB6C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F60 80AEBB70 03E00008 */  jr      $ra                        
/* 00F64 80AEBB74 00000000 */  nop
