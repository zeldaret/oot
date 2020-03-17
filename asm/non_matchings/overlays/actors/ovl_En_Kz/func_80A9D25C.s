glabel func_80A9D25C
/* 00D0C 80A9D25C 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00D10 80A9D260 3C0F80AA */  lui     $t7, %hi(D_80A9D94C)       ## $t7 = 80AA0000
/* 00D14 80A9D264 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00D18 80A9D268 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00D1C 80A9D26C AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00D20 80A9D270 25EFD94C */  addiu   $t7, $t7, %lo(D_80A9D94C)  ## $t7 = 80A9D94C
/* 00D24 80A9D274 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A9D94C
/* 00D28 80A9D278 27AE003C */  addiu   $t6, $sp, 0x003C           ## $t6 = FFFFFFF4
/* 00D2C 80A9D27C 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80A9D950
/* 00D30 80A9D280 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 00D34 80A9D284 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80A9D954
/* 00D38 80A9D288 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 00D3C 80A9D28C 27A60030 */  addiu   $a2, $sp, 0x0030           ## $a2 = FFFFFFE8
/* 00D40 80A9D290 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 00D44 80A9D294 8C890024 */  lw      $t1, 0x0024($a0)           ## 00000024
/* 00D48 80A9D298 27A70024 */  addiu   $a3, $sp, 0x0024           ## $a3 = FFFFFFDC
/* 00D4C 80A9D29C 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00D50 80A9D2A0 ACC90000 */  sw      $t1, 0x0000($a2)           ## FFFFFFE8
/* 00D54 80A9D2A4 8C880028 */  lw      $t0, 0x0028($a0)           ## 00000028
/* 00D58 80A9D2A8 44813000 */  mtc1    $at, $f6                   ## $f6 = 60.00
/* 00D5C 80A9D2AC 3C01C2C8 */  lui     $at, 0xC2C8                ## $at = C2C80000
/* 00D60 80A9D2B0 ACC80004 */  sw      $t0, 0x0004($a2)           ## FFFFFFEC
/* 00D64 80A9D2B4 8C89002C */  lw      $t1, 0x002C($a0)           ## 0000002C
/* 00D68 80A9D2B8 44818000 */  mtc1    $at, $f16                  ## $f16 = -100.00
/* 00D6C 80A9D2BC 3C014382 */  lui     $at, 0x4382                ## $at = 43820000
/* 00D70 80A9D2C0 ACC90008 */  sw      $t1, 0x0008($a2)           ## FFFFFFF0
/* 00D74 80A9D2C4 8C8B0008 */  lw      $t3, 0x0008($a0)           ## 00000008
/* 00D78 80A9D2C8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D7C 80A9D2CC ACEB0000 */  sw      $t3, 0x0000($a3)           ## FFFFFFDC
/* 00D80 80A9D2D0 8C8A000C */  lw      $t2, 0x000C($a0)           ## 0000000C
/* 00D84 80A9D2D4 ACEA0004 */  sw      $t2, 0x0004($a3)           ## FFFFFFE0
/* 00D88 80A9D2D8 8C8B0010 */  lw      $t3, 0x0010($a0)           ## 00000010
/* 00D8C 80A9D2DC ACEB0008 */  sw      $t3, 0x0008($a3)           ## FFFFFFE4
/* 00D90 80A9D2E0 C7A40034 */  lwc1    $f4, 0x0034($sp)           
/* 00D94 80A9D2E4 C7AA0028 */  lwc1    $f10, 0x0028($sp)          
/* 00D98 80A9D2E8 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00D9C 80A9D2EC 46062200 */  add.s   $f8, $f4, $f6              
/* 00DA0 80A9D2F0 44813000 */  mtc1    $at, $f6                   ## $f6 = 260.00
/* 00DA4 80A9D2F4 C7A4002C */  lwc1    $f4, 0x002C($sp)           
/* 00DA8 80A9D2F8 46105480 */  add.s   $f18, $f10, $f16           
/* 00DAC 80A9D2FC E7A80034 */  swc1    $f8, 0x0034($sp)           
/* 00DB0 80A9D300 46062200 */  add.s   $f8, $f4, $f6              
/* 00DB4 80A9D304 E7B20028 */  swc1    $f18, 0x0028($sp)          
/* 00DB8 80A9D308 E7A8002C */  swc1    $f8, 0x002C($sp)           
/* 00DBC 80A9D30C 0C030136 */  jal     func_800C04D8              
/* 00DC0 80A9D310 86050212 */  lh      $a1, 0x0212($s0)           ## 00000212
/* 00DC4 80A9D314 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DC8 80A9D318 0C2A7336 */  jal     func_80A9CCD8              
/* 00DCC 80A9D31C 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 00DD0 80A9D320 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00DD4 80A9D324 5441001A */  bnel    $v0, $at, .L80A9D390       
/* 00DD8 80A9D328 3C014150 */  lui     $at, 0x4150                ## $at = 41500000
/* 00DDC 80A9D32C 860C020A */  lh      $t4, 0x020A($s0)           ## 0000020A
/* 00DE0 80A9D330 3C0580AA */  lui     $a1, %hi(D_80A9D8F8)       ## $a1 = 80AA0000
/* 00DE4 80A9D334 24A5D8F8 */  addiu   $a1, $a1, %lo(D_80A9D8F8)  ## $a1 = 80A9D8F8
/* 00DE8 80A9D338 15800014 */  bne     $t4, $zero, .L80A9D38C     
/* 00DEC 80A9D33C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00DF0 80A9D340 0C00D3B0 */  jal     func_80034EC0              
/* 00DF4 80A9D344 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00DF8 80A9D348 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00DFC 80A9D34C 2405001B */  addiu   $a1, $zero, 0x001B         ## $a1 = 0000001B
/* 00E00 80A9D350 0C021A79 */  jal     Inventory_ReplaceItem              
/* 00E04 80A9D354 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00E08 80A9D358 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E0C 80A9D35C 0C2A7391 */  jal     func_80A9CE44              
/* 00E10 80A9D360 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 00E14 80A9D364 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00E18 80A9D368 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00E1C 80A9D36C 946D0EDA */  lhu     $t5, 0x0EDA($v1)           ## 8015F53A
/* 00E20 80A9D370 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00E24 80A9D374 3C0F80AA */  lui     $t7, %hi(func_80A9D3C8)    ## $t7 = 80AA0000
/* 00E28 80A9D378 35AE0008 */  ori     $t6, $t5, 0x0008           ## $t6 = 00000008
/* 00E2C 80A9D37C A46E0EDA */  sh      $t6, 0x0EDA($v1)           ## 8015F53A
/* 00E30 80A9D380 25EFD3C8 */  addiu   $t7, $t7, %lo(func_80A9D3C8) ## $t7 = 80A9D3C8
/* 00E34 80A9D384 AE0F0190 */  sw      $t7, 0x0190($s0)           ## 00000190
/* 00E38 80A9D388 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
.L80A9D38C:
/* 00E3C 80A9D38C 3C014150 */  lui     $at, 0x4150                ## $at = 41500000
.L80A9D390:
/* 00E40 80A9D390 44818000 */  mtc1    $at, $f16                  ## $f16 = 13.00
/* 00E44 80A9D394 C6120164 */  lwc1    $f18, 0x0164($s0)          ## 00000164
/* 00E48 80A9D398 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E4C 80A9D39C 46128032 */  c.eq.s  $f16, $f18                 
/* 00E50 80A9D3A0 00000000 */  nop
/* 00E54 80A9D3A4 45020004 */  bc1fl   .L80A9D3B8                 
/* 00E58 80A9D3A8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00E5C 80A9D3AC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00E60 80A9D3B0 2405687A */  addiu   $a1, $zero, 0x687A         ## $a1 = 0000687A
/* 00E64 80A9D3B4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A9D3B8:
/* 00E68 80A9D3B8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00E6C 80A9D3BC 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00E70 80A9D3C0 03E00008 */  jr      $ra                        
/* 00E74 80A9D3C4 00000000 */  nop


