.rdata
glabel D_80A09E10
    .asciz "\n\n"
    .balign 4

glabel D_80A09E14
    .asciz "\x1b[32m☆☆☆☆☆ なにがでるかな？ ☆☆☆☆☆ %d\n\x1b[m"
    .balign 4

glabel D_80A09E48
    .asciz "\x1b[33m☆☆☆☆☆ なにがでるかな？ ☆☆☆☆☆ %d\n\x1b[m"
    .balign 4

glabel D_80A09E7C
    .asciz "なにみの？ %d\n"
    .balign 4

glabel D_80A09E8C
    .asciz "\x1b[35m バンクおかしいしぞ！%d\n\x1b[m\n"
    .balign 4

.late_rodata
glabel jtbl_80A0A084
.word L80A08F58
.word L80A08F64
.word L80A08F70
.word L80A08F7C
.word L80A08F88
.word L80A08F58
.word L80A08F64
.word L80A08F70
.word L80A08F7C
.word L80A08F88
.word L80A08F88
.word L80A08F88
.word L80A08F88
.word L80A08F88
.word L80A08F88
.word L80A08F94
.word L80A08FC4
.word L80A08FC4
.word L80A08FC4
.word L80A08FD0
glabel D_80A0A0D4
    .float 0.05

.text
glabel EnExItem_Init
/* 0000C 80A08EAC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00010 80A08EB0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00014 80A08EB4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00018 80A08EB8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0001C 80A08EBC 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00020 80A08EC0 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 00024 80A08EC4 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00028 80A08EC8 0002CA03 */  sra     $t9, $v0,  8               
/* 0002C 80A08ECC 332800FF */  andi    $t0, $t9, 0x00FF           ## $t0 = 00000000
/* 00030 80A08ED0 305800FF */  andi    $t8, $v0, 0x00FF           ## $t8 = 00000000
/* 00034 80A08ED4 01C17824 */  and     $t7, $t6, $at              
/* 00038 80A08ED8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0003C 80A08EDC AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 00040 80A08EE0 A4980152 */  sh      $t8, 0x0152($a0)           ## 00000152
/* 00044 80A08EE4 A4880154 */  sh      $t0, 0x0154($a0)           ## 00000154
/* 00048 80A08EE8 3C0480A1 */  lui     $a0, %hi(D_80A09E10)       ## $a0 = 80A10000
/* 0004C 80A08EEC 0C00084C */  jal     osSyncPrintf
              
/* 00050 80A08EF0 24849E10 */  addiu   $a0, $a0, %lo(D_80A09E10)  ## $a0 = 80A09E10
/* 00054 80A08EF4 3C0480A1 */  lui     $a0, %hi(D_80A09E14)       ## $a0 = 80A10000
/* 00058 80A08EF8 24849E14 */  addiu   $a0, $a0, %lo(D_80A09E14)  ## $a0 = 80A09E14
/* 0005C 80A08EFC 0C00084C */  jal     osSyncPrintf
              
/* 00060 80A08F00 86050152 */  lh      $a1, 0x0152($s0)           ## 00000152
/* 00064 80A08F04 3C0480A1 */  lui     $a0, %hi(D_80A09E48)       ## $a0 = 80A10000
/* 00068 80A08F08 24849E48 */  addiu   $a0, $a0, %lo(D_80A09E48)  ## $a0 = 80A09E48
/* 0006C 80A08F0C 0C00084C */  jal     osSyncPrintf
              
