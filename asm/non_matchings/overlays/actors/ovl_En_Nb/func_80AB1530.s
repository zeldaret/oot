.late_rodata
glabel D_80AB5204
 .word 0xC61C4000

.text
glabel func_80AB1530
/* 007A0 80AB1530 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 007A4 80AB1534 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 007A8 80AB1538 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 007AC 80AB153C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 007B0 80AB1540 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 007B4 80AB1544 24A59694 */  addiu   $a1, $a1, 0x9694           ## $a1 = 06009694
/* 007B8 80AB1548 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 007BC 80AB154C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 007C0 80AB1550 0C2AC528 */  jal     func_80AB14A0              
/* 007C4 80AB1554 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 007C8 80AB1558 3C0180AB */  lui     $at, %hi(D_80AB5204)       ## $at = 80AB0000
/* 007CC 80AB155C C4245204 */  lwc1    $f4, %lo(D_80AB5204)($at)  
/* 007D0 80AB1560 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 007D4 80AB1564 E5C400BC */  swc1    $f4, 0x00BC($t6)           ## 000000BC
/* 007D8 80AB1568 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 007DC 80AB156C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 007E0 80AB1570 03E00008 */  jr      $ra                        
/* 007E4 80AB1574 00000000 */  nop
