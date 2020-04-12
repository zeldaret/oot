glabel func_8096B768
/* 01C98 8096B768 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01C9C 8096B76C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01CA0 8096B770 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01CA4 8096B774 0C25AD4A */  jal     func_8096B528              
/* 01CA8 8096B778 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01CAC 8096B77C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01CB0 8096B780 0C25A6F1 */  jal     func_80969BC4              
/* 01CB4 8096B784 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01CB8 8096B788 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01CBC 8096B78C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01CC0 8096B790 03E00008 */  jr      $ra                        
/* 01CC4 8096B794 00000000 */  nop
