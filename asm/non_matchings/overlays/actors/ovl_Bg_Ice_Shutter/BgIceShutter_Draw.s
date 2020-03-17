glabel BgIceShutter_Draw
/* 003A0 80891E60 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003A4 80891E64 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 003A8 80891E68 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 003AC 80891E6C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003B0 80891E70 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 003B4 80891E74 0C00D498 */  jal     Draw_DListOpa
              
/* 003B8 80891E78 24A52740 */  addiu   $a1, $a1, 0x2740           ## $a1 = 06002740
/* 003BC 80891E7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003C0 80891E80 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003C4 80891E84 03E00008 */  jr      $ra                        
/* 003C8 80891E88 00000000 */  nop
/* 003CC 80891E8C 00000000 */  nop

