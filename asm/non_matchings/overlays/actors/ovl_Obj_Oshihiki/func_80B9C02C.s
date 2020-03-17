glabel func_80B9C02C
/* 00EAC 80B9C02C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00EB0 80B9C030 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00EB4 80B9C034 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00EB8 80B9C038 948F0168 */  lhu     $t7, 0x0168($a0)           ## 00000168
/* 00EBC 80B9C03C 8499016A */  lh      $t9, 0x016A($a0)           ## 0000016A
/* 00EC0 80B9C040 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 00EC4 80B9C044 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00EC8 80B9C048 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00ECC 80B9C04C 1F200026 */  bgtz    $t9, .L80B9C0E8            
/* 00ED0 80B9C050 A4980168 */  sh      $t8, 0x0168($a0)           ## 00000168
/* 00ED4 80B9C054 C4800150 */  lwc1    $f0, 0x0150($a0)           ## 00000150
/* 00ED8 80B9C058 3C0180BA */  lui     $at, %hi(D_80B9CD10)       ## $at = 80BA0000
/* 00EDC 80B9C05C C424CD10 */  lwc1    $f4, %lo(D_80B9CD10)($at)  
/* 00EE0 80B9C060 46000005 */  abs.s   $f0, $f0                   
/* 00EE4 80B9C064 4600203C */  c.lt.s  $f4, $f0                   
/* 00EE8 80B9C068 00000000 */  nop
/* 00EEC 80B9C06C 4502001F */  bc1fl   .L80B9C0EC                 
/* 00EF0 80B9C070 8C6A0680 */  lw      $t2, 0x0680($v1)           ## 00000680
/* 00EF4 80B9C074 AFA30018 */  sw      $v1, 0x0018($sp)           
/* 00EF8 80B9C078 0C2E6C95 */  jal     func_80B9B254              
/* 00EFC 80B9C07C AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00F00 80B9C080 8FA30018 */  lw      $v1, 0x0018($sp)           
/* 00F04 80B9C084 10400011 */  beq     $v0, $zero, .L80B9C0CC     
/* 00F08 80B9C088 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00F0C 80B9C08C 84E50158 */  lh      $a1, 0x0158($a3)           ## 00000158
/* 00F10 80B9C090 8CE60150 */  lw      $a2, 0x0150($a3)           ## 00000150
/* 00F14 80B9C094 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00F18 80B9C098 AFA30018 */  sw      $v1, 0x0018($sp)           
/* 00F1C 80B9C09C 0C2E6F2E */  jal     func_80B9BCB8              
/* 00F20 80B9C0A0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00F24 80B9C0A4 8FA30018 */  lw      $v1, 0x0018($sp)           
/* 00F28 80B9C0A8 14400008 */  bne     $v0, $zero, .L80B9C0CC     
/* 00F2C 80B9C0AC 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00F30 80B9C0B0 C4E60150 */  lwc1    $f6, 0x0150($a3)           ## 00000150
/* 00F34 80B9C0B4 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00F38 80B9C0B8 E4E6017C */  swc1    $f6, 0x017C($a3)           ## 0000017C
/* 00F3C 80B9C0BC 0C2E70D0 */  jal     func_80B9C340              
/* 00F40 80B9C0C0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00F44 80B9C0C4 1000000F */  beq     $zero, $zero, .L80B9C104   
/* 00F48 80B9C0C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B9C0CC:
/* 00F4C 80B9C0CC 8C680680 */  lw      $t0, 0x0680($v1)           ## 00000680
/* 00F50 80B9C0D0 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 00F54 80B9C0D4 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00F58 80B9C0D8 01014824 */  and     $t1, $t0, $at              
/* 00F5C 80B9C0DC AC690680 */  sw      $t1, 0x0680($v1)           ## 00000680
/* 00F60 80B9C0E0 10000007 */  beq     $zero, $zero, .L80B9C100   
/* 00F64 80B9C0E4 E4E80150 */  swc1    $f8, 0x0150($a3)           ## 00000150
.L80B9C0E8:
/* 00F68 80B9C0E8 8C6A0680 */  lw      $t2, 0x0680($v1)           ## 00000680
.L80B9C0EC:
/* 00F6C 80B9C0EC 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00F70 80B9C0F0 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 00F74 80B9C0F4 01415824 */  and     $t3, $t2, $at              
/* 00F78 80B9C0F8 AC6B0680 */  sw      $t3, 0x0680($v1)           ## 00000680
/* 00F7C 80B9C0FC E4EA0150 */  swc1    $f10, 0x0150($a3)          ## 00000150
.L80B9C100:
/* 00F80 80B9C100 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B9C104:
/* 00F84 80B9C104 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00F88 80B9C108 03E00008 */  jr      $ra                        
/* 00F8C 80B9C10C 00000000 */  nop


