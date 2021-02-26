glabel func_80A45A00
/* 02CD0 80A45A00 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02CD4 80A45A04 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02CD8 80A45A08 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02CDC 80A45A0C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 02CE0 80A45A10 C4800168 */  lwc1    $f0, 0x0168($a0)           ## 00000168
/* 02CE4 80A45A14 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02CE8 80A45A18 46001032 */  c.eq.s  $f2, $f0                   
/* 02CEC 80A45A1C 00000000 */  nop
/* 02CF0 80A45A20 45030038 */  bc1tl   .L80A45B04                 
/* 02CF4 80A45A24 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02CF8 80A45A28 8C8F0154 */  lw      $t7, 0x0154($a0)           ## 00000154
/* 02CFC 80A45A2C 3C0E0600 */  lui     $t6, %hi(D_06004930)                ## $t6 = 06000000
/* 02D00 80A45A30 25CE4930 */  addiu   $t6, $t6, %lo(D_06004930)           ## $t6 = 06004930
/* 02D04 80A45A34 55CF0033 */  bnel    $t6, $t7, .L80A45B04       
/* 02D08 80A45A38 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02D0C 80A45A3C 4600103C */  c.lt.s  $f2, $f0                   
/* 02D10 80A45A40 3C014160 */  lui     $at, 0x4160                ## $at = 41600000
/* 02D14 80A45A44 45020018 */  bc1fl   .L80A45AA8                 
/* 02D18 80A45A48 4602003C */  c.lt.s  $f0, $f2                   
/* 02D1C 80A45A4C 44812000 */  mtc1    $at, $f4                   ## $f4 = 14.00
/* 02D20 80A45A50 C4860164 */  lwc1    $f6, 0x0164($a0)           ## 00000164
/* 02D24 80A45A54 46062032 */  c.eq.s  $f4, $f6                   
/* 02D28 80A45A58 00000000 */  nop
/* 02D2C 80A45A5C 45020012 */  bc1fl   .L80A45AA8                 
/* 02D30 80A45A60 4602003C */  c.lt.s  $f0, $f2                   
/* 02D34 80A45A64 8498001C */  lh      $t8, 0x001C($a0)           ## 0000001C
/* 02D38 80A45A68 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02D3C 80A45A6C 240538FD */  addiu   $a1, $zero, 0x38FD         ## $a1 = 000038FD
/* 02D40 80A45A70 3319001F */  andi    $t9, $t8, 0x001F           ## $t9 = 00000000
/* 02D44 80A45A74 13210006 */  beq     $t9, $at, .L80A45A90       
/* 02D48 80A45A78 2406003C */  addiu   $a2, $zero, 0x003C         ## $a2 = 0000003C
/* 02D4C 80A45A7C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02D50 80A45A80 240538FD */  addiu   $a1, $zero, 0x38FD         ## $a1 = 000038FD
/* 02D54 80A45A84 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 02D58 80A45A88 10000006 */  beq     $zero, $zero, .L80A45AA4   
/* 02D5C 80A45A8C C6000168 */  lwc1    $f0, 0x0168($s0)           ## 00000168
.L80A45A90:
/* 02D60 80A45A90 3C048013 */  lui     $a0, %hi(D_801333D4)
/* 02D64 80A45A94 0C03D149 */  jal     func_800F4524              
/* 02D68 80A45A98 248433D4 */  addiu   $a0, %lo(D_801333D4)
/* 02D6C 80A45A9C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 02D70 80A45AA0 C6000168 */  lwc1    $f0, 0x0168($s0)           ## 00000168
.L80A45AA4:
/* 02D74 80A45AA4 4602003C */  c.lt.s  $f0, $f2                   
.L80A45AA8:
/* 02D78 80A45AA8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02D7C 80A45AAC 45020015 */  bc1fl   .L80A45B04                 
/* 02D80 80A45AB0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02D84 80A45AB4 C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 02D88 80A45AB8 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 02D8C 80A45ABC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02D90 80A45AC0 46004032 */  c.eq.s  $f8, $f0                   
/* 02D94 80A45AC4 00000000 */  nop
/* 02D98 80A45AC8 45020005 */  bc1fl   .L80A45AE0                 
/* 02D9C 80A45ACC 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 02DA0 80A45AD0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02DA4 80A45AD4 2405387B */  addiu   $a1, $zero, 0x387B         ## $a1 = 0000387B
/* 02DA8 80A45AD8 C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 02DAC 80A45ADC 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
.L80A45AE0:
/* 02DB0 80A45AE0 44815000 */  mtc1    $at, $f10                  ## $f10 = 40.00
/* 02DB4 80A45AE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02DB8 80A45AE8 46005032 */  c.eq.s  $f10, $f0                  
/* 02DBC 80A45AEC 00000000 */  nop
/* 02DC0 80A45AF0 45020004 */  bc1fl   .L80A45B04                 
/* 02DC4 80A45AF4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02DC8 80A45AF8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02DCC 80A45AFC 240538FD */  addiu   $a1, $zero, 0x38FD         ## $a1 = 000038FD
/* 02DD0 80A45B00 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A45B04:
/* 02DD4 80A45B04 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02DD8 80A45B08 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02DDC 80A45B0C 03E00008 */  jr      $ra                        
/* 02DE0 80A45B10 00000000 */  nop
