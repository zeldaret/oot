glabel func_808B1D44
/* 00264 808B1D44 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00268 808B1D48 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0026C 808B1D4C 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00270 808B1D50 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00274 808B1D54 15C10005 */  bne     $t6, $at, .L808B1D6C       
/* 00278 808B1D58 00000000 */  nop
/* 0027C 808B1D5C 0C22C746 */  jal     func_808B1D18              
/* 00280 808B1D60 00000000 */  nop
/* 00284 808B1D64 10000004 */  beq     $zero, $zero, .L808B1D78   
/* 00288 808B1D68 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808B1D6C:
/* 0028C 808B1D6C 0C22C73B */  jal     func_808B1CEC              
/* 00290 808B1D70 00000000 */  nop
/* 00294 808B1D74 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808B1D78:
/* 00298 808B1D78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0029C 808B1D7C 03E00008 */  jr      $ra                        
/* 002A0 808B1D80 00000000 */  nop


