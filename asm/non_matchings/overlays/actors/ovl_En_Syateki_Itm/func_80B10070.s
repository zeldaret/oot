glabel func_80B10070
/* 009C0 80B10070 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 009C4 80B10074 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 009C8 80B10078 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 009CC 80B1007C 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 009D0 80B10080 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 009D4 80B10084 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 009D8 80B10088 A44E0110 */  sh      $t6, 0x0110($v0)           ## 00000110
/* 009DC 80B1008C 84830154 */  lh      $v1, 0x0154($a0)           ## 00000154
/* 009E0 80B10090 3C0F80B1 */  lui     $t7, %hi(func_80B0F838)    ## $t7 = 80B10000
/* 009E4 80B10094 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009E8 80B10098 14610004 */  bne     $v1, $at, .L80B100AC       
/* 009EC 80B1009C 25EFF838 */  addiu   $t7, $t7, %lo(func_80B0F838) ## $t7 = 80B0F838
/* 009F0 80B100A0 A4800154 */  sh      $zero, 0x0154($a0)         ## 00000154
/* 009F4 80B100A4 84830154 */  lh      $v1, 0x0154($a0)           ## 00000154
/* 009F8 80B100A8 AC8F014C */  sw      $t7, 0x014C($a0)           ## 0000014C
.L80B100AC:
/* 009FC 80B100AC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00A00 80B100B0 14610024 */  bne     $v1, $at, .L80B10144       
/* 00A04 80B100B4 3C0480B1 */  lui     $a0, %hi(D_80B10468)       ## $a0 = 80B10000
/* 00A08 80B100B8 3C1880B1 */  lui     $t8, %hi(func_80B0F838)    ## $t8 = 80B10000
/* 00A0C 80B100BC 2718F838 */  addiu   $t8, $t8, %lo(func_80B0F838) ## $t8 = 80B0F838
/* 00A10 80B100C0 AFB80020 */  sw      $t8, 0x0020($sp)           
/* 00A14 80B100C4 0C00084C */  jal     osSyncPrintf
              
/* 00A18 80B100C8 24840468 */  addiu   $a0, $a0, %lo(D_80B10468)  ## $a0 = 80B10468
/* 00A1C 80B100CC 3C0480B1 */  lui     $a0, %hi(D_80B1049C)       ## $a0 = 80B10000
/* 00A20 80B100D0 0C00084C */  jal     osSyncPrintf
              
/* 00A24 80B100D4 2484049C */  addiu   $a0, $a0, %lo(D_80B1049C)  ## $a0 = 80B1049C
/* 00A28 80B100D8 3C0480B1 */  lui     $a0, %hi(D_80B104D0)       ## $a0 = 80B10000
/* 00A2C 80B100DC 0C00084C */  jal     osSyncPrintf
              
/* 00A30 80B100E0 248404D0 */  addiu   $a0, $a0, %lo(D_80B104D0)  ## $a0 = 80B104D0
/* 00A34 80B100E4 3C0480B1 */  lui     $a0, %hi(D_80B10504)       ## $a0 = 80B10000
/* 00A38 80B100E8 0C00084C */  jal     osSyncPrintf
              
/* 00A3C 80B100EC 24840504 */  addiu   $a0, $a0, %lo(D_80B10504)  ## $a0 = 80B10504
/* 00A40 80B100F0 3C0480B1 */  lui     $a0, %hi(D_80B10538)       ## $a0 = 80B10000
/* 00A44 80B100F4 0C00084C */  jal     osSyncPrintf
              
/* 00A48 80B100F8 24840538 */  addiu   $a0, $a0, %lo(D_80B10538)  ## $a0 = 80B10538
/* 00A4C 80B100FC 3C0480B1 */  lui     $a0, %hi(D_80B1056C)       ## $a0 = 80B10000
/* 00A50 80B10100 0C00084C */  jal     osSyncPrintf
              
/* 00A54 80B10104 2484056C */  addiu   $a0, $a0, %lo(D_80B1056C)  ## $a0 = 80B1056C
/* 00A58 80B10108 3C0480B1 */  lui     $a0, %hi(D_80B105A0)       ## $a0 = 80B10000
/* 00A5C 80B1010C 0C00084C */  jal     osSyncPrintf
              
/* 00A60 80B10110 248405A0 */  addiu   $a0, $a0, %lo(D_80B105A0)  ## $a0 = 80B105A0
/* 00A64 80B10114 3C0480B1 */  lui     $a0, %hi(D_80B105D4)       ## $a0 = 80B10000
/* 00A68 80B10118 0C00084C */  jal     osSyncPrintf
              
/* 00A6C 80B1011C 248405D4 */  addiu   $a0, $a0, %lo(D_80B105D4)  ## $a0 = 80B105D4
/* 00A70 80B10120 3C0480B1 */  lui     $a0, %hi(D_80B10608)       ## $a0 = 80B10000
/* 00A74 80B10124 0C00084C */  jal     osSyncPrintf
              
/* 00A78 80B10128 24840608 */  addiu   $a0, $a0, %lo(D_80B10608)  ## $a0 = 80B10608
/* 00A7C 80B1012C 3C0480B1 */  lui     $a0, %hi(D_80B1063C)       ## $a0 = 80B10000
/* 00A80 80B10130 0C00084C */  jal     osSyncPrintf
              
/* 00A84 80B10134 2484063C */  addiu   $a0, $a0, %lo(D_80B1063C)  ## $a0 = 80B1063C
/* 00A88 80B10138 A6000154 */  sh      $zero, 0x0154($s0)         ## 00000154
/* 00A8C 80B1013C 8FB90020 */  lw      $t9, 0x0020($sp)           
/* 00A90 80B10140 AE19014C */  sw      $t9, 0x014C($s0)           ## 0000014C
.L80B10144:
/* 00A94 80B10144 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A98 80B10148 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00A9C 80B1014C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00AA0 80B10150 03E00008 */  jr      $ra                        
/* 00AA4 80B10154 00000000 */  nop


