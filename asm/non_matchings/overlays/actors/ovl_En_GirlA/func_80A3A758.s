.late_rodata
.late_rodata_alignment 8
glabel jtbl_80A3D0A8
.word L80A3A780
.word L80A3A8C4
.word L80A3A8C4
.word L80A3A8C4
.word func_80A3A858
.word func_80A3A87C
.word func_80A3A8A0
.word func_80A3A7A4
.word func_80A3A7C8
.word func_80A3A7EC
.word func_80A3A810
.word func_80A3A834

.text
glabel func_80A3A758
/* 00008 80A3A758 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 0000C 80A3A75C 25CFFFEF */  addiu   $t7, $t6, 0xFFEF           ## $t7 = FFFFFFEF
/* 00010 80A3A760 2DE1000C */  sltiu   $at, $t7, 0x000C           
/* 00014 80A3A764 10200057 */  beq     $at, $zero, .L80A3A8C4     
/* 00018 80A3A768 000F7880 */  sll     $t7, $t7,  2               
/* 0001C 80A3A76C 3C0180A4 */  lui     $at, %hi(jtbl_80A3D0A8)       ## $at = 80A40000
/* 00020 80A3A770 002F0821 */  addu    $at, $at, $t7              
/* 00024 80A3A774 8C2FD0A8 */  lw      $t7, %lo(jtbl_80A3D0A8)($at)  
/* 00028 80A3A778 01E00008 */  jr      $t7                        
/* 0002C 80A3A77C 00000000 */  nop
glabel L80A3A780
/* 00030 80A3A780 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 00034 80A3A784 9718F550 */  lhu     $t8, -0x0AB0($t8)          ## 8015F550
/* 00038 80A3A788 24080010 */  addiu   $t0, $zero, 0x0010         ## $t0 = 00000010
/* 0003C 80A3A78C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00040 80A3A790 33190004 */  andi    $t9, $t8, 0x0004           ## $t9 = 00000000
/* 00044 80A3A794 5320004C */  beql    $t9, $zero, .L80A3A8C8     
/* 00048 80A3A798 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0004C 80A3A79C 03E00008 */  jr      $ra                        
/* 00050 80A3A7A0 A488001C */  sh      $t0, 0x001C($a0)           ## 0000001C
