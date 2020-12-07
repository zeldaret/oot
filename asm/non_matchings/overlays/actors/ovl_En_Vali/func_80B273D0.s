glabel func_80B273D0
/* 00D20 80B273D0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D24 80B273D4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D28 80B273D8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00D2C 80B273DC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00D30 80B273E0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00D34 80B273E4 0C02927F */  jal     SkelAnime_Update
              
/* 00D38 80B273E8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00D3C 80B273EC 1040000B */  beq     $v0, $zero, .L80B2741C     
/* 00D40 80B273F0 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00D44 80B273F4 90CE00AF */  lbu     $t6, 0x00AF($a2)           ## 000000AF
/* 00D48 80B273F8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00D4C 80B273FC 11C00005 */  beq     $t6, $zero, .L80B27414     
/* 00D50 80B27400 00000000 */  nop
/* 00D54 80B27404 0C2C9AEF */  jal     func_80B26BBC              
/* 00D58 80B27408 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00D5C 80B2740C 10000004 */  beq     $zero, $zero, .L80B27420   
/* 00D60 80B27410 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B27414:
/* 00D64 80B27414 0C2C9B14 */  jal     func_80B26C50              
/* 00D68 80B27418 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80B2741C:
/* 00D6C 80B2741C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B27420:
/* 00D70 80B27420 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D74 80B27424 03E00008 */  jr      $ra                        
/* 00D78 80B27428 00000000 */  nop
