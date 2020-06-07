.late_rodata
glabel D_80A4E0A0
    .float 0.1

.text
glabel func_80A4DA7C
/* 01DDC 80A4DA7C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01DE0 80A4DA80 3C0E80A5 */  lui     $t6, %hi(func_80A4DAD0)    ## $t6 = 80A50000
/* 01DE4 80A4DA84 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01DE8 80A4DA88 25CEDAD0 */  addiu   $t6, $t6, %lo(func_80A4DAD0) ## $t6 = 80A4DAD0
/* 01DEC 80A4DA8C AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 01DF0 80A4DA90 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01DF4 80A4DA94 0C292F5C */  jal     func_80A4BD70              
/* 01DF8 80A4DA98 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01DFC 80A4DA9C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01E00 80A4DAA0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01E04 80A4DAA4 3C0180A5 */  lui     $at, %hi(D_80A4E0A0)       ## $at = 80A50000
/* 01E08 80A4DAA8 C4800068 */  lwc1    $f0, 0x0068($a0)           ## 00000068
/* 01E0C 80A4DAAC E48401C0 */  swc1    $f4, 0x01C0($a0)           ## 000001C0
/* 01E10 80A4DAB0 C426E0A0 */  lwc1    $f6, %lo(D_80A4E0A0)($at)  
/* 01E14 80A4DAB4 46000005 */  abs.s   $f0, $f0                   
/* 01E18 80A4DAB8 46060202 */  mul.s   $f8, $f0, $f6              
/* 01E1C 80A4DABC E4880060 */  swc1    $f8, 0x0060($a0)           ## 00000060
/* 01E20 80A4DAC0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01E24 80A4DAC4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01E28 80A4DAC8 03E00008 */  jr      $ra                        
/* 01E2C 80A4DACC 00000000 */  nop
