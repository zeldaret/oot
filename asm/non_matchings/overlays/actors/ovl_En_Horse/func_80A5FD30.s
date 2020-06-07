glabel func_80A5FD30
/* 04A40 80A5FD30 3C0F80A6 */  lui     $t7, %hi(D_80A66690)       ## $t7 = 80A60000
/* 04A44 80A5FD34 25EF6690 */  addiu   $t7, $t7, %lo(D_80A66690)  ## $t7 = 80A66690
/* 04A48 80A5FD38 00047040 */  sll     $t6, $a0,  1               
/* 04A4C 80A5FD3C 01CF1021 */  addu    $v0, $t6, $t7              
/* 04A50 80A5FD40 44856000 */  mtc1    $a1, $f12                  ## $f12 = 0.00
/* 04A54 80A5FD44 84580000 */  lh      $t8, 0x0000($v0)           ## 00000000
/* 04A58 80A5FD48 8FA50010 */  lw      $a1, 0x0010($sp)           
/* 04A5C 80A5FD4C 24030003 */  addiu   $v1, $zero, 0x0003         ## $v1 = 00000003
/* 04A60 80A5FD50 A4F80000 */  sh      $t8, 0x0000($a3)           ## 00000000
/* 04A64 80A5FD54 1083000B */  beq     $a0, $v1, .L80A5FD84       
/* 04A68 80A5FD58 E4AC0000 */  swc1    $f12, 0x0000($a1)          ## 00000000
/* 04A6C 80A5FD5C 3C1980A6 */  lui     $t9, %hi(D_80A6669E)       ## $t9 = 80A60000
/* 04A70 80A5FD60 2739669E */  addiu   $t9, $t9, %lo(D_80A6669E)  ## $t9 = 80A6669E
/* 04A74 80A5FD64 10590007 */  beq     $v0, $t9, .L80A5FD84       
/* 04A78 80A5FD68 3C0880A6 */  lui     $t0, %hi(D_80A666A0)       ## $t0 = 80A60000
/* 04A7C 80A5FD6C 250866A0 */  addiu   $t0, $t0, %lo(D_80A666A0)  ## $t0 = 80A666A0
/* 04A80 80A5FD70 10480004 */  beq     $v0, $t0, .L80A5FD84       
/* 04A84 80A5FD74 3C0980A6 */  lui     $t1, %hi(D_80A66698)       ## $t1 = 80A60000
/* 04A88 80A5FD78 25296698 */  addiu   $t1, $t1, %lo(D_80A66698)  ## $t1 = 80A66698
/* 04A8C 80A5FD7C 54490005 */  bnel    $v0, $t1, .L80A5FD94       
/* 04A90 80A5FD80 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L80A5FD84:
/* 04A94 80A5FD84 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 04A98 80A5FD88 00000000 */  nop
/* 04A9C 80A5FD8C E4A40000 */  swc1    $f4, 0x0000($a1)           ## 00000000
/* 04AA0 80A5FD90 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L80A5FD94:
/* 04AA4 80A5FD94 14C1000D */  bne     $a2, $at, .L80A5FDCC       
/* 04AA8 80A5FD98 3C0A80A6 */  lui     $t2, %hi(D_80A6669A)       ## $t2 = 80A60000
/* 04AAC 80A5FD9C 254A669A */  addiu   $t2, $t2, %lo(D_80A6669A)  ## $t2 = 80A6669A
/* 04AB0 80A5FDA0 144A0005 */  bne     $v0, $t2, .L80A5FDB8       
/* 04AB4 80A5FDA4 3C0C80A6 */  lui     $t4, %hi(D_80A6669C)       ## $t4 = 80A60000
/* 04AB8 80A5FDA8 240B0004 */  addiu   $t3, $zero, 0x0004         ## $t3 = 00000004
/* 04ABC 80A5FDAC A4EB0000 */  sh      $t3, 0x0000($a3)           ## 00000000
/* 04AC0 80A5FDB0 03E00008 */  jr      $ra                        
/* 04AC4 80A5FDB4 E4AC0000 */  swc1    $f12, 0x0000($a1)          ## 00000000
.L80A5FDB8:
/* 04AC8 80A5FDB8 258C669C */  addiu   $t4, $t4, %lo(D_80A6669C)  ## $t4 = 80A6669C
/* 04ACC 80A5FDBC 144C0003 */  bne     $v0, $t4, .L80A5FDCC       
/* 04AD0 80A5FDC0 00000000 */  nop
/* 04AD4 80A5FDC4 A4E30000 */  sh      $v1, 0x0000($a3)           ## 00000000
/* 04AD8 80A5FDC8 E4AC0000 */  swc1    $f12, 0x0000($a1)          ## 00000000
.L80A5FDCC:
/* 04ADC 80A5FDCC 03E00008 */  jr      $ra                        
/* 04AE0 80A5FDD0 00000000 */  nop
