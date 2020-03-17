glabel func_80B573C8
/* 04018 80B573C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0401C 80B573CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04020 80B573D0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 04024 80B573D4 0C042F6F */  jal     func_8010BDBC              
/* 04028 80B573D8 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 0402C 80B573DC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 04030 80B573E0 14410003 */  bne     $v0, $at, .L80B573F0       
/* 04034 80B573E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04038 80B573E8 10000002 */  beq     $zero, $zero, .L80B573F4   
/* 0403C 80B573EC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B573F0:
/* 04040 80B573F0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B573F4:
/* 04044 80B573F4 03E00008 */  jr      $ra                        
/* 04048 80B573F8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


