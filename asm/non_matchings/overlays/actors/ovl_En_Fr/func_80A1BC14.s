glabel func_80A1BC14
/* 01274 80A1BC14 00057080 */  sll     $t6, $a1,  2               
/* 01278 80A1BC18 3C0280A2 */  lui     $v0, %hi(D_80A1CFF4)       ## $v0 = 80A20000
/* 0127C 80A1BC1C 004E1021 */  addu    $v0, $v0, $t6              
/* 01280 80A1BC20 8C42CFF4 */  lw      $v0, %lo(D_80A1CFF4)($v0)  
/* 01284 80A1BC24 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01288 80A1BC28 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0128C 80A1BC2C 5040001D */  beql    $v0, $zero, .L80A1BCA4     
/* 01290 80A1BC30 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 01294 80A1BC34 904F0379 */  lbu     $t7, 0x0379($v0)           ## 00000379
/* 01298 80A1BC38 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 0129C 80A1BC3C 55E00019 */  bnel    $t7, $zero, .L80A1BCA4     
/* 012A0 80A1BC40 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 012A4 80A1BC44 9058037E */  lbu     $t8, 0x037E($v0)           ## 0000037E
/* 012A8 80A1BC48 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 012AC 80A1BC4C 3C0380A2 */  lui     $v1, %hi(D_80A1D0DC)       ## $v1 = 80A20000
/* 012B0 80A1BC50 17010005 */  bne     $t8, $at, .L80A1BC68       
/* 012B4 80A1BC54 00651821 */  addu    $v1, $v1, $a1              
/* 012B8 80A1BC58 3C0380A2 */  lui     $v1, %hi(D_80A1D0E4)       ## $v1 = 80A20000
/* 012BC 80A1BC5C 00651821 */  addu    $v1, $v1, $a1              
/* 012C0 80A1BC60 10000002 */  beq     $zero, $zero, .L80A1BC6C   
/* 012C4 80A1BC64 9063D0E4 */  lbu     $v1, %lo(D_80A1D0E4)($v1)  
.L80A1BC68:
/* 012C8 80A1BC68 9063D0DC */  lbu     $v1, %lo(D_80A1D0DC)($v1)  
.L80A1BC6C:
/* 012CC 80A1BC6C 90990382 */  lbu     $t9, 0x0382($a0)           ## 00000382
/* 012D0 80A1BC70 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 012D4 80A1BC74 244400E4 */  addiu   $a0, $v0, 0x00E4           ## $a0 = 000000E4
/* 012D8 80A1BC78 17210003 */  bne     $t9, $at, .L80A1BC88       
/* 012DC 80A1BC7C 240528B1 */  addiu   $a1, $zero, 0x28B1         ## $a1 = 000028B1
/* 012E0 80A1BC80 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 012E4 80A1BC84 A0480383 */  sb      $t0, 0x0383($v0)           ## 00000383
.L80A1BC88:
/* 012E8 80A1BC88 00033600 */  sll     $a2, $v1, 24               
/* 012EC 80A1BC8C A0490379 */  sb      $t1, 0x0379($v0)           ## 00000379
/* 012F0 80A1BC90 0C03D2FD */  jal     func_800F4BF4              
/* 012F4 80A1BC94 00063603 */  sra     $a2, $a2, 24               
/* 012F8 80A1BC98 10000002 */  beq     $zero, $zero, .L80A1BCA4   
/* 012FC 80A1BC9C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 01300 80A1BCA0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A1BCA4:
/* 01304 80A1BCA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01308 80A1BCA8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0130C 80A1BCAC 03E00008 */  jr      $ra                        
/* 01310 80A1BCB0 00000000 */  nop


