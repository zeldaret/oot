glabel BgGndSoulmeiro_Init
/* 00000 8087ADC0 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00004 8087ADC4 AFB10030 */  sw      $s1, 0x0030($sp)           
/* 00008 8087ADC8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0000C 8087ADCC AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00010 8087ADD0 AFB0002C */  sw      $s0, 0x002C($sp)           
/* 00014 8087ADD4 3C058088 */  lui     $a1, %hi(D_8087B55C)       ## $a1 = 80880000
/* 00018 8087ADD8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 8087ADDC 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00020 8087ADE0 24A5B55C */  addiu   $a1, $a1, %lo(D_8087B55C)  ## $a1 = 8087B55C
/* 00024 8087ADE4 8603001C */  lh      $v1, 0x001C($s0)           ## 0000001C
/* 00028 8087ADE8 AE00019C */  sw      $zero, 0x019C($s0)         ## 0000019C
/* 0002C 8087ADEC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00030 8087ADF0 306200FF */  andi    $v0, $v1, 0x00FF           ## $v0 = 00000000
/* 00034 8087ADF4 10400009 */  beq     $v0, $zero, .L8087AE1C     
/* 00038 8087ADF8 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 0003C 8087ADFC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00040 8087AE00 1041002E */  beq     $v0, $at, .L8087AEBC       
/* 00044 8087AE04 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00048 8087AE08 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0004C 8087AE0C 5041002C */  beql    $v0, $at, .L8087AEC0       
/* 00050 8087AE10 00032A03 */  sra     $a1, $v1,  8               
/* 00054 8087AE14 10000036 */  beq     $zero, $zero, .L8087AEF0   
/* 00058 8087AE18 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L8087AE1C:
/* 0005C 8087AE1C 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00060 8087AE20 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 00064 8087AE24 3C078088 */  lui     $a3, %hi(D_8087B530)       ## $a3 = 80880000
/* 00068 8087AE28 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 0006C 8087AE2C 24E7B530 */  addiu   $a3, $a3, %lo(D_8087B530)  ## $a3 = 8087B530
/* 00070 8087AE30 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00074 8087AE34 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00078 8087AE38 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0007C 8087AE3C 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00080 8087AE40 3C0E8088 */  lui     $t6, %hi(func_8087B284)    ## $t6 = 80880000
/* 00084 8087AE44 25CEB284 */  addiu   $t6, $t6, %lo(func_8087B284) ## $t6 = 8087B284
/* 00088 8087AE48 00052A03 */  sra     $a1, $a1,  8               
/* 0008C 8087AE4C AE0E019C */  sw      $t6, 0x019C($s0)           ## 0000019C
/* 00090 8087AE50 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00094 8087AE54 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00098 8087AE58 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0009C 8087AE5C 10400014 */  beq     $v0, $zero, .L8087AEB0     
/* 000A0 8087AE60 3C188088 */  lui     $t8, %hi(BgGndSoulmeiro_Draw)    ## $t8 = 80880000
/* 000A4 8087AE64 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 000A8 8087AE68 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 000AC 8087AE6C 240F0009 */  addiu   $t7, $zero, 0x0009         ## $t7 = 00000009
/* 000B0 8087AE70 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 000B4 8087AE74 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 000B8 8087AE78 AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 000BC 8087AE7C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 000C0 8087AE80 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 000C4 8087AE84 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 000C8 8087AE88 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 000CC 8087AE8C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 000D0 8087AE90 240600B7 */  addiu   $a2, $zero, 0x00B7         ## $a2 = 000000B7
/* 000D4 8087AE94 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 000D8 8087AE98 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 000DC 8087AE9C AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
/* 000E0 8087AEA0 0C00B55C */  jal     Actor_Kill
              
/* 000E4 8087AEA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000E8 8087AEA8 10000011 */  beq     $zero, $zero, .L8087AEF0   
/* 000EC 8087AEAC 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L8087AEB0:
/* 000F0 8087AEB0 2718B3CC */  addiu   $t8, $t8, %lo(BgGndSoulmeiro_Draw) ## $t8 = FFFFB3CC
/* 000F4 8087AEB4 1000000D */  beq     $zero, $zero, .L8087AEEC   
/* 000F8 8087AEB8 AE180134 */  sw      $t8, 0x0134($s0)           ## 00000134
.L8087AEBC:
/* 000FC 8087AEBC 00032A03 */  sra     $a1, $v1,  8               
.L8087AEC0:
/* 00100 8087AEC0 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00104 8087AEC4 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00108 8087AEC8 10400005 */  beq     $v0, $zero, .L8087AEE0     
/* 0010C 8087AECC 3C088088 */  lui     $t0, %hi(func_8087B350)    ## $t0 = 80880000
/* 00110 8087AED0 3C198088 */  lui     $t9, %hi(BgGndSoulmeiro_Draw)    ## $t9 = 80880000
/* 00114 8087AED4 2739B3CC */  addiu   $t9, $t9, %lo(BgGndSoulmeiro_Draw) ## $t9 = 8087B3CC
/* 00118 8087AED8 10000002 */  beq     $zero, $zero, .L8087AEE4   
/* 0011C 8087AEDC AE190134 */  sw      $t9, 0x0134($s0)           ## 00000134
.L8087AEE0:
/* 00120 8087AEE0 AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
.L8087AEE4:
/* 00124 8087AEE4 2508B350 */  addiu   $t0, $t0, %lo(func_8087B350) ## $t0 = 8087B350
/* 00128 8087AEE8 AE08019C */  sw      $t0, 0x019C($s0)           ## 0000019C
.L8087AEEC:
/* 0012C 8087AEEC 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L8087AEF0:
/* 00130 8087AEF0 8FB0002C */  lw      $s0, 0x002C($sp)           
/* 00134 8087AEF4 8FB10030 */  lw      $s1, 0x0030($sp)           
/* 00138 8087AEF8 03E00008 */  jr      $ra                        
/* 0013C 8087AEFC 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000


