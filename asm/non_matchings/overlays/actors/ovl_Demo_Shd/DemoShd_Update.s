glabel DemoShd_Update
/* 001C4 809913F4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001C8 809913F8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001CC 809913FC 8C990150 */  lw      $t9, 0x0150($a0)           ## 00000150
/* 001D0 80991400 0320F809 */  jalr    $ra, $t9                   
/* 001D4 80991404 00000000 */  nop
/* 001D8 80991408 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001DC 8099140C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001E0 80991410 03E00008 */  jr      $ra                        
/* 001E4 80991414 00000000 */  nop
