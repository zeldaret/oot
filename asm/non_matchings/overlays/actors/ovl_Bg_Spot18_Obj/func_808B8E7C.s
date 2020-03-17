glabel func_808B8E7C
/* 0056C 808B8E7C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00570 808B8E80 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00574 808B8E84 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00578 808B8E88 3C01808C */  lui     $at, %hi(D_808B9284)       ## $at = 808C0000
/* 0057C 808B8E8C C4269284 */  lwc1    $f6, %lo(D_808B9284)($at)  
/* 00580 808B8E90 C4840150 */  lwc1    $f4, 0x0150($a0)           ## 00000150
/* 00584 808B8E94 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 00588 808B8E98 4606203C */  c.lt.s  $f4, $f6                   
/* 0058C 808B8E9C 00000000 */  nop
/* 00590 808B8EA0 45020009 */  bc1fl   .L808B8EC8                 
/* 00594 808B8EA4 A48F0168 */  sh      $t7, 0x0168($a0)           ## 00000168
/* 00598 808B8EA8 848E0168 */  lh      $t6, 0x0168($a0)           ## 00000168
/* 0059C 808B8EAC 1DC00006 */  bgtz    $t6, .L808B8EC8            
/* 005A0 808B8EB0 00000000 */  nop
/* 005A4 808B8EB4 0C22E3B8 */  jal     func_808B8EE0              
/* 005A8 808B8EB8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 005AC 808B8EBC 10000002 */  beq     $zero, $zero, .L808B8EC8   
/* 005B0 808B8EC0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 005B4 808B8EC4 A48F0168 */  sh      $t7, 0x0168($a0)           ## 00000168
.L808B8EC8:
/* 005B8 808B8EC8 0C22E388 */  jal     func_808B8E20              
/* 005BC 808B8ECC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 005C0 808B8ED0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005C4 808B8ED4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005C8 808B8ED8 03E00008 */  jr      $ra                        
/* 005CC 808B8EDC 00000000 */  nop


