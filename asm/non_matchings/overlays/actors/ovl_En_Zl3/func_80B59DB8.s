.rdata
glabel D_80B5A910
    .asciz "[31mEn_Zl3_main_bankアニメーションのバンクを読めない!!!!!!!!!!!!\n[m"
    .balign 4

.text
glabel func_80B59DB8
/* 06A08 80B59DB8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 06A0C 80B59DBC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 06A10 80B59DC0 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 06A14 80B59DC4 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 06A18 80B59DC8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 06A1C 80B59DCC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 06A20 80B59DD0 00A12021 */  addu    $a0, $a1, $at              
/* 06A24 80B59DD4 AFA4001C */  sw      $a0, 0x001C($sp)           
/* 06A28 80B59DD8 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 06A2C 80B59DDC 2405014F */  addiu   $a1, $zero, 0x014F         ## $a1 = 0000014F
/* 06A30 80B59DE0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 06A34 80B59DE4 04410006 */  bgez    $v0, .L80B59E00            
/* 06A38 80B59DE8 00403025 */  or      $a2, $v0, $zero            ## $a2 = 00000000
/* 06A3C 80B59DEC 3C0480B6 */  lui     $a0, %hi(D_80B5A910)       ## $a0 = 80B60000
/* 06A40 80B59DF0 0C00084C */  jal     osSyncPrintf
              
/* 06A44 80B59DF4 2484A910 */  addiu   $a0, $a0, %lo(D_80B5A910)  ## $a0 = 80B5A910
/* 06A48 80B59DF8 1000000E */  beq     $zero, $zero, .L80B59E34   
/* 06A4C 80B59DFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B59E00:
/* 06A50 80B59E00 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 06A54 80B59E04 0C026062 */  jal     Object_IsLoaded
              
/* 06A58 80B59E08 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 06A5C 80B59E0C 10400008 */  beq     $v0, $zero, .L80B59E30     
/* 06A60 80B59E10 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 06A64 80B59E14 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 06A68 80B59E18 AC860318 */  sw      $a2, 0x0318($a0)           ## 00000318
/* 06A6C 80B59E1C 0C2D5378 */  jal     func_80B54DE0              
/* 06A70 80B59E20 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 06A74 80B59E24 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 06A78 80B59E28 0C2D66DB */  jal     func_80B59B6C              
/* 06A7C 80B59E2C 8FA50034 */  lw      $a1, 0x0034($sp)           
.L80B59E30:
/* 06A80 80B59E30 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B59E34:
/* 06A84 80B59E34 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 06A88 80B59E38 03E00008 */  jr      $ra                        
/* 06A8C 80B59E3C 00000000 */  nop
