glabel func_8084BEE4
/* 19CD4 8084BEE4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 19CD8 8084BEE8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 19CDC 8084BEEC 808E084F */  lb      $t6, 0x084F($a0)           ## 0000084F
/* 19CE0 8084BEF0 2402080A */  addiu   $v0, $zero, 0x080A         ## $v0 = 0000080A
/* 19CE4 8084BEF4 11C00003 */  beq     $t6, $zero, .L8084BF04     
/* 19CE8 8084BEF8 00000000 */  nop
/* 19CEC 8084BEFC 10000001 */  beq     $zero, $zero, .L8084BF04   
/* 19CF0 8084BF00 2402080C */  addiu   $v0, $zero, 0x080C         ## $v0 = 0000080C
.L8084BF04:
/* 19CF4 8084BF04 0C00BDF7 */  jal     func_8002F7DC              
/* 19CF8 8084BF08 3045FFFF */  andi    $a1, $v0, 0xFFFF           ## $a1 = 0000080C
/* 19CFC 8084BF0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 19D00 8084BF10 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 19D04 8084BF14 03E00008 */  jr      $ra                        
/* 19D08 8084BF18 00000000 */  nop


