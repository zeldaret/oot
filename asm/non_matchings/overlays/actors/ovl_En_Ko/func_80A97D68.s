glabel func_80A97D68
/* 00FB8 80A97D68 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00FBC 80A97D6C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00FC0 80A97D70 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00FC4 80A97D74 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00FC8 80A97D78 848E01E8 */  lh      $t6, 0x01E8($a0)           ## 000001E8
/* 00FCC 80A97D7C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00FD0 80A97D80 51C0000F */  beql    $t6, $zero, .L80A97DC0     
/* 00FD4 80A97D84 8E080154 */  lw      $t0, 0x0154($s0)           ## 00000154
/* 00FD8 80A97D88 8C8F0154 */  lw      $t7, 0x0154($a0)           ## 00000154
/* 00FDC 80A97D8C 3C180600 */  lui     $t8, 0x0600                ## $t8 = 06000000
/* 00FE0 80A97D90 27186A60 */  addiu   $t8, $t8, 0x6A60           ## $t8 = 06006A60
/* 00FE4 80A97D94 030FC826 */  xor     $t9, $t8, $t7              
/* 00FE8 80A97D98 2F390001 */  sltiu   $t9, $t9, 0x0001           
/* 00FEC 80A97D9C 17200005 */  bne     $t9, $zero, .L80A97DB4     
/* 00FF0 80A97DA0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00FF4 80A97DA4 3C0580AA */  lui     $a1, %hi(D_80A9A18C)       ## $a1 = 80AA0000
/* 00FF8 80A97DA8 24A5A18C */  addiu   $a1, $a1, %lo(D_80A9A18C)  ## $a1 = 80A9A18C
/* 00FFC 80A97DAC 0C00D3B0 */  jal     func_80034EC0              
/* 01000 80A97DB0 24060020 */  addiu   $a2, $zero, 0x0020         ## $a2 = 00000020
.L80A97DB4:
/* 01004 80A97DB4 1000000D */  beq     $zero, $zero, .L80A97DEC   
/* 01008 80A97DB8 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 0100C 80A97DBC 8E080154 */  lw      $t0, 0x0154($s0)           ## 00000154
.L80A97DC0:
/* 01010 80A97DC0 3C090600 */  lui     $t1, 0x0600                ## $t1 = 06000000
/* 01014 80A97DC4 25297830 */  addiu   $t1, $t1, 0x7830           ## $t1 = 06007830
/* 01018 80A97DC8 01285026 */  xor     $t2, $t1, $t0              
/* 0101C 80A97DCC 2D4A0001 */  sltiu   $t2, $t2, 0x0001           
/* 01020 80A97DD0 15400005 */  bne     $t2, $zero, .L80A97DE8     
/* 01024 80A97DD4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01028 80A97DD8 3C0580AA */  lui     $a1, %hi(D_80A9A18C)       ## $a1 = 80AA0000
/* 0102C 80A97DDC 24A5A18C */  addiu   $a1, $a1, %lo(D_80A9A18C)  ## $a1 = 80A9A18C
/* 01030 80A97DE0 0C00D3B0 */  jal     func_80034EC0              
/* 01034 80A97DE4 24060021 */  addiu   $a2, $zero, 0x0021         ## $a2 = 00000021
.L80A97DE8:
/* 01038 80A97DE8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
.L80A97DEC:
/* 0103C 80A97DEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01040 80A97DF0 260501E8 */  addiu   $a1, $s0, 0x01E8           ## $a1 = 000001E8
/* 01044 80A97DF4 0C00D285 */  jal     func_80034A14              
/* 01048 80A97DF8 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 0104C 80A97DFC 0C2A5F40 */  jal     func_80A97D00              
/* 01050 80A97E00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01054 80A97E04 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01058 80A97E08 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0105C 80A97E0C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01060 80A97E10 03E00008 */  jr      $ra                        
/* 01064 80A97E14 00000000 */  nop


