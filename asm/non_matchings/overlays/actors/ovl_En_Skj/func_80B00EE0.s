glabel func_80B00EE0
/* 02C30 80B00EE0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02C34 80B00EE4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02C38 80B00EE8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02C3C 80B00EEC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02C40 80B00EF0 0C042F6F */  jal     func_8010BDBC              
/* 02C44 80B00EF4 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 02C48 80B00EF8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 02C4C 80B00EFC 54410008 */  bnel    $v0, $at, .L80B00F20       
/* 02C50 80B00F00 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02C54 80B00F04 0C041AF2 */  jal     func_80106BC8              
/* 02C58 80B00F08 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 02C5C 80B00F0C 10400003 */  beq     $v0, $zero, .L80B00F1C     
/* 02C60 80B00F10 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02C64 80B00F14 0C2C03CB */  jal     func_80B00F2C              
/* 02C68 80B00F18 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80B00F1C:
/* 02C6C 80B00F1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B00F20:
/* 02C70 80B00F20 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02C74 80B00F24 03E00008 */  jr      $ra                        
/* 02C78 80B00F28 00000000 */  nop


