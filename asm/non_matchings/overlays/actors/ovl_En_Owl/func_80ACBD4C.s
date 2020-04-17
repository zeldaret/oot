glabel func_80ACBD4C
/* 01E2C 80ACBD4C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01E30 80ACBD50 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01E34 80ACBD54 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01E38 80ACBD58 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01E3C 80ACBD5C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01E40 80ACBD60 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 01E44 80ACBD64 C48001B0 */  lwc1    $f0, 0x01B0($a0)           ## 000001B0
/* 01E48 80ACBD68 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01E4C 80ACBD6C 24840032 */  addiu   $a0, $a0, 0x0032           ## $a0 = 00000032
/* 01E50 80ACBD70 4600203C */  c.lt.s  $f4, $f0                   
/* 01E54 80ACBD74 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01E58 80ACBD78 24070400 */  addiu   $a3, $zero, 0x0400         ## $a3 = 00000400
/* 01E5C 80ACBD7C 240E0040 */  addiu   $t6, $zero, 0x0040         ## $t6 = 00000040
/* 01E60 80ACBD80 45020008 */  bc1fl   .L80ACBDA4                 
/* 01E64 80ACBD84 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 01E68 80ACBD88 86050400 */  lh      $a1, 0x0400($s0)           ## 00000400
/* 01E6C 80ACBD8C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01E70 80ACBD90 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 01E74 80ACBD94 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
/* 01E78 80ACBD98 C60001B0 */  lwc1    $f0, 0x01B0($s0)           ## 000001B0
/* 01E7C 80ACBD9C A60F00B6 */  sh      $t7, 0x00B6($s0)           ## 000000B6
/* 01E80 80ACBDA0 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
.L80ACBDA4:
/* 01E84 80ACBDA4 44813000 */  mtc1    $at, $f6                   ## $f6 = 45.00
/* 01E88 80ACBDA8 3C0580AD */  lui     $a1, %hi(func_80ACBC0C)    ## $a1 = 80AD0000
/* 01E8C 80ACBDAC 3C0680AD */  lui     $a2, %hi(func_80ACC460)    ## $a2 = 80AD0000
/* 01E90 80ACBDB0 4600303C */  c.lt.s  $f6, $f0                   
/* 01E94 80ACBDB4 3C014188 */  lui     $at, 0x4188                ## $at = 41880000
/* 01E98 80ACBDB8 24C6C460 */  addiu   $a2, $a2, %lo(func_80ACC460) ## $a2 = 80ACC460
/* 01E9C 80ACBDBC 24A5BC0C */  addiu   $a1, $a1, %lo(func_80ACBC0C) ## $a1 = 80ACBC0C
/* 01EA0 80ACBDC0 4500000A */  bc1f    .L80ACBDEC                 
/* 01EA4 80ACBDC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EA8 80ACBDC8 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01EAC 80ACBDCC 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.00
/* 01EB0 80ACBDD0 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 01EB4 80ACBDD4 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 01EB8 80ACBDD8 44818000 */  mtc1    $at, $f16                  ## $f16 = 8.00
/* 01EBC 80ACBDDC E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 01EC0 80ACBDE0 E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
/* 01EC4 80ACBDE4 1000000E */  beq     $zero, $zero, .L80ACBE20   
/* 01EC8 80ACBDE8 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
.L80ACBDEC:
/* 01ECC 80ACBDEC 44819000 */  mtc1    $at, $f18                  ## $f18 = 8.00
/* 01ED0 80ACBDF0 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 01ED4 80ACBDF4 4600903C */  c.lt.s  $f18, $f0                  
/* 01ED8 80ACBDF8 00000000 */  nop
/* 01EDC 80ACBDFC 45020009 */  bc1fl   .L80ACBE24                 
/* 01EE0 80ACBE00 960203FC */  lhu     $v0, 0x03FC($s0)           ## 000003FC
/* 01EE4 80ACBE04 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.00
/* 01EE8 80ACBE08 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 01EEC 80ACBE0C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01EF0 80ACBE10 44814000 */  mtc1    $at, $f8                   ## $f8 = 4.00
/* 01EF4 80ACBE14 E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
/* 01EF8 80ACBE18 E606006C */  swc1    $f6, 0x006C($s0)           ## 0000006C
/* 01EFC 80ACBE1C E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
.L80ACBE20:
/* 01F00 80ACBE20 960203FC */  lhu     $v0, 0x03FC($s0)           ## 000003FC
.L80ACBE24:
/* 01F04 80ACBE24 3C190600 */  lui     $t9, 0x0600                ## $t9 = 06000000
/* 01F08 80ACBE28 273915CC */  addiu   $t9, $t9, 0x15CC           ## $t9 = 060015CC
/* 01F0C 80ACBE2C 30580001 */  andi    $t8, $v0, 0x0001           ## $t8 = 00000000
/* 01F10 80ACBE30 13000014 */  beq     $t8, $zero, .L80ACBE84     
/* 01F14 80ACBE34 26070198 */  addiu   $a3, $s0, 0x0198           ## $a3 = 00000198
/* 01F18 80ACBE38 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 01F1C 80ACBE3C AFB90010 */  sw      $t9, 0x0010($sp)           
/* 01F20 80ACBE40 0C2B342E */  jal     func_80ACD0B8              
/* 01F24 80ACBE44 E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 01F28 80ACBE48 960903FC */  lhu     $t1, 0x03FC($s0)           ## 000003FC
/* 01F2C 80ACBE4C 24080006 */  addiu   $t0, $zero, 0x0006         ## $t0 = 00000006
/* 01F30 80ACBE50 A60803FE */  sh      $t0, 0x03FE($s0)           ## 000003FE
/* 01F34 80ACBE54 312A0040 */  andi    $t2, $t1, 0x0040           ## $t2 = 00000000
/* 01F38 80ACBE58 51400007 */  beql    $t2, $zero, .L80ACBE78     
/* 01F3C 80ACBE5C 860D0400 */  lh      $t5, 0x0400($s0)           ## 00000400
/* 01F40 80ACBE60 860B0400 */  lh      $t3, 0x0400($s0)           ## 00000400
/* 01F44 80ACBE64 960203FC */  lhu     $v0, 0x03FC($s0)           ## 000003FC
/* 01F48 80ACBE68 256C2000 */  addiu   $t4, $t3, 0x2000           ## $t4 = 00002000
/* 01F4C 80ACBE6C 10000005 */  beq     $zero, $zero, .L80ACBE84   
/* 01F50 80ACBE70 A60C0400 */  sh      $t4, 0x0400($s0)           ## 00000400
/* 01F54 80ACBE74 860D0400 */  lh      $t5, 0x0400($s0)           ## 00000400
.L80ACBE78:
/* 01F58 80ACBE78 960203FC */  lhu     $v0, 0x03FC($s0)           ## 000003FC
/* 01F5C 80ACBE7C 25AEE000 */  addiu   $t6, $t5, 0xE000           ## $t6 = FFFFE000
/* 01F60 80ACBE80 A60E0400 */  sh      $t6, 0x0400($s0)           ## 00000400
.L80ACBE84:
/* 01F64 80ACBE84 344F0008 */  ori     $t7, $v0, 0x0008           ## $t7 = 00000008
/* 01F68 80ACBE88 A60F03FC */  sh      $t7, 0x03FC($s0)           ## 000003FC
/* 01F6C 80ACBE8C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01F70 80ACBE90 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01F74 80ACBE94 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01F78 80ACBE98 03E00008 */  jr      $ra                        
/* 01F7C 80ACBE9C 00000000 */  nop
