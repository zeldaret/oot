.late_rodata
glabel D_80A01A08
    .float 1.1

.text
glabel func_80A00F84
/* 00FE4 80A00F84 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00FE8 80A00F88 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00FEC 80A00F8C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00FF0 80A00F90 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00FF4 80A00F94 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00FF8 80A00F98 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00FFC 80A00F9C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01000 80A00FA0 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01004 80A00FA4 3C0180A0 */  lui     $at, %hi(D_80A01A08)       ## $at = 80A00000
/* 01008 80A00FA8 C4261A08 */  lwc1    $f6, %lo(D_80A01A08)($at)  
/* 0100C 80A00FAC C4C40068 */  lwc1    $f4, 0x0068($a2)           ## 00000068
/* 01010 80A00FB0 94C20088 */  lhu     $v0, 0x0088($a2)           ## 00000088
/* 01014 80A00FB4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01018 80A00FB8 46062202 */  mul.s   $f8, $f4, $f6              
/* 0101C 80A00FBC 304E0008 */  andi    $t6, $v0, 0x0008           ## $t6 = 00000000
/* 01020 80A00FC0 304F0001 */  andi    $t7, $v0, 0x0001           ## $t7 = 00000000
/* 01024 80A00FC4 15C00003 */  bne     $t6, $zero, .L80A00FD4     
/* 01028 80A00FC8 E4C80068 */  swc1    $f8, 0x0068($a2)           ## 00000068
/* 0102C 80A00FCC 51E00005 */  beql    $t7, $zero, .L80A00FE4     
/* 01030 80A00FD0 90C20298 */  lbu     $v0, 0x0298($a2)           ## 00000298
.L80A00FD4:
/* 01034 80A00FD4 0C280162 */  jal     func_80A00588              
/* 01038 80A00FD8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 0103C 80A00FDC 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01040 80A00FE0 90C20298 */  lbu     $v0, 0x0298($a2)           ## 00000298
.L80A00FE4:
/* 01044 80A00FE4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01048 80A00FE8 30580002 */  andi    $t8, $v0, 0x0002           ## $t8 = 00000000
/* 0104C 80A00FEC 13000002 */  beq     $t8, $zero, .L80A00FF8     
/* 01050 80A00FF0 3059FFFC */  andi    $t9, $v0, 0xFFFC           ## $t9 = 00000000
/* 01054 80A00FF4 A0D90298 */  sb      $t9, 0x0298($a2)           ## 00000298
.L80A00FF8:
/* 01058 80A00FF8 0C00BE5D */  jal     func_8002F974              
/* 0105C 80A00FFC 2405314F */  addiu   $a1, $zero, 0x314F         ## $a1 = 0000314F
/* 01060 80A01000 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01064 80A01004 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01068 80A01008 03E00008 */  jr      $ra                        
/* 0106C 80A0100C 00000000 */  nop
