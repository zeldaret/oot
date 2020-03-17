glabel func_808B314C
/* 001BC 808B314C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001C0 808B3150 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001C4 808B3154 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 001C8 808B3158 848E0168 */  lh      $t6, 0x0168($a0)           ## 00000168
/* 001CC 808B315C 5DC00004 */  bgtzl   $t6, .L808B3170            
/* 001D0 808B3160 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001D4 808B3164 0C22CC5F */  jal     func_808B317C              
/* 001D8 808B3168 00000000 */  nop
/* 001DC 808B316C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808B3170:
/* 001E0 808B3170 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001E4 808B3174 03E00008 */  jr      $ra                        
/* 001E8 808B3178 00000000 */  nop


