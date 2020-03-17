glabel func_80A96F94
/* 001E4 80A96F94 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 001E8 80A96F98 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001EC 80A96F9C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 001F0 80A96FA0 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 001F4 80A96FA4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001F8 80A96FA8 00A12021 */  addu    $a0, $a1, $at              
/* 001FC 80A96FAC 0C026062 */  jal     Object_IsLoaded
              
/* 00200 80A96FB0 80E50197 */  lb      $a1, 0x0197($a3)           ## 00000197
/* 00204 80A96FB4 14400003 */  bne     $v0, $zero, .L80A96FC4     
/* 00208 80A96FB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0020C 80A96FBC 10000002 */  beq     $zero, $zero, .L80A96FC8   
/* 00210 80A96FC0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A96FC4:
/* 00214 80A96FC4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A96FC8:
/* 00218 80A96FC8 03E00008 */  jr      $ra                        
/* 0021C 80A96FCC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


