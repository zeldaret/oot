glabel func_80B1DB98
/* 00218 80B1DB98 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0021C 80B1DB9C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00220 80B1DBA0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00224 80B1DBA4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00228 80B1DBA8 0C00CDE0 */  jal     func_80033780              
/* 0022C 80B1DBAC 3C06457A */  lui     $a2, 0x457A                ## $a2 = 457A0000
/* 00230 80B1DBB0 10400003 */  beq     $v0, $zero, .L80B1DBC0     
/* 00234 80B1DBB4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00238 80B1DBB8 10000004 */  beq     $zero, $zero, .L80B1DBCC   
/* 0023C 80B1DBBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B1DBC0:
/* 00240 80B1DBC0 0C00CDA1 */  jal     func_80033684              
/* 00244 80B1DBC4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00248 80B1DBC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B1DBCC:
/* 0024C 80B1DBCC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00250 80B1DBD0 03E00008 */  jr      $ra                        
/* 00254 80B1DBD4 00000000 */  nop


