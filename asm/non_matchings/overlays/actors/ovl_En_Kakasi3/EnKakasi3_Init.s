glabel EnKakasi3_Init
/* 00028 80A90D48 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0002C 80A90D4C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00030 80A90D50 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00034 80A90D54 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00038 80A90D58 3C0480A9 */  lui     $a0, %hi(D_80A91D60)       ## $a0 = 80A90000
/* 0003C 80A90D5C AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00040 80A90D60 0C00084C */  jal     osSyncPrintf
              
/* 00044 80A90D64 24841D60 */  addiu   $a0, $a0, %lo(D_80A91D60)  ## $a0 = 80A91D60
/* 00048 80A90D68 3C0480A9 */  lui     $a0, %hi(D_80A91D64)       ## $a0 = 80A90000
/* 0004C 80A90D6C 0C00084C */  jal     osSyncPrintf
              
/* 00050 80A90D70 24841D64 */  addiu   $a0, $a0, %lo(D_80A91D64)  ## $a0 = 80A91D64
/* 00054 80A90D74 240E0006 */  addiu   $t6, $zero, 0x0006         ## $t6 = 00000006
/* 00058 80A90D78 A20E001F */  sb      $t6, 0x001F($s0)           ## 0000001F
/* 0005C 80A90D7C 260501BC */  addiu   $a1, $s0, 0x01BC           ## $a1 = 000001BC
/* 00060 80A90D80 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00064 80A90D84 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00068 80A90D88 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0006C 80A90D8C 3C0780A9 */  lui     $a3, %hi(D_80A91D10)       ## $a3 = 80A90000
/* 00070 80A90D90 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00074 80A90D94 24E71D10 */  addiu   $a3, $a3, %lo(D_80A91D10)  ## $a3 = 80A91D10
/* 00078 80A90D98 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0007C 80A90D9C 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00080 80A90DA0 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00084 80A90DA4 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00088 80A90DA8 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 0008C 80A90DAC 24E70214 */  addiu   $a3, $a3, 0x0214           ## $a3 = 06000214
/* 00090 80A90DB0 24C665B0 */  addiu   $a2, $a2, 0x65B0           ## $a2 = 060065B0
/* 00094 80A90DB4 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00098 80A90DB8 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 0009C 80A90DBC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 000A0 80A90DC0 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 000A4 80A90DC4 0C0291BE */  jal     func_800A46F8              
/* 000A8 80A90DC8 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 000AC 80A90DCC 8A080030 */  lwl     $t0, 0x0030($s0)           ## 00000030
/* 000B0 80A90DD0 9A080033 */  lwr     $t0, 0x0033($s0)           ## 00000033
/* 000B4 80A90DD4 8E0F0004 */  lw      $t7, 0x0004($s0)           ## 00000004
/* 000B8 80A90DD8 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 000BC 80A90DDC AA0801B0 */  swl     $t0, 0x01B0($s0)           ## 000001B0
/* 000C0 80A90DE0 BA0801B3 */  swr     $t0, 0x01B3($s0)           ## 000001B3
/* 000C4 80A90DE4 96080034 */  lhu     $t0, 0x0034($s0)           ## 00000034
/* 000C8 80A90DE8 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 000CC 80A90DEC 35F80400 */  ori     $t8, $t7, 0x0400           ## $t8 = 00000400
/* 000D0 80A90DF0 AE180004 */  sw      $t8, 0x0004($s0)           ## 00000004
/* 000D4 80A90DF4 A20900AE */  sb      $t1, 0x00AE($s0)           ## 000000AE
/* 000D8 80A90DF8 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 000DC 80A90DFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000E0 80A90E00 0C00B58B */  jal     Actor_SetScale
              
/* 000E4 80A90E04 A60801B4 */  sh      $t0, 0x01B4($s0)           ## 000001B4
/* 000E8 80A90E08 3C0A80A9 */  lui     $t2, %hi(func_80A911F0)    ## $t2 = 80A90000
/* 000EC 80A90E0C 254A11F0 */  addiu   $t2, $t2, %lo(func_80A911F0) ## $t2 = 80A911F0
/* 000F0 80A90E10 AE0A014C */  sw      $t2, 0x014C($s0)           ## 0000014C
/* 000F4 80A90E14 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 000F8 80A90E18 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 000FC 80A90E1C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00100 80A90E20 03E00008 */  jr      $ra                        
/* 00104 80A90E24 00000000 */  nop


