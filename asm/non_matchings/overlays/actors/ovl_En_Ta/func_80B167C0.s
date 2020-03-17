glabel func_80B167C0
/* 02D20 80B167C0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02D24 80B167C4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02D28 80B167C8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02D2C 80B167CC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02D30 80B167D0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02D34 80B167D4 AFA4001C */  sw      $a0, 0x001C($sp)           
/* 02D38 80B167D8 10400004 */  beq     $v0, $zero, .L80B167EC     
/* 02D3C 80B167DC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 02D40 80B167E0 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 02D44 80B167E4 0C02947A */  jal     func_800A51E8              
/* 02D48 80B167E8 8DC502E4 */  lw      $a1, 0x02E4($t6)           ## 000002E4
.L80B167EC:
/* 02D4C 80B167EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02D50 80B167F0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02D54 80B167F4 03E00008 */  jr      $ra                        
/* 02D58 80B167F8 00000000 */  nop


