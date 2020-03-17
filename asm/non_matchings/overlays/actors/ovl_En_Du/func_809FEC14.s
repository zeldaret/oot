glabel func_809FEC14
/* 00FE4 809FEC14 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00FE8 809FEC18 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00FEC 809FEC1C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00FF0 809FEC20 848E01F4 */  lh      $t6, 0x01F4($a0)           ## 000001F4
/* 00FF4 809FEC24 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00FF8 809FEC28 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00FFC 809FEC2C 15C1000C */  bne     $t6, $at, .L809FEC60       
/* 01000 809FEC30 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01004 809FEC34 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 01008 809FEC38 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 0100C 809FEC3C 0C00B7D5 */  jal     func_8002DF54              
/* 01010 809FEC40 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 01014 809FEC44 3C0580A0 */  lui     $a1, %hi(func_809FEC70)    ## $a1 = 80A00000
/* 01018 809FEC48 24A5EC70 */  addiu   $a1, $a1, %lo(func_809FEC70) ## $a1 = 809FEC70
/* 0101C 809FEC4C 0C27F70C */  jal     func_809FDC30              
/* 01020 809FEC50 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01024 809FEC54 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01028 809FEC58 0C27FB1C */  jal     func_809FEC70              
/* 0102C 809FEC5C 8FA5001C */  lw      $a1, 0x001C($sp)           
.L809FEC60:
/* 01030 809FEC60 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01034 809FEC64 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01038 809FEC68 03E00008 */  jr      $ra                        
/* 0103C 809FEC6C 00000000 */  nop


