glabel func_808BA274
/* 00374 808BA274 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00378 808BA278 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0037C 808BA27C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00380 808BA280 3C01808C */  lui     $at, %hi(D_808BAD5C)       ## $at = 808C0000
/* 00384 808BA284 C424AD5C */  lwc1    $f4, %lo(D_808BAD5C)($at)  
/* 00388 808BA288 C480014C */  lwc1    $f0, 0x014C($a0)           ## 0000014C
/* 0038C 808BA28C 3C01808C */  lui     $at, %hi(D_808BAD60)       ## $at = 808C0000
/* 00390 808BA290 4600203C */  c.lt.s  $f4, $f0                   
/* 00394 808BA294 00000000 */  nop
/* 00398 808BA298 45020006 */  bc1fl   .L808BA2B4                 
/* 0039C 808BA29C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 003A0 808BA2A0 C426AD60 */  lwc1    $f6, %lo(D_808BAD60)($at)  
/* 003A4 808BA2A4 46060201 */  sub.s   $f8, $f0, $f6              
/* 003A8 808BA2A8 10000004 */  beq     $zero, $zero, .L808BA2BC   
/* 003AC 808BA2AC E488014C */  swc1    $f8, 0x014C($a0)           ## 0000014C
/* 003B0 808BA2B0 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
.L808BA2B4:
/* 003B4 808BA2B4 0C00B55C */  jal     Actor_Kill
              
/* 003B8 808BA2B8 E48A014C */  swc1    $f10, 0x014C($a0)          ## 0000014C
.L808BA2BC:
/* 003BC 808BA2BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003C0 808BA2C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003C4 808BA2C4 03E00008 */  jr      $ra                        
/* 003C8 808BA2C8 00000000 */  nop


