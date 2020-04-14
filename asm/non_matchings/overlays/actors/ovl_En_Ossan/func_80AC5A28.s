.rdata
glabel D_80AC92B8
    .asciz "%s[%d]:\x1b[32mズーム中！！\x1b[m\n"
    .balign 4

glabel D_80AC92D8
    .asciz "../z_en_oB1.c"
    .balign 4

.late_rodata
glabel jtbl_80AC95E4
.word L80AC5B5C
.word L80AC5B74
.word L80AC5B8C
.word L80AC5BA4
.word L80AC5BB8
.word L80AC5BB8
.word L80AC5BB8
.word L80AC5BB8

.text
glabel func_80AC5A28
/* 02D88 80AC5A28 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02D8C 80AC5A2C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 02D90 80AC5A30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02D94 80AC5A34 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02D98 80AC5A38 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 02D9C 80AC5A3C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 02DA0 80AC5A40 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 02DA4 80AC5A44 0C042F6F */  jal     func_8010BDBC              
/* 02DA8 80AC5A48 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 02DAC 80AC5A4C A3A20027 */  sb      $v0, 0x0027($sp)           
/* 02DB0 80AC5A50 920E0252 */  lbu     $t6, 0x0252($s0)           ## 00000252
/* 02DB4 80AC5A54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02DB8 80AC5A58 000E7880 */  sll     $t7, $t6,  2               
/* 02DBC 80AC5A5C 020FC021 */  addu    $t8, $s0, $t7              
/* 02DC0 80AC5A60 8F190200 */  lw      $t9, 0x0200($t8)           ## 00000200
/* 02DC4 80AC5A64 0C2B1924 */  jal     func_80AC6490              
/* 02DC8 80AC5A68 AFB90020 */  sw      $t9, 0x0020($sp)           
/* 02DCC 80AC5A6C 14400009 */  bne     $v0, $zero, .L80AC5A94     
/* 02DD0 80AC5A70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02DD4 80AC5A74 3C0480AD */  lui     $a0, %hi(D_80AC92B8)       ## $a0 = 80AD0000
/* 02DD8 80AC5A78 3C0580AD */  lui     $a1, %hi(D_80AC92D8)       ## $a1 = 80AD0000
/* 02DDC 80AC5A7C 24A592D8 */  addiu   $a1, $a1, %lo(D_80AC92D8)  ## $a1 = 80AC92D8
/* 02DE0 80AC5A80 248492B8 */  addiu   $a0, $a0, %lo(D_80AC92B8)  ## $a0 = 80AC92B8
/* 02DE4 80AC5A84 0C00084C */  jal     osSyncPrintf
              
