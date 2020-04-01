glabel func_80B9E788
/* 01578 80B9E788 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0157C 80B9E78C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01580 80B9E790 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01584 80B9E794 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01588 80B9E798 3C050500 */  lui     $a1, 0x0500                ## $a1 = 05000000
/* 0158C 80B9E79C 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 01590 80B9E7A0 24A55AD0 */  addiu   $a1, $a1, 0x5AD0           ## $a1 = 05005AD0
/* 01594 80B9E7A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01598 80B9E7A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0159C 80B9E7AC 03E00008 */  jr      $ra                        
/* 015A0 80B9E7B0 00000000 */  nop


