glabel func_80AA2AA0
/* 00000 80AA2AA0 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00004 80AA2AA4 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00008 80AA2AA8 946E0F0E */  lhu     $t6, 0x0F0E($v1)           ## 8015F56E
/* 0000C 80AA2AAC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00010 80AA2AB0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00014 80AA2AB4 31CF0100 */  andi    $t7, $t6, 0x0100           ## $t7 = 00000000
/* 00018 80AA2AB8 15E00003 */  bne     $t7, $zero, .L80AA2AC8     
/* 0001C 80AA2ABC 8C821C44 */  lw      $v0, 0x1C44($a0)           ## 00001C44
/* 00020 80AA2AC0 10000040 */  beq     $zero, $zero, .L80AA2BC4   
/* 00024 80AA2AC4 24022000 */  addiu   $v0, $zero, 0x2000         ## $v0 = 00002000
.L80AA2AC8:
/* 00028 80AA2AC8 947813FA */  lhu     $t8, 0x13FA($v1)           ## 8015FA5A
/* 0002C 80AA2ACC 33190400 */  andi    $t9, $t8, 0x0400           ## $t9 = 00000000
/* 00030 80AA2AD0 53200027 */  beql    $t9, $zero, .L80AA2B70     
/* 00034 80AA2AD4 8C4F067C */  lw      $t7, 0x067C($v0)           ## 0000267C
/* 00038 80AA2AD8 846813D0 */  lh      $t0, 0x13D0($v1)           ## 8015FA30
/* 0003C 80AA2ADC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00040 80AA2AE0 A46813D0 */  sh      $t0, 0x13D0($v1)           ## 8015FA30
/* 00044 80AA2AE4 8CA90004 */  lw      $t1, 0x0004($a1)           ## 00000004
/* 00048 80AA2AE8 01215025 */  or      $t2, $t1, $at              ## $t2 = 00010000
/* 0004C 80AA2AEC ACAA0004 */  sw      $t2, 0x0004($a1)           ## 00000004
/* 00050 80AA2AF0 846213D0 */  lh      $v0, 0x13D0($v1)           ## 8015FA30
/* 00054 80AA2AF4 284100D3 */  slti    $at, $v0, 0x00D3           
/* 00058 80AA2AF8 54200004 */  bnel    $at, $zero, .L80AA2B0C     
/* 0005C 80AA2AFC 8C640EC4 */  lw      $a0, 0x0EC4($v1)           ## 8015F524
/* 00060 80AA2B00 10000030 */  beq     $zero, $zero, .L80AA2BC4   
/* 00064 80AA2B04 2402208E */  addiu   $v0, $zero, 0x208E         ## $v0 = 0000208E
/* 00068 80AA2B08 8C640EC4 */  lw      $a0, 0x0EC4($v1)           ## 8015F524
.L80AA2B0C:
/* 0006C 80AA2B0C 240B00B4 */  addiu   $t3, $zero, 0x00B4         ## $t3 = 000000B4
/* 00070 80AA2B10 10800003 */  beq     $a0, $zero, .L80AA2B20     
/* 00074 80AA2B14 288100B4 */  slti    $at, $a0, 0x00B4           
/* 00078 80AA2B18 54200004 */  bnel    $at, $zero, .L80AA2B2C     
/* 0007C 80AA2B1C 946C0ED6 */  lhu     $t4, 0x0ED6($v1)           ## 8015F536
.L80AA2B20:
/* 00080 80AA2B20 AC6B0EC4 */  sw      $t3, 0x0EC4($v1)           ## 8015F524
/* 00084 80AA2B24 846213D0 */  lh      $v0, 0x13D0($v1)           ## 8015FA30
/* 00088 80AA2B28 946C0ED6 */  lhu     $t4, 0x0ED6($v1)           ## 8015F536
.L80AA2B2C:
/* 0008C 80AA2B2C 28410032 */  slti    $at, $v0, 0x0032           
/* 00090 80AA2B30 318D4000 */  andi    $t5, $t4, 0x4000           ## $t5 = 00000000
/* 00094 80AA2B34 55A00006 */  bnel    $t5, $zero, .L80AA2B50     
/* 00098 80AA2B38 8C6E0EC4 */  lw      $t6, 0x0EC4($v1)           ## 8015F524
/* 0009C 80AA2B3C 50200004 */  beql    $at, $zero, .L80AA2B50     
/* 000A0 80AA2B40 8C6E0EC4 */  lw      $t6, 0x0EC4($v1)           ## 8015F524
/* 000A4 80AA2B44 1000001F */  beq     $zero, $zero, .L80AA2BC4   
/* 000A8 80AA2B48 2402208F */  addiu   $v0, $zero, 0x208F         ## $v0 = 0000208F
/* 000AC 80AA2B4C 8C6E0EC4 */  lw      $t6, 0x0EC4($v1)           ## 8015F524
.L80AA2B50:
/* 000B0 80AA2B50 004E082A */  slt     $at, $v0, $t6              
/* 000B4 80AA2B54 10200003 */  beq     $at, $zero, .L80AA2B64     
/* 000B8 80AA2B58 00000000 */  nop
/* 000BC 80AA2B5C 10000019 */  beq     $zero, $zero, .L80AA2BC4   
/* 000C0 80AA2B60 24022012 */  addiu   $v0, $zero, 0x2012         ## $v0 = 00002012
.L80AA2B64:
/* 000C4 80AA2B64 10000017 */  beq     $zero, $zero, .L80AA2BC4   
/* 000C8 80AA2B68 24022004 */  addiu   $v0, $zero, 0x2004         ## $v0 = 00002004
/* 000CC 80AA2B6C 8C4F067C */  lw      $t7, 0x067C($v0)           ## 00002680
.L80AA2B70:
/* 000D0 80AA2B70 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 000D4 80AA2B74 3C014496 */  lui     $at, 0x4496                ## $at = 44960000
/* 000D8 80AA2B78 000FC200 */  sll     $t8, $t7,  8               
/* 000DC 80AA2B7C 0702000B */  bltzl   $t8, .L80AA2BAC            
/* 000E0 80AA2B80 94790F0E */  lhu     $t9, 0x0F0E($v1)           ## 8015F56E
/* 000E4 80AA2B84 44812000 */  mtc1    $at, $f4                   ## $f4 = 1200.00
/* 000E8 80AA2B88 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 000EC 80AA2B8C 0C00D4FD */  jal     Actor_FindNearby
              
