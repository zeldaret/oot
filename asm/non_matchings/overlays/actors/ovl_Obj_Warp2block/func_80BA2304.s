glabel func_80BA2304
/* 00514 80BA2304 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00518 80BA2308 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0051C 80BA230C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00520 80BA2310 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00524 80BA2314 8C990168 */  lw      $t9, 0x0168($a0)           ## 00000168
/* 00528 80BA2318 0320F809 */  jalr    $ra, $t9                   
/* 0052C 80BA231C 00000000 */  nop
/* 00530 80BA2320 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 00534 80BA2324 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 00538 80BA2328 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0053C 80BA232C 01EE7821 */  addu    $t7, $t7, $t6              
/* 00540 80BA2330 95EF04C4 */  lhu     $t7, 0x04C4($t7)           ## 000104C4
/* 00544 80BA2334 A48F0172 */  sh      $t7, 0x0172($a0)           ## 00000172
/* 00548 80BA2338 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0054C 80BA233C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00550 80BA2340 03E00008 */  jr      $ra                        
/* 00554 80BA2344 00000000 */  nop
