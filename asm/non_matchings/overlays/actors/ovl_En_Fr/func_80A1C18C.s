glabel func_80A1C18C
/* 017EC 80A1C18C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 017F0 80A1C190 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 017F4 80A1C194 908E0382 */  lbu     $t6, 0x0382($a0)           ## 00000382
/* 017F8 80A1C198 3C1880A2 */  lui     $t8, %hi(D_80A1D020)       ## $t8 = 80A20000
/* 017FC 80A1C19C 3C0280A2 */  lui     $v0, %hi(D_80A1CFF4)       ## $v0 = 80A20000
/* 01800 80A1C1A0 000E7880 */  sll     $t7, $t6,  2               
/* 01804 80A1C1A4 030FC021 */  addu    $t8, $t8, $t7              
/* 01808 80A1C1A8 8F18D020 */  lw      $t8, %lo(D_80A1D020)($t8)  
/* 0180C 80A1C1AC 240940A9 */  addiu   $t1, $zero, 0x40A9         ## $t1 = 000040A9
/* 01810 80A1C1B0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01814 80A1C1B4 0018C880 */  sll     $t9, $t8,  2               
/* 01818 80A1C1B8 00591021 */  addu    $v0, $v0, $t9              
/* 0181C 80A1C1BC 8C42CFF4 */  lw      $v0, %lo(D_80A1CFF4)($v0)  
/* 01820 80A1C1C0 9048037D */  lbu     $t0, 0x037D($v0)           ## 80A2037D
/* 01824 80A1C1C4 55000004 */  bnel    $t0, $zero, .L80A1C1D8     
/* 01828 80A1C1C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0182C 80A1C1CC 0C2871C6 */  jal     func_80A1C718              
/* 01830 80A1C1D0 A489010E */  sh      $t1, 0x010E($a0)           ## 0000010E
/* 01834 80A1C1D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A1C1D8:
/* 01838 80A1C1D8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0183C 80A1C1DC 03E00008 */  jr      $ra                        
/* 01840 80A1C1E0 00000000 */  nop
