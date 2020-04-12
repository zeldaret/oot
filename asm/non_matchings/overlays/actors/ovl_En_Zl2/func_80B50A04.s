.rdata
glabel D_80B52980
    .asciz "En_Zl2_inAgain_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

.late_rodata
glabel jtbl_80B52BDC
.word L80B50A6C
.word L80B50A80
.word L80B50A94
.word L80B50AA8
.word L80B50ABC
.word L80B50AD0
.word L80B50AE4
.word L80B50AF8
.word L80B50B0C
.word L80B50B20
.word L80B50B34
.word L80B50B48
.word L80B50B5C
.word L80B50B70
.word L80B50B84

.text
glabel func_80B50A04
/* 02074 80B50A04 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02078 80B50A08 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0207C 80B50A0C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02080 80B50A10 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02084 80B50A14 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 02088 80B50A18 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0208C 80B50A1C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02090 80B50A20 0C2D3B65 */  jal     func_80B4ED94              
/* 02094 80B50A24 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 02098 80B50A28 1040005F */  beq     $v0, $zero, .L80B50BA8     
/* 0209C 80B50A2C 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 020A0 80B50A30 944E0000 */  lhu     $t6, 0x0000($v0)           ## 00000000
/* 020A4 80B50A34 AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 020A8 80B50A38 8E030240 */  lw      $v1, 0x0240($s0)           ## 00000240
/* 020AC 80B50A3C 25D8FFFF */  addiu   $t8, $t6, 0xFFFF           ## $t8 = FFFFFFFF
/* 020B0 80B50A40 2F01000F */  sltiu   $at, $t8, 0x000F           
/* 020B4 80B50A44 51C30059 */  beql    $t6, $v1, .L80B50BAC       
/* 020B8 80B50A48 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 020BC 80B50A4C 10200052 */  beq     $at, $zero, .L80B50B98     
/* 020C0 80B50A50 3C0480B5 */  lui     $a0, %hi(D_80B52980)       ## $a0 = 80B50000
/* 020C4 80B50A54 0018C080 */  sll     $t8, $t8,  2               
/* 020C8 80B50A58 3C0180B5 */  lui     $at, %hi(jtbl_80B52BDC)       ## $at = 80B50000
/* 020CC 80B50A5C 00380821 */  addu    $at, $at, $t8              
/* 020D0 80B50A60 8C382BDC */  lw      $t8, %lo(jtbl_80B52BDC)($at)  
/* 020D4 80B50A64 03000008 */  jr      $t8                        
/* 020D8 80B50A68 00000000 */  nop
glabel L80B50A6C
/* 020DC 80B50A6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 020E0 80B50A70 0C2D4098 */  jal     func_80B50260              
/* 020E4 80B50A74 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 020E8 80B50A78 1000004A */  beq     $zero, $zero, .L80B50BA4   
/* 020EC 80B50A7C 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B50A80
/* 020F0 80B50A80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 020F4 80B50A84 0C2D409E */  jal     func_80B50278              
/* 020F8 80B50A88 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 020FC 80B50A8C 10000045 */  beq     $zero, $zero, .L80B50BA4   
/* 02100 80B50A90 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B50A94
/* 02104 80B50A94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02108 80B50A98 0C2D40C1 */  jal     func_80B50304              
/* 0210C 80B50A9C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 02110 80B50AA0 10000040 */  beq     $zero, $zero, .L80B50BA4   
/* 02114 80B50AA4 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B50AA8
/* 02118 80B50AA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0211C 80B50AAC 0C2D410B */  jal     func_80B5042C              
/* 02120 80B50AB0 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 02124 80B50AB4 1000003B */  beq     $zero, $zero, .L80B50BA4   
/* 02128 80B50AB8 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B50ABC
/* 0212C 80B50ABC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02130 80B50AC0 0C2D4135 */  jal     func_80B504D4              
/* 02134 80B50AC4 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 02138 80B50AC8 10000036 */  beq     $zero, $zero, .L80B50BA4   
/* 0213C 80B50ACC 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B50AD0
/* 02140 80B50AD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02144 80B50AD4 0C2D4160 */  jal     func_80B50580              
/* 02148 80B50AD8 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 0214C 80B50ADC 10000031 */  beq     $zero, $zero, .L80B50BA4   
/* 02150 80B50AE0 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B50AE4
/* 02154 80B50AE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02158 80B50AE8 0C2D4186 */  jal     func_80B50618              
/* 0215C 80B50AEC 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 02160 80B50AF0 1000002C */  beq     $zero, $zero, .L80B50BA4   
/* 02164 80B50AF4 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B50AF8
/* 02168 80B50AF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0216C 80B50AFC 0C2D419C */  jal     func_80B50670              
/* 02170 80B50B00 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 02174 80B50B04 10000027 */  beq     $zero, $zero, .L80B50BA4   
/* 02178 80B50B08 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B50B0C
/* 0217C 80B50B0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02180 80B50B10 0C2D41B1 */  jal     func_80B506C4              
/* 02184 80B50B14 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 02188 80B50B18 10000022 */  beq     $zero, $zero, .L80B50BA4   
/* 0218C 80B50B1C 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B50B20
/* 02190 80B50B20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02194 80B50B24 0C2D41E0 */  jal     func_80B50780              
/* 02198 80B50B28 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 0219C 80B50B2C 1000001D */  beq     $zero, $zero, .L80B50BA4   
/* 021A0 80B50B30 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B50B34
/* 021A4 80B50B34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021A8 80B50B38 0C2D420B */  jal     func_80B5082C              
/* 021AC 80B50B3C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 021B0 80B50B40 10000018 */  beq     $zero, $zero, .L80B50BA4   
/* 021B4 80B50B44 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B50B48
/* 021B8 80B50B48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021BC 80B50B4C 0C2D4232 */  jal     func_80B508C8              
/* 021C0 80B50B50 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 021C4 80B50B54 10000013 */  beq     $zero, $zero, .L80B50BA4   
/* 021C8 80B50B58 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B50B5C
/* 021CC 80B50B5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021D0 80B50B60 0C2D425C */  jal     func_80B50970              
/* 021D4 80B50B64 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 021D8 80B50B68 1000000E */  beq     $zero, $zero, .L80B50BA4   
/* 021DC 80B50B6C 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B50B70
/* 021E0 80B50B70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021E4 80B50B74 0C2D4260 */  jal     func_80B50980              
/* 021E8 80B50B78 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 021EC 80B50B7C 10000009 */  beq     $zero, $zero, .L80B50BA4   
/* 021F0 80B50B80 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B50B84
/* 021F4 80B50B84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021F8 80B50B88 0C2D4191 */  jal     func_80B50644              
/* 021FC 80B50B8C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 02200 80B50B90 10000004 */  beq     $zero, $zero, .L80B50BA4   
/* 02204 80B50B94 8FB90020 */  lw      $t9, 0x0020($sp)           
.L80B50B98:
/* 02208 80B50B98 0C00084C */  jal     osSyncPrintf
              
/* 0220C 80B50B9C 24842980 */  addiu   $a0, $a0, %lo(D_80B52980)  ## $a0 = 00002980
/* 02210 80B50BA0 8FB90020 */  lw      $t9, 0x0020($sp)           
.L80B50BA4:
/* 02214 80B50BA4 AE190240 */  sw      $t9, 0x0240($s0)           ## 00000240
.L80B50BA8:
/* 02218 80B50BA8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B50BAC:
/* 0221C 80B50BAC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02220 80B50BB0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02224 80B50BB4 03E00008 */  jr      $ra                        
/* 02228 80B50BB8 00000000 */  nop
