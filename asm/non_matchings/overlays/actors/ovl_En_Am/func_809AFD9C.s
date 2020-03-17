glabel func_809AFD9C
/* 01E7C 809AFD9C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01E80 809AFDA0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 01E84 809AFDA4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01E88 809AFDA8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01E8C 809AFDAC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01E90 809AFDB0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01E94 809AFDB4 14A10007 */  bne     $a1, $at, .L809AFDD4       
/* 01E98 809AFDB8 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 01E9C 809AFDBC 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01EA0 809AFDC0 848E0264 */  lh      $t6, 0x0264($a0)           ## 00000264
/* 01EA4 809AFDC4 51C00004 */  beql    $t6, $zero, .L809AFDD8     
/* 01EA8 809AFDC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01EAC 809AFDCC 0C26BDF3 */  jal     func_809AF7CC              
/* 01EB0 809AFDD0 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
.L809AFDD4:
/* 01EB4 809AFDD4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809AFDD8:
/* 01EB8 809AFDD8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01EBC 809AFDDC 03E00008 */  jr      $ra                        
/* 01EC0 809AFDE0 00000000 */  nop


