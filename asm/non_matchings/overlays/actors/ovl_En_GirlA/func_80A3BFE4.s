.rdata
glabel D_80A3D09C
    .asciz "%s(%2d)\n" # %s(%2d)
    .balign 4

.late_rodata
glabel jtbl_80A3D124
.word L80A3C05C
.word L80A3C0AC
.word L80A3C0FC
.word L80A3C14C
.word L80A3C19C
.word L80A3C1F4
.word L80A3C218
.word L80A3C23C

.text
glabel func_80A3BFE4
/* 01894 80A3BFE4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01898 80A3BFE8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0189C 80A3BFEC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 018A0 80A3BFF0 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 018A4 80A3BFF4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 018A8 80A3BFF8 8486001C */  lh      $a2, 0x001C($a0)           ## 0000001C
/* 018AC 80A3BFFC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 018B0 80A3C000 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 018B4 80A3C004 00A12021 */  addu    $a0, $a1, $at              
/* 018B8 80A3C008 82050194 */  lb      $a1, 0x0194($s0)           ## 00000194
/* 018BC 80A3C00C 0C026062 */  jal     Object_IsLoaded
              
/* 018C0 80A3C010 A7A6002E */  sh      $a2, 0x002E($sp)           
/* 018C4 80A3C014 104000E4 */  beq     $v0, $zero, .L80A3C3A8     
/* 018C8 80A3C018 87A6002E */  lh      $a2, 0x002E($sp)           
/* 018CC 80A3C01C 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 018D0 80A3C020 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 018D4 80A3C024 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 018D8 80A3C028 82180194 */  lb      $t8, 0x0194($s0)           ## 00000194
/* 018DC 80A3C02C 01C17824 */  and     $t7, $t6, $at              
/* 018E0 80A3C030 2728FFE2 */  addiu   $t0, $t9, 0xFFE2           ## $t0 = FFFFFFE2
/* 018E4 80A3C034 2D010008 */  sltiu   $at, $t0, 0x0008           
/* 018E8 80A3C038 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 018EC 80A3C03C 10200088 */  beq     $at, $zero, .L80A3C260     
/* 018F0 80A3C040 A218001E */  sb      $t8, 0x001E($s0)           ## 0000001E
/* 018F4 80A3C044 00084080 */  sll     $t0, $t0,  2               
/* 018F8 80A3C048 3C0180A4 */  lui     $at, %hi(jtbl_80A3D124)       ## $at = 80A40000
/* 018FC 80A3C04C 00280821 */  addu    $at, $at, $t0              
/* 01900 80A3C050 8C28D124 */  lw      $t0, %lo(jtbl_80A3D124)($at)  
/* 01904 80A3C054 01000008 */  jr      $t0                        
/* 01908 80A3C058 00000000 */  nop
glabel L80A3C05C
/* 0190C 80A3C05C 3C098016 */  lui     $t1, %hi(gSaveContext+0xef6)
/* 01910 80A3C060 9529F556 */  lhu     $t1, %lo(gSaveContext+0xef6)($t1)
/* 01914 80A3C064 3C0F80A4 */  lui     $t7, %hi(D_80A3C674)       ## $t7 = 80A40000
/* 01918 80A3C068 25EFC674 */  addiu   $t7, $t7, %lo(D_80A3C674)  ## $t7 = 80A3C674
/* 0191C 80A3C06C 312A0100 */  andi    $t2, $t1, 0x0100           ## $t2 = 00000000
/* 01920 80A3C070 11400008 */  beq     $t2, $zero, .L80A3C094     
/* 01924 80A3C074 00067140 */  sll     $t6, $a2,  5               
/* 01928 80A3C078 3C0D80A4 */  lui     $t5, %hi(D_80A3C674)       ## $t5 = 80A40000
/* 0192C 80A3C07C 25ADC674 */  addiu   $t5, $t5, %lo(D_80A3C674)  ## $t5 = 80A3C674
/* 01930 80A3C080 240B70B6 */  addiu   $t3, $zero, 0x70B6         ## $t3 = 000070B6
/* 01934 80A3C084 00066140 */  sll     $t4, $a2,  5               
/* 01938 80A3C088 018D1821 */  addu    $v1, $t4, $t5              
/* 0193C 80A3C08C 10000004 */  beq     $zero, $zero, .L80A3C0A0   
/* 01940 80A3C090 A60B010E */  sh      $t3, 0x010E($s0)           ## 0000010E
.L80A3C094:
/* 01944 80A3C094 01CF1821 */  addu    $v1, $t6, $t7              
/* 01948 80A3C098 9478000C */  lhu     $t8, 0x000C($v1)           ## 0000000C
/* 0194C 80A3C09C A618010E */  sh      $t8, 0x010E($s0)           ## 0000010E
.L80A3C0A0:
/* 01950 80A3C0A0 9479000E */  lhu     $t9, 0x000E($v1)           ## 0000000E
/* 01954 80A3C0A4 10000076 */  beq     $zero, $zero, .L80A3C280   
/* 01958 80A3C0A8 A61901A0 */  sh      $t9, 0x01A0($s0)           ## 000001A0
glabel L80A3C0AC
/* 0195C 80A3C0AC 3C088016 */  lui     $t0, %hi(gSaveContext+0xef6)
/* 01960 80A3C0B0 9508F556 */  lhu     $t0, %lo(gSaveContext+0xef6)($t0)
/* 01964 80A3C0B4 3C0E80A4 */  lui     $t6, %hi(D_80A3C674)       ## $t6 = 80A40000
/* 01968 80A3C0B8 25CEC674 */  addiu   $t6, $t6, %lo(D_80A3C674)  ## $t6 = 80A3C674
/* 0196C 80A3C0BC 31090400 */  andi    $t1, $t0, 0x0400           ## $t1 = 00000000
/* 01970 80A3C0C0 11200008 */  beq     $t1, $zero, .L80A3C0E4     
/* 01974 80A3C0C4 00066940 */  sll     $t5, $a2,  5               
/* 01978 80A3C0C8 3C0C80A4 */  lui     $t4, %hi(D_80A3C674)       ## $t4 = 80A40000
/* 0197C 80A3C0CC 258CC674 */  addiu   $t4, $t4, %lo(D_80A3C674)  ## $t4 = 80A3C674
/* 01980 80A3C0D0 240A70B5 */  addiu   $t2, $zero, 0x70B5         ## $t2 = 000070B5
/* 01984 80A3C0D4 00065940 */  sll     $t3, $a2,  5               
/* 01988 80A3C0D8 016C1821 */  addu    $v1, $t3, $t4              
/* 0198C 80A3C0DC 10000004 */  beq     $zero, $zero, .L80A3C0F0   
/* 01990 80A3C0E0 A60A010E */  sh      $t2, 0x010E($s0)           ## 0000010E
.L80A3C0E4:
/* 01994 80A3C0E4 01AE1821 */  addu    $v1, $t5, $t6              
/* 01998 80A3C0E8 946F000C */  lhu     $t7, 0x000C($v1)           ## 0000000C
/* 0199C 80A3C0EC A60F010E */  sh      $t7, 0x010E($s0)           ## 0000010E
.L80A3C0F0:
/* 019A0 80A3C0F0 9478000E */  lhu     $t8, 0x000E($v1)           ## 0000000E
/* 019A4 80A3C0F4 10000062 */  beq     $zero, $zero, .L80A3C280   
/* 019A8 80A3C0F8 A61801A0 */  sh      $t8, 0x01A0($s0)           ## 000001A0
glabel L80A3C0FC
/* 019AC 80A3C0FC 3C198016 */  lui     $t9, %hi(gSaveContext+0xef6)
/* 019B0 80A3C100 9739F556 */  lhu     $t9, %lo(gSaveContext+0xef6)($t9)
/* 019B4 80A3C104 3C0D80A4 */  lui     $t5, %hi(D_80A3C674)       ## $t5 = 80A40000
/* 019B8 80A3C108 25ADC674 */  addiu   $t5, $t5, %lo(D_80A3C674)  ## $t5 = 80A3C674
/* 019BC 80A3C10C 33280200 */  andi    $t0, $t9, 0x0200           ## $t0 = 00000000
/* 019C0 80A3C110 11000008 */  beq     $t0, $zero, .L80A3C134     
/* 019C4 80A3C114 00066140 */  sll     $t4, $a2,  5               
/* 019C8 80A3C118 3C0B80A4 */  lui     $t3, %hi(D_80A3C674)       ## $t3 = 80A40000
/* 019CC 80A3C11C 256BC674 */  addiu   $t3, $t3, %lo(D_80A3C674)  ## $t3 = 80A3C674
/* 019D0 80A3C120 240970B4 */  addiu   $t1, $zero, 0x70B4         ## $t1 = 000070B4
/* 019D4 80A3C124 00065140 */  sll     $t2, $a2,  5               
/* 019D8 80A3C128 014B1821 */  addu    $v1, $t2, $t3              
/* 019DC 80A3C12C 10000004 */  beq     $zero, $zero, .L80A3C140   
/* 019E0 80A3C130 A609010E */  sh      $t1, 0x010E($s0)           ## 0000010E
.L80A3C134:
/* 019E4 80A3C134 018D1821 */  addu    $v1, $t4, $t5              
/* 019E8 80A3C138 946E000C */  lhu     $t6, 0x000C($v1)           ## 0000000C
/* 019EC 80A3C13C A60E010E */  sh      $t6, 0x010E($s0)           ## 0000010E
.L80A3C140:
/* 019F0 80A3C140 946F000E */  lhu     $t7, 0x000E($v1)           ## 0000000E
/* 019F4 80A3C144 1000004E */  beq     $zero, $zero, .L80A3C280   
/* 019F8 80A3C148 A60F01A0 */  sh      $t7, 0x01A0($s0)           ## 000001A0
glabel L80A3C14C
/* 019FC 80A3C14C 3C188016 */  lui     $t8, %hi(gSaveContext+0xef6)
/* 01A00 80A3C150 9718F556 */  lhu     $t8, %lo(gSaveContext+0xef6)($t8)
/* 01A04 80A3C154 3C0C80A4 */  lui     $t4, %hi(D_80A3C674)       ## $t4 = 80A40000
/* 01A08 80A3C158 258CC674 */  addiu   $t4, $t4, %lo(D_80A3C674)  ## $t4 = 80A3C674
/* 01A0C 80A3C15C 33190800 */  andi    $t9, $t8, 0x0800           ## $t9 = 00000000
/* 01A10 80A3C160 13200008 */  beq     $t9, $zero, .L80A3C184     
/* 01A14 80A3C164 00065940 */  sll     $t3, $a2,  5               
/* 01A18 80A3C168 3C0A80A4 */  lui     $t2, %hi(D_80A3C674)       ## $t2 = 80A40000
/* 01A1C 80A3C16C 254AC674 */  addiu   $t2, $t2, %lo(D_80A3C674)  ## $t2 = 80A3C674
/* 01A20 80A3C170 240870B7 */  addiu   $t0, $zero, 0x70B7         ## $t0 = 000070B7
/* 01A24 80A3C174 00064940 */  sll     $t1, $a2,  5               
/* 01A28 80A3C178 012A1821 */  addu    $v1, $t1, $t2              
/* 01A2C 80A3C17C 10000004 */  beq     $zero, $zero, .L80A3C190   
/* 01A30 80A3C180 A608010E */  sh      $t0, 0x010E($s0)           ## 0000010E
.L80A3C184:
/* 01A34 80A3C184 016C1821 */  addu    $v1, $t3, $t4              
/* 01A38 80A3C188 946D000C */  lhu     $t5, 0x000C($v1)           ## 0000000C
/* 01A3C 80A3C18C A60D010E */  sh      $t5, 0x010E($s0)           ## 0000010E
.L80A3C190:
/* 01A40 80A3C190 946E000E */  lhu     $t6, 0x000E($v1)           ## 0000000E
/* 01A44 80A3C194 1000003A */  beq     $zero, $zero, .L80A3C280   
/* 01A48 80A3C198 A60E01A0 */  sh      $t6, 0x01A0($s0)           ## 000001A0
glabel L80A3C19C
/* 01A4C 80A3C19C 3C0F8016 */  lui     $t7, %hi(gSaveContext+0xef6)
/* 01A50 80A3C1A0 95EFF556 */  lhu     $t7, %lo(gSaveContext+0xef6)($t7)
/* 01A54 80A3C1A4 3C0C80A4 */  lui     $t4, %hi(D_80A3C674)       ## $t4 = 80A40000
/* 01A58 80A3C1A8 258CC674 */  addiu   $t4, $t4, %lo(D_80A3C674)  ## $t4 = 80A3C674
/* 01A5C 80A3C1AC 31F80800 */  andi    $t8, $t7, 0x0800           ## $t8 = 00000000
/* 01A60 80A3C1B0 1300000A */  beq     $t8, $zero, .L80A3C1DC     
/* 01A64 80A3C1B4 00065940 */  sll     $t3, $a2,  5               
/* 01A68 80A3C1B8 3C0980A4 */  lui     $t1, %hi(D_80A3C674)       ## $t1 = 80A40000
/* 01A6C 80A3C1BC 241970BB */  addiu   $t9, $zero, 0x70BB         ## $t9 = 000070BB
/* 01A70 80A3C1C0 2529C674 */  addiu   $t1, $t1, %lo(D_80A3C674)  ## $t1 = 80A3C674
/* 01A74 80A3C1C4 00064140 */  sll     $t0, $a2,  5               
/* 01A78 80A3C1C8 A619010E */  sh      $t9, 0x010E($s0)           ## 0000010E
/* 01A7C 80A3C1CC 01091821 */  addu    $v1, $t0, $t1              
/* 01A80 80A3C1D0 946A000E */  lhu     $t2, 0x000E($v1)           ## 0000000E
/* 01A84 80A3C1D4 1000002A */  beq     $zero, $zero, .L80A3C280   
/* 01A88 80A3C1D8 A60A01A0 */  sh      $t2, 0x01A0($s0)           ## 000001A0
.L80A3C1DC:
/* 01A8C 80A3C1DC 016C1821 */  addu    $v1, $t3, $t4              
/* 01A90 80A3C1E0 946D000C */  lhu     $t5, 0x000C($v1)           ## 0000000C
/* 01A94 80A3C1E4 240E00EB */  addiu   $t6, $zero, 0x00EB         ## $t6 = 000000EB
/* 01A98 80A3C1E8 A60E01A0 */  sh      $t6, 0x01A0($s0)           ## 000001A0
/* 01A9C 80A3C1EC 10000024 */  beq     $zero, $zero, .L80A3C280   
/* 01AA0 80A3C1F0 A60D010E */  sh      $t5, 0x010E($s0)           ## 0000010E
glabel L80A3C1F4
/* 01AA4 80A3C1F4 3C1880A4 */  lui     $t8, %hi(D_80A3C674)       ## $t8 = 80A40000
/* 01AA8 80A3C1F8 2718C674 */  addiu   $t8, $t8, %lo(D_80A3C674)  ## $t8 = 80A3C674
/* 01AAC 80A3C1FC 00067940 */  sll     $t7, $a2,  5               
/* 01AB0 80A3C200 01F81821 */  addu    $v1, $t7, $t8              
/* 01AB4 80A3C204 9479000C */  lhu     $t9, 0x000C($v1)           ## 0000000C
/* 01AB8 80A3C208 A619010E */  sh      $t9, 0x010E($s0)           ## 0000010E
/* 01ABC 80A3C20C 9468000E */  lhu     $t0, 0x000E($v1)           ## 0000000E
/* 01AC0 80A3C210 1000001B */  beq     $zero, $zero, .L80A3C280   
/* 01AC4 80A3C214 A60801A0 */  sh      $t0, 0x01A0($s0)           ## 000001A0
glabel L80A3C218
/* 01AC8 80A3C218 3C0A80A4 */  lui     $t2, %hi(D_80A3C674)       ## $t2 = 80A40000
/* 01ACC 80A3C21C 254AC674 */  addiu   $t2, $t2, %lo(D_80A3C674)  ## $t2 = 80A3C674
/* 01AD0 80A3C220 00064940 */  sll     $t1, $a2,  5               
/* 01AD4 80A3C224 012A1821 */  addu    $v1, $t1, $t2              
/* 01AD8 80A3C228 946B000C */  lhu     $t3, 0x000C($v1)           ## 0000000C
/* 01ADC 80A3C22C A60B010E */  sh      $t3, 0x010E($s0)           ## 0000010E
/* 01AE0 80A3C230 946C000E */  lhu     $t4, 0x000E($v1)           ## 0000000E
/* 01AE4 80A3C234 10000012 */  beq     $zero, $zero, .L80A3C280   
/* 01AE8 80A3C238 A60C01A0 */  sh      $t4, 0x01A0($s0)           ## 000001A0
glabel L80A3C23C
/* 01AEC 80A3C23C 3C0E80A4 */  lui     $t6, %hi(D_80A3C674)       ## $t6 = 80A40000
/* 01AF0 80A3C240 25CEC674 */  addiu   $t6, $t6, %lo(D_80A3C674)  ## $t6 = 80A3C674
/* 01AF4 80A3C244 00066940 */  sll     $t5, $a2,  5               
/* 01AF8 80A3C248 01AE1821 */  addu    $v1, $t5, $t6              
/* 01AFC 80A3C24C 946F000C */  lhu     $t7, 0x000C($v1)           ## 0000000C
/* 01B00 80A3C250 A60F010E */  sh      $t7, 0x010E($s0)           ## 0000010E
/* 01B04 80A3C254 9478000E */  lhu     $t8, 0x000E($v1)           ## 0000000E
/* 01B08 80A3C258 10000009 */  beq     $zero, $zero, .L80A3C280   
/* 01B0C 80A3C25C A61801A0 */  sh      $t8, 0x01A0($s0)           ## 000001A0
.L80A3C260:
/* 01B10 80A3C260 3C0880A4 */  lui     $t0, %hi(D_80A3C674)       ## $t0 = 80A40000
/* 01B14 80A3C264 2508C674 */  addiu   $t0, $t0, %lo(D_80A3C674)  ## $t0 = 80A3C674
/* 01B18 80A3C268 0006C940 */  sll     $t9, $a2,  5               
/* 01B1C 80A3C26C 03281821 */  addu    $v1, $t9, $t0              
/* 01B20 80A3C270 9469000C */  lhu     $t1, 0x000C($v1)           ## 0000000C
/* 01B24 80A3C274 A609010E */  sh      $t1, 0x010E($s0)           ## 0000010E
/* 01B28 80A3C278 946A000E */  lhu     $t2, 0x000E($v1)           ## 0000000E
/* 01B2C 80A3C27C A60A01A0 */  sh      $t2, 0x01A0($s0)           ## 000001A0
.L80A3C280:
/* 01B30 80A3C280 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B34 80A3C284 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 01B38 80A3C288 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 01B3C 80A3C28C 0C28EFD5 */  jal     func_80A3BF54              
/* 01B40 80A3C290 A7A6002E */  sh      $a2, 0x002E($sp)           
/* 01B44 80A3C294 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 01B48 80A3C298 14400008 */  bne     $v0, $zero, .L80A3C2BC     
/* 01B4C 80A3C29C 87A6002E */  lh      $a2, 0x002E($sp)           
/* 01B50 80A3C2A0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01B54 80A3C2A4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01B58 80A3C2A8 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 01B5C 80A3C2AC 0C28EF63 */  jal     func_80A3BD8C              
/* 01B60 80A3C2B0 A7A6002E */  sh      $a2, 0x002E($sp)           
/* 01B64 80A3C2B4 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 01B68 80A3C2B8 87A6002E */  lh      $a2, 0x002E($sp)           
.L80A3C2BC:
/* 01B6C 80A3C2BC 3C0B80A4 */  lui     $t3, %hi(func_80A3BEAC)    ## $t3 = 80A40000
/* 01B70 80A3C2C0 3C0C80A4 */  lui     $t4, %hi(func_80A3BEE0)    ## $t4 = 80A40000
/* 01B74 80A3C2C4 256BBEAC */  addiu   $t3, $t3, %lo(func_80A3BEAC) ## $t3 = 80A3BEAC
/* 01B78 80A3C2C8 258CBEE0 */  addiu   $t4, $t4, %lo(func_80A3BEE0) ## $t4 = 80A3BEE0
/* 01B7C 80A3C2CC AE0B01AC */  sw      $t3, 0x01AC($s0)           ## 000001AC
/* 01B80 80A3C2D0 AE0C01B0 */  sw      $t4, 0x01B0($s0)           ## 000001B0
/* 01B84 80A3C2D4 8C6D0010 */  lw      $t5, 0x0010($v1)           ## 00000010
/* 01B88 80A3C2D8 00065880 */  sll     $t3, $a2,  2               
/* 01B8C 80A3C2DC 3C0580A4 */  lui     $a1, %hi(D_80A3C590)       ## $a1 = 80A40000
/* 01B90 80A3C2E0 AE0D01A4 */  sw      $t5, 0x01A4($s0)           ## 000001A4
/* 01B94 80A3C2E4 8C6E0014 */  lw      $t6, 0x0014($v1)           ## 00000014
/* 01B98 80A3C2E8 00AB2821 */  addu    $a1, $a1, $t3              
/* 01B9C 80A3C2EC 3C0480A4 */  lui     $a0, %hi(D_80A3D09C)       ## $a0 = 80A40000
/* 01BA0 80A3C2F0 AE0E01BC */  sw      $t6, 0x01BC($s0)           ## 000001BC
/* 01BA4 80A3C2F4 8C6F0018 */  lw      $t7, 0x0018($v1)           ## 00000018
/* 01BA8 80A3C2F8 2484D09C */  addiu   $a0, $a0, %lo(D_80A3D09C)  ## $a0 = 80A3D09C
/* 01BAC 80A3C2FC AE0F01C0 */  sw      $t7, 0x01C0($s0)           ## 000001C0
/* 01BB0 80A3C300 8C78001C */  lw      $t8, 0x001C($v1)           ## 0000001C
/* 01BB4 80A3C304 AE1801C4 */  sw      $t8, 0x01C4($s0)           ## 000001C4
/* 01BB8 80A3C308 84790008 */  lh      $t9, 0x0008($v1)           ## 00000008
/* 01BBC 80A3C30C A61901C8 */  sh      $t9, 0x01C8($s0)           ## 000001C8
/* 01BC0 80A3C310 8468000A */  lh      $t0, 0x000A($v1)           ## 0000000A
/* 01BC4 80A3C314 A60801CA */  sh      $t0, 0x01CA($s0)           ## 000001CA
/* 01BC8 80A3C318 8C690004 */  lw      $t1, 0x0004($v1)           ## 00000004
/* 01BCC 80A3C31C AE0901D0 */  sw      $t1, 0x01D0($s0)           ## 000001D0
/* 01BD0 80A3C320 846A0002 */  lh      $t2, 0x0002($v1)           ## 00000002
/* 01BD4 80A3C324 A60A01CC */  sh      $t2, 0x01CC($s0)           ## 000001CC
/* 01BD8 80A3C328 0C00084C */  jal     osSyncPrintf
              
