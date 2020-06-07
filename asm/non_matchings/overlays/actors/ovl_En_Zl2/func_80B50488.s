glabel func_80B50488
/* 01AF8 80B50488 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01AFC 80B5048C 10A0000D */  beq     $a1, $zero, .L80B504C4     
/* 01B00 80B50490 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01B04 80B50494 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01B08 80B50498 24A52750 */  addiu   $a1, $a1, 0x2750           ## $a1 = 06002750
/* 01B0C 80B5049C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01B10 80B504A0 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01B14 80B504A4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01B18 80B504A8 0C2D3F40 */  jal     func_80B4FD00              
/* 01B1C 80B504AC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01B20 80B504B0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01B24 80B504B4 240E0006 */  addiu   $t6, $zero, 0x0006         ## $t6 = 00000006
/* 01B28 80B504B8 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01B2C 80B504BC AC8E019C */  sw      $t6, 0x019C($a0)           ## 0000019C
/* 01B30 80B504C0 AC8F01A0 */  sw      $t7, 0x01A0($a0)           ## 000001A0
.L80B504C4:
/* 01B34 80B504C4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01B38 80B504C8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01B3C 80B504CC 03E00008 */  jr      $ra                        
/* 01B40 80B504D0 00000000 */  nop
