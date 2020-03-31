glabel BgYdanMaruta_Draw
/* 0054C 808BF28C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00550 808BF290 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00554 808BF294 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00558 808BF298 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 0055C 808BF29C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00560 808BF2A0 15C00007 */  bne     $t6, $zero, .L808BF2C0     
/* 00564 808BF2A4 00000000 */  nop
/* 00568 808BF2A8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0056C 808BF2AC 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00570 808BF2B0 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 00574 808BF2B4 24A58D88 */  addiu   $a1, $a1, 0x8D88           ## $a1 = 06008D88
/* 00578 808BF2B8 10000005 */  beq     $zero, $zero, .L808BF2D0   
/* 0057C 808BF2BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808BF2C0:
/* 00580 808BF2C0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00584 808BF2C4 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 00588 808BF2C8 24A56570 */  addiu   $a1, $a1, 0x6570           ## $a1 = 06006570
/* 0058C 808BF2CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808BF2D0:
/* 00590 808BF2D0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00594 808BF2D4 03E00008 */  jr      $ra                        
/* 00598 808BF2D8 00000000 */  nop
/* 0059C 808BF2DC 00000000 */  nop

