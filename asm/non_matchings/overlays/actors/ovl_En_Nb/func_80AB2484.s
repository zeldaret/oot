glabel func_80AB2484
/* 016F4 80AB2484 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 016F8 80AB2488 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 016FC 80AB248C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01700 80AB2490 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01704 80AB2494 24A58BD0 */  addiu   $a1, $a1, 0x8BD0           ## $a1 = 06008BD0
/* 01708 80AB2498 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0170C 80AB249C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01710 80AB24A0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01714 80AB24A4 0C2AC528 */  jal     func_80AB14A0              
/* 01718 80AB24A8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0171C 80AB24AC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01720 80AB24B0 240E000D */  addiu   $t6, $zero, 0x000D         ## $t6 = 0000000D
/* 01724 80AB24B4 AC8E0278 */  sw      $t6, 0x0278($a0)           ## 00000278
/* 01728 80AB24B8 A08000C8 */  sb      $zero, 0x00C8($a0)         ## 000000C8
/* 0172C 80AB24BC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01730 80AB24C0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01734 80AB24C4 03E00008 */  jr      $ra                        
/* 01738 80AB24C8 00000000 */  nop
