glabel BgSpot08Iceblock_Draw
/* 00CCC 808B162C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00CD0 808B1630 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CD4 808B1634 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00CD8 808B1638 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 00CDC 808B163C 3C0E0600 */  lui     $t6, 0x0600                ## $t6 = 06000000
/* 00CE0 808B1640 30420200 */  andi    $v0, $v0, 0x0200           ## $v0 = 00000000
/* 00CE4 808B1644 10400006 */  beq     $v0, $zero, .L808B1660     
/* 00CE8 808B1648 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00CEC 808B164C 24010200 */  addiu   $at, $zero, 0x0200         ## $at = 00000200
/* 00CF0 808B1650 10410006 */  beq     $v0, $at, .L808B166C       
/* 00CF4 808B1654 3C0F0600 */  lui     $t7, 0x0600                ## $t7 = 06000000
/* 00CF8 808B1658 10000006 */  beq     $zero, $zero, .L808B1674   
/* 00CFC 808B165C 00000000 */  nop
.L808B1660:
/* 00D00 808B1660 25CE2BD0 */  addiu   $t6, $t6, 0x2BD0           ## $t6 = 06002BD0
/* 00D04 808B1664 10000003 */  beq     $zero, $zero, .L808B1674   
/* 00D08 808B1668 AFAE001C */  sw      $t6, 0x001C($sp)           
.L808B166C:
/* 00D0C 808B166C 25EF0DE0 */  addiu   $t7, $t7, 0x0DE0           ## $t7 = 06000DE0
/* 00D10 808B1670 AFAF001C */  sw      $t7, 0x001C($sp)           
.L808B1674:
/* 00D14 808B1674 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 00D18 808B1678 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00D1C 808B167C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D20 808B1680 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00D24 808B1684 03E00008 */  jr      $ra                        
/* 00D28 808B1688 00000000 */  nop
/* 00D2C 808B168C 00000000 */  nop
