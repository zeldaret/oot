glabel func_80AB38AC
/* 02B1C 80AB38AC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02B20 80AB38B0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02B24 80AB38B4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02B28 80AB38B8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02B2C 80AB38BC 24A54E60 */  addiu   $a1, $a1, 0x4E60           ## $a1 = 06004E60
/* 02B30 80AB38C0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02B34 80AB38C4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02B38 80AB38C8 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 02B3C 80AB38CC 0C2AC528 */  jal     func_80AB14A0              
/* 02B40 80AB38D0 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 02B44 80AB38D4 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 02B48 80AB38D8 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 02B4C 80AB38DC 944E0EE6 */  lhu     $t6, 0x0EE6($v0)           ## 8015F546
/* 02B50 80AB38E0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02B54 80AB38E4 2401FFF6 */  addiu   $at, $zero, 0xFFF6         ## $at = FFFFFFF6
/* 02B58 80AB38E8 35CF0010 */  ori     $t7, $t6, 0x0010           ## $t7 = 00000010
/* 02B5C 80AB38EC A44F0EE6 */  sh      $t7, 0x0EE6($v0)           ## 8015F546
/* 02B60 80AB38F0 8C990004 */  lw      $t9, 0x0004($a0)           ## 00000004
/* 02B64 80AB38F4 2418001C */  addiu   $t8, $zero, 0x001C         ## $t8 = 0000001C
/* 02B68 80AB38F8 AC980278 */  sw      $t8, 0x0278($a0)           ## 00000278
/* 02B6C 80AB38FC 03214024 */  and     $t0, $t9, $at              
/* 02B70 80AB3900 AC880004 */  sw      $t0, 0x0004($a0)           ## 00000004
/* 02B74 80AB3904 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02B78 80AB3908 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02B7C 80AB390C 03E00008 */  jr      $ra                        
/* 02B80 80AB3910 00000000 */  nop
