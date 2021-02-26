glabel ObjWarp2block_Update
/* 008C8 80BA26B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008CC 80BA26BC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008D0 80BA26C0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 008D4 80BA26C4 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 008D8 80BA26C8 0320F809 */  jalr    $ra, $t9                   
/* 008DC 80BA26CC 00000000 */  nop
/* 008E0 80BA26D0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 008E4 80BA26D4 8482016C */  lh      $v0, 0x016C($a0)           ## 0000016C
/* 008E8 80BA26D8 18400002 */  blez    $v0, .L80BA26E4            
/* 008EC 80BA26DC 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 008F0 80BA26E0 A48E016C */  sh      $t6, 0x016C($a0)           ## 0000016C
.L80BA26E4:
/* 008F4 80BA26E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008F8 80BA26E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008FC 80BA26EC 03E00008 */  jr      $ra                        
/* 00900 80BA26F0 00000000 */  nop
