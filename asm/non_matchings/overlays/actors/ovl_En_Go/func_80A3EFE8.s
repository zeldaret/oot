glabel func_80A3EFE8
/* 00A78 80A3EFE8 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00A7C 80A3EFEC 304200F0 */  andi    $v0, $v0, 0x00F0           ## $v0 = 00000000
/* 00A80 80A3EFF0 18400009 */  blez    $v0, .L80A3F018            
/* 00A84 80A3EFF4 244EFFE0 */  addiu   $t6, $v0, 0xFFE0           ## $t6 = FFFFFFE0
/* 00A88 80A3EFF8 2DC10051 */  sltiu   $at, $t6, 0x0051           
/* 00A8C 80A3EFFC 10200013 */  beq     $at, $zero, .L80A3F04C     
/* 00A90 80A3F000 000E7080 */  sll     $t6, $t6,  2               
/* 00A94 80A3F004 3C0180A4 */  lui     $at, %hi(jtbl_80A41F84)       ## $at = 80A40000
/* 00A98 80A3F008 002E0821 */  addu    $at, $at, $t6              
/* 00A9C 80A3F00C 8C2E1F84 */  lw      $t6, %lo(jtbl_80A41F84)($at)  
/* 00AA0 80A3F010 01C00008 */  jr      $t6                        
/* 00AA4 80A3F014 00000000 */  nop
.L80A3F018:
/* 00AA8 80A3F018 1440000C */  bne     $v0, $zero, .L80A3F04C     
/* 00AAC 80A3F01C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00AB0 80A3F020 44810000 */  mtc1    $at, $f0                   ## $f0 = 10.00
/* 00AB4 80A3F024 03E00008 */  jr      $ra                        
/* 00AB8 80A3F028 00000000 */  nop
glabel L80A3F02C
/* 00ABC 80A3F02C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00AC0 80A3F030 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 00AC4 80A3F034 03E00008 */  jr      $ra                        
/* 00AC8 80A3F038 00000000 */  nop
glabel L80A3F03C
/* 00ACC 80A3F03C 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00AD0 80A3F040 44810000 */  mtc1    $at, $f0                   ## $f0 = 60.00
/* 00AD4 80A3F044 03E00008 */  jr      $ra                        
/* 00AD8 80A3F048 00000000 */  nop
glabel L80A3F04C
.L80A3F04C:
/* 00ADC 80A3F04C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00AE0 80A3F050 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 00AE4 80A3F054 00000000 */  nop
/* 00AE8 80A3F058 03E00008 */  jr      $ra                        
/* 00AEC 80A3F05C 00000000 */  nop
