glabel BgSpot12Saku_Update
/* 00398 808B37B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0039C 808B37BC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003A0 808B37C0 84820168 */  lh      $v0, 0x0168($a0)           ## 00000168
/* 003A4 808B37C4 18400002 */  blez    $v0, .L808B37D0            
/* 003A8 808B37C8 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 003AC 808B37CC A48E0168 */  sh      $t6, 0x0168($a0)           ## 00000168
.L808B37D0:
/* 003B0 808B37D0 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 003B4 808B37D4 0320F809 */  jalr    $ra, $t9                   
/* 003B8 808B37D8 00000000 */  nop
/* 003BC 808B37DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003C0 808B37E0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003C4 808B37E4 03E00008 */  jr      $ra                        
/* 003C8 808B37E8 00000000 */  nop


