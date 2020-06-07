glabel func_808BFC50
/* 00840 808BFC50 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00844 808BFC54 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00848 808BFC58 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0084C 808BFC5C 8482016A */  lh      $v0, 0x016A($a0)           ## 0000016A
/* 00850 808BFC60 10400003 */  beq     $v0, $zero, .L808BFC70     
/* 00854 808BFC64 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00858 808BFC68 A48E016A */  sh      $t6, 0x016A($a0)           ## 0000016A
/* 0085C 808BFC6C 8482016A */  lh      $v0, 0x016A($a0)           ## 0000016A
.L808BFC70:
/* 00860 808BFC70 54400004 */  bnel    $v0, $zero, .L808BFC84     
/* 00864 808BFC74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00868 808BFC78 0C00B55C */  jal     Actor_Kill
              
/* 0086C 808BFC7C 00000000 */  nop
/* 00870 808BFC80 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808BFC84:
/* 00874 808BFC84 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00878 808BFC88 03E00008 */  jr      $ra                        
/* 0087C 808BFC8C 00000000 */  nop
