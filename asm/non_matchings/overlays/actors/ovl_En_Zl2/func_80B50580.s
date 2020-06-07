glabel func_80B50580
/* 01BF0 80B50580 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01BF4 80B50584 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01BF8 80B50588 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01BFC 80B5058C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01C00 80B50590 24A50A50 */  addiu   $a1, $a1, 0x0A50           ## $a1 = 06000A50
/* 01C04 80B50594 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01C08 80B50598 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01C0C 80B5059C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01C10 80B505A0 0C2D3F40 */  jal     func_80B4FD00              
/* 01C14 80B505A4 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 01C18 80B505A8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01C1C 80B505AC 240E0009 */  addiu   $t6, $zero, 0x0009         ## $t6 = 00000009
/* 01C20 80B505B0 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01C24 80B505B4 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 01C28 80B505B8 AC8E019C */  sw      $t6, 0x019C($a0)           ## 0000019C
/* 01C2C 80B505BC AC8F01A0 */  sw      $t7, 0x01A0($a0)           ## 000001A0
/* 01C30 80B505C0 A09800C8 */  sb      $t8, 0x00C8($a0)           ## 000000C8
/* 01C34 80B505C4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01C38 80B505C8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01C3C 80B505CC 03E00008 */  jr      $ra                        
/* 01C40 80B505D0 00000000 */  nop
