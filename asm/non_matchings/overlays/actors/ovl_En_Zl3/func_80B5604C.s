glabel func_80B5604C
/* 02C9C 80B5604C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02CA0 80B56050 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02CA4 80B56054 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02CA8 80B56058 24A57664 */  addiu   $a1, $a1, 0x7664           ## $a1 = 06007664
/* 02CAC 80B5605C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02CB0 80B56060 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02CB4 80B56064 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 02CB8 80B56068 0C2D5385 */  jal     func_80B54E14              
/* 02CBC 80B5606C 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 02CC0 80B56070 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02CC4 80B56074 240E0011 */  addiu   $t6, $zero, 0x0011         ## $t6 = 00000011
/* 02CC8 80B56078 0C2D560B */  jal     func_80B5582C              
/* 02CCC 80B5607C AC8E024C */  sw      $t6, 0x024C($a0)           ## 0000024C
/* 02CD0 80B56080 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02CD4 80B56084 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02CD8 80B56088 03E00008 */  jr      $ra                        
/* 02CDC 80B5608C 00000000 */  nop
