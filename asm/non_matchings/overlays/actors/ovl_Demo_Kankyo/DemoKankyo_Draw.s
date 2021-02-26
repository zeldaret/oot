.late_rodata
glabel jtbl_8098CAE4
.word L809899F8
.word L809899F8
.word L80989AA8
.word L80989AA8
.word L80989AA8
.word L80989AA8
.word L80989AA8
.word L80989ABC
.word L80989B1C
.word L80989B1C
.word L80989B1C
.word L80989B1C
.word L80989B1C
.word L80989AD0
.word L80989AE4
.word L80989AF8
.word L80989AF8
.word L80989B0C

.text
glabel DemoKankyo_Draw
/* 00B2C 809899AC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00B30 809899B0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00B34 809899B4 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00B38 809899B8 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00B3C 809899BC 808E001E */  lb      $t6, 0x001E($a0)           ## 0000001E
/* 00B40 809899C0 9086014C */  lbu     $a2, 0x014C($a0)           ## 0000014C
/* 00B44 809899C4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B48 809899C8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00B4C 809899CC 54CE0054 */  bnel    $a2, $t6, .L80989B20       
/* 00B50 809899D0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00B54 809899D4 948F001C */  lhu     $t7, 0x001C($a0)           ## 0000001C
/* 00B58 809899D8 2DE10012 */  sltiu   $at, $t7, 0x0012           
/* 00B5C 809899DC 1020004F */  beq     $at, $zero, .L80989B1C     
/* 00B60 809899E0 000F7880 */  sll     $t7, $t7,  2               
/* 00B64 809899E4 3C018099 */  lui     $at, %hi(jtbl_8098CAE4)       ## $at = 80990000
/* 00B68 809899E8 002F0821 */  addu    $at, $at, $t7              
/* 00B6C 809899EC 8C2FCAE4 */  lw      $t7, %lo(jtbl_8098CAE4)($at)  
/* 00B70 809899F0 01E00008 */  jr      $t7                        
/* 00B74 809899F4 00000000 */  nop
glabel L809899F8
/* 00B78 809899F8 863800A4 */  lh      $t8, 0x00A4($s1)           ## 000000A4
/* 00B7C 809899FC 24010043 */  addiu   $at, $zero, 0x0043         ## $at = 00000043
/* 00B80 80989A00 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B84 80989A04 57010024 */  bnel    $t8, $at, .L80989A98       
/* 00B88 80989A08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B8C 80989A0C 0C01B129 */  jal     Flags_GetEnv              
/* 00B90 80989A10 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00B94 80989A14 14400003 */  bne     $v0, $zero, .L80989A24     
/* 00B98 80989A18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B9C 80989A1C 1000003F */  beq     $zero, $zero, .L80989B1C   
/* 00BA0 80989A20 9206014C */  lbu     $a2, 0x014C($s0)           ## 0000014C
.L80989A24:
/* 00BA4 80989A24 3C054396 */  lui     $a1, 0x4396                ## $a1 = 43960000
/* 00BA8 80989A28 0C00B84B */  jal     func_8002E12C              
/* 00BAC 80989A2C 24067530 */  addiu   $a2, $zero, 0x7530         ## $a2 = 00007530
/* 00BB0 80989A30 14400003 */  bne     $v0, $zero, .L80989A40     
/* 00BB4 80989A34 3C198016 */  lui     $t9, %hi(gSaveContext+4)
/* 00BB8 80989A38 10000038 */  beq     $zero, $zero, .L80989B1C   
/* 00BBC 80989A3C 9206014C */  lbu     $a2, 0x014C($s0)           ## 0000014C
.L80989A40:
/* 00BC0 80989A40 8F39E664 */  lw      $t9, %lo(gSaveContext+4)($t9)
/* 00BC4 80989A44 5320000B */  beql    $t9, $zero, .L80989A74     
/* 00BC8 80989A48 962A1D74 */  lhu     $t2, 0x1D74($s1)           ## 00001D74
/* 00BCC 80989A4C 96281D74 */  lhu     $t0, 0x1D74($s1)           ## 00001D74
/* 00BD0 80989A50 290100AA */  slti    $at, $t0, 0x00AA           
/* 00BD4 80989A54 14200004 */  bne     $at, $zero, .L80989A68     
/* 00BD8 80989A58 00000000 */  nop
/* 00BDC 80989A5C 92291D6C */  lbu     $t1, 0x1D6C($s1)           ## 00001D6C
/* 00BE0 80989A60 5520000D */  bnel    $t1, $zero, .L80989A98     
/* 00BE4 80989A64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80989A68:
/* 00BE8 80989A68 1000002C */  beq     $zero, $zero, .L80989B1C   
/* 00BEC 80989A6C 9206014C */  lbu     $a2, 0x014C($s0)           ## 0000014C
/* 00BF0 80989A70 962A1D74 */  lhu     $t2, 0x1D74($s1)           ## 00001D74
.L80989A74:
/* 00BF4 80989A74 29410078 */  slti    $at, $t2, 0x0078           
/* 00BF8 80989A78 14200004 */  bne     $at, $zero, .L80989A8C     
/* 00BFC 80989A7C 00000000 */  nop
/* 00C00 80989A80 922B1D6C */  lbu     $t3, 0x1D6C($s1)           ## 00001D6C
/* 00C04 80989A84 55600004 */  bnel    $t3, $zero, .L80989A98     
/* 00C08 80989A88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80989A8C:
/* 00C0C 80989A8C 10000023 */  beq     $zero, $zero, .L80989B1C   
/* 00C10 80989A90 9206014C */  lbu     $a2, 0x014C($s0)           ## 0000014C
/* 00C14 80989A94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80989A98:
/* 00C18 80989A98 0C262749 */  jal     func_80989D24              
/* 00C1C 80989A9C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00C20 80989AA0 1000001E */  beq     $zero, $zero, .L80989B1C   
/* 00C24 80989AA4 9206014C */  lbu     $a2, 0x014C($s0)           ## 0000014C
glabel L80989AA8
/* 00C28 80989AA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C2C 80989AAC 0C2628DB */  jal     func_8098A36C              
/* 00C30 80989AB0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00C34 80989AB4 10000019 */  beq     $zero, $zero, .L80989B1C   
/* 00C38 80989AB8 9206014C */  lbu     $a2, 0x014C($s0)           ## 0000014C
glabel L80989ABC
/* 00C3C 80989ABC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C40 80989AC0 0C26293C */  jal     func_8098A4F0              
/* 00C44 80989AC4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00C48 80989AC8 10000014 */  beq     $zero, $zero, .L80989B1C   
/* 00C4C 80989ACC 9206014C */  lbu     $a2, 0x014C($s0)           ## 0000014C
glabel L80989AD0
/* 00C50 80989AD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C54 80989AD4 0C262A15 */  jal     func_8098A854              
/* 00C58 80989AD8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00C5C 80989ADC 1000000F */  beq     $zero, $zero, .L80989B1C   
/* 00C60 80989AE0 9206014C */  lbu     $a2, 0x014C($s0)           ## 0000014C
glabel L80989AE4
/* 00C64 80989AE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C68 80989AE8 0C262A69 */  jal     func_8098A9A4              
/* 00C6C 80989AEC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00C70 80989AF0 1000000A */  beq     $zero, $zero, .L80989B1C   
/* 00C74 80989AF4 9206014C */  lbu     $a2, 0x014C($s0)           ## 0000014C
glabel L80989AF8
/* 00C78 80989AF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C7C 80989AFC 0C262AF0 */  jal     func_8098ABC0              
/* 00C80 80989B00 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00C84 80989B04 10000005 */  beq     $zero, $zero, .L80989B1C   
/* 00C88 80989B08 9206014C */  lbu     $a2, 0x014C($s0)           ## 0000014C
glabel L80989B0C
/* 00C8C 80989B0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C90 80989B10 0C262CD5 */  jal     func_8098B354              
/* 00C94 80989B14 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00C98 80989B18 9206014C */  lbu     $a2, 0x014C($s0)           ## 0000014C
glabel L80989B1C
.L80989B1C:
/* 00C9C 80989B1C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80989B20:
/* 00CA0 80989B20 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00CA4 80989B24 02212021 */  addu    $a0, $s1, $at              
/* 00CA8 80989B28 0C026062 */  jal     Object_IsLoaded
              
/* 00CAC 80989B2C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 00CB0 80989B30 50400004 */  beql    $v0, $zero, .L80989B44     
/* 00CB4 80989B34 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00CB8 80989B38 920C014C */  lbu     $t4, 0x014C($s0)           ## 0000014C
/* 00CBC 80989B3C A20C001E */  sb      $t4, 0x001E($s0)           ## 0000001E
/* 00CC0 80989B40 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80989B44:
/* 00CC4 80989B44 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00CC8 80989B48 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00CCC 80989B4C 03E00008 */  jr      $ra                        
/* 00CD0 80989B50 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
