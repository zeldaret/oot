glabel func_80939F40
/* 01270 80939F40 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 01274 80939F44 8C820118 */  lw      $v0, 0x0118($a0)           ## 00000118
/* 01278 80939F48 3C0E8094 */  lui     $t6, %hi(func_80939F88)    ## $t6 = 80940000
/* 0127C 80939F4C 25CE9F88 */  addiu   $t6, $t6, %lo(func_80939F88) ## $t6 = 80939F88
/* 01280 80939F50 10400008 */  beq     $v0, $zero, .L80939F74     
/* 01284 80939F54 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 01288 80939F58 8C58014C */  lw      $t8, 0x014C($v0)           ## 0000014C
/* 0128C 80939F5C 3C0F8094 */  lui     $t7, %hi(func_8093B1AC)    ## $t7 = 80940000
/* 01290 80939F60 25EFB1AC */  addiu   $t7, $t7, %lo(func_8093B1AC) ## $t7 = 8093B1AC
/* 01294 80939F64 15F80003 */  bne     $t7, $t8, .L80939F74       
/* 01298 80939F68 24190028 */  addiu   $t9, $zero, 0x0028         ## $t9 = 00000028
/* 0129C 80939F6C 10000003 */  beq     $zero, $zero, .L80939F7C   
/* 012A0 80939F70 A4990178 */  sh      $t9, 0x0178($a0)           ## 00000178
.L80939F74:
/* 012A4 80939F74 2408003C */  addiu   $t0, $zero, 0x003C         ## $t0 = 0000003C
/* 012A8 80939F78 A4880178 */  sh      $t0, 0x0178($a0)           ## 00000178
.L80939F7C:
/* 012AC 80939F7C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 012B0 80939F80 03E00008 */  jr      $ra                        
/* 012B4 80939F84 E48404C8 */  swc1    $f4, 0x04C8($a0)           ## 000004C8
