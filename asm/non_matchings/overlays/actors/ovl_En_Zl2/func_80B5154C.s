glabel func_80B5154C
/* 02BBC 80B5154C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02BC0 80B51550 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02BC4 80B51554 908E014D */  lbu     $t6, 0x014D($a0)           ## 0000014D
/* 02BC8 80B51558 51C00006 */  beql    $t6, $zero, .L80B51574     
/* 02BCC 80B5155C 94AF1D74 */  lhu     $t7, 0x1D74($a1)           ## 00001D74
/* 02BD0 80B51560 0C2D3A6C */  jal     func_80B4E9B0              
/* 02BD4 80B51564 00000000 */  nop
/* 02BD8 80B51568 10000013 */  beq     $zero, $zero, .L80B515B8   
/* 02BDC 80B5156C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02BE0 80B51570 94AF1D74 */  lhu     $t7, 0x1D74($a1)           ## 00001D74
.L80B51574:
/* 02BE4 80B51574 29E105F0 */  slti    $at, $t7, 0x05F0           
/* 02BE8 80B51578 50200006 */  beql    $at, $zero, .L80B51594     
/* 02BEC 80B5157C 94B81D74 */  lhu     $t8, 0x1D74($a1)           ## 00001D74
/* 02BF0 80B51580 0C2D3AEE */  jal     func_80B4EBB8              
/* 02BF4 80B51584 00000000 */  nop
/* 02BF8 80B51588 1000000B */  beq     $zero, $zero, .L80B515B8   
/* 02BFC 80B5158C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02C00 80B51590 94B81D74 */  lhu     $t8, 0x1D74($a1)           ## 00001D74
.L80B51594:
/* 02C04 80B51594 240105F0 */  addiu   $at, $zero, 0x05F0         ## $at = 000005F0
/* 02C08 80B51598 17010004 */  bne     $t8, $at, .L80B515AC       
/* 02C0C 80B5159C 00000000 */  nop
/* 02C10 80B515A0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02C14 80B515A4 10000003 */  beq     $zero, $zero, .L80B515B4   
/* 02C18 80B515A8 E484027C */  swc1    $f4, 0x027C($a0)           ## 0000027C
.L80B515AC:
/* 02C1C 80B515AC 0C2D3B12 */  jal     func_80B4EC48              
/* 02C20 80B515B0 00000000 */  nop
.L80B515B4:
/* 02C24 80B515B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B515B8:
/* 02C28 80B515B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02C2C 80B515BC 03E00008 */  jr      $ra                        
/* 02C30 80B515C0 00000000 */  nop


