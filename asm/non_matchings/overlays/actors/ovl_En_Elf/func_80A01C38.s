glabel func_80A01C38
/* 00008 80A01C38 30AEFFFF */  andi    $t6, $a1, 0xFFFF           ## $t6 = 00000000
/* 0000C 80A01C3C 2DC1000D */  sltiu   $at, $t6, 0x000D           
/* 00010 80A01C40 102000D1 */  beq     $at, $zero, .L80A01F88     
/* 00014 80A01C44 A48502A8 */  sh      $a1, 0x02A8($a0)           ## 000002A8
/* 00018 80A01C48 000E7080 */  sll     $t6, $t6,  2               
/* 0001C 80A01C4C 3C0180A0 */  lui     $at, %hi(jtbl_80A06144)       ## $at = 80A00000
/* 00020 80A01C50 002E0821 */  addu    $at, $at, $t6              
/* 00024 80A01C54 8C2E6144 */  lw      $t6, %lo(jtbl_80A06144)($at)  
/* 00028 80A01C58 01C00008 */  jr      $t6                        
/* 0002C 80A01C5C 00000000 */  nop
glabel L80A01C60
/* 00030 80A01C60 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00034 80A01C64 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00038 80A01C68 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 0003C 80A01C6C 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 00040 80A01C70 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00044 80A01C74 44813000 */  mtc1    $at, $f6                   ## $f6 = 20.00
/* 00048 80A01C78 3C1980A0 */  lui     $t9, %hi(func_80A02A20)    ## $t9 = 80A00000
/* 0004C 80A01C7C 240F0400 */  addiu   $t7, $zero, 0x0400         ## $t7 = 00000400
/* 00050 80A01C80 24180200 */  addiu   $t8, $zero, 0x0200         ## $t8 = 00000200
/* 00054 80A01C84 27392A20 */  addiu   $t9, $t9, %lo(func_80A02A20) ## $t9 = 80A02A20
/* 00058 80A01C88 24080064 */  addiu   $t0, $zero, 0x0064         ## $t0 = 00000064
/* 0005C 80A01C8C A48F02AE */  sh      $t7, 0x02AE($a0)           ## 000002AE
/* 00060 80A01C90 A49802B0 */  sh      $t8, 0x02B0($a0)           ## 000002B0
/* 00064 80A01C94 AC9902C8 */  sw      $t9, 0x02C8($a0)           ## 000002C8
/* 00068 80A01C98 A48802C0 */  sh      $t0, 0x02C0($a0)           ## 000002C0
/* 0006C 80A01C9C E4800168 */  swc1    $f0, 0x0168($a0)           ## 00000168
/* 00070 80A01CA0 E48402B4 */  swc1    $f4, 0x02B4($a0)           ## 000002B4
/* 00074 80A01CA4 03E00008 */  jr      $ra                        
/* 00078 80A01CA8 E48602B8 */  swc1    $f6, 0x02B8($a0)           ## 000002B8
glabel L80A01CAC
/* 0007C 80A01CAC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00080 80A01CB0 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00084 80A01CB4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00088 80A01CB8 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 0008C 80A01CBC 3C0B80A0 */  lui     $t3, %hi(func_80A02A20)    ## $t3 = 80A00000
/* 00090 80A01CC0 24090400 */  addiu   $t1, $zero, 0x0400         ## $t1 = 00000400
/* 00094 80A01CC4 240A0200 */  addiu   $t2, $zero, 0x0200         ## $t2 = 00000200
/* 00098 80A01CC8 256B2A20 */  addiu   $t3, $t3, %lo(func_80A02A20) ## $t3 = 80A02A20
/* 0009C 80A01CCC 240C0064 */  addiu   $t4, $zero, 0x0064         ## $t4 = 00000064
/* 000A0 80A01CD0 A48902AE */  sh      $t1, 0x02AE($a0)           ## 000002AE
/* 000A4 80A01CD4 A48A02B0 */  sh      $t2, 0x02B0($a0)           ## 000002B0
/* 000A8 80A01CD8 AC8B02C8 */  sw      $t3, 0x02C8($a0)           ## 000002C8
/* 000AC 80A01CDC A48C02C0 */  sh      $t4, 0x02C0($a0)           ## 000002C0
/* 000B0 80A01CE0 E48002B4 */  swc1    $f0, 0x02B4($a0)           ## 000002B4
/* 000B4 80A01CE4 E4800168 */  swc1    $f0, 0x0168($a0)           ## 00000168
/* 000B8 80A01CE8 03E00008 */  jr      $ra                        
/* 000BC 80A01CEC E48802B8 */  swc1    $f8, 0x02B8($a0)           ## 000002B8
glabel L80A01CF0
/* 000C0 80A01CF0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 000C4 80A01CF4 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 000C8 80A01CF8 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 000CC 80A01CFC 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 000D0 80A01D00 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 000D4 80A01D04 3C0E80A0 */  lui     $t6, %hi(func_80A02A20)    ## $t6 = 80A00000
/* 000D8 80A01D08 240D0400 */  addiu   $t5, $zero, 0x0400         ## $t5 = 00000400
/* 000DC 80A01D0C 25CE2A20 */  addiu   $t6, $t6, %lo(func_80A02A20) ## $t6 = 80A02A20
/* 000E0 80A01D10 A48D02AE */  sh      $t5, 0x02AE($a0)           ## 000002AE
/* 000E4 80A01D14 A48002B0 */  sh      $zero, 0x02B0($a0)         ## 000002B0
/* 000E8 80A01D18 AC8E02C8 */  sw      $t6, 0x02C8($a0)           ## 000002C8
/* 000EC 80A01D1C E4800168 */  swc1    $f0, 0x0168($a0)           ## 00000168
/* 000F0 80A01D20 E48202B8 */  swc1    $f2, 0x02B8($a0)           ## 000002B8
/* 000F4 80A01D24 03E00008 */  jr      $ra                        
/* 000F8 80A01D28 E48A02B4 */  swc1    $f10, 0x02B4($a0)          ## 000002B4
glabel L80A01D2C
/* 000FC 80A01D2C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00100 80A01D30 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00104 80A01D34 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00108 80A01D38 44811000 */  mtc1    $at, $f2                   ## $f2 = 10.00
/* 0010C 80A01D3C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00110 80A01D40 44818000 */  mtc1    $at, $f16                  ## $f16 = 3.00
/* 00114 80A01D44 3C1980A0 */  lui     $t9, %hi(func_80A02A20)    ## $t9 = 80A00000
/* 00118 80A01D48 240F1000 */  addiu   $t7, $zero, 0x1000         ## $t7 = 00001000
/* 0011C 80A01D4C 24180200 */  addiu   $t8, $zero, 0x0200         ## $t8 = 00000200
/* 00120 80A01D50 27392A20 */  addiu   $t9, $t9, %lo(func_80A02A20) ## $t9 = 80A02A20
/* 00124 80A01D54 A48F02AE */  sh      $t7, 0x02AE($a0)           ## 000002AE
/* 00128 80A01D58 A49802B0 */  sh      $t8, 0x02B0($a0)           ## 000002B0
/* 0012C 80A01D5C AC9902C8 */  sw      $t9, 0x02C8($a0)           ## 000002C8
/* 00130 80A01D60 E4800168 */  swc1    $f0, 0x0168($a0)           ## 00000168
/* 00134 80A01D64 E48202B8 */  swc1    $f2, 0x02B8($a0)           ## 000002B8
/* 00138 80A01D68 03E00008 */  jr      $ra                        
/* 0013C 80A01D6C E49002B4 */  swc1    $f16, 0x02B4($a0)          ## 000002B4
glabel L80A01D70
/* 00140 80A01D70 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00144 80A01D74 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00148 80A01D78 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 0014C 80A01D7C 3C0880A0 */  lui     $t0, %hi(func_80A02A20)    ## $t0 = 80A00000
/* 00150 80A01D80 25082A20 */  addiu   $t0, $t0, %lo(func_80A02A20) ## $t0 = 80A02A20
/* 00154 80A01D84 2409001E */  addiu   $t1, $zero, 0x001E         ## $t1 = 0000001E
/* 00158 80A01D88 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 0015C 80A01D8C AC8802C8 */  sw      $t0, 0x02C8($a0)           ## 000002C8
/* 00160 80A01D90 A48902AE */  sh      $t1, 0x02AE($a0)           ## 000002AE
/* 00164 80A01D94 A48A02C0 */  sh      $t2, 0x02C0($a0)           ## 000002C0
/* 00168 80A01D98 E48202B4 */  swc1    $f2, 0x02B4($a0)           ## 000002B4
/* 0016C 80A01D9C E48202B8 */  swc1    $f2, 0x02B8($a0)           ## 000002B8
/* 00170 80A01DA0 03E00008 */  jr      $ra                        
/* 00174 80A01DA4 E4800168 */  swc1    $f0, 0x0168($a0)           ## 00000168
glabel L80A01DA8
/* 00178 80A01DA8 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 0017C 80A01DAC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00180 80A01DB0 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00184 80A01DB4 3C0D80A0 */  lui     $t5, %hi(func_80A02A20)    ## $t5 = 80A00000
/* 00188 80A01DB8 240B1000 */  addiu   $t3, $zero, 0x1000         ## $t3 = 00001000
/* 0018C 80A01DBC 240C0200 */  addiu   $t4, $zero, 0x0200         ## $t4 = 00000200
/* 00190 80A01DC0 25AD2A20 */  addiu   $t5, $t5, %lo(func_80A02A20) ## $t5 = 80A02A20
/* 00194 80A01DC4 A48B02AE */  sh      $t3, 0x02AE($a0)           ## 000002AE
/* 00198 80A01DC8 A48C02B0 */  sh      $t4, 0x02B0($a0)           ## 000002B0
/* 0019C 80A01DCC AC8D02C8 */  sw      $t5, 0x02C8($a0)           ## 000002C8
/* 001A0 80A01DD0 E48202B4 */  swc1    $f2, 0x02B4($a0)           ## 000002B4
/* 001A4 80A01DD4 E48202B8 */  swc1    $f2, 0x02B8($a0)           ## 000002B8
/* 001A8 80A01DD8 03E00008 */  jr      $ra                        
/* 001AC 80A01DDC E4800168 */  swc1    $f0, 0x0168($a0)           ## 00000168
glabel L80A01DE0
/* 001B0 80A01DE0 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 001B4 80A01DE4 44819000 */  mtc1    $at, $f18                  ## $f18 = 5.00
/* 001B8 80A01DE8 3C0140F0 */  lui     $at, 0x40F0                ## $at = 40F00000
/* 001BC 80A01DEC 44812000 */  mtc1    $at, $f4                   ## $f4 = 7.50
/* 001C0 80A01DF0 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 001C4 80A01DF4 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.00
/* 001C8 80A01DF8 3C1880A0 */  lui     $t8, %hi(func_80A02A20)    ## $t8 = 80A00000
/* 001CC 80A01DFC 240E1000 */  addiu   $t6, $zero, 0x1000         ## $t6 = 00001000
/* 001D0 80A01E00 240F0800 */  addiu   $t7, $zero, 0x0800         ## $t7 = 00000800
/* 001D4 80A01E04 27182A20 */  addiu   $t8, $t8, %lo(func_80A02A20) ## $t8 = 80A02A20
/* 001D8 80A01E08 A48E02AE */  sh      $t6, 0x02AE($a0)           ## 000002AE
/* 001DC 80A01E0C A48F02B0 */  sh      $t7, 0x02B0($a0)           ## 000002B0
/* 001E0 80A01E10 AC9802C8 */  sw      $t8, 0x02C8($a0)           ## 000002C8
/* 001E4 80A01E14 E49202B4 */  swc1    $f18, 0x02B4($a0)          ## 000002B4
/* 001E8 80A01E18 E48402B8 */  swc1    $f4, 0x02B8($a0)           ## 000002B8
/* 001EC 80A01E1C 03E00008 */  jr      $ra                        
/* 001F0 80A01E20 E4860168 */  swc1    $f6, 0x0168($a0)           ## 00000168
glabel L80A01E24
/* 001F4 80A01E24 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 001F8 80A01E28 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 001FC 80A01E2C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00200 80A01E30 44811000 */  mtc1    $at, $f2                   ## $f2 = 10.00
/* 00204 80A01E34 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00208 80A01E38 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 0020C 80A01E3C 3C0980A0 */  lui     $t1, %hi(func_80A02AA4)    ## $t1 = 80A00000
/* 00210 80A01E40 24190400 */  addiu   $t9, $zero, 0x0400         ## $t9 = 00000400
/* 00214 80A01E44 24081000 */  addiu   $t0, $zero, 0x1000         ## $t0 = 00001000
/* 00218 80A01E48 25292AA4 */  addiu   $t1, $t1, %lo(func_80A02AA4) ## $t1 = 80A02AA4
/* 0021C 80A01E4C A49902AE */  sh      $t9, 0x02AE($a0)           ## 000002AE
/* 00220 80A01E50 A48802B0 */  sh      $t0, 0x02B0($a0)           ## 000002B0
/* 00224 80A01E54 AC8902C8 */  sw      $t1, 0x02C8($a0)           ## 000002C8
/* 00228 80A01E58 E4800168 */  swc1    $f0, 0x0168($a0)           ## 00000168
/* 0022C 80A01E5C E48202B4 */  swc1    $f2, 0x02B4($a0)           ## 000002B4
/* 00230 80A01E60 03E00008 */  jr      $ra                        
/* 00234 80A01E64 E48802B8 */  swc1    $f8, 0x02B8($a0)           ## 000002B8
glabel L80A01E68
/* 00238 80A01E68 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0023C 80A01E6C 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00240 80A01E70 3C0B80A0 */  lui     $t3, %hi(func_80A02B38)    ## $t3 = 80A00000
/* 00244 80A01E74 240A0600 */  addiu   $t2, $zero, 0x0600         ## $t2 = 00000600
/* 00248 80A01E78 256B2B38 */  addiu   $t3, $t3, %lo(func_80A02B38) ## $t3 = 80A02B38
/* 0024C 80A01E7C A48A02B0 */  sh      $t2, 0x02B0($a0)           ## 000002B0
/* 00250 80A01E80 AC8B02C8 */  sw      $t3, 0x02C8($a0)           ## 000002C8
/* 00254 80A01E84 E48002B8 */  swc1    $f0, 0x02B8($a0)           ## 000002B8
/* 00258 80A01E88 E48002B4 */  swc1    $f0, 0x02B4($a0)           ## 000002B4
/* 0025C 80A01E8C 03E00008 */  jr      $ra                        
/* 00260 80A01E90 E4800168 */  swc1    $f0, 0x0168($a0)           ## 00000168
glabel L80A01E94
/* 00264 80A01E94 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00268 80A01E98 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 0026C 80A01E9C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00270 80A01EA0 44818000 */  mtc1    $at, $f16                  ## $f16 = 10.00
/* 00274 80A01EA4 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00278 80A01EA8 44819000 */  mtc1    $at, $f18                  ## $f18 = 2.00
/* 0027C 80A01EAC 3C0D80A0 */  lui     $t5, %hi(func_80A02B38)    ## $t5 = 80A00000
/* 00280 80A01EB0 240C0800 */  addiu   $t4, $zero, 0x0800         ## $t4 = 00000800
/* 00284 80A01EB4 25AD2B38 */  addiu   $t5, $t5, %lo(func_80A02B38) ## $t5 = 80A02B38
/* 00288 80A01EB8 A48C02B0 */  sh      $t4, 0x02B0($a0)           ## 000002B0
/* 0028C 80A01EBC AC8D02C8 */  sw      $t5, 0x02C8($a0)           ## 000002C8
/* 00290 80A01EC0 E48A02B4 */  swc1    $f10, 0x02B4($a0)          ## 000002B4
/* 00294 80A01EC4 E49002B8 */  swc1    $f16, 0x02B8($a0)          ## 000002B8
/* 00298 80A01EC8 03E00008 */  jr      $ra                        
/* 0029C 80A01ECC E4920168 */  swc1    $f18, 0x0168($a0)          ## 00000168
glabel L80A01ED0
/* 002A0 80A01ED0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 002A4 80A01ED4 44811000 */  mtc1    $at, $f2                   ## $f2 = 10.00
/* 002A8 80A01ED8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 002AC 80A01EDC 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 002B0 80A01EE0 3C0F80A0 */  lui     $t7, %hi(func_80A02B38)    ## $t7 = 80A00000
/* 002B4 80A01EE4 240E0200 */  addiu   $t6, $zero, 0x0200         ## $t6 = 00000200
/* 002B8 80A01EE8 25EF2B38 */  addiu   $t7, $t7, %lo(func_80A02B38) ## $t7 = 80A02B38
/* 002BC 80A01EEC A48E02B0 */  sh      $t6, 0x02B0($a0)           ## 000002B0
/* 002C0 80A01EF0 AC8F02C8 */  sw      $t7, 0x02C8($a0)           ## 000002C8
/* 002C4 80A01EF4 E48202B4 */  swc1    $f2, 0x02B4($a0)           ## 000002B4
/* 002C8 80A01EF8 E48202B8 */  swc1    $f2, 0x02B8($a0)           ## 000002B8
/* 002CC 80A01EFC 03E00008 */  jr      $ra                        
/* 002D0 80A01F00 E4840168 */  swc1    $f4, 0x0168($a0)           ## 00000168
glabel L80A01F04
/* 002D4 80A01F04 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 002D8 80A01F08 44813000 */  mtc1    $at, $f6                   ## $f6 = 60.00
/* 002DC 80A01F0C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 002E0 80A01F10 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 002E4 80A01F14 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 002E8 80A01F18 44815000 */  mtc1    $at, $f10                  ## $f10 = 2.00
/* 002EC 80A01F1C 3C0880A0 */  lui     $t0, %hi(func_80A02A20)    ## $t0 = 80A00000
/* 002F0 80A01F20 24181000 */  addiu   $t8, $zero, 0x1000         ## $t8 = 00001000
/* 002F4 80A01F24 24190800 */  addiu   $t9, $zero, 0x0800         ## $t9 = 00000800
/* 002F8 80A01F28 25082A20 */  addiu   $t0, $t0, %lo(func_80A02A20) ## $t0 = 80A02A20
/* 002FC 80A01F2C A49802AE */  sh      $t8, 0x02AE($a0)           ## 000002AE
/* 00300 80A01F30 A49902B0 */  sh      $t9, 0x02B0($a0)           ## 000002B0
/* 00304 80A01F34 AC8802C8 */  sw      $t0, 0x02C8($a0)           ## 000002C8
/* 00308 80A01F38 E48602B4 */  swc1    $f6, 0x02B4($a0)           ## 000002B4
/* 0030C 80A01F3C E48802B8 */  swc1    $f8, 0x02B8($a0)           ## 000002B8
/* 00310 80A01F40 03E00008 */  jr      $ra                        
/* 00314 80A01F44 E48A0168 */  swc1    $f10, 0x0168($a0)          ## 00000168
glabel L80A01F48
/* 00318 80A01F48 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0031C 80A01F4C 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00320 80A01F50 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00324 80A01F54 44818000 */  mtc1    $at, $f16                  ## $f16 = 5.00
/* 00328 80A01F58 3C0B80A0 */  lui     $t3, %hi(func_80A02A20)    ## $t3 = 80A00000
/* 0032C 80A01F5C 24090400 */  addiu   $t1, $zero, 0x0400         ## $t1 = 00000400
/* 00330 80A01F60 240A2000 */  addiu   $t2, $zero, 0x2000         ## $t2 = 00002000
/* 00334 80A01F64 256B2A20 */  addiu   $t3, $t3, %lo(func_80A02A20) ## $t3 = 80A02A20
/* 00338 80A01F68 240C002A */  addiu   $t4, $zero, 0x002A         ## $t4 = 0000002A
/* 0033C 80A01F6C A48902AE */  sh      $t1, 0x02AE($a0)           ## 000002AE
/* 00340 80A01F70 A48A02B0 */  sh      $t2, 0x02B0($a0)           ## 000002B0
/* 00344 80A01F74 AC8B02C8 */  sw      $t3, 0x02C8($a0)           ## 000002C8
/* 00348 80A01F78 A48C02C0 */  sh      $t4, 0x02C0($a0)           ## 000002C0
/* 0034C 80A01F7C E48002B8 */  swc1    $f0, 0x02B8($a0)           ## 000002B8
/* 00350 80A01F80 E4800168 */  swc1    $f0, 0x0168($a0)           ## 00000168
/* 00354 80A01F84 E49002B4 */  swc1    $f16, 0x02B4($a0)          ## 000002B4
.L80A01F88:
/* 00358 80A01F88 03E00008 */  jr      $ra                        
/* 0035C 80A01F8C 00000000 */  nop
