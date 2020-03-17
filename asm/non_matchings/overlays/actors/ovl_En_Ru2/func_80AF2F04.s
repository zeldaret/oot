glabel func_80AF2F04
/* 009B4 80AF2F04 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 009B8 80AF2F08 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 009BC 80AF2F0C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 009C0 80AF2F10 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 009C4 80AF2F14 0C2BC9F4 */  jal     func_80AF27D0              
/* 009C8 80AF2F18 24070003 */  addiu   $a3, $zero, 0x0003         ## $a3 = 00000003
/* 009CC 80AF2F1C 1040000A */  beq     $v0, $zero, .L80AF2F48     
/* 009D0 80AF2F20 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 009D4 80AF2F24 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 009D8 80AF2F28 240E0008 */  addiu   $t6, $zero, 0x0008         ## $t6 = 00000008
/* 009DC 80AF2F2C 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 009E0 80AF2F30 AC8E02A8 */  sw      $t6, 0x02A8($a0)           ## 000002A8
/* 009E4 80AF2F34 AC8F02AC */  sw      $t7, 0x02AC($a0)           ## 000002AC
/* 009E8 80AF2F38 AC8002B4 */  sw      $zero, 0x02B4($a0)         ## 000002B4
/* 009EC 80AF2F3C A08000C8 */  sb      $zero, 0x00C8($a0)         ## 000000C8
/* 009F0 80AF2F40 0C2BCB99 */  jal     func_80AF2E64              
/* 009F4 80AF2F44 E48402B0 */  swc1    $f4, 0x02B0($a0)           ## 000002B0
.L80AF2F48:
/* 009F8 80AF2F48 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 009FC 80AF2F4C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A00 80AF2F50 03E00008 */  jr      $ra                        
/* 00A04 80AF2F54 00000000 */  nop


