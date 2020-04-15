glabel func_80A444FC
/* 017CC 80A444FC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 017D0 80A44500 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 017D4 80A44504 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 017D8 80A44508 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 017DC 80A4450C 0C042F6F */  jal     func_8010BDBC              
/* 017E0 80A44510 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 017E4 80A44514 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 017E8 80A44518 14410003 */  bne     $v0, $at, .L80A44528       
/* 017EC 80A4451C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 017F0 80A44520 10000002 */  beq     $zero, $zero, .L80A4452C   
/* 017F4 80A44524 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A44528:
/* 017F8 80A44528 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A4452C:
/* 017FC 80A4452C 03E00008 */  jr      $ra                        
/* 01800 80A44530 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
