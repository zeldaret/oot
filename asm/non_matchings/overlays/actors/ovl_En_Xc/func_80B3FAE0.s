glabel func_80B3FAE0
/* 03900 80B3FAE0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03904 80B3FAE4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03908 80B3FAE8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0390C 80B3FAEC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 03910 80B3FAF0 0C0295B2 */  jal     func_800A56C8              
/* 03914 80B3FAF4 3C054218 */  lui     $a1, 0x4218                ## $a1 = 42180000
/* 03918 80B3FAF8 10400006 */  beq     $v0, $zero, .L80B3FB14     
/* 0391C 80B3FAFC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03920 80B3FB00 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 03924 80B3FB04 0C01E245 */  jal     func_80078914              
/* 03928 80B3FB08 24056874 */  addiu   $a1, $zero, 0x6874         ## $a1 = 00006874
/* 0392C 80B3FB0C 0C2CFE8B */  jal     func_80B3FA2C              
/* 03930 80B3FB10 00000000 */  nop
.L80B3FB14:
/* 03934 80B3FB14 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03938 80B3FB18 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0393C 80B3FB1C 03E00008 */  jr      $ra                        
/* 03940 80B3FB20 00000000 */  nop


