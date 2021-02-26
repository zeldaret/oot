glabel func_80BA228C
/* 0049C 80BA228C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 004A0 80BA2290 00A11021 */  addu    $v0, $a1, $at              
/* 004A4 80BA2294 944E04C6 */  lhu     $t6, 0x04C6($v0)           ## 000004C6
/* 004A8 80BA2298 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 004AC 80BA229C 3C0F80BA */  lui     $t7, %hi(func_80BA2218)    ## $t7 = 80BA0000
/* 004B0 80BA22A0 15C10002 */  bne     $t6, $at, .L80BA22AC       
/* 004B4 80BA22A4 25EF2218 */  addiu   $t7, $t7, %lo(func_80BA2218) ## $t7 = 80BA2218
/* 004B8 80BA22A8 AC8F0168 */  sw      $t7, 0x0168($a0)           ## 00000168
.L80BA22AC:
/* 004BC 80BA22AC 945804C4 */  lhu     $t8, 0x04C4($v0)           ## 000004C4
/* 004C0 80BA22B0 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 004C4 80BA22B4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 004C8 80BA22B8 17010010 */  bne     $t8, $at, .L80BA22FC       
/* 004CC 80BA22BC 00000000 */  nop
/* 004D0 80BA22C0 94990172 */  lhu     $t9, 0x0172($a0)           ## 00000172
/* 004D4 80BA22C4 240100FE */  addiu   $at, $zero, 0x00FE         ## $at = 000000FE
/* 004D8 80BA22C8 2408006E */  addiu   $t0, $zero, 0x006E         ## $t0 = 0000006E
/* 004DC 80BA22CC 57210004 */  bnel    $t9, $at, .L80BA22E0       
/* 004E0 80BA22D0 8489016E */  lh      $t1, 0x016E($a0)           ## 0000016E
/* 004E4 80BA22D4 10000009 */  beq     $zero, $zero, .L80BA22FC   
/* 004E8 80BA22D8 A488016E */  sh      $t0, 0x016E($a0)           ## 0000016E
/* 004EC 80BA22DC 8489016E */  lh      $t1, 0x016E($a0)           ## 0000016E
.L80BA22E0:
/* 004F0 80BA22E0 252AFFFF */  addiu   $t2, $t1, 0xFFFF           ## $t2 = FFFFFFFF
/* 004F4 80BA22E4 A48A016E */  sh      $t2, 0x016E($a0)           ## 0000016E
/* 004F8 80BA22E8 848B016E */  lh      $t3, 0x016E($a0)           ## 0000016E
/* 004FC 80BA22EC 15600003 */  bne     $t3, $zero, .L80BA22FC     
/* 00500 80BA22F0 00000000 */  nop
/* 00504 80BA22F4 03E00008 */  jr      $ra                        
/* 00508 80BA22F8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80BA22FC:
/* 0050C 80BA22FC 03E00008 */  jr      $ra                        
/* 00510 80BA2300 00000000 */  nop
