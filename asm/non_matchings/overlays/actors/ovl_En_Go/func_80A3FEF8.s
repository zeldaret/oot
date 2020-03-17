glabel func_80A3FEF8
/* 01988 80A3FEF8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0198C 80A3FEFC AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 01990 80A3FF00 AFB10030 */  sw      $s1, 0x0030($sp)           
/* 01994 80A3FF04 AFB0002C */  sw      $s0, 0x002C($sp)           
/* 01998 80A3FF08 8482020E */  lh      $v0, 0x020E($a0)           ## 0000020E
/* 0199C 80A3FF0C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 019A0 80A3FF10 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 019A4 80A3FF14 14400003 */  bne     $v0, $zero, .L80A3FF24     
/* 019A8 80A3FF18 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 019AC 80A3FF1C 10000003 */  beq     $zero, $zero, .L80A3FF2C   
/* 019B0 80A3FF20 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80A3FF24:
/* 019B4 80A3FF24 A60E020E */  sh      $t6, 0x020E($s0)           ## 0000020E
/* 019B8 80A3FF28 8603020E */  lh      $v1, 0x020E($s0)           ## 0000020E
.L80A3FF2C:
/* 019BC 80A3FF2C 54600018 */  bnel    $v1, $zero, .L80A3FF90     
/* 019C0 80A3FF30 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 019C4 80A3FF34 920201A7 */  lbu     $v0, 0x01A7($s0)           ## 000001A7
/* 019C8 80A3FF38 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 019CC 80A3FF3C 0331C821 */  addu    $t9, $t9, $s1              
/* 019D0 80A3FF40 304F0001 */  andi    $t7, $v0, 0x0001           ## $t7 = 00000000
/* 019D4 80A3FF44 11E00011 */  beq     $t7, $zero, .L80A3FF8C     
/* 019D8 80A3FF48 3058FFFE */  andi    $t8, $v0, 0xFFFE           ## $t8 = 00000000
/* 019DC 80A3FF4C A21801A7 */  sb      $t8, 0x01A7($s0)           ## 000001A7
/* 019E0 80A3FF50 8F391D58 */  lw      $t9, 0x1D58($t9)           ## 00011D58
/* 019E4 80A3FF54 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 019E8 80A3FF58 2405FFFC */  addiu   $a1, $zero, 0xFFFC         ## $a1 = FFFFFFFC
/* 019EC 80A3FF5C 0320F809 */  jalr    $ra, $t9                   
/* 019F0 80A3FF60 00000000 */  nop
/* 019F4 80A3FF64 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 019F8 80A3FF68 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.00
/* 019FC 80A3FF6C 8607008A */  lh      $a3, 0x008A($s0)           ## 0000008A
/* 01A00 80A3FF70 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01A04 80A3FF74 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01A08 80A3FF78 3C064080 */  lui     $a2, 0x4080                ## $a2 = 40800000
/* 01A0C 80A3FF7C 0C00BDC7 */  jal     func_8002F71C              
/* 01A10 80A3FF80 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 01A14 80A3FF84 24080010 */  addiu   $t0, $zero, 0x0010         ## $t0 = 00000010
/* 01A18 80A3FF88 A608020E */  sh      $t0, 0x020E($s0)           ## 0000020E
.L80A3FF8C:
/* 01A1C 80A3FF8C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
.L80A3FF90:
/* 01A20 80A3FF90 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 01A24 80A3FF94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A28 80A3FF98 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01A2C 80A3FF9C 0C28FCC0 */  jal     func_80A3F300              
/* 01A30 80A3FFA0 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 01A34 80A3FFA4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01A38 80A3FFA8 5441001A */  bnel    $v0, $at, .L80A40014       
/* 01A3C 80A3FFAC 8A0B0030 */  lwl     $t3, 0x0030($s0)           ## 00000030
/* 01A40 80A3FFB0 86090218 */  lh      $t1, 0x0218($s0)           ## 00000218
/* 01A44 80A3FFB4 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 01A48 80A3FFB8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01A4C 80A3FFBC 55200015 */  bnel    $t1, $zero, .L80A40014     
/* 01A50 80A3FFC0 8A0B0030 */  lwl     $t3, 0x0030($s0)           ## 00000030
/* 01A54 80A3FFC4 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 01A58 80A3FFC8 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 01A5C 80A3FFCC 24060010 */  addiu   $a2, $zero, 0x0010         ## $a2 = 00000010
/* 01A60 80A3FFD0 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 01A64 80A3FFD4 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 01A68 80A3FFD8 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 01A6C 80A3FFDC AFA00020 */  sw      $zero, 0x0020($sp)         
/* 01A70 80A3FFE0 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 01A74 80A3FFE4 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 01A78 80A3FFE8 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 01A7C 80A3FFEC E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 01A80 80A3FFF0 10400002 */  beq     $v0, $zero, .L80A3FFFC     
/* 01A84 80A3FFF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A88 80A3FFF8 A44001F8 */  sh      $zero, 0x01F8($v0)         ## 000001F8
.L80A3FFFC:
/* 01A8C 80A3FFFC 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 01A90 80A40000 3C0580A4 */  lui     $a1, %hi(func_80A4008C)    ## $a1 = 80A40000
/* 01A94 80A40004 24A5008C */  addiu   $a1, $a1, %lo(func_80A4008C) ## $a1 = 80A4008C
/* 01A98 80A40008 0C28F95C */  jal     func_80A3E570              
/* 01A9C 80A4000C E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
/* 01AA0 80A40010 8A0B0030 */  lwl     $t3, 0x0030($s0)           ## 00000030
.L80A40014:
/* 01AA4 80A40014 9A0B0033 */  lwr     $t3, 0x0033($s0)           ## 00000033
/* 01AA8 80A40018 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01AAC 80A4001C 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01AB0 80A40020 AA0B00B4 */  swl     $t3, 0x00B4($s0)           ## 000000B4
/* 01AB4 80A40024 BA0B00B7 */  swr     $t3, 0x00B7($s0)           ## 000000B7
/* 01AB8 80A40028 960B0034 */  lhu     $t3, 0x0034($s0)           ## 00000034
/* 01ABC 80A4002C 3C0640C0 */  lui     $a2, 0x40C0                ## $a2 = 40C00000
/* 01AC0 80A40030 0C28FDF0 */  jal     func_80A3F7C0              
/* 01AC4 80A40034 A60B00B8 */  sh      $t3, 0x00B8($s0)           ## 000000B8
/* 01AC8 80A40038 1040000F */  beq     $v0, $zero, .L80A40078     
/* 01ACC 80A4003C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01AD0 80A40040 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01AD4 80A40044 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 01AD8 80A40048 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01ADC 80A4004C 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 01AE0 80A40050 3C063E23 */  lui     $a2, 0x3E23                ## $a2 = 3E230000
/* 01AE4 80A40054 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 01AE8 80A40058 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 01AEC 80A4005C AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 01AF0 80A40060 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 01AF4 80A40064 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3E23D70A
/* 01AF8 80A40068 2405000C */  addiu   $a1, $zero, 0x000C         ## $a1 = 0000000C
/* 01AFC 80A4006C E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 01B00 80A40070 0C28FD65 */  jal     func_80A3F594              
/* 01B04 80A40074 E7A40018 */  swc1    $f4, 0x0018($sp)           
.L80A40078:
/* 01B08 80A40078 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 01B0C 80A4007C 8FB0002C */  lw      $s0, 0x002C($sp)           
/* 01B10 80A40080 8FB10030 */  lw      $s1, 0x0030($sp)           
/* 01B14 80A40084 03E00008 */  jr      $ra                        
/* 01B18 80A40088 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000


