glabel func_80AC313C
/* 0049C 80AC313C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004A0 80AC3140 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 004A4 80AC3144 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004A8 80AC3148 01C47021 */  addu    $t6, $t6, $a0              
/* 004AC 80AC314C 91CE1DEA */  lbu     $t6, 0x1DEA($t6)           ## 00011DEA
/* 004B0 80AC3150 15C00005 */  bne     $t6, $zero, .L80AC3168     
/* 004B4 80AC3154 00000000 */  nop
/* 004B8 80AC3158 0C042DC8 */  jal     func_8010B720              
/* 004BC 80AC315C 2405009D */  addiu   $a1, $zero, 0x009D         ## $a1 = 0000009D
/* 004C0 80AC3160 10000004 */  beq     $zero, $zero, .L80AC3174   
/* 004C4 80AC3164 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AC3168:
/* 004C8 80AC3168 0C042DC8 */  jal     func_8010B720              
/* 004CC 80AC316C 2405009C */  addiu   $a1, $zero, 0x009C         ## $a1 = 0000009C
/* 004D0 80AC3170 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AC3174:
/* 004D4 80AC3174 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004D8 80AC3178 03E00008 */  jr      $ra                        
/* 004DC 80AC317C 00000000 */  nop


