glabel func_809EE780
/* 00F10 809EE780 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00F14 809EE784 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00F18 809EE788 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F1C 809EE78C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00F20 809EE790 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00F24 809EE794 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00F28 809EE798 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00F2C 809EE79C 860E0294 */  lh      $t6, 0x0294($s0)           ## 00000294
/* 00F30 809EE7A0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00F34 809EE7A4 55C00012 */  bnel    $t6, $zero, .L809EE7F0     
/* 00F38 809EE7A8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00F3C 809EE7AC 0C0300E1 */  jal     func_800C0384              
/* 00F40 809EE7B0 860502A0 */  lh      $a1, 0x02A0($s0)           ## 000002A0
/* 00F44 809EE7B4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00F48 809EE7B8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00F4C 809EE7BC 0C0300C5 */  jal     func_800C0314              
/* 00F50 809EE7C0 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00F54 809EE7C4 240F405A */  addiu   $t7, $zero, 0x405A         ## $t7 = 0000405A
/* 00F58 809EE7C8 A60F010E */  sh      $t7, 0x010E($s0)           ## 0000010E
/* 00F5C 809EE7CC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00F60 809EE7D0 0C042DC8 */  jal     func_8010B720              
/* 00F64 809EE7D4 31E5FFFF */  andi    $a1, $t7, 0xFFFF           ## $a1 = 0000405A
/* 00F68 809EE7D8 3C19809F */  lui     $t9, %hi(func_809EE800)    ## $t9 = 809F0000
/* 00F6C 809EE7DC 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 00F70 809EE7E0 2739E800 */  addiu   $t9, $t9, %lo(func_809EE800) ## $t9 = 809EE800
/* 00F74 809EE7E4 A6180292 */  sh      $t8, 0x0292($s0)           ## 00000292
/* 00F78 809EE7E8 AE190280 */  sw      $t9, 0x0280($s0)           ## 00000280
/* 00F7C 809EE7EC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809EE7F0:
/* 00F80 809EE7F0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00F84 809EE7F4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00F88 809EE7F8 03E00008 */  jr      $ra                        
/* 00F8C 809EE7FC 00000000 */  nop
