glabel func_80B5042C
/* 01A9C 80B5042C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01AA0 80B50430 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01AA4 80B50434 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01AA8 80B50438 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01AAC 80B5043C 24A522D0 */  addiu   $a1, $a1, 0x22D0           ## $a1 = 060022D0
/* 01AB0 80B50440 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01AB4 80B50444 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01AB8 80B50448 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01ABC 80B5044C 0C2D3F40 */  jal     func_80B4FD00              
/* 01AC0 80B50450 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 01AC4 80B50454 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01AC8 80B50458 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01ACC 80B5045C 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 01AD0 80B50460 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01AD4 80B50464 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 01AD8 80B50468 AC8E019C */  sw      $t6, 0x019C($a0)           ## 0000019C
/* 01ADC 80B5046C AC8F01A0 */  sw      $t7, 0x01A0($a0)           ## 000001A0
/* 01AE0 80B50470 A09800C8 */  sb      $t8, 0x00C8($a0)           ## 000000C8
/* 01AE4 80B50474 E484027C */  swc1    $f4, 0x027C($a0)           ## 0000027C
/* 01AE8 80B50478 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01AEC 80B5047C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01AF0 80B50480 03E00008 */  jr      $ra                        
/* 01AF4 80B50484 00000000 */  nop