/* 01BDC 80A3C32C 8CA5C590 */  lw      $a1, %lo(D_80A3C590)($a1)  
/* 01BE0 80A3C330 8E0C0004 */  lw      $t4, 0x0004($s0)           ## 00000004
/* 01BE4 80A3C334 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 01BE8 80A3C338 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01BEC 80A3C33C 01816824 */  and     $t5, $t4, $at              
/* 01BF0 80A3C340 AE0D0004 */  sw      $t5, 0x0004($s0)           ## 00000004
/* 01BF4 80A3C344 0C00B58B */  jal     Actor_SetScale
              
/* 01BF8 80A3C348 3C053E80 */  lui     $a1, 0x3E80                ## $a1 = 3E800000
/* 01BFC 80A3C34C 3C0141C0 */  lui     $at, 0x41C0                ## $at = 41C00000
/* 01C00 80A3C350 44812000 */  mtc1    $at, $f4                   ## $f4 = 24.00
/* 01C04 80A3C354 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 01C08 80A3C358 44813000 */  mtc1    $at, $f6                   ## $f6 = 4.00
/* 01C0C 80A3C35C C608000C */  lwc1    $f8, 0x000C($s0)           ## 0000000C
/* 01C10 80A3C360 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 01C14 80A3C364 3C0580A4 */  lui     $a1, %hi(func_80A3BD80)    ## $a1 = 80A40000
/* 01C18 80A3C368 24A5BD80 */  addiu   $a1, $a1, %lo(func_80A3BD80) ## $a1 = 80A3BD80
/* 01C1C 80A3C36C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C20 80A3C370 E60400BC */  swc1    $f4, 0x00BC($s0)           ## 000000BC
/* 01C24 80A3C374 E60600C4 */  swc1    $f6, 0x00C4($s0)           ## 000000C4
/* 01C28 80A3C378 E6080080 */  swc1    $f8, 0x0080($s0)           ## 00000080
/* 01C2C 80A3C37C 0C28E9D4 */  jal     func_80A3A750              
/* 01C30 80A3C380 E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
/* 01C34 80A3C384 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
/* 01C38 80A3C388 3C0F80A4 */  lui     $t7, %hi(func_80A3C3BC)    ## $t7 = 80A40000
/* 01C3C 80A3C38C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01C40 80A3C390 25EFC3BC */  addiu   $t7, $t7, %lo(func_80A3C3BC) ## $t7 = 80A3C3BC
/* 01C44 80A3C394 AE0E019C */  sw      $t6, 0x019C($s0)           ## 0000019C
/* 01C48 80A3C398 AE0F0198 */  sw      $t7, 0x0198($s0)           ## 00000198
/* 01C4C 80A3C39C A60001B4 */  sh      $zero, 0x01B4($s0)         ## 000001B4
/* 01C50 80A3C3A0 A60001B8 */  sh      $zero, 0x01B8($s0)         ## 000001B8
/* 01C54 80A3C3A4 A61801B6 */  sh      $t8, 0x01B6($s0)           ## 000001B6
.L80A3C3A8:
/* 01C58 80A3C3A8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01C5C 80A3C3AC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01C60 80A3C3B0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01C64 80A3C3B4 03E00008 */  jr      $ra                        
/* 01C68 80A3C3B8 00000000 */  nop