/* 000F0 80AA2B90 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 000F4 80AA2B94 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 000F8 80AA2B98 14400003 */  bne     $v0, $zero, .L80AA2BA8     
/* 000FC 80AA2B9C 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00100 80AA2BA0 10000008 */  beq     $zero, $zero, .L80AA2BC4   
/* 00104 80AA2BA4 24022001 */  addiu   $v0, $zero, 0x2001         ## $v0 = 00002001
.L80AA2BA8:
/* 00108 80AA2BA8 94790F0E */  lhu     $t9, 0x0F0E($v1)           ## 8015F56E
.L80AA2BAC:
/* 0010C 80AA2BAC 24022003 */  addiu   $v0, $zero, 0x2003         ## $v0 = 00002003
/* 00110 80AA2BB0 33280200 */  andi    $t0, $t9, 0x0200           ## $t0 = 00000000
/* 00114 80AA2BB4 15000003 */  bne     $t0, $zero, .L80AA2BC4     
/* 00118 80AA2BB8 00000000 */  nop
/* 0011C 80AA2BBC 10000001 */  beq     $zero, $zero, .L80AA2BC4   
/* 00120 80AA2BC0 24022002 */  addiu   $v0, $zero, 0x2002         ## $v0 = 00002002
.L80AA2BC4:
/* 00124 80AA2BC4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00128 80AA2BC8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0012C 80AA2BCC 03E00008 */  jr      $ra                        
/* 00130 80AA2BD0 00000000 */  nop
