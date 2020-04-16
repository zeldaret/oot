.rdata
glabel D_80B0F1A0
    .asciz "../z_en_sw.c"
    .balign 4

glabel D_80B0F1B0
    .asciz "../z_en_sw.c"
    .balign 4

.late_rodata
glabel jtbl_80B0F24C
.word L80B0ECAC
.word L80B0EC9C
.word L80B0ECB8
.word L80B0ECB8
.word L80B0EC2C
.word L80B0ECB8
.word L80B0ECB8
.word L80B0EC4C
.word L80B0ECB8
.word L80B0ECB8
.word L80B0EC3C
.word L80B0ECB8
.word L80B0ECB8
.word L80B0EC7C
.word L80B0ECB8
.word L80B0ECB8
.word L80B0EC6C
.word L80B0ECB8
.word L80B0ECB8
.word L80B0EC1C
.word L80B0ECB8
.word L80B0ECB8
.word L80B0EC5C
.word L80B0ECB8
.word L80B0ECB8
.word L80B0EC8C

.text
glabel func_80B0EAC4
/* 02D14 80B0EAC4 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 02D18 80B0EAC8 3C0F80B1 */  lui     $t7, %hi(D_80B0F150)       ## $t7 = 80B10000
/* 02D1C 80B0EACC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02D20 80B0EAD0 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 02D24 80B0EAD4 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 02D28 80B0EAD8 AFA40088 */  sw      $a0, 0x0088($sp)           
/* 02D2C 80B0EADC AFA5008C */  sw      $a1, 0x008C($sp)           
/* 02D30 80B0EAE0 AFA70094 */  sw      $a3, 0x0094($sp)           
/* 02D34 80B0EAE4 25EFF150 */  addiu   $t7, $t7, %lo(D_80B0F150)  ## $t7 = 80B0F150
/* 02D38 80B0EAE8 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B0F150
/* 02D3C 80B0EAEC 27AE007C */  addiu   $t6, $sp, 0x007C           ## $t6 = FFFFFFF4
/* 02D40 80B0EAF0 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B0F154
/* 02D44 80B0EAF4 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 02D48 80B0EAF8 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B0F158
/* 02D4C 80B0EAFC 3C0980B1 */  lui     $t1, %hi(D_80B0F15C)       ## $t1 = 80B10000
/* 02D50 80B0EB00 2529F15C */  addiu   $t1, $t1, %lo(D_80B0F15C)  ## $t1 = 80B0F15C
/* 02D54 80B0EB04 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 02D58 80B0EB08 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 02D5C 80B0EB0C 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80B0F15C
/* 02D60 80B0EB10 27A80070 */  addiu   $t0, $sp, 0x0070           ## $t0 = FFFFFFE8
/* 02D64 80B0EB14 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80B0F160
/* 02D68 80B0EB18 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE8
/* 02D6C 80B0EB1C 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80B0F164
/* 02D70 80B0EB20 3C0D80B1 */  lui     $t5, %hi(D_80B0F168)       ## $t5 = 80B10000
/* 02D74 80B0EB24 25ADF168 */  addiu   $t5, $t5, %lo(D_80B0F168)  ## $t5 = 80B0F168
/* 02D78 80B0EB28 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFEC
/* 02D7C 80B0EB2C AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFF0
/* 02D80 80B0EB30 8DAF0000 */  lw      $t7, 0x0000($t5)           ## 80B0F168
/* 02D84 80B0EB34 27AC0064 */  addiu   $t4, $sp, 0x0064           ## $t4 = FFFFFFDC
/* 02D88 80B0EB38 8DAE0004 */  lw      $t6, 0x0004($t5)           ## 80B0F16C
/* 02D8C 80B0EB3C AD8F0000 */  sw      $t7, 0x0000($t4)           ## FFFFFFDC
/* 02D90 80B0EB40 8DAF0008 */  lw      $t7, 0x0008($t5)           ## 80B0F170
/* 02D94 80B0EB44 3C1980B1 */  lui     $t9, %hi(D_80B0F174)       ## $t9 = 80B10000
/* 02D98 80B0EB48 2739F174 */  addiu   $t9, $t9, %lo(D_80B0F174)  ## $t9 = 80B0F174
/* 02D9C 80B0EB4C AD8E0004 */  sw      $t6, 0x0004($t4)           ## FFFFFFE0
/* 02DA0 80B0EB50 AD8F0008 */  sw      $t7, 0x0008($t4)           ## FFFFFFE4
/* 02DA4 80B0EB54 8F290000 */  lw      $t1, 0x0000($t9)           ## 80B0F174
/* 02DA8 80B0EB58 27B80058 */  addiu   $t8, $sp, 0x0058           ## $t8 = FFFFFFD0
/* 02DAC 80B0EB5C 8F280004 */  lw      $t0, 0x0004($t9)           ## 80B0F178
/* 02DB0 80B0EB60 AF090000 */  sw      $t1, 0x0000($t8)           ## FFFFFFD0
/* 02DB4 80B0EB64 8F290008 */  lw      $t1, 0x0008($t9)           ## 80B0F17C
/* 02DB8 80B0EB68 3C0B80B1 */  lui     $t3, %hi(D_80B0F180)       ## $t3 = 80B10000
/* 02DBC 80B0EB6C 256BF180 */  addiu   $t3, $t3, %lo(D_80B0F180)  ## $t3 = 80B0F180
/* 02DC0 80B0EB70 AF080004 */  sw      $t0, 0x0004($t8)           ## FFFFFFD4
/* 02DC4 80B0EB74 AF090008 */  sw      $t1, 0x0008($t8)           ## FFFFFFD8
/* 02DC8 80B0EB78 8D6D0000 */  lw      $t5, 0x0000($t3)           ## 80B0F180
/* 02DCC 80B0EB7C 27AA004C */  addiu   $t2, $sp, 0x004C           ## $t2 = FFFFFFC4
/* 02DD0 80B0EB80 8D6C0004 */  lw      $t4, 0x0004($t3)           ## 80B0F184
/* 02DD4 80B0EB84 AD4D0000 */  sw      $t5, 0x0000($t2)           ## FFFFFFC4
/* 02DD8 80B0EB88 8D6D0008 */  lw      $t5, 0x0008($t3)           ## 80B0F188
/* 02DDC 80B0EB8C 3C0F80B1 */  lui     $t7, %hi(D_80B0F18C)       ## $t7 = 80B10000
/* 02DE0 80B0EB90 25EFF18C */  addiu   $t7, $t7, %lo(D_80B0F18C)  ## $t7 = 80B0F18C
/* 02DE4 80B0EB94 AD4C0004 */  sw      $t4, 0x0004($t2)           ## FFFFFFC8
/* 02DE8 80B0EB98 AD4D0008 */  sw      $t5, 0x0008($t2)           ## FFFFFFCC
/* 02DEC 80B0EB9C 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B0F18C
/* 02DF0 80B0EBA0 27AE003C */  addiu   $t6, $sp, 0x003C           ## $t6 = FFFFFFB4
/* 02DF4 80B0EBA4 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B0F190
/* 02DF8 80B0EBA8 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFB4
/* 02DFC 80B0EBAC 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B0F194
/* 02E00 80B0EBB0 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFB8
/* 02E04 80B0EBB4 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 02E08 80B0EBB8 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFBC
/* 02E0C 80B0EBBC 8FA80088 */  lw      $t0, 0x0088($sp)           
/* 02E10 80B0EBC0 3C0680B1 */  lui     $a2, %hi(D_80B0F1A0)       ## $a2 = 80B10000
/* 02E14 80B0EBC4 24C6F1A0 */  addiu   $a2, $a2, %lo(D_80B0F1A0)  ## $a2 = 80B0F1A0
/* 02E18 80B0EBC8 8D050000 */  lw      $a1, 0x0000($t0)           ## FFFFFFE8
/* 02E1C 80B0EBCC 24070824 */  addiu   $a3, $zero, 0x0824         ## $a3 = 00000824
/* 02E20 80B0EBD0 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFA0
/* 02E24 80B0EBD4 0C031AB1 */  jal     Graph_OpenDisps              
/* 02E28 80B0EBD8 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 02E2C 80B0EBDC 8FB1009C */  lw      $s1, 0x009C($sp)           
/* 02E30 80B0EBE0 8FA6008C */  lw      $a2, 0x008C($sp)           
/* 02E34 80B0EBE4 8629001C */  lh      $t1, 0x001C($s1)           ## 0000001C
/* 02E38 80B0EBE8 24CCFFFC */  addiu   $t4, $a2, 0xFFFC           ## $t4 = FFFFFFFC
/* 02E3C 80B0EBEC 2D81001A */  sltiu   $at, $t4, 0x001A           
/* 02E40 80B0EBF0 312AE000 */  andi    $t2, $t1, 0xE000           ## $t2 = 00000000
/* 02E44 80B0EBF4 000A5B43 */  sra     $t3, $t2, 13               
/* 02E48 80B0EBF8 51600030 */  beql    $t3, $zero, .L80B0ECBC     
/* 02E4C 80B0EBFC 8FA6008C */  lw      $a2, 0x008C($sp)           
/* 02E50 80B0EC00 1020002D */  beq     $at, $zero, .L80B0ECB8     
/* 02E54 80B0EC04 000C6080 */  sll     $t4, $t4,  2               
/* 02E58 80B0EC08 3C0180B1 */  lui     $at, %hi(jtbl_80B0F24C)       ## $at = 80B10000
/* 02E5C 80B0EC0C 002C0821 */  addu    $at, $at, $t4              
/* 02E60 80B0EC10 8C2CF24C */  lw      $t4, %lo(jtbl_80B0F24C)($at)  
/* 02E64 80B0EC14 01800008 */  jr      $t4                        
/* 02E68 80B0EC18 00000000 */  nop
glabel L80B0EC1C
/* 02E6C 80B0EC1C 3C0D0600 */  lui     $t5, 0x0600                ## $t5 = 06000000
/* 02E70 80B0EC20 25AD4788 */  addiu   $t5, $t5, 0x4788           ## $t5 = 06004788
/* 02E74 80B0EC24 10000024 */  beq     $zero, $zero, .L80B0ECB8   
/* 02E78 80B0EC28 AE0D0000 */  sw      $t5, 0x0000($s0)           ## 00000000
glabel L80B0EC2C
/* 02E7C 80B0EC2C 3C0E0600 */  lui     $t6, 0x0600                ## $t6 = 06000000
/* 02E80 80B0EC30 25CE46F0 */  addiu   $t6, $t6, 0x46F0           ## $t6 = 060046F0
/* 02E84 80B0EC34 10000020 */  beq     $zero, $zero, .L80B0ECB8   
/* 02E88 80B0EC38 AE0E0000 */  sw      $t6, 0x0000($s0)           ## 00000000
glabel L80B0EC3C
/* 02E8C 80B0EC3C 3C0F0600 */  lui     $t7, 0x0600                ## $t7 = 06000000
/* 02E90 80B0EC40 25EF4658 */  addiu   $t7, $t7, 0x4658           ## $t7 = 06004658
/* 02E94 80B0EC44 1000001C */  beq     $zero, $zero, .L80B0ECB8   
/* 02E98 80B0EC48 AE0F0000 */  sw      $t7, 0x0000($s0)           ## 00000000
glabel L80B0EC4C
/* 02E9C 80B0EC4C 3C180600 */  lui     $t8, 0x0600                ## $t8 = 06000000
/* 02EA0 80B0EC50 271845C0 */  addiu   $t8, $t8, 0x45C0           ## $t8 = 060045C0
/* 02EA4 80B0EC54 10000018 */  beq     $zero, $zero, .L80B0ECB8   
/* 02EA8 80B0EC58 AE180000 */  sw      $t8, 0x0000($s0)           ## 00000000
glabel L80B0EC5C
/* 02EAC 80B0EC5C 3C190600 */  lui     $t9, 0x0600                ## $t9 = 06000000
/* 02EB0 80B0EC60 27394820 */  addiu   $t9, $t9, 0x4820           ## $t9 = 06004820
/* 02EB4 80B0EC64 10000014 */  beq     $zero, $zero, .L80B0ECB8   
/* 02EB8 80B0EC68 AE190000 */  sw      $t9, 0x0000($s0)           ## 00000000
glabel L80B0EC6C
/* 02EBC 80B0EC6C 3C080600 */  lui     $t0, 0x0600                ## $t0 = 06000000
/* 02EC0 80B0EC70 250848B8 */  addiu   $t0, $t0, 0x48B8           ## $t0 = 060048B8
/* 02EC4 80B0EC74 10000010 */  beq     $zero, $zero, .L80B0ECB8   
/* 02EC8 80B0EC78 AE080000 */  sw      $t0, 0x0000($s0)           ## 00000000
glabel L80B0EC7C
/* 02ECC 80B0EC7C 3C090600 */  lui     $t1, 0x0600                ## $t1 = 06000000
/* 02ED0 80B0EC80 25294950 */  addiu   $t1, $t1, 0x4950           ## $t1 = 06004950
/* 02ED4 80B0EC84 1000000C */  beq     $zero, $zero, .L80B0ECB8   
/* 02ED8 80B0EC88 AE090000 */  sw      $t1, 0x0000($s0)           ## 00000000
glabel L80B0EC8C
/* 02EDC 80B0EC8C 3C0A0600 */  lui     $t2, 0x0600                ## $t2 = 06000000
/* 02EE0 80B0EC90 254A49E8 */  addiu   $t2, $t2, 0x49E8           ## $t2 = 060049E8
/* 02EE4 80B0EC94 10000008 */  beq     $zero, $zero, .L80B0ECB8   
/* 02EE8 80B0EC98 AE0A0000 */  sw      $t2, 0x0000($s0)           ## 00000000
glabel L80B0EC9C
/* 02EEC 80B0EC9C 3C0B0600 */  lui     $t3, 0x0600                ## $t3 = 06000000
/* 02EF0 80B0ECA0 256B3FB0 */  addiu   $t3, $t3, 0x3FB0           ## $t3 = 06003FB0
/* 02EF4 80B0ECA4 10000004 */  beq     $zero, $zero, .L80B0ECB8   
/* 02EF8 80B0ECA8 AE0B0000 */  sw      $t3, 0x0000($s0)           ## 00000000
glabel L80B0ECAC
/* 02EFC 80B0ECAC 3C0C0600 */  lui     $t4, 0x0600                ## $t4 = 06000000
/* 02F00 80B0ECB0 258C43D8 */  addiu   $t4, $t4, 0x43D8           ## $t4 = 060043D8
/* 02F04 80B0ECB4 AE0C0000 */  sw      $t4, 0x0000($s0)           ## 00000000
glabel L80B0ECB8
.L80B0ECB8:
/* 02F08 80B0ECB8 8FA6008C */  lw      $a2, 0x008C($sp)           
.L80B0ECBC:
/* 02F0C 80B0ECBC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02F10 80B0ECC0 27A4007C */  addiu   $a0, $sp, 0x007C           ## $a0 = FFFFFFF4
/* 02F14 80B0ECC4 54C10011 */  bnel    $a2, $at, .L80B0ED0C       
/* 02F18 80B0ECC8 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 02F1C 80B0ECCC 0C0346BD */  jal     Matrix_MultVec3f              
/* 02F20 80B0ECD0 26250454 */  addiu   $a1, $s1, 0x0454           ## $a1 = 00000454
/* 02F24 80B0ECD4 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFE8
/* 02F28 80B0ECD8 0C0346BD */  jal     Matrix_MultVec3f              
/* 02F2C 80B0ECDC 26250460 */  addiu   $a1, $s1, 0x0460           ## $a1 = 00000460
/* 02F30 80B0ECE0 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFDC
/* 02F34 80B0ECE4 0C0346BD */  jal     Matrix_MultVec3f              
/* 02F38 80B0ECE8 2625046C */  addiu   $a1, $s1, 0x046C           ## $a1 = 0000046C
/* 02F3C 80B0ECEC 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFD0
/* 02F40 80B0ECF0 0C0346BD */  jal     Matrix_MultVec3f              
/* 02F44 80B0ECF4 26250478 */  addiu   $a1, $s1, 0x0478           ## $a1 = 00000478
/* 02F48 80B0ECF8 27A4004C */  addiu   $a0, $sp, 0x004C           ## $a0 = FFFFFFC4
/* 02F4C 80B0ECFC 0C0346BD */  jal     Matrix_MultVec3f              
/* 02F50 80B0ED00 26250484 */  addiu   $a1, $s1, 0x0484           ## $a1 = 00000484
/* 02F54 80B0ED04 8FA6008C */  lw      $a2, 0x008C($sp)           
/* 02F58 80B0ED08 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
.L80B0ED0C:
/* 02F5C 80B0ED0C 14C10004 */  bne     $a2, $at, .L80B0ED20       
/* 02F60 80B0ED10 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFB4
/* 02F64 80B0ED14 0C0346BD */  jal     Matrix_MultVec3f              
/* 02F68 80B0ED18 26250038 */  addiu   $a1, $s1, 0x0038           ## $a1 = 00000038
/* 02F6C 80B0ED1C 8FA6008C */  lw      $a2, 0x008C($sp)           
.L80B0ED20:
/* 02F70 80B0ED20 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 02F74 80B0ED24 14C10010 */  bne     $a2, $at, .L80B0ED68       
/* 02F78 80B0ED28 26250194 */  addiu   $a1, $s1, 0x0194           ## $a1 = 00000194
/* 02F7C 80B0ED2C 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 02F80 80B0ED30 3C0EFB00 */  lui     $t6, 0xFB00                ## $t6 = FB000000
/* 02F84 80B0ED34 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 02F88 80B0ED38 246D0008 */  addiu   $t5, $v1, 0x0008           ## $t5 = 00000008
/* 02F8C 80B0ED3C AC8D02C0 */  sw      $t5, 0x02C0($a0)           ## 000002C0
/* 02F90 80B0ED40 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 02F94 80B0ED44 922901F5 */  lbu     $t1, 0x01F5($s1)           ## 000001F5
/* 02F98 80B0ED48 923801F4 */  lbu     $t8, 0x01F4($s1)           ## 000001F4
/* 02F9C 80B0ED4C 922D01F6 */  lbu     $t5, 0x01F6($s1)           ## 000001F6
/* 02FA0 80B0ED50 00095400 */  sll     $t2, $t1, 16               
/* 02FA4 80B0ED54 0018CE00 */  sll     $t9, $t8, 24               
/* 02FA8 80B0ED58 032A5825 */  or      $t3, $t9, $t2              ## $t3 = 00000000
/* 02FAC 80B0ED5C 000D7200 */  sll     $t6, $t5,  8               
/* 02FB0 80B0ED60 016E7825 */  or      $t7, $t3, $t6              ## $t7 = FB000000
/* 02FB4 80B0ED64 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
.L80B0ED68:
/* 02FB8 80B0ED68 0C018A29 */  jal     func_800628A4              
/* 02FBC 80B0ED6C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 02FC0 80B0ED70 8FB80088 */  lw      $t8, 0x0088($sp)           
/* 02FC4 80B0ED74 3C0680B1 */  lui     $a2, %hi(D_80B0F1B0)       ## $a2 = 80B10000
/* 02FC8 80B0ED78 24C6F1B0 */  addiu   $a2, $a2, %lo(D_80B0F1B0)  ## $a2 = 80B0F1B0
/* 02FCC 80B0ED7C 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFA0
/* 02FD0 80B0ED80 24070861 */  addiu   $a3, $zero, 0x0861         ## $a3 = 00000861
/* 02FD4 80B0ED84 0C031AD5 */  jal     Graph_CloseDisps              
/* 02FD8 80B0ED88 8F050000 */  lw      $a1, 0x0000($t8)           ## 00000000
/* 02FDC 80B0ED8C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02FE0 80B0ED90 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 02FE4 80B0ED94 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 02FE8 80B0ED98 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
/* 02FEC 80B0ED9C 03E00008 */  jr      $ra                        
/* 02FF0 80B0EDA0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
