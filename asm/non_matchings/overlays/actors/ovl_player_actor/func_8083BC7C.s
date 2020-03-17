glabel func_8083BC7C
/* 09A6C 8083BC7C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 09A70 8083BC80 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 09A74 8083BC84 908E0846 */  lbu     $t6, 0x0846($a0)           ## 00000846
/* 09A78 8083BC88 3C198085 */  lui     $t9, %hi(D_808535E4)       ## $t9 = 80850000
/* 09A7C 8083BC8C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 09A80 8083BC90 008E7821 */  addu    $t7, $a0, $t6              
/* 09A84 8083BC94 81F8084B */  lb      $t8, 0x084B($t7)           ## 0000084B
/* 09A88 8083BC98 17000009 */  bne     $t8, $zero, .L8083BCC0     
/* 09A8C 8083BC9C 00000000 */  nop
/* 09A90 8083BCA0 8F3935E4 */  lw      $t9, %lo(D_808535E4)($t9)  
/* 09A94 8083BCA4 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 09A98 8083BCA8 13210005 */  beq     $t9, $at, .L8083BCC0       
/* 09A9C 8083BCAC 00000000 */  nop
/* 09AA0 8083BCB0 0C20EF01 */  jal     func_8083BC04              
/* 09AA4 8083BCB4 00000000 */  nop
/* 09AA8 8083BCB8 10000001 */  beq     $zero, $zero, .L8083BCC0   
/* 09AAC 8083BCBC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8083BCC0:
/* 09AB0 8083BCC0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 09AB4 8083BCC4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 09AB8 8083BCC8 03E00008 */  jr      $ra                        
/* 09ABC 8083BCCC 00000000 */  nop


