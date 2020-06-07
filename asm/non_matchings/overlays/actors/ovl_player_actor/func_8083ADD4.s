glabel func_8083ADD4
/* 08BC4 8083ADD4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 08BC8 8083ADD8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 08BCC 8083ADDC 90AE06AD */  lbu     $t6, 0x06AD($a1)           ## 000006AD
/* 08BD0 8083ADE0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 08BD4 8083ADE4 3C068085 */  lui     $a2, %hi(func_80852E14)    ## $a2 = 80850000
/* 08BD8 8083ADE8 15C10011 */  bne     $t6, $at, .L8083AE30       
/* 08BDC 8083ADEC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 08BE0 8083ADF0 24C62E14 */  addiu   $a2, $a2, %lo(func_80852E14) ## $a2 = 80852E14
/* 08BE4 8083ADF4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 08BE8 8083ADF8 0C20D716 */  jal     func_80835C58              
/* 08BEC 8083ADFC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 08BF0 8083AE00 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 08BF4 8083AE04 84AF046A */  lh      $t7, 0x046A($a1)           ## 0000046A
/* 08BF8 8083AE08 11E00005 */  beq     $t7, $zero, .L8083AE20     
/* 08BFC 8083AE0C 00000000 */  nop
/* 08C00 8083AE10 8CB8067C */  lw      $t8, 0x067C($a1)           ## 0000067C
/* 08C04 8083AE14 3C012000 */  lui     $at, 0x2000                ## $at = 20000000
/* 08C08 8083AE18 0301C825 */  or      $t9, $t8, $at              ## $t9 = 20000000
/* 08C0C 8083AE1C ACB9067C */  sw      $t9, 0x067C($a1)           ## 0000067C
.L8083AE20:
/* 08C10 8083AE20 0C20C8C6 */  jal     func_80832318              
/* 08C14 8083AE24 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 08C18 8083AE28 10000001 */  beq     $zero, $zero, .L8083AE30   
/* 08C1C 8083AE2C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8083AE30:
/* 08C20 8083AE30 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 08C24 8083AE34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 08C28 8083AE38 03E00008 */  jr      $ra                        
/* 08C2C 8083AE3C 00000000 */  nop
