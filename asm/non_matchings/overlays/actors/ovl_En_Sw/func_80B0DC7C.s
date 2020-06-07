glabel func_80B0DC7C
/* 01ECC 80B0DC7C 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 01ED0 80B0DC80 3C0F80B1 */  lui     $t7, %hi(D_80B0F138)       ## $t7 = 80B10000
/* 01ED4 80B0DC84 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 01ED8 80B0DC88 AFB00048 */  sw      $s0, 0x0048($sp)           
/* 01EDC 80B0DC8C AFA50074 */  sw      $a1, 0x0074($sp)           
/* 01EE0 80B0DC90 25EFF138 */  addiu   $t7, $t7, %lo(D_80B0F138)  ## $t7 = 80B0F138
/* 01EE4 80B0DC94 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B0F138
/* 01EE8 80B0DC98 27AE0064 */  addiu   $t6, $sp, 0x0064           ## $t6 = FFFFFFF4
/* 01EEC 80B0DC9C 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B0F13C
/* 01EF0 80B0DCA0 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 01EF4 80B0DCA4 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B0F140
/* 01EF8 80B0DCA8 3C0980B1 */  lui     $t1, %hi(D_80B0F144)       ## $t1 = 80B10000
/* 01EFC 80B0DCAC 2529F144 */  addiu   $t1, $t1, %lo(D_80B0F144)  ## $t1 = 80B0F144
/* 01F00 80B0DCB0 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 01F04 80B0DCB4 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 01F08 80B0DCB8 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80B0F144
/* 01F0C 80B0DCBC 27A80058 */  addiu   $t0, $sp, 0x0058           ## $t0 = FFFFFFE8
/* 01F10 80B0DCC0 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80B0F148
/* 01F14 80B0DCC4 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE8
/* 01F18 80B0DCC8 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80B0F14C
/* 01F1C 80B0DCCC AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFEC
/* 01F20 80B0DCD0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01F24 80B0DCD4 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFF0
/* 01F28 80B0DCD8 84820394 */  lh      $v0, 0x0394($a0)           ## 00000394
/* 01F2C 80B0DCDC 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 01F30 80B0DCE0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01F34 80B0DCE4 14400003 */  bne     $v0, $zero, .L80B0DCF4     
/* 01F38 80B0DCE8 244CFFFF */  addiu   $t4, $v0, 0xFFFF           ## $t4 = FFFFFFFF
/* 01F3C 80B0DCEC 10000003 */  beq     $zero, $zero, .L80B0DCFC   
/* 01F40 80B0DCF0 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80B0DCF4:
/* 01F44 80B0DCF4 A60C0394 */  sh      $t4, 0x0394($s0)           ## 00000394
/* 01F48 80B0DCF8 86030394 */  lh      $v1, 0x0394($s0)           ## 00000394
.L80B0DCFC:
/* 01F4C 80B0DCFC 10600044 */  beq     $v1, $zero, .L80B0DE10     
/* 01F50 80B0DD00 8FA40074 */  lw      $a0, 0x0074($sp)           
/* 01F54 80B0DD04 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01F58 80B0DD08 00000000 */  nop
/* 01F5C 80B0DD0C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01F60 80B0DD10 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 01F64 80B0DD14 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 01F68 80B0DD18 44814000 */  mtc1    $at, $f8                   ## $f8 = 6.00
/* 01F6C 80B0DD1C 46040181 */  sub.s   $f6, $f0, $f4              
/* 01F70 80B0DD20 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01F74 80B0DD24 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 01F78 80B0DD28 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 01F7C 80B0DD2C 46083282 */  mul.s   $f10, $f6, $f8             
/* 01F80 80B0DD30 46128100 */  add.s   $f4, $f16, $f18            
/* 01F84 80B0DD34 46045180 */  add.s   $f6, $f10, $f4             
/* 01F88 80B0DD38 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01F8C 80B0DD3C E7A6005C */  swc1    $f6, 0x005C($sp)           
/* 01F90 80B0DD40 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01F94 80B0DD44 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 01F98 80B0DD48 3C014200 */  lui     $at, 0x4200                ## $at = 42000000
/* 01F9C 80B0DD4C 44819000 */  mtc1    $at, $f18                  ## $f18 = 32.00
/* 01FA0 80B0DD50 46080401 */  sub.s   $f16, $f0, $f8             
/* 01FA4 80B0DD54 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 01FA8 80B0DD58 46128282 */  mul.s   $f10, $f16, $f18           
/* 01FAC 80B0DD5C 46045180 */  add.s   $f6, $f10, $f4             
/* 01FB0 80B0DD60 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01FB4 80B0DD64 E7A60058 */  swc1    $f6, 0x0058($sp)           
/* 01FB8 80B0DD68 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01FBC 80B0DD6C 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 01FC0 80B0DD70 3C014200 */  lui     $at, 0x4200                ## $at = 42000000
/* 01FC4 80B0DD74 44819000 */  mtc1    $at, $f18                  ## $f18 = 32.00
/* 01FC8 80B0DD78 46080401 */  sub.s   $f16, $f0, $f8             
/* 01FCC 80B0DD7C C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 01FD0 80B0DD80 27A60064 */  addiu   $a2, $sp, 0x0064           ## $a2 = FFFFFFF4
/* 01FD4 80B0DD84 240D002A */  addiu   $t5, $zero, 0x002A         ## $t5 = 0000002A
/* 01FD8 80B0DD88 46128282 */  mul.s   $f10, $f16, $f18           
/* 01FDC 80B0DD8C 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 01FE0 80B0DD90 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 01FE4 80B0DD94 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 01FE8 80B0DD98 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 01FEC 80B0DD9C 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 01FF0 80B0DDA0 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 01FF4 80B0DDA4 46045180 */  add.s   $f6, $f10, $f4             
/* 01FF8 80B0DDA8 240A0009 */  addiu   $t2, $zero, 0x0009         ## $t2 = 00000009
/* 01FFC 80B0DDAC 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 02000 80B0DDB0 AFAB003C */  sw      $t3, 0x003C($sp)           
/* 02004 80B0DDB4 E7A60060 */  swc1    $f6, 0x0060($sp)           
/* 02008 80B0DDB8 AFAA0038 */  sw      $t2, 0x0038($sp)           
/* 0200C 80B0DDBC AFA90034 */  sw      $t1, 0x0034($sp)           
/* 02010 80B0DDC0 AFA80028 */  sw      $t0, 0x0028($sp)           
/* 02014 80B0DDC4 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 02018 80B0DDC8 AFB80020 */  sw      $t8, 0x0020($sp)           
/* 0201C 80B0DDCC AFAF001C */  sw      $t7, 0x001C($sp)           
/* 02020 80B0DDD0 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 02024 80B0DDD4 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 02028 80B0DDD8 00C03825 */  or      $a3, $a2, $zero            ## $a3 = FFFFFFF4
/* 0202C 80B0DDDC AFA00030 */  sw      $zero, 0x0030($sp)         
/* 02030 80B0DDE0 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 02034 80B0DDE4 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 02038 80B0DDE8 8FA40074 */  lw      $a0, 0x0074($sp)           
/* 0203C 80B0DDEC 0C00A9AE */  jal     func_8002A6B8              
/* 02040 80B0DDF0 27A50058 */  addiu   $a1, $sp, 0x0058           ## $a1 = FFFFFFE8
/* 02044 80B0DDF4 860C00B4 */  lh      $t4, 0x00B4($s0)           ## 000000B4
/* 02048 80B0DDF8 860E00B8 */  lh      $t6, 0x00B8($s0)           ## 000000B8
/* 0204C 80B0DDFC 258D1000 */  addiu   $t5, $t4, 0x1000           ## $t5 = 00001000
/* 02050 80B0DE00 25CF1000 */  addiu   $t7, $t6, 0x1000           ## $t7 = 00001000
/* 02054 80B0DE04 A60D00B4 */  sh      $t5, 0x00B4($s0)           ## 000000B4
/* 02058 80B0DE08 10000005 */  beq     $zero, $zero, .L80B0DE20   
/* 0205C 80B0DE0C A60F00B8 */  sh      $t7, 0x00B8($s0)           ## 000000B8
.L80B0DE10:
/* 02060 80B0DE10 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 02064 80B0DE14 24070030 */  addiu   $a3, $zero, 0x0030         ## $a3 = 00000030
/* 02068 80B0DE18 0C00B55C */  jal     Actor_Kill
              
/* 0206C 80B0DE1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B0DE20:
/* 02070 80B0DE20 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 02074 80B0DE24 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 02078 80B0DE28 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
/* 0207C 80B0DE2C 03E00008 */  jr      $ra                        
/* 02080 80B0DE30 00000000 */  nop
