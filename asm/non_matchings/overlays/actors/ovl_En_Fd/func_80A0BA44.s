glabel func_80A0BA44
/* 00384 80A0BA44 8C820190 */  lw      $v0, 0x0190($a0)           ## 00000190
/* 00388 80A0BA48 3C0E80A1 */  lui     $t6, %hi(func_80A0C310)    ## $t6 = 80A10000
/* 0038C 80A0BA4C 25CEC310 */  addiu   $t6, $t6, %lo(func_80A0C310) ## $t6 = 80A0C310
/* 00390 80A0BA50 11C2000A */  beq     $t6, $v0, .L80A0BA7C       
/* 00394 80A0BA54 3C0F80A1 */  lui     $t7, %hi(func_80A0C3A0)    ## $t7 = 80A10000
/* 00398 80A0BA58 25EFC3A0 */  addiu   $t7, $t7, %lo(func_80A0C3A0) ## $t7 = 80A0C3A0
/* 0039C 80A0BA5C 11E20007 */  beq     $t7, $v0, .L80A0BA7C       
/* 003A0 80A0BA60 3C1880A1 */  lui     $t8, %hi(func_80A0C474)    ## $t8 = 80A10000
/* 003A4 80A0BA64 2718C474 */  addiu   $t8, $t8, %lo(func_80A0C474) ## $t8 = 80A0C474
/* 003A8 80A0BA68 13020004 */  beq     $t8, $v0, .L80A0BA7C       
/* 003AC 80A0BA6C 3C1980A1 */  lui     $t9, %hi(func_80A0CA44)    ## $t9 = 80A10000
/* 003B0 80A0BA70 2739CA44 */  addiu   $t9, $t9, %lo(func_80A0CA44) ## $t9 = 80A0CA44
/* 003B4 80A0BA74 57220004 */  bnel    $t9, $v0, .L80A0BA88       
/* 003B8 80A0BA78 90A81C26 */  lbu     $t0, 0x1C26($a1)           ## 00001C26
.L80A0BA7C:
/* 003BC 80A0BA7C 03E00008 */  jr      $ra                        
/* 003C0 80A0BA80 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A0BA84:
/* 003C4 80A0BA84 90A81C26 */  lbu     $t0, 0x1C26($a1)           ## 00001C26
.L80A0BA88:
/* 003C8 80A0BA88 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 003CC 80A0BA8C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 003D0 80A0BA90 11000011 */  beq     $t0, $zero, .L80A0BAD8     
/* 003D4 80A0BA94 00000000 */  nop
/* 003D8 80A0BA98 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 003DC 80A0BA9C 44813000 */  mtc1    $at, $f6                   ## $f6 = 300.00
/* 003E0 80A0BAA0 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 003E4 80A0BAA4 4606203C */  c.lt.s  $f4, $f6                   
/* 003E8 80A0BAA8 00000000 */  nop
/* 003EC 80A0BAAC 4500000A */  bc1f    .L80A0BAD8                 
/* 003F0 80A0BAB0 00000000 */  nop
/* 003F4 80A0BAB4 C4880094 */  lwc1    $f8, 0x0094($a0)           ## 00000094
/* 003F8 80A0BAB8 44815000 */  mtc1    $at, $f10                  ## $f10 = 60.00
/* 003FC 80A0BABC 00000000 */  nop
/* 00400 80A0BAC0 460A403C */  c.lt.s  $f8, $f10                  
/* 00404 80A0BAC4 00000000 */  nop
/* 00408 80A0BAC8 45000003 */  bc1f    .L80A0BAD8                 
/* 0040C 80A0BACC 00000000 */  nop
/* 00410 80A0BAD0 03E00008 */  jr      $ra                        
/* 00414 80A0BAD4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A0BAD8:
/* 00418 80A0BAD8 03E00008 */  jr      $ra                        
/* 0041C 80A0BADC 00000000 */  nop
