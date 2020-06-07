glabel func_809FC998
/* 007C8 809FC998 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007CC 809FC99C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007D0 809FC9A0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 007D4 809FC9A4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 007D8 809FC9A8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 007DC 809FC9AC 24840032 */  addiu   $a0, $a0, 0x0032           ## $a0 = 00000032
/* 007E0 809FC9B0 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 007E4 809FC9B4 24060700 */  addiu   $a2, $zero, 0x0700         ## $a2 = 00000700
/* 007E8 809FC9B8 10400004 */  beq     $v0, $zero, .L809FC9CC     
/* 007EC 809FC9BC 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 007F0 809FC9C0 3C0E80A0 */  lui     $t6, %hi(func_809FC5D0)    ## $t6 = 80A00000
/* 007F4 809FC9C4 25CEC5D0 */  addiu   $t6, $t6, %lo(func_809FC5D0) ## $t6 = 809FC5D0
/* 007F8 809FC9C8 ADEE01D4 */  sw      $t6, 0x01D4($t7)           ## 000001D4
.L809FC9CC:
/* 007FC 809FC9CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00800 809FC9D0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00804 809FC9D4 03E00008 */  jr      $ra                        
/* 00808 809FC9D8 00000000 */  nop
