glabel func_80AC30B8
/* 00418 80AC30B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0041C 80AC30BC 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 00420 80AC30C0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00424 80AC30C4 01C47021 */  addu    $t6, $t6, $a0              
/* 00428 80AC30C8 91CE1DEA */  lbu     $t6, 0x1DEA($t6)           ## 00011DEA
/* 0042C 80AC30CC 15C00005 */  bne     $t6, $zero, .L80AC30E4     
/* 00430 80AC30D0 00000000 */  nop
/* 00434 80AC30D4 0C042DC8 */  jal     func_8010B720              
/* 00438 80AC30D8 24055046 */  addiu   $a1, $zero, 0x5046         ## $a1 = 00005046
/* 0043C 80AC30DC 10000004 */  beq     $zero, $zero, .L80AC30F0   
/* 00440 80AC30E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AC30E4:
/* 00444 80AC30E4 0C042DC8 */  jal     func_8010B720              
/* 00448 80AC30E8 2405504E */  addiu   $a1, $zero, 0x504E         ## $a1 = 0000504E
/* 0044C 80AC30EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AC30F0:
/* 00450 80AC30F0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00454 80AC30F4 03E00008 */  jr      $ra                        
/* 00458 80AC30F8 00000000 */  nop
