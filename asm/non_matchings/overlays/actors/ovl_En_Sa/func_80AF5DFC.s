glabel func_80AF5DFC
/* 0089C 80AF5DFC 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 008A0 80AF5E00 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 008A4 80AF5E04 8C620008 */  lw      $v0, 0x0008($v1)           ## 8015E668
/* 008A8 80AF5E08 3401FFF0 */  ori     $at, $zero, 0xFFF0         ## $at = 0000FFF0
/* 008AC 80AF5E0C AFA40000 */  sw      $a0, 0x0000($sp)           
/* 008B0 80AF5E10 0041082A */  slt     $at, $v0, $at              
/* 008B4 80AF5E14 1420000E */  bne     $at, $zero, .L80AF5E50     
/* 008B8 80AF5E18 3401FFFD */  ori     $at, $zero, 0xFFFD         ## $at = 0000FFFD
/* 008BC 80AF5E1C 5041000D */  beql    $v0, $at, .L80AF5E54       
/* 008C0 80AF5E20 84A200A4 */  lh      $v0, 0x00A4($a1)           ## 000000A4
/* 008C4 80AF5E24 84A200A4 */  lh      $v0, 0x00A4($a1)           ## 000000A4
/* 008C8 80AF5E28 24010055 */  addiu   $at, $zero, 0x0055         ## $at = 00000055
/* 008CC 80AF5E2C 54410004 */  bnel    $v0, $at, .L80AF5E40       
/* 008D0 80AF5E30 24010056 */  addiu   $at, $zero, 0x0056         ## $at = 00000056
/* 008D4 80AF5E34 03E00008 */  jr      $ra                        
/* 008D8 80AF5E38 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80AF5E3C:
/* 008DC 80AF5E3C 24010056 */  addiu   $at, $zero, 0x0056         ## $at = 00000056
.L80AF5E40:
/* 008E0 80AF5E40 54410004 */  bnel    $v0, $at, .L80AF5E54       
/* 008E4 80AF5E44 84A200A4 */  lh      $v0, 0x00A4($a1)           ## 000000A4
/* 008E8 80AF5E48 03E00008 */  jr      $ra                        
/* 008EC 80AF5E4C 24020005 */  addiu   $v0, $zero, 0x0005         ## $v0 = 00000005
.L80AF5E50:
/* 008F0 80AF5E50 84A200A4 */  lh      $v0, 0x00A4($a1)           ## 000000A4
.L80AF5E54:
/* 008F4 80AF5E54 24010029 */  addiu   $at, $zero, 0x0029         ## $at = 00000029
/* 008F8 80AF5E58 54410012 */  bnel    $v0, $at, .L80AF5EA4       
/* 008FC 80AF5E5C 24010056 */  addiu   $at, $zero, 0x0056         ## $at = 00000056
/* 00900 80AF5E60 8C6E0004 */  lw      $t6, 0x0004($v1)           ## 8015E664
/* 00904 80AF5E64 3C0F8012 */  lui     $t7, 0x8012                ## $t7 = 80120000
/* 00908 80AF5E68 51C0000E */  beql    $t6, $zero, .L80AF5EA4     
/* 0090C 80AF5E6C 24010056 */  addiu   $at, $zero, 0x0056         ## $at = 00000056
/* 00910 80AF5E70 91EF746B */  lbu     $t7, 0x746B($t7)           ## 8012746B
/* 00914 80AF5E74 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00918 80AF5E78 006FC021 */  addu    $t8, $v1, $t7              
/* 0091C 80AF5E7C 93190074 */  lbu     $t9, 0x0074($t8)           ## 00000074
/* 00920 80AF5E80 57210008 */  bnel    $t9, $at, .L80AF5EA4       
/* 00924 80AF5E84 24010056 */  addiu   $at, $zero, 0x0056         ## $at = 00000056
/* 00928 80AF5E88 94680EDC */  lhu     $t0, 0x0EDC($v1)           ## 8015F53C
/* 0092C 80AF5E8C 31090001 */  andi    $t1, $t0, 0x0001           ## $t1 = 00000000
/* 00930 80AF5E90 55200004 */  bnel    $t1, $zero, .L80AF5EA4     
/* 00934 80AF5E94 24010056 */  addiu   $at, $zero, 0x0056         ## $at = 00000056
/* 00938 80AF5E98 03E00008 */  jr      $ra                        
/* 0093C 80AF5E9C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AF5EA0:
/* 00940 80AF5EA0 24010056 */  addiu   $at, $zero, 0x0056         ## $at = 00000056
.L80AF5EA4:
/* 00944 80AF5EA4 54410011 */  bnel    $v0, $at, .L80AF5EEC       
/* 00948 80AF5EA8 24010055 */  addiu   $at, $zero, 0x0055         ## $at = 00000055
/* 0094C 80AF5EAC 946A0EDC */  lhu     $t2, 0x0EDC($v1)           ## 8015F53C
/* 00950 80AF5EB0 3C0C8012 */  lui     $t4, 0x8012                ## $t4 = 80120000
/* 00954 80AF5EB4 314B0001 */  andi    $t3, $t2, 0x0001           ## $t3 = 00000000
/* 00958 80AF5EB8 5160000C */  beql    $t3, $zero, .L80AF5EEC     
/* 0095C 80AF5EBC 24010055 */  addiu   $at, $zero, 0x0055         ## $at = 00000055
/* 00960 80AF5EC0 8D8C7158 */  lw      $t4, 0x7158($t4)           ## 80127158
/* 00964 80AF5EC4 8C6D00A4 */  lw      $t5, 0x00A4($v1)           ## 8015E704
/* 00968 80AF5EC8 24030005 */  addiu   $v1, $zero, 0x0005         ## $v1 = 00000005
/* 0096C 80AF5ECC 018D7024 */  and     $t6, $t4, $t5              
/* 00970 80AF5ED0 11C00003 */  beq     $t6, $zero, .L80AF5EE0     
/* 00974 80AF5ED4 00000000 */  nop
/* 00978 80AF5ED8 03E00008 */  jr      $ra                        
/* 0097C 80AF5EDC 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
.L80AF5EE0:
/* 00980 80AF5EE0 03E00008 */  jr      $ra                        
/* 00984 80AF5EE4 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000005
.L80AF5EE8:
/* 00988 80AF5EE8 24010055 */  addiu   $at, $zero, 0x0055         ## $at = 00000055
.L80AF5EEC:
/* 0098C 80AF5EEC 1441000E */  bne     $v0, $at, .L80AF5F28       
/* 00990 80AF5EF0 3C0F8012 */  lui     $t7, 0x8012                ## $t7 = 80120000
/* 00994 80AF5EF4 8DEF7168 */  lw      $t7, 0x7168($t7)           ## 80127168
/* 00998 80AF5EF8 8C7800A4 */  lw      $t8, 0x00A4($v1)           ## 000000A9
/* 0099C 80AF5EFC 01F8C824 */  and     $t9, $t7, $t8              
/* 009A0 80AF5F00 5720000A */  bnel    $t9, $zero, .L80AF5F2C     
/* 009A4 80AF5F04 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 009A8 80AF5F08 94680EF8 */  lhu     $t0, 0x0EF8($v1)           ## 00000EFD
/* 009AC 80AF5F0C 31090001 */  andi    $t1, $t0, 0x0001           ## $t1 = 00000000
/* 009B0 80AF5F10 11200003 */  beq     $t1, $zero, .L80AF5F20     
/* 009B4 80AF5F14 00000000 */  nop
/* 009B8 80AF5F18 03E00008 */  jr      $ra                        
/* 009BC 80AF5F1C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AF5F20:
/* 009C0 80AF5F20 03E00008 */  jr      $ra                        
/* 009C4 80AF5F24 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80AF5F28:
/* 009C8 80AF5F28 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AF5F2C:
/* 009CC 80AF5F2C 03E00008 */  jr      $ra                        
/* 009D0 80AF5F30 00000000 */  nop


