glabel func_80851294
/* 1F084 80851294 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1F088 80851298 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1F08C 8085129C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 1F090 808512A0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 1F094 808512A4 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1F098 808512A8 0C028EF0 */  jal     func_800A3BC0              
/* 1F09C 808512AC 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 1F0A0 808512B0 10400007 */  beq     $v0, $zero, .L808512D0     
/* 1F0A4 808512B4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 1F0A8 808512B8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 1F0AC 808512BC 0C20CC4F */  jal     func_8083313C              
/* 1F0B0 808512C0 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 1F0B4 808512C4 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 1F0B8 808512C8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 1F0BC 808512CC A5EE0850 */  sh      $t6, 0x0850($t7)           ## 00000850
.L808512D0:
/* 1F0C0 808512D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1F0C4 808512D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1F0C8 808512D8 03E00008 */  jr      $ra                        
/* 1F0CC 808512DC 00000000 */  nop
