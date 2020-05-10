.rdata
glabel D_80B420B8
    .asciz "En_Oa2_Stalker_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

.late_rodata
glabel jtbl_80B42260
.word L80B40F10
.word L80B40FCC
.word L80B40FCC
.word L80B40FCC
.word L80B40FCC
.word L80B40F20
.word L80B40FCC
.word L80B40FCC
.word L80B40FBC
.word L80B40FCC
.word L80B40FCC
.word L80B40FCC
.word L80B40FCC
.word L80B40F58
.word L80B40F80
.word L80B40F94
.word L80B40FA8
.word L80B40F44
.word L80B40F6C
.word L80B40F34

.text
glabel func_80B40EAC
/* 04CCC 80B40EAC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 04CD0 80B40EB0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 04CD4 80B40EB4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04CD8 80B40EB8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 04CDC 80B40EBC 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 04CE0 80B40EC0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 04CE4 80B40EC4 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 04CE8 80B40EC8 0C2CF134 */  jal     func_80B3C4D0              
/* 04CEC 80B40ECC AFA6002C */  sw      $a2, 0x002C($sp)           
/* 04CF0 80B40ED0 10400045 */  beq     $v0, $zero, .L80B40FE8     
/* 04CF4 80B40ED4 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 04CF8 80B40ED8 944E0000 */  lhu     $t6, 0x0000($v0)           ## 00000000
/* 04CFC 80B40EDC AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 04D00 80B40EE0 8E03026C */  lw      $v1, 0x026C($s0)           ## 0000026C
/* 04D04 80B40EE4 25D8FFFF */  addiu   $t8, $t6, 0xFFFF           ## $t8 = FFFFFFFF
/* 04D08 80B40EE8 2F010014 */  sltiu   $at, $t8, 0x0014           
/* 04D0C 80B40EEC 51C3003F */  beql    $t6, $v1, .L80B40FEC       
/* 04D10 80B40EF0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 04D14 80B40EF4 10200035 */  beq     $at, $zero, .L80B40FCC     
/* 04D18 80B40EF8 0018C080 */  sll     $t8, $t8,  2               
/* 04D1C 80B40EFC 3C0180B4 */  lui     $at, %hi(jtbl_80B42260)       ## $at = 80B40000
/* 04D20 80B40F00 00380821 */  addu    $at, $at, $t8              
/* 04D24 80B40F04 8C382260 */  lw      $t8, %lo(jtbl_80B42260)($at)  
/* 04D28 80B40F08 03000008 */  jr      $t8                        
/* 04D2C 80B40F0C 00000000 */  nop
glabel L80B40F10
/* 04D30 80B40F10 0C2D01BE */  jal     func_80B406F8              
/* 04D34 80B40F14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04D38 80B40F18 10000030 */  beq     $zero, $zero, .L80B40FDC   
/* 04D3C 80B40F1C 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B40F20
/* 04D40 80B40F20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04D44 80B40F24 0C2D01C3 */  jal     func_80B4070C              
/* 04D48 80B40F28 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 04D4C 80B40F2C 1000002B */  beq     $zero, $zero, .L80B40FDC   
/* 04D50 80B40F30 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B40F34
/* 04D54 80B40F34 0C2D01EA */  jal     func_80B407A8              
/* 04D58 80B40F38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04D5C 80B40F3C 10000027 */  beq     $zero, $zero, .L80B40FDC   
/* 04D60 80B40F40 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B40F44
/* 04D64 80B40F44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04D68 80B40F48 0C2D0208 */  jal     func_80B40820              
/* 04D6C 80B40F4C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 04D70 80B40F50 10000022 */  beq     $zero, $zero, .L80B40FDC   
/* 04D74 80B40F54 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B40F58
/* 04D78 80B40F58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04D7C 80B40F5C 0C2D023F */  jal     func_80B408FC              
/* 04D80 80B40F60 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 04D84 80B40F64 1000001D */  beq     $zero, $zero, .L80B40FDC   
/* 04D88 80B40F68 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B40F6C
/* 04D8C 80B40F6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04D90 80B40F70 0C2D0276 */  jal     func_80B409D8              
/* 04D94 80B40F74 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 04D98 80B40F78 10000018 */  beq     $zero, $zero, .L80B40FDC   
/* 04D9C 80B40F7C 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B40F80
/* 04DA0 80B40F80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04DA4 80B40F84 0C2D029E */  jal     func_80B40A78              
/* 04DA8 80B40F88 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 04DAC 80B40F8C 10000013 */  beq     $zero, $zero, .L80B40FDC   
/* 04DB0 80B40F90 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B40F94
/* 04DB4 80B40F94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04DB8 80B40F98 0C2D02C6 */  jal     func_80B40B18              
/* 04DBC 80B40F9C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 04DC0 80B40FA0 1000000E */  beq     $zero, $zero, .L80B40FDC   
/* 04DC4 80B40FA4 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B40FA8
/* 04DC8 80B40FA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04DCC 80B40FAC 0C2D02ED */  jal     func_80B40BB4              
/* 04DD0 80B40FB0 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 04DD4 80B40FB4 10000009 */  beq     $zero, $zero, .L80B40FDC   
/* 04DD8 80B40FB8 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B40FBC
/* 04DDC 80B40FBC 0C00B55C */  jal     Actor_Kill
              
/* 04DE0 80B40FC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04DE4 80B40FC4 10000005 */  beq     $zero, $zero, .L80B40FDC   
/* 04DE8 80B40FC8 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B40FCC
.L80B40FCC:
/* 04DEC 80B40FCC 3C0480B4 */  lui     $a0, %hi(D_80B420B8)       ## $a0 = 80B40000
/* 04DF0 80B40FD0 0C00084C */  jal     osSyncPrintf
              
/* 04DF4 80B40FD4 248420B8 */  addiu   $a0, $a0, %lo(D_80B420B8)  ## $a0 = 80B420B8
/* 04DF8 80B40FD8 8FB90020 */  lw      $t9, 0x0020($sp)           
.L80B40FDC:
/* 04DFC 80B40FDC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 04E00 80B40FE0 10000002 */  beq     $zero, $zero, .L80B40FEC   
/* 04E04 80B40FE4 AE19026C */  sw      $t9, 0x026C($s0)           ## 0000026C
.L80B40FE8:
/* 04E08 80B40FE8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B40FEC:
/* 04E0C 80B40FEC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04E10 80B40FF0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 04E14 80B40FF4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 04E18 80B40FF8 03E00008 */  jr      $ra                        
/* 04E1C 80B40FFC 00000000 */  nop