/* 02DE8 80AC5A88 24060B1D */  addiu   $a2, $zero, 0x0B1D         ## $a2 = 00000B1D
/* 02DEC 80AC5A8C 10000061 */  beq     $zero, $zero, .L80AC5C14   
/* 02DF0 80AC5A90 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC5A94:
/* 02DF4 80AC5A94 93A20027 */  lbu     $v0, 0x0027($sp)           
/* 02DF8 80AC5A98 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 02DFC 80AC5A9C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 02E00 80AC5AA0 54410011 */  bnel    $v0, $at, .L80AC5AE8       
/* 02E04 80AC5AA4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 02E08 80AC5AA8 0C041AF2 */  jal     func_80106BC8              
/* 02E0C 80AC5AAC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02E10 80AC5AB0 50400058 */  beql    $v0, $zero, .L80AC5C14     
/* 02E14 80AC5AB4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02E18 80AC5AB8 92090252 */  lbu     $t1, 0x0252($s0)           ## 00000252
/* 02E1C 80AC5ABC 860801FE */  lh      $t0, 0x01FE($s0)           ## 000001FE
/* 02E20 80AC5AC0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02E24 80AC5AC4 00095080 */  sll     $t2, $t1,  2               
/* 02E28 80AC5AC8 020A5821 */  addu    $t3, $s0, $t2              
/* 02E2C 80AC5ACC A60801FC */  sh      $t0, 0x01FC($s0)           ## 000001FC
/* 02E30 80AC5AD0 8D6C0200 */  lw      $t4, 0x0200($t3)           ## 00000200
/* 02E34 80AC5AD4 0C042DC8 */  jal     func_8010B720              
/* 02E38 80AC5AD8 9585010E */  lhu     $a1, 0x010E($t4)           ## 0000010E
/* 02E3C 80AC5ADC 1000004D */  beq     $zero, $zero, .L80AC5C14   
/* 02E40 80AC5AE0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02E44 80AC5AE4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
.L80AC5AE8:
/* 02E48 80AC5AE8 5441004A */  bnel    $v0, $at, .L80AC5C14       
/* 02E4C 80AC5AEC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02E50 80AC5AF0 0C2B0E32 */  jal     func_80AC38C8              
/* 02E54 80AC5AF4 26260014 */  addiu   $a2, $s1, 0x0014           ## $a2 = 00000014
/* 02E58 80AC5AF8 54400046 */  bnel    $v0, $zero, .L80AC5C14     
/* 02E5C 80AC5AFC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02E60 80AC5B00 0C041AF2 */  jal     func_80106BC8              
/* 02E64 80AC5B04 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02E68 80AC5B08 10400041 */  beq     $v0, $zero, .L80AC5C10     
/* 02E6C 80AC5B0C 8FAD0020 */  lw      $t5, 0x0020($sp)           
/* 02E70 80AC5B10 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 02E74 80AC5B14 00511021 */  addu    $v0, $v0, $s1              
/* 02E78 80AC5B18 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 02E7C 80AC5B1C 10400005 */  beq     $v0, $zero, .L80AC5B34     
/* 02E80 80AC5B20 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02E84 80AC5B24 50410032 */  beql    $v0, $at, .L80AC5BF0       
/* 02E88 80AC5B28 92180252 */  lbu     $t8, 0x0252($s0)           ## 00000252
/* 02E8C 80AC5B2C 10000039 */  beq     $zero, $zero, .L80AC5C14   
/* 02E90 80AC5B30 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC5B34:
/* 02E94 80AC5B34 85AE001C */  lh      $t6, 0x001C($t5)           ## 0000001C
/* 02E98 80AC5B38 25CFFFE2 */  addiu   $t7, $t6, 0xFFE2           ## $t7 = FFFFFFE2
/* 02E9C 80AC5B3C 2DE10008 */  sltiu   $at, $t7, 0x0008           
/* 02EA0 80AC5B40 1020001D */  beq     $at, $zero, .L80AC5BB8     
/* 02EA4 80AC5B44 000F7880 */  sll     $t7, $t7,  2               
/* 02EA8 80AC5B48 3C0180AD */  lui     $at, %hi(jtbl_80AC95E4)       ## $at = 80AD0000
/* 02EAC 80AC5B4C 002F0821 */  addu    $at, $at, $t7              
/* 02EB0 80AC5B50 8C2F95E4 */  lw      $t7, %lo(jtbl_80AC95E4)($at)  
/* 02EB4 80AC5B54 01E00008 */  jr      $t7                        
/* 02EB8 80AC5B58 00000000 */  nop
glabel L80AC5B5C
/* 02EBC 80AC5B5C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 02EC0 80AC5B60 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 02EC4 80AC5B64 94580EF4 */  lhu     $t8, 0x0EF4($v0)           ## 8015F554
/* 02EC8 80AC5B68 37190008 */  ori     $t9, $t8, 0x0008           ## $t9 = 00000008
/* 02ECC 80AC5B6C 10000012 */  beq     $zero, $zero, .L80AC5BB8   
/* 02ED0 80AC5B70 A4590EF4 */  sh      $t9, 0x0EF4($v0)           ## 8015F554
glabel L80AC5B74
/* 02ED4 80AC5B74 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 02ED8 80AC5B78 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 02EDC 80AC5B7C 94480EF4 */  lhu     $t0, 0x0EF4($v0)           ## 8015F554
/* 02EE0 80AC5B80 35090020 */  ori     $t1, $t0, 0x0020           ## $t1 = 00000020
/* 02EE4 80AC5B84 1000000C */  beq     $zero, $zero, .L80AC5BB8   
/* 02EE8 80AC5B88 A4490EF4 */  sh      $t1, 0x0EF4($v0)           ## 8015F554
glabel L80AC5B8C
/* 02EEC 80AC5B8C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 02EF0 80AC5B90 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 02EF4 80AC5B94 944A0EF4 */  lhu     $t2, 0x0EF4($v0)           ## 8015F554
/* 02EF8 80AC5B98 354B0010 */  ori     $t3, $t2, 0x0010           ## $t3 = 00000010
/* 02EFC 80AC5B9C 10000006 */  beq     $zero, $zero, .L80AC5BB8   
/* 02F00 80AC5BA0 A44B0EF4 */  sh      $t3, 0x0EF4($v0)           ## 8015F554
glabel L80AC5BA4
/* 02F04 80AC5BA4 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 02F08 80AC5BA8 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 02F0C 80AC5BAC 944C0EF4 */  lhu     $t4, 0x0EF4($v0)           ## 8015F554
/* 02F10 80AC5BB0 358D0040 */  ori     $t5, $t4, 0x0040           ## $t5 = 00000040
/* 02F14 80AC5BB4 A44D0EF4 */  sh      $t5, 0x0EF4($v0)           ## 8015F554
glabel L80AC5BB8
.L80AC5BB8:
/* 02F18 80AC5BB8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02F1C 80AC5BBC 0C2B13B2 */  jal     func_80AC4EC8              
/* 02F20 80AC5BC0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02F24 80AC5BC4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02F28 80AC5BC8 A2000251 */  sb      $zero, 0x0251($s0)         ## 00000251
/* 02F2C 80AC5BCC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02F30 80AC5BD0 E60402D0 */  swc1    $f4, 0x02D0($s0)           ## 000002D0
/* 02F34 80AC5BD4 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 02F38 80AC5BD8 8CB901AC */  lw      $t9, 0x01AC($a1)           ## 000001AC
/* 02F3C 80AC5BDC 0320F809 */  jalr    $ra, $t9                   
/* 02F40 80AC5BE0 00000000 */  nop
/* 02F44 80AC5BE4 1000000B */  beq     $zero, $zero, .L80AC5C14   
/* 02F48 80AC5BE8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02F4C 80AC5BEC 92180252 */  lbu     $t8, 0x0252($s0)           ## 00000252
.L80AC5BF0:
/* 02F50 80AC5BF0 860F01FE */  lh      $t7, 0x01FE($s0)           ## 000001FE
/* 02F54 80AC5BF4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02F58 80AC5BF8 00184080 */  sll     $t0, $t8,  2               
/* 02F5C 80AC5BFC 02084821 */  addu    $t1, $s0, $t0              
/* 02F60 80AC5C00 A60F01FC */  sh      $t7, 0x01FC($s0)           ## 000001FC
/* 02F64 80AC5C04 8D2A0200 */  lw      $t2, 0x0200($t1)           ## 00000200
/* 02F68 80AC5C08 0C042DC8 */  jal     func_8010B720              
/* 02F6C 80AC5C0C 9545010E */  lhu     $a1, 0x010E($t2)           ## 0000010E
.L80AC5C10:
/* 02F70 80AC5C10 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC5C14:
/* 02F74 80AC5C14 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 02F78 80AC5C18 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 02F7C 80AC5C1C 03E00008 */  jr      $ra                        
/* 02F80 80AC5C20 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