/* 00070 80A08F10 86050154 */  lh      $a1, 0x0154($s0)           ## 00000154
/* 00074 80A08F14 8E0A0024 */  lw      $t2, 0x0024($s0)           ## 00000024
/* 00078 80A08F18 960C0152 */  lhu     $t4, 0x0152($s0)           ## 00000152
/* 0007C 80A08F1C 8E090028 */  lw      $t1, 0x0028($s0)           ## 00000028
/* 00080 80A08F20 AE0A0170 */  sw      $t2, 0x0170($s0)           ## 00000170
/* 00084 80A08F24 8E0A002C */  lw      $t2, 0x002C($s0)           ## 0000002C
/* 00088 80A08F28 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 0008C 80A08F2C 2D810014 */  sltiu   $at, $t4, 0x0014           
/* 00090 80A08F30 A60B0150 */  sh      $t3, 0x0150($s0)           ## 00000150
/* 00094 80A08F34 AE090174 */  sw      $t1, 0x0174($s0)           ## 00000174
/* 00098 80A08F38 10200027 */  beq     $at, $zero, .L80A08FD8     
/* 0009C 80A08F3C AE0A0178 */  sw      $t2, 0x0178($s0)           ## 00000178
/* 000A0 80A08F40 000C6080 */  sll     $t4, $t4,  2               
/* 000A4 80A08F44 3C0180A1 */  lui     $at, %hi(jtbl_80A0A084)       ## $at = 80A10000
/* 000A8 80A08F48 002C0821 */  addu    $at, $at, $t4              
/* 000AC 80A08F4C 8C2CA084 */  lw      $t4, %lo(jtbl_80A0A084)($at)  
/* 000B0 80A08F50 01800008 */  jr      $t4                        
/* 000B4 80A08F54 00000000 */  nop
glabel L80A08F58
/* 000B8 80A08F58 240D00BF */  addiu   $t5, $zero, 0x00BF         ## $t5 = 000000BF
/* 000BC 80A08F5C 1000001E */  beq     $zero, $zero, .L80A08FD8   
/* 000C0 80A08F60 A60D0150 */  sh      $t5, 0x0150($s0)           ## 00000150
glabel L80A08F64
/* 000C4 80A08F64 240E00BD */  addiu   $t6, $zero, 0x00BD         ## $t6 = 000000BD
/* 000C8 80A08F68 1000001B */  beq     $zero, $zero, .L80A08FD8   
/* 000CC 80A08F6C A60E0150 */  sh      $t6, 0x0150($s0)           ## 00000150
glabel L80A08F70
/* 000D0 80A08F70 240F00D9 */  addiu   $t7, $zero, 0x00D9         ## $t7 = 000000D9
/* 000D4 80A08F74 10000018 */  beq     $zero, $zero, .L80A08FD8   
/* 000D8 80A08F78 A60F0150 */  sh      $t7, 0x0150($s0)           ## 00000150
glabel L80A08F7C
/* 000DC 80A08F7C 241800CE */  addiu   $t8, $zero, 0x00CE         ## $t8 = 000000CE
/* 000E0 80A08F80 10000015 */  beq     $zero, $zero, .L80A08FD8   
/* 000E4 80A08F84 A6180150 */  sh      $t8, 0x0150($s0)           ## 00000150
glabel L80A08F88
/* 000E8 80A08F88 2419017F */  addiu   $t9, $zero, 0x017F         ## $t9 = 0000017F
/* 000EC 80A08F8C 10000012 */  beq     $zero, $zero, .L80A08FD8   
/* 000F0 80A08F90 A6190150 */  sh      $t9, 0x0150($s0)           ## 00000150
glabel L80A08F94
/* 000F4 80A08F94 3C0180A1 */  lui     $at, %hi(D_80A0A0D4)       ## $at = 80A10000
/* 000F8 80A08F98 C424A0D4 */  lwc1    $f4, %lo(D_80A0A0D4)($at)  
/* 000FC 80A08F9C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00100 80A08FA0 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 00104 80A08FA4 3C0980A1 */  lui     $t1, %hi(func_80A096A8)    ## $t1 = 80A10000
/* 00108 80A08FA8 24080007 */  addiu   $t0, $zero, 0x0007         ## $t0 = 00000007
/* 0010C 80A08FAC 252996A8 */  addiu   $t1, $t1, %lo(func_80A096A8) ## $t1 = 80A096A8
/* 00110 80A08FB0 A608015A */  sh      $t0, 0x015A($s0)           ## 0000015A
/* 00114 80A08FB4 AE09014C */  sw      $t1, 0x014C($s0)           ## 0000014C
/* 00118 80A08FB8 E6040164 */  swc1    $f4, 0x0164($s0)           ## 00000164
/* 0011C 80A08FBC 10000006 */  beq     $zero, $zero, .L80A08FD8   
/* 00120 80A08FC0 E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
glabel L80A08FC4
/* 00124 80A08FC4 240A015D */  addiu   $t2, $zero, 0x015D         ## $t2 = 0000015D
/* 00128 80A08FC8 10000003 */  beq     $zero, $zero, .L80A08FD8   
/* 0012C 80A08FCC A60A0150 */  sh      $t2, 0x0150($s0)           ## 00000150
glabel L80A08FD0
/* 00130 80A08FD0 240B017B */  addiu   $t3, $zero, 0x017B         ## $t3 = 0000017B
/* 00134 80A08FD4 A60B0150 */  sh      $t3, 0x0150($s0)           ## 00000150
.L80A08FD8:
/* 00138 80A08FD8 86050150 */  lh      $a1, 0x0150($s0)           ## 00000150
/* 0013C 80A08FDC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00140 80A08FE0 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00144 80A08FE4 04A00016 */  bltz    $a1, .L80A09040            
/* 00148 80A08FE8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0014C 80A08FEC 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00150 80A08FF0 00812021 */  addu    $a0, $a0, $at              
/* 00154 80A08FF4 A202016C */  sb      $v0, 0x016C($s0)           ## 0000016C
/* 00158 80A08FF8 820C016C */  lb      $t4, 0x016C($s0)           ## 0000016C
/* 0015C 80A08FFC 3C0D80A1 */  lui     $t5, %hi(func_80A09054)    ## $t5 = 80A10000
/* 00160 80A09000 AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
/* 00164 80A09004 0581000D */  bgez    $t4, .L80A0903C            
/* 00168 80A09008 25AD9054 */  addiu   $t5, $t5, %lo(func_80A09054) ## $t5 = 80A09054
/* 0016C 80A0900C 0C00B55C */  jal     Actor_Kill
              
/* 00170 80A09010 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00174 80A09014 3C0480A1 */  lui     $a0, %hi(D_80A09E7C)       ## $a0 = 80A10000
/* 00178 80A09018 24849E7C */  addiu   $a0, $a0, %lo(D_80A09E7C)  ## $a0 = 80A09E7C
/* 0017C 80A0901C 0C00084C */  jal     osSyncPrintf
              
/* 00180 80A09020 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00184 80A09024 3C0480A1 */  lui     $a0, %hi(D_80A09E8C)       ## $a0 = 80A10000
/* 00188 80A09028 24849E8C */  addiu   $a0, $a0, %lo(D_80A09E8C)  ## $a0 = 80A09E8C
/* 0018C 80A0902C 0C00084C */  jal     osSyncPrintf
              
/* 00190 80A09030 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00194 80A09034 10000003 */  beq     $zero, $zero, .L80A09044   
/* 00198 80A09038 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A0903C:
/* 0019C 80A0903C AE0D014C */  sw      $t5, 0x014C($s0)           ## 0000014C
.L80A09040:
/* 001A0 80A09040 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A09044:
/* 001A4 80A09044 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 001A8 80A09048 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 001AC 80A0904C 03E00008 */  jr      $ra                        
/* 001B0 80A09050 00000000 */  nop
