glabel func_80AEFE38
/* 05228 80AEFE38 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0522C 80AEFE3C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 05230 80AEFE40 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 05234 80AEFE44 0C042F6F */  jal     func_8010BDBC              
/* 05238 80AEFE48 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 0523C 80AEFE4C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 05240 80AEFE50 14410007 */  bne     $v0, $at, .L80AEFE70       
/* 05244 80AEFE54 8FA30018 */  lw      $v1, 0x0018($sp)           
/* 05248 80AEFE58 8C6E0004 */  lw      $t6, 0x0004($v1)           ## 00000004
/* 0524C 80AEFE5C 2401FFF6 */  addiu   $at, $zero, 0xFFF6         ## $at = FFFFFFF6
/* 05250 80AEFE60 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 05254 80AEFE64 01C17824 */  and     $t7, $t6, $at              
/* 05258 80AEFE68 10000002 */  beq     $zero, $zero, .L80AEFE74   
/* 0525C 80AEFE6C AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
.L80AEFE70:
/* 05260 80AEFE70 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AEFE74:
/* 05264 80AEFE74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 05268 80AEFE78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0526C 80AEFE7C 03E00008 */  jr      $ra                        
/* 05270 80AEFE80 00000000 */  nop
