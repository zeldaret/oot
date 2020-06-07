glabel func_809F9C3C
/* 019EC 809F9C3C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 019F0 809F9C40 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 019F4 809F9C44 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 019F8 809F9C48 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 019FC 809F9C4C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01A00 809F9C50 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01A04 809F9C54 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01A08 809F9C58 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01A0C 809F9C5C 90CE0114 */  lbu     $t6, 0x0114($a2)           ## 00000114
/* 01A10 809F9C60 55C0000C */  bnel    $t6, $zero, .L809F9C94     
/* 01A14 809F9C64 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01A18 809F9C68 90CF00AF */  lbu     $t7, 0x00AF($a2)           ## 000000AF
/* 01A1C 809F9C6C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01A20 809F9C70 15E00005 */  bne     $t7, $zero, .L809F9C88     
/* 01A24 809F9C74 00000000 */  nop
/* 01A28 809F9C78 0C27E6A0 */  jal     func_809F9A80              
/* 01A2C 809F9C7C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01A30 809F9C80 10000004 */  beq     $zero, $zero, .L809F9C94   
/* 01A34 809F9C84 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809F9C88:
/* 01A38 809F9C88 0C27E273 */  jal     func_809F89CC              
/* 01A3C 809F9C8C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01A40 809F9C90 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809F9C94:
/* 01A44 809F9C94 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01A48 809F9C98 03E00008 */  jr      $ra                        
/* 01A4C 809F9C9C 00000000 */  nop
