glabel func_80B55368
/* 01FB8 80B55368 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01FBC 80B5536C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01FC0 80B55370 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01FC4 80B55374 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01FC8 80B55378 24A5A334 */  addiu   $a1, $a1, 0xA334           ## $a1 = 0600A334
/* 01FCC 80B5537C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01FD0 80B55380 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01FD4 80B55384 0C2D5385 */  jal     func_80B54E14              
/* 01FD8 80B55388 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 01FDC 80B5538C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01FE0 80B55390 0C2D4D5A */  jal     func_80B53568              
/* 01FE4 80B55394 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01FE8 80B55398 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 01FEC 80B5539C 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 01FF0 80B553A0 ADEE024C */  sw      $t6, 0x024C($t7)           ## 0000024C
/* 01FF4 80B553A4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01FF8 80B553A8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01FFC 80B553AC 03E00008 */  jr      $ra                        
/* 02000 80B553B0 00000000 */  nop


