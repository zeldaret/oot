glabel func_808521B8
/* 1FFA8 808521B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1FFAC 808521BC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1FFB0 808521C0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 1FFB4 808521C4 10C00003 */  beq     $a2, $zero, .L808521D4     
/* 1FFB8 808521C8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 1FFBC 808521CC 0C21482F */  jal     func_808520BC              
/* 1FFC0 808521D0 00000000 */  nop
.L808521D4:
/* 1FFC4 808521D4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 1FFC8 808521D8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 1FFCC 808521DC 0C028EF0 */  jal     func_800A3BC0              
/* 1FFD0 808521E0 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 1FFD4 808521E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1FFD8 808521E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1FFDC 808521EC 03E00008 */  jr      $ra                        
/* 1FFE0 808521F0 00000000 */  nop
