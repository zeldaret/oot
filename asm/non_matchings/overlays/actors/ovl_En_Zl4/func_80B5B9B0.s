glabel func_80B5B9B0
/* 00200 80B5B9B0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00204 80B5B9B4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00208 80B5B9B8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0020C 80B5B9BC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00210 80B5B9C0 0C042F6F */  jal     func_8010BDBC              
/* 00214 80B5B9C4 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 00218 80B5B9C8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0021C 80B5B9CC 14410003 */  bne     $v0, $at, .L80B5B9DC       
/* 00220 80B5B9D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00224 80B5B9D4 10000002 */  beq     $zero, $zero, .L80B5B9E0   
/* 00228 80B5B9D8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B5B9DC:
/* 0022C 80B5B9DC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B5B9E0:
/* 00230 80B5B9E0 03E00008 */  jr      $ra                        
/* 00234 80B5B9E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
