glabel func_80A31DE4
/* 01474 80A31DE4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01478 80A31DE8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0147C 80A31DEC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01480 80A31DF0 0C00BC65 */  jal     func_8002F194              
/* 01484 80A31DF4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01488 80A31DF8 10400005 */  beq     $v0, $zero, .L80A31E10     
/* 0148C 80A31DFC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01490 80A31E00 3C0E80A3 */  lui     $t6, %hi(func_80A31D88)    ## $t6 = 80A30000
/* 01494 80A31E04 25CE1D88 */  addiu   $t6, $t6, %lo(func_80A31D88) ## $t6 = 80A31D88
/* 01498 80A31E08 10000004 */  beq     $zero, $zero, .L80A31E1C   
/* 0149C 80A31E0C AC8E02B4 */  sw      $t6, 0x02B4($a0)           ## 000002B4
.L80A31E10:
/* 014A0 80A31E10 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 014A4 80A31E14 0C00BCB3 */  jal     func_8002F2CC              
/* 014A8 80A31E18 3C064396 */  lui     $a2, 0x4396                ## $a2 = 43960000
.L80A31E1C:
/* 014AC 80A31E1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 014B0 80A31E20 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 014B4 80A31E24 03E00008 */  jr      $ra                        
/* 014B8 80A31E28 00000000 */  nop
