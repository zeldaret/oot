glabel func_80B03D74
/* 01B04 80B03D74 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01B08 80B03D78 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01B0C 80B03D7C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01B10 80B03D80 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01B14 80B03D84 84820528 */  lh      $v0, 0x0528($a0)           ## 00000528
/* 01B18 80B03D88 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01B1C 80B03D8C 5040000C */  beql    $v0, $zero, .L80B03DC0     
/* 01B20 80B03D90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B24 80B03D94 14400003 */  bne     $v0, $zero, .L80B03DA4     
/* 01B28 80B03D98 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01B2C 80B03D9C 10000003 */  beq     $zero, $zero, .L80B03DAC   
/* 01B30 80B03DA0 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80B03DA4:
/* 01B34 80B03DA4 A60E0528 */  sh      $t6, 0x0528($s0)           ## 00000528
/* 01B38 80B03DA8 86030528 */  lh      $v1, 0x0528($s0)           ## 00000528
.L80B03DAC:
/* 01B3C 80B03DAC 14600003 */  bne     $v1, $zero, .L80B03DBC     
/* 01B40 80B03DB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B44 80B03DB4 0C2C09C0 */  jal     func_80B02700              
/* 01B48 80B03DB8 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
.L80B03DBC:
/* 01B4C 80B03DBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B03DC0:
/* 01B50 80B03DC0 0C2C0B6F */  jal     func_80B02DBC              
/* 01B54 80B03DC4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01B58 80B03DC8 14400009 */  bne     $v0, $zero, .L80B03DF0     
/* 01B5C 80B03DCC 00000000 */  nop
/* 01B60 80B03DD0 0C2C0A15 */  jal     func_80B02854              
/* 01B64 80B03DD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B68 80B03DD8 3C0580B0 */  lui     $a1, %hi(func_80B03E74)    ## $a1 = 80B00000
/* 01B6C 80B03DDC 24A53E74 */  addiu   $a1, $a1, %lo(func_80B03E74) ## $a1 = 80B03E74
/* 01B70 80B03DE0 0C2C089C */  jal     func_80B02270              
/* 01B74 80B03DE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B78 80B03DE8 1000001E */  beq     $zero, $zero, .L80B03E64   
/* 01B7C 80B03DEC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B03DF0:
/* 01B80 80B03DF0 0C2C0BB7 */  jal     func_80B02EDC              
/* 01B84 80B03DF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B88 80B03DF8 1040000B */  beq     $v0, $zero, .L80B03E28     
/* 01B8C 80B03DFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B90 80B03E00 0C2C089E */  jal     func_80B02278              
/* 01B94 80B03E04 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01B98 80B03E08 0C2C0A21 */  jal     func_80B02884              
/* 01B9C 80B03E0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01BA0 80B03E10 3C0580B0 */  lui     $a1, %hi(func_80B03C8C)    ## $a1 = 80B00000
/* 01BA4 80B03E14 24A53C8C */  addiu   $a1, $a1, %lo(func_80B03C8C) ## $a1 = 80B03C8C
/* 01BA8 80B03E18 0C2C089C */  jal     func_80B02270              
/* 01BAC 80B03E1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01BB0 80B03E20 10000010 */  beq     $zero, $zero, .L80B03E64   
/* 01BB4 80B03E24 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B03E28:
/* 01BB8 80B03E28 86020530 */  lh      $v0, 0x0530($s0)           ## 00000530
/* 01BBC 80B03E2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01BC0 80B03E30 14400003 */  bne     $v0, $zero, .L80B03E40     
/* 01BC4 80B03E34 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 01BC8 80B03E38 10000003 */  beq     $zero, $zero, .L80B03E48   
/* 01BCC 80B03E3C 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80B03E40:
/* 01BD0 80B03E40 A60F0530 */  sh      $t7, 0x0530($s0)           ## 00000530
/* 01BD4 80B03E44 86030530 */  lh      $v1, 0x0530($s0)           ## 00000530
.L80B03E48:
/* 01BD8 80B03E48 54600006 */  bnel    $v1, $zero, .L80B03E64     
/* 01BDC 80B03E4C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01BE0 80B03E50 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01BE4 80B03E54 24053868 */  addiu   $a1, $zero, 0x3868         ## $a1 = 00003868
/* 01BE8 80B03E58 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 01BEC 80B03E5C A6180530 */  sh      $t8, 0x0530($s0)           ## 00000530
/* 01BF0 80B03E60 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B03E64:
/* 01BF4 80B03E64 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01BF8 80B03E68 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01BFC 80B03E6C 03E00008 */  jr      $ra                        
/* 01C00 80B03E70 00000000 */  nop


