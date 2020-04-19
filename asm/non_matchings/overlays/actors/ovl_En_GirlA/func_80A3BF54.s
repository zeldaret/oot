glabel func_80A3BF54
/* 01804 80A3BF54 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01808 80A3BF58 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0180C 80A3BF5C 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 01810 80A3BF60 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01814 80A3BF64 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 01818 80A3BF68 2841001E */  slti    $at, $v0, 0x001E           
/* 0181C 80A3BF6C 14200018 */  bne     $at, $zero, .L80A3BFD0     
/* 01820 80A3BF70 28410026 */  slti    $at, $v0, 0x0026           
/* 01824 80A3BF74 10200016 */  beq     $at, $zero, .L80A3BFD0     
/* 01828 80A3BF78 2443FFE2 */  addiu   $v1, $v0, 0xFFE2           ## $v1 = FFFFFFE2
/* 0182C 80A3BF7C 3C0E8012 */  lui     $t6, %hi(gItemSlots+0x21)
/* 01830 80A3BF80 91CE7485 */  lbu     $t6, %lo(gItemSlots+0x21)($t6)
/* 01834 80A3BF84 3C0F8016 */  lui     $t7, %hi(gSaveContext+0x74)
/* 01838 80A3BF88 0003C040 */  sll     $t8, $v1,  1               
/* 0183C 80A3BF8C 3C1980A4 */  lui     $t9, %hi(D_80A3C658)       ## $t9 = 80A40000
/* 01840 80A3BF90 0338C821 */  addu    $t9, $t9, $t8              
/* 01844 80A3BF94 01EE7821 */  addu    $t7, $t7, $t6              
/* 01848 80A3BF98 91EFE6D4 */  lbu     $t7, %lo(gSaveContext+0x74)($t7)
/* 0184C 80A3BF9C 8739C658 */  lh      $t9, %lo(D_80A3C658)($t9)  
/* 01850 80A3BFA0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01854 80A3BFA4 15F90006 */  bne     $t7, $t9, .L80A3BFC0       
/* 01858 80A3BFA8 00000000 */  nop
/* 0185C 80A3BFAC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01860 80A3BFB0 0C28EFAB */  jal     func_80A3BEAC              
/* 01864 80A3BFB4 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 01868 80A3BFB8 10000006 */  beq     $zero, $zero, .L80A3BFD4   
/* 0186C 80A3BFBC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3BFC0:
/* 01870 80A3BFC0 0C28EF63 */  jal     func_80A3BD8C              
/* 01874 80A3BFC4 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 01878 80A3BFC8 10000002 */  beq     $zero, $zero, .L80A3BFD4   
/* 0187C 80A3BFCC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3BFD0:
/* 01880 80A3BFD0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A3BFD4:
/* 01884 80A3BFD4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01888 80A3BFD8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0188C 80A3BFDC 03E00008 */  jr      $ra                        
/* 01890 80A3BFE0 00000000 */  nop
