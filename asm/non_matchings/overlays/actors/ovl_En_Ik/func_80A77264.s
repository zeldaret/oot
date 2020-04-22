glabel func_80A77264
/* 02F54 80A77264 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02F58 80A77268 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02F5C 80A7726C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02F60 80A77270 10C00008 */  beq     $a2, $zero, .L80A77294     
/* 02F64 80A77274 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02F68 80A77278 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 02F6C 80A7727C 0C29DC27 */  jal     func_80A7709C              
/* 02F70 80A77280 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 02F74 80A77284 10400003 */  beq     $v0, $zero, .L80A77294     
/* 02F78 80A77288 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02F7C 80A7728C 0C29E058 */  jal     func_80A78160              
/* 02F80 80A77290 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80A77294:
/* 02F84 80A77294 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02F88 80A77298 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02F8C 80A7729C 03E00008 */  jr      $ra                        
/* 02F90 80A772A0 00000000 */  nop
