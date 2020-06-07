glabel func_8097D71C
/* 000AC 8097D71C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000B0 8097D720 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000B4 8097D724 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 000B8 8097D728 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000BC 8097D72C 24050032 */  addiu   $a1, $zero, 0x0032         ## $a1 = 00000032
/* 000C0 8097D730 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 000C4 8097D734 0C02A800 */  jal     func_800AA000              
/* 000C8 8097D738 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
/* 000CC 8097D73C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000D0 8097D740 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000D4 8097D744 03E00008 */  jr      $ra                        
/* 000D8 8097D748 00000000 */  nop
