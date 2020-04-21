glabel EnFz_Init
/* 00000 80A1FDC0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00004 80A1FDC4 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00008 80A1FDC8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0000C 80A1FDCC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00010 80A1FDD0 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00014 80A1FDD4 3C0580A2 */  lui     $a1, %hi(D_80A21C34)       ## $a1 = 80A20000
/* 00018 80A1FDD8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 80A1FDDC 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00020 80A1FDE0 24A51C34 */  addiu   $a1, $a1, %lo(D_80A21C34)  ## $a1 = 80A21C34
/* 00024 80A1FDE4 3C0E80A2 */  lui     $t6, %hi(D_80A21C14)       ## $t6 = 80A20000
/* 00028 80A1FDE8 25CE1C14 */  addiu   $t6, $t6, %lo(D_80A21C14)  ## $t6 = 80A21C14
/* 0002C 80A1FDEC 240F0006 */  addiu   $t7, $zero, 0x0006         ## $t7 = 00000006
/* 00030 80A1FDF0 AE0E0098 */  sw      $t6, 0x0098($s0)           ## 00000098
/* 00034 80A1FDF4 A20F00AF */  sb      $t7, 0x00AF($s0)           ## 000000AF
/* 00038 80A1FDF8 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 0003C 80A1FDFC AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00040 80A1FE00 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00044 80A1FE04 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00048 80A1FE08 3C0780A2 */  lui     $a3, %hi(D_80A21B90)       ## $a3 = 80A20000
/* 0004C 80A1FE0C 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00050 80A1FE10 24E71B90 */  addiu   $a3, $a3, %lo(D_80A21B90)  ## $a3 = 80A21B90
/* 00054 80A1FE14 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00058 80A1FE18 0C017114 */  jal     func_8005C450              
/* 0005C 80A1FE1C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00060 80A1FE20 2605019C */  addiu   $a1, $s0, 0x019C           ## $a1 = 0000019C
/* 00064 80A1FE24 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00068 80A1FE28 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 0006C 80A1FE2C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00070 80A1FE30 3C0780A2 */  lui     $a3, %hi(D_80A21BBC)       ## $a3 = 80A20000
/* 00074 80A1FE34 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00078 80A1FE38 24E71BBC */  addiu   $a3, $a3, %lo(D_80A21BBC)  ## $a3 = 80A21BBC
/* 0007C 80A1FE3C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00080 80A1FE40 0C017114 */  jal     func_8005C450              
/* 00084 80A1FE44 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00088 80A1FE48 260501E8 */  addiu   $a1, $s0, 0x01E8           ## $a1 = 000001E8
/* 0008C 80A1FE4C AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00090 80A1FE50 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00094 80A1FE54 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00098 80A1FE58 3C0780A2 */  lui     $a3, %hi(D_80A21BE8)       ## $a3 = 80A20000
/* 0009C 80A1FE5C 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 000A0 80A1FE60 24E71BE8 */  addiu   $a3, $a3, %lo(D_80A21BE8)  ## $a3 = 80A21BE8
/* 000A4 80A1FE64 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000A8 80A1FE68 0C017114 */  jal     func_8005C450              
/* 000AC 80A1FE6C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000B0 80A1FE70 3C053C03 */  lui     $a1, 0x3C03                ## $a1 = 3C030000
/* 000B4 80A1FE74 34A5126F */  ori     $a1, $a1, 0x126F           ## $a1 = 3C03126F
/* 000B8 80A1FE78 0C00B58B */  jal     Actor_SetScale
              
/* 000BC 80A1FE7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000C0 80A1FE80 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 000C4 80A1FE84 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 000C8 80A1FE88 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 000CC 80A1FE8C 0301C824 */  and     $t9, $t8, $at              
/* 000D0 80A1FE90 C6000028 */  lwc1    $f0, 0x0028($s0)           ## 00000028
/* 000D4 80A1FE94 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 000D8 80A1FE98 3C014307 */  lui     $at, 0x4307                ## $at = 43070000
/* 000DC 80A1FE9C C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 000E0 80A1FEA0 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 000E4 80A1FEA4 44814000 */  mtc1    $at, $f8                   ## $f8 = 135.00
/* 000E8 80A1FEA8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 000EC 80A1FEAC 240300FF */  addiu   $v1, $zero, 0x00FF         ## $v1 = 000000FF
/* 000F0 80A1FEB0 A20300AE */  sb      $v1, 0x00AE($s0)           ## 000000AE
/* 000F4 80A1FEB4 AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 000F8 80A1FEB8 A6000242 */  sh      $zero, 0x0242($s0)         ## 00000242
/* 000FC 80A1FEBC A2000249 */  sb      $zero, 0x0249($s0)         ## 00000249
/* 00100 80A1FEC0 A2020246 */  sb      $v0, 0x0246($s0)           ## 00000246
/* 00104 80A1FEC4 A2000247 */  sb      $zero, 0x0247($s0)         ## 00000247
/* 00108 80A1FEC8 A2000248 */  sb      $zero, 0x0248($s0)         ## 00000248
/* 0010C 80A1FECC A2020261 */  sb      $v0, 0x0261($s0)           ## 00000261
/* 00110 80A1FED0 A2000262 */  sb      $zero, 0x0262($s0)         ## 00000262
/* 00114 80A1FED4 E6020068 */  swc1    $f2, 0x0068($s0)           ## 00000068
/* 00118 80A1FED8 E602006C */  swc1    $f2, 0x006C($s0)           ## 0000006C
/* 0011C 80A1FEDC E6020060 */  swc1    $f2, 0x0060($s0)           ## 00000060
/* 00120 80A1FEE0 E6000238 */  swc1    $f0, 0x0238($s0)           ## 00000238
/* 00124 80A1FEE4 E600024C */  swc1    $f0, 0x024C($s0)           ## 0000024C
/* 00128 80A1FEE8 E6040234 */  swc1    $f4, 0x0234($s0)           ## 00000234
/* 0012C 80A1FEEC E606023C */  swc1    $f6, 0x023C($s0)           ## 0000023C
/* 00130 80A1FEF0 05010007 */  bgez    $t0, .L80A1FF10            
/* 00134 80A1FEF4 E6080250 */  swc1    $f8, 0x0250($s0)           ## 00000250
/* 00138 80A1FEF8 AE000258 */  sw      $zero, 0x0258($s0)         ## 00000258
/* 0013C 80A1FEFC E6020054 */  swc1    $f2, 0x0054($s0)           ## 00000054
/* 00140 80A1FF00 0C2881FD */  jal     func_80A207F4              
/* 00144 80A1FF04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00148 80A1FF08 10000005 */  beq     $zero, $zero, .L80A1FF20   
/* 0014C 80A1FF0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A1FF10:
/* 00150 80A1FF10 AE030258 */  sw      $v1, 0x0258($s0)           ## 00000258
/* 00154 80A1FF14 0C2883A1 */  jal     func_80A20E84              
/* 00158 80A1FF18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0015C 80A1FF1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A1FF20:
/* 00160 80A1FF20 0C287FE3 */  jal     func_80A1FF8C              
/* 00164 80A1FF24 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00168 80A1FF28 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0016C 80A1FF2C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00170 80A1FF30 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00174 80A1FF34 03E00008 */  jr      $ra                        
/* 00178 80A1FF38 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
