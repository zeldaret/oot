glabel func_80B51790
/* 02E00 80B51790 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02E04 80B51794 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02E08 80B51798 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02E0C 80B5179C 24A55F40 */  addiu   $a1, $a1, 0x5F40           ## $a1 = 06005F40
/* 02E10 80B517A0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02E14 80B517A4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02E18 80B517A8 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 02E1C 80B517AC 0C2D3F40 */  jal     func_80B4FD00              
/* 02E20 80B517B0 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 02E24 80B517B4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02E28 80B517B8 240E001D */  addiu   $t6, $zero, 0x001D         ## $t6 = 0000001D
/* 02E2C 80B517BC 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 02E30 80B517C0 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 02E34 80B517C4 AC8E019C */  sw      $t6, 0x019C($a0)           ## 0000019C
/* 02E38 80B517C8 AC8F01A0 */  sw      $t7, 0x01A0($a0)           ## 000001A0
/* 02E3C 80B517CC A09800C8 */  sb      $t8, 0x00C8($a0)           ## 000000C8
/* 02E40 80B517D0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02E44 80B517D4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02E48 80B517D8 03E00008 */  jr      $ra                        
/* 02E4C 80B517DC 00000000 */  nop


