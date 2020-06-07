glabel func_80A4DA3C
/* 01D9C 80A4DA3C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01DA0 80A4DA40 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01DA4 80A4DA44 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01DA8 80A4DA48 848201C4 */  lh      $v0, 0x01C4($a0)           ## 000001C4
/* 01DAC 80A4DA4C 18400003 */  blez    $v0, .L80A4DA5C            
/* 01DB0 80A4DA50 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01DB4 80A4DA54 10000005 */  beq     $zero, $zero, .L80A4DA6C   
/* 01DB8 80A4DA58 A48E01C4 */  sh      $t6, 0x01C4($a0)           ## 000001C4
.L80A4DA5C:
/* 01DBC 80A4DA5C 908F0160 */  lbu     $t7, 0x0160($a0)           ## 00000160
/* 01DC0 80A4DA60 31F8FFFD */  andi    $t8, $t7, 0xFFFD           ## $t8 = 00000000
/* 01DC4 80A4DA64 0C293578 */  jal     func_80A4D5E0              
/* 01DC8 80A4DA68 A0980160 */  sb      $t8, 0x0160($a0)           ## 00000160
.L80A4DA6C:
/* 01DCC 80A4DA6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01DD0 80A4DA70 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01DD4 80A4DA74 03E00008 */  jr      $ra                        
/* 01DD8 80A4DA78 00000000 */  nop
