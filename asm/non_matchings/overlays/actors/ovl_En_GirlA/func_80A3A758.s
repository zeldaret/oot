.late_rodata
.late_rodata_alignment 8
glabel jtbl_80A3D0A8
.word L80A3A780
.word L80A3A8C4
.word L80A3A8C4
.word L80A3A8C4
.word L80A3A858
.word L80A3A87C
.word L80A3A8A0
.word L80A3A7A4
.word L80A3A7C8
.word L80A3A7EC
.word L80A3A810
.word L80A3A834

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
/* 00030 80A3A780 3C188016 */  lui     $t8, %hi(gSaveContext+0xef0)
/* 00034 80A3A784 9718F550 */  lhu     $t8, %lo(gSaveContext+0xef0)($t8)
/* 00038 80A3A788 24080010 */  addiu   $t0, $zero, 0x0010         ## $t0 = 00000010
/* 0003C 80A3A78C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00040 80A3A790 33190004 */  andi    $t9, $t8, 0x0004           ## $t9 = 00000000
/* 00044 80A3A794 5320004C */  beql    $t9, $zero, .L80A3A8C8     
/* 00048 80A3A798 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0004C 80A3A79C 03E00008 */  jr      $ra                        
/* 00050 80A3A7A0 A488001C */  sh      $t0, 0x001C($a0)           ## 0000001C
glabel L80A3A7A4
/* 00054 80A3A7A4 3C098016 */  lui     $t1, %hi(gSaveContext+0xef0)
/* 00058 80A3A7A8 9529F550 */  lhu     $t1, %lo(gSaveContext+0xef0)($t1)
/* 0005C 80A3A7AC 240B0026 */  addiu   $t3, $zero, 0x0026         ## $t3 = 00000026
/* 00060 80A3A7B0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00064 80A3A7B4 312A0040 */  andi    $t2, $t1, 0x0040           ## $t2 = 00000000
/* 00068 80A3A7B8 51400043 */  beql    $t2, $zero, .L80A3A8C8     
/* 0006C 80A3A7BC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00070 80A3A7C0 03E00008 */  jr      $ra                        
/* 00074 80A3A7C4 A48B001C */  sh      $t3, 0x001C($a0)           ## 0000001C
glabel L80A3A7C8
/* 00078 80A3A7C8 3C0C8016 */  lui     $t4, %hi(gSaveContext+0xef0)
/* 0007C 80A3A7CC 958CF550 */  lhu     $t4, %lo(gSaveContext+0xef0)($t4)
/* 00080 80A3A7D0 240E0026 */  addiu   $t6, $zero, 0x0026         ## $t6 = 00000026
/* 00084 80A3A7D4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00088 80A3A7D8 318D0080 */  andi    $t5, $t4, 0x0080           ## $t5 = 00000000
/* 0008C 80A3A7DC 51A0003A */  beql    $t5, $zero, .L80A3A8C8     
/* 00090 80A3A7E0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00094 80A3A7E4 03E00008 */  jr      $ra                        
/* 00098 80A3A7E8 A48E001C */  sh      $t6, 0x001C($a0)           ## 0000001C
glabel L80A3A7EC
/* 0009C 80A3A7EC 3C0F8016 */  lui     $t7, %hi(gSaveContext+0xef0)
/* 000A0 80A3A7F0 95EFF550 */  lhu     $t7, %lo(gSaveContext+0xef0)($t7)
/* 000A4 80A3A7F4 24190026 */  addiu   $t9, $zero, 0x0026         ## $t9 = 00000026
/* 000A8 80A3A7F8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 000AC 80A3A7FC 31F80100 */  andi    $t8, $t7, 0x0100           ## $t8 = 00000000
/* 000B0 80A3A800 53000031 */  beql    $t8, $zero, .L80A3A8C8     
/* 000B4 80A3A804 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 000B8 80A3A808 03E00008 */  jr      $ra                        
/* 000BC 80A3A80C A499001C */  sh      $t9, 0x001C($a0)           ## 0000001C
glabel L80A3A810
/* 000C0 80A3A810 3C088016 */  lui     $t0, %hi(gSaveContext+0xef0)
/* 000C4 80A3A814 9508F550 */  lhu     $t0, %lo(gSaveContext+0xef0)($t0)
/* 000C8 80A3A818 240A0026 */  addiu   $t2, $zero, 0x0026         ## $t2 = 00000026
/* 000CC 80A3A81C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 000D0 80A3A820 31090200 */  andi    $t1, $t0, 0x0200           ## $t1 = 00000000
/* 000D4 80A3A824 51200028 */  beql    $t1, $zero, .L80A3A8C8     
/* 000D8 80A3A828 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 000DC 80A3A82C 03E00008 */  jr      $ra                        
/* 000E0 80A3A830 A48A001C */  sh      $t2, 0x001C($a0)           ## 0000001C
glabel L80A3A834
/* 000E4 80A3A834 3C0B8016 */  lui     $t3, %hi(gSaveContext+0xef0)
/* 000E8 80A3A838 956BF550 */  lhu     $t3, %lo(gSaveContext+0xef0)($t3)
/* 000EC 80A3A83C 240D0026 */  addiu   $t5, $zero, 0x0026         ## $t5 = 00000026
/* 000F0 80A3A840 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 000F4 80A3A844 316C0400 */  andi    $t4, $t3, 0x0400           ## $t4 = 00000000
/* 000F8 80A3A848 5180001F */  beql    $t4, $zero, .L80A3A8C8     
/* 000FC 80A3A84C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00100 80A3A850 03E00008 */  jr      $ra                        
/* 00104 80A3A854 A48D001C */  sh      $t5, 0x001C($a0)           ## 0000001C
glabel L80A3A858
/* 00108 80A3A858 3C0E8016 */  lui     $t6, %hi(gSaveContext+0xef0)
/* 0010C 80A3A85C 95CEF550 */  lhu     $t6, %lo(gSaveContext+0xef0)($t6)
/* 00110 80A3A860 24180026 */  addiu   $t8, $zero, 0x0026         ## $t8 = 00000026
/* 00114 80A3A864 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00118 80A3A868 31CF0008 */  andi    $t7, $t6, 0x0008           ## $t7 = 00000000
/* 0011C 80A3A86C 51E00016 */  beql    $t7, $zero, .L80A3A8C8     
/* 00120 80A3A870 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00124 80A3A874 03E00008 */  jr      $ra                        
/* 00128 80A3A878 A498001C */  sh      $t8, 0x001C($a0)           ## 0000001C
glabel L80A3A87C
/* 0012C 80A3A87C 3C198016 */  lui     $t9, %hi(gSaveContext+0xef0)
/* 00130 80A3A880 9739F550 */  lhu     $t9, %lo(gSaveContext+0xef0)($t9)
/* 00134 80A3A884 24090026 */  addiu   $t1, $zero, 0x0026         ## $t1 = 00000026
/* 00138 80A3A888 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 0013C 80A3A88C 33280010 */  andi    $t0, $t9, 0x0010           ## $t0 = 00000000
/* 00140 80A3A890 5100000D */  beql    $t0, $zero, .L80A3A8C8     
/* 00144 80A3A894 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00148 80A3A898 03E00008 */  jr      $ra                        
/* 0014C 80A3A89C A489001C */  sh      $t1, 0x001C($a0)           ## 0000001C
glabel L80A3A8A0
/* 00150 80A3A8A0 3C0A8016 */  lui     $t2, %hi(gSaveContext+0xef0)
/* 00154 80A3A8A4 954AF550 */  lhu     $t2, %lo(gSaveContext+0xef0)($t2)
/* 00158 80A3A8A8 240C0026 */  addiu   $t4, $zero, 0x0026         ## $t4 = 00000026
/* 0015C 80A3A8AC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00160 80A3A8B0 314B0020 */  andi    $t3, $t2, 0x0020           ## $t3 = 00000000
/* 00164 80A3A8B4 51600004 */  beql    $t3, $zero, .L80A3A8C8     
/* 00168 80A3A8B8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0016C 80A3A8BC 03E00008 */  jr      $ra                        
/* 00170 80A3A8C0 A48C001C */  sh      $t4, 0x001C($a0)           ## 0000001C
glabel L80A3A8C4
.L80A3A8C4:
/* 00174 80A3A8C4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A3A8C8:
/* 00178 80A3A8C8 03E00008 */  jr      $ra                        
/* 0017C 80A3A8CC 00000000 */  nop