glabel func_80AA8E88
/* 02E38 80AA8E88 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02E3C 80AA8E8C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02E40 80AA8E90 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02E44 80AA8E94 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 02E48 80AA8E98 848E008A */  lh      $t6, 0x008A($a0)           ## 0000008A
/* 02E4C 80AA8E9C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02E50 80AA8EA0 2604018C */  addiu   $a0, $s0, 0x018C           ## $a0 = 0000018C
/* 02E54 80AA8EA4 01CF1023 */  subu    $v0, $t6, $t7              
/* 02E58 80AA8EA8 00021400 */  sll     $v0, $v0, 16               
/* 02E5C 80AA8EAC 00021403 */  sra     $v0, $v0, 16               
/* 02E60 80AA8EB0 04400003 */  bltz    $v0, .L80AA8EC0            
/* 02E64 80AA8EB4 00021823 */  subu    $v1, $zero, $v0            
/* 02E68 80AA8EB8 10000001 */  beq     $zero, $zero, .L80AA8EC0   
/* 02E6C 80AA8EBC 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80AA8EC0:
/* 02E70 80AA8EC0 28614001 */  slti    $at, $v1, 0x4001           
/* 02E74 80AA8EC4 1020000A */  beq     $at, $zero, .L80AA8EF0     
/* 02E78 80AA8EC8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02E7C 80AA8ECC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02E80 80AA8ED0 24A51950 */  addiu   $a1, $a1, 0x1950           ## $a1 = 06001950
/* 02E84 80AA8ED4 2604018C */  addiu   $a0, $s0, 0x018C           ## $a0 = 0000018C
/* 02E88 80AA8ED8 0C029490 */  jal     func_800A5240              
/* 02E8C 80AA8EDC 3C06C080 */  lui     $a2, 0xC080                ## $a2 = C0800000
/* 02E90 80AA8EE0 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 02E94 80AA8EE4 44812000 */  mtc1    $at, $f4                   ## $f4 = -8.00
/* 02E98 80AA8EE8 10000008 */  beq     $zero, $zero, .L80AA8F0C   
/* 02E9C 80AA8EEC E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
.L80AA8EF0:
/* 02EA0 80AA8EF0 24A5095C */  addiu   $a1, $a1, 0x095C           ## $a1 = 0000095C
/* 02EA4 80AA8EF4 0C029490 */  jal     func_800A5240              
/* 02EA8 80AA8EF8 3C06C080 */  lui     $a2, 0xC080                ## $a2 = C0800000
/* 02EAC 80AA8EFC 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 02EB0 80AA8F00 44813000 */  mtc1    $at, $f6                   ## $f6 = 8.00
/* 02EB4 80AA8F04 00000000 */  nop
/* 02EB8 80AA8F08 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
.L80AA8F0C:
/* 02EBC 80AA8F0C 86190032 */  lh      $t9, 0x0032($s0)           ## 00000032
/* 02EC0 80AA8F10 2418001E */  addiu   $t8, $zero, 0x001E         ## $t8 = 0000001E
/* 02EC4 80AA8F14 A618032A */  sh      $t8, 0x032A($s0)           ## 0000032A
/* 02EC8 80AA8F18 AE000320 */  sw      $zero, 0x0320($s0)         ## 00000320
/* 02ECC 80AA8F1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02ED0 80AA8F20 240538BE */  addiu   $a1, $zero, 0x38BE         ## $a1 = 000038BE
/* 02ED4 80AA8F24 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02ED8 80AA8F28 A61900B6 */  sh      $t9, 0x00B6($s0)           ## 000000B6
/* 02EDC 80AA8F2C 3C0580AB */  lui     $a1, %hi(func_80AA8F50)    ## $a1 = 80AB0000
/* 02EE0 80AA8F30 24A58F50 */  addiu   $a1, $a1, %lo(func_80AA8F50) ## $a1 = 80AA8F50
/* 02EE4 80AA8F34 0C2A9814 */  jal     func_80AA6050              
/* 02EE8 80AA8F38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02EEC 80AA8F3C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02EF0 80AA8F40 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02EF4 80AA8F44 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02EF8 80AA8F48 03E00008 */  jr      $ra                        
/* 02EFC 80AA8F4C 00000000 */  nop


