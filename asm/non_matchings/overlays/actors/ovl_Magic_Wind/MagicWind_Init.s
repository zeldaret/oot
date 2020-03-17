glabel MagicWind_Init
/* 00008 80B8B108 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0000C 80B8B10C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00010 80B8B110 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00014 80B8B114 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00018 80B8B118 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 0001C 80B8B11C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00020 80B8B120 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00024 80B8B124 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00028 80B8B128 3C0680B9 */  lui     $a2, %hi(D_80B8CD90)       ## $a2 = 80B90000
/* 0002C 80B8B12C 3C0780B9 */  lui     $a3, %hi(D_80B8CD50)       ## $a3 = 80B90000
/* 00030 80B8B130 24E7CD50 */  addiu   $a3, $a3, %lo(D_80B8CD50)  ## $a3 = 80B8CD50
/* 00034 80B8B134 24C6CD90 */  addiu   $a2, $a2, %lo(D_80B8CD90)  ## $a2 = 80B8CD90
/* 00038 80B8B138 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 0003C 80B8B13C 0C01B1DE */  jal     func_8006C778              
/* 00040 80B8B140 AFAF0030 */  sw      $t7, 0x0030($sp)           
/* 00044 80B8B144 14400003 */  bne     $v0, $zero, .L80B8B154     
/* 00048 80B8B148 3C0480B9 */  lui     $a0, %hi(D_80B8CDB0)       ## $a0 = 80B90000
/* 0004C 80B8B14C 0C00084C */  jal     osSyncPrintf
              
/* 00050 80B8B150 2484CDB0 */  addiu   $a0, $a0, %lo(D_80B8CDB0)  ## $a0 = 80B8CDB0
.L80B8B154:
/* 00054 80B8B154 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00058 80B8B158 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 0005C 80B8B15C A2180003 */  sb      $t8, 0x0003($s0)           ## 00000003
/* 00060 80B8B160 10400006 */  beq     $v0, $zero, .L80B8B17C     
/* 00064 80B8B164 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00068 80B8B168 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0006C 80B8B16C 10410017 */  beq     $v0, $at, .L80B8B1CC       
/* 00070 80B8B170 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00074 80B8B174 10000032 */  beq     $zero, $zero, .L80B8B240   
/* 00078 80B8B178 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B8B17C:
/* 0007C 80B8B17C 44810000 */  mtc1    $at, $f0                   ## $f0 = 0.00
/* 00080 80B8B180 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00084 80B8B184 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00088 80B8B188 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 0008C 80B8B18C 3C0580B9 */  lui     $a1, %hi(D_80B8CD50)       ## $a1 = 80B90000
/* 00090 80B8B190 44070000 */  mfc1    $a3, $f0                   
/* 00094 80B8B194 44061000 */  mfc1    $a2, $f2                   
/* 00098 80B8B198 24A5CD50 */  addiu   $a1, $a1, %lo(D_80B8CD50)  ## $a1 = 80B8CD50
/* 0009C 80B8B19C 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 000A0 80B8B1A0 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 000A4 80B8B1A4 0C01B225 */  jal     func_8006C894              
/* 000A8 80B8B1A8 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 000AC 80B8B1AC 2419001D */  addiu   $t9, $zero, 0x001D         ## $t9 = 0000001D
/* 000B0 80B8B1B0 3C0580B9 */  lui     $a1, %hi(func_80B8B3C8)    ## $a1 = 80B90000
/* 000B4 80B8B1B4 A619016C */  sh      $t9, 0x016C($s0)           ## 0000016C
/* 000B8 80B8B1B8 24A5B3C8 */  addiu   $a1, $a1, %lo(func_80B8B3C8) ## $a1 = 80B8B3C8
/* 000BC 80B8B1BC 0C2E2C40 */  jal     func_80B8B100              
/* 000C0 80B8B1C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000C4 80B8B1C4 1000001E */  beq     $zero, $zero, .L80B8B240   
/* 000C8 80B8B1C8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B8B1CC:
/* 000CC 80B8B1CC 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 000D0 80B8B1D0 44810000 */  mtc1    $at, $f0                   ## $f0 = 60.00
/* 000D4 80B8B1D4 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 000D8 80B8B1D8 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 000DC 80B8B1DC 44813000 */  mtc1    $at, $f6                   ## $f6 = -1.00
/* 000E0 80B8B1E0 3C0580B9 */  lui     $a1, %hi(D_80B8CD50)       ## $a1 = 80B90000
/* 000E4 80B8B1E4 44060000 */  mfc1    $a2, $f0                   
/* 000E8 80B8B1E8 44071000 */  mfc1    $a3, $f2                   
/* 000EC 80B8B1EC 24A5CD50 */  addiu   $a1, $a1, %lo(D_80B8CD50)  ## $a1 = 80B8CD50
/* 000F0 80B8B1F0 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 000F4 80B8B1F4 0C01B225 */  jal     func_8006C894              
/* 000F8 80B8B1F8 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 000FC 80B8B1FC 3C0580B9 */  lui     $a1, %hi(func_80B8B564)    ## $a1 = 80B90000
/* 00100 80B8B200 24A5B564 */  addiu   $a1, $a1, %lo(func_80B8B564) ## $a1 = 80B8B564
/* 00104 80B8B204 0C2E2C40 */  jal     func_80B8B100              
/* 00108 80B8B208 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0010C 80B8B20C 3C0480B9 */  lui     $a0, %hi(D_80B8CDDC)       ## $a0 = 80B90000
/* 00110 80B8B210 2484CDDC */  addiu   $a0, $a0, %lo(D_80B8CDDC)  ## $a0 = 80B8CDDC
/* 00114 80B8B214 0C000B84 */  jal     LogUtils_LogThreadId
              
/* 00118 80B8B218 240501E6 */  addiu   $a1, $zero, 0x01E6         ## $a1 = 000001E6
/* 0011C 80B8B21C 3C0480B9 */  lui     $a0, %hi(D_80B8CDF0)       ## $a0 = 80B90000
/* 00120 80B8B220 3C0580B9 */  lui     $a1, %hi(D_80B8CE04)       ## $a1 = 80B90000
/* 00124 80B8B224 24A5CE04 */  addiu   $a1, $a1, %lo(D_80B8CE04)  ## $a1 = 80B8CE04
/* 00128 80B8B228 0C00084C */  jal     osSyncPrintf
              
/* 0012C 80B8B22C 2484CDF0 */  addiu   $a0, $a0, %lo(D_80B8CDF0)  ## $a0 = 80B8CDF0
/* 00130 80B8B230 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00134 80B8B234 0C00BDF7 */  jal     func_8002F7DC              
/* 00138 80B8B238 2405087B */  addiu   $a1, $zero, 0x087B         ## $a1 = 0000087B
/* 0013C 80B8B23C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B8B240:
/* 00140 80B8B240 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00144 80B8B244 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00148 80B8B248 03E00008 */  jr      $ra                        
/* 0014C 80B8B24C 00000000 */  nop


