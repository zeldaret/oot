.rdata
glabel D_8099EB70
    .asciz "../z_eff_dust.c"
    .balign 4

.late_rodata
glabel jtbl_8099EBE0
.word L8099D998
.word L8099D9E4
.word L8099DA30
.word L8099DA6C
.word L8099DAA8
glabel D_8099EBF4
    .float 0.8

glabel D_8099EBF8
    .float 0.1

glabel D_8099EBFC
    .float 0.8

.text
glabel EffDust_Init
/* 00084 8099D954 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00088 8099D958 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0008C 8099D95C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00090 8099D960 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00094 8099D964 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00098 8099D968 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0009C 8099D96C 0C267638 */  jal     func_8099D8E0              
/* 000A0 8099D970 AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 000A4 8099D974 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 000A8 8099D978 2DE10005 */  sltiu   $at, $t7, 0x0005           
/* 000AC 8099D97C 1020005B */  beq     $at, $zero, .L8099DAEC     
/* 000B0 8099D980 000F7880 */  sll     $t7, $t7,  2               
/* 000B4 8099D984 3C01809A */  lui     $at, %hi(jtbl_8099EBE0)       ## $at = 809A0000
/* 000B8 8099D988 002F0821 */  addu    $at, $at, $t7              
/* 000BC 8099D98C 8C2FEBE0 */  lw      $t7, %lo(jtbl_8099EBE0)($at)  
/* 000C0 8099D990 01E00008 */  jr      $t7                        
/* 000C4 8099D994 00000000 */  nop
glabel L8099D998
/* 000C8 8099D998 3C05809A */  lui     $a1, %hi(func_8099DB28)    ## $a1 = 809A0000
/* 000CC 8099D99C 24A5DB28 */  addiu   $a1, $a1, %lo(func_8099DB28) ## $a1 = 8099DB28
/* 000D0 8099D9A0 0C267634 */  jal     func_8099D8D0              
/* 000D4 8099D9A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000D8 8099D9A8 3C05809A */  lui     $a1, %hi(func_8099E4F4)    ## $a1 = 809A0000
/* 000DC 8099D9AC 24A5E4F4 */  addiu   $a1, $a1, %lo(func_8099E4F4) ## $a1 = 8099E4F4
/* 000E0 8099D9B0 0C267636 */  jal     func_8099D8D8              
/* 000E4 8099D9B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000E8 8099D9B8 3C01809A */  lui     $at, %hi(D_8099EBF4)       ## $at = 809A0000
/* 000EC 8099D9BC C420EBF4 */  lwc1    $f0, %lo(D_8099EBF4)($at)  
/* 000F0 8099D9C0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 000F4 8099D9C4 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 000F8 8099D9C8 3C01809A */  lui     $at, %hi(D_8099EBF8)       ## $at = 809A0000
/* 000FC 8099D9CC E6000554 */  swc1    $f0, 0x0554($s0)           ## 00000554
/* 00100 8099D9D0 E6000558 */  swc1    $f0, 0x0558($s0)           ## 00000558
/* 00104 8099D9D4 E6040550 */  swc1    $f4, 0x0550($s0)           ## 00000550
/* 00108 8099D9D8 C426EBF8 */  lwc1    $f6, %lo(D_8099EBF8)($at)  
/* 0010C 8099D9DC 10000048 */  beq     $zero, $zero, .L8099DB00   
/* 00110 8099D9E0 E606055C */  swc1    $f6, 0x055C($s0)           ## 0000055C
glabel L8099D9E4
/* 00114 8099D9E4 3C05809A */  lui     $a1, %hi(func_8099DD74)    ## $a1 = 809A0000
/* 00118 8099D9E8 24A5DD74 */  addiu   $a1, $a1, %lo(func_8099DD74) ## $a1 = 8099DD74
/* 0011C 8099D9EC 0C267634 */  jal     func_8099D8D0              
/* 00120 8099D9F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00124 8099D9F4 3C05809A */  lui     $a1, %hi(func_8099E4F4)    ## $a1 = 809A0000
/* 00128 8099D9F8 24A5E4F4 */  addiu   $a1, $a1, %lo(func_8099E4F4) ## $a1 = 8099E4F4
/* 0012C 8099D9FC 0C267636 */  jal     func_8099D8D8              
/* 00130 8099DA00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00134 8099DA04 3C01809A */  lui     $at, %hi(D_8099EBFC)       ## $at = 809A0000
/* 00138 8099DA08 C420EBFC */  lwc1    $f0, %lo(D_8099EBFC)($at)  
/* 0013C 8099DA0C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00140 8099DA10 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 00144 8099DA14 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00148 8099DA18 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 0014C 8099DA1C E6000550 */  swc1    $f0, 0x0550($s0)           ## 00000550
/* 00150 8099DA20 E6000558 */  swc1    $f0, 0x0558($s0)           ## 00000558
/* 00154 8099DA24 E6080554 */  swc1    $f8, 0x0554($s0)           ## 00000554
/* 00158 8099DA28 10000035 */  beq     $zero, $zero, .L8099DB00   
/* 0015C 8099DA2C E60A055C */  swc1    $f10, 0x055C($s0)          ## 0000055C
glabel L8099DA30
/* 00160 8099DA30 3C05809A */  lui     $a1, %hi(func_8099DFC0)    ## $a1 = 809A0000
/* 00164 8099DA34 24A5DFC0 */  addiu   $a1, $a1, %lo(func_8099DFC0) ## $a1 = 8099DFC0
/* 00168 8099DA38 0C267634 */  jal     func_8099D8D0              
/* 0016C 8099DA3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00170 8099DA40 3C05809A */  lui     $a1, %hi(func_8099E784)    ## $a1 = 809A0000
/* 00174 8099DA44 24A5E784 */  addiu   $a1, $a1, %lo(func_8099E784) ## $a1 = 8099E784
/* 00178 8099DA48 0C267636 */  jal     func_8099D8D8              
/* 0017C 8099DA4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00180 8099DA50 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00184 8099DA54 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 00188 8099DA58 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 0018C 8099DA5C 44819000 */  mtc1    $at, $f18                  ## $f18 = 15.00
/* 00190 8099DA60 E6100550 */  swc1    $f16, 0x0550($s0)          ## 00000550
/* 00194 8099DA64 10000026 */  beq     $zero, $zero, .L8099DB00   
/* 00198 8099DA68 E612055C */  swc1    $f18, 0x055C($s0)          ## 0000055C
glabel L8099DA6C
/* 0019C 8099DA6C 3C05809A */  lui     $a1, %hi(func_8099DFC0)    ## $a1 = 809A0000
/* 001A0 8099DA70 24A5DFC0 */  addiu   $a1, $a1, %lo(func_8099DFC0) ## $a1 = 8099DFC0
/* 001A4 8099DA74 0C267634 */  jal     func_8099D8D0              
/* 001A8 8099DA78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001AC 8099DA7C 3C05809A */  lui     $a1, %hi(func_8099E784)    ## $a1 = 809A0000
/* 001B0 8099DA80 24A5E784 */  addiu   $a1, $a1, %lo(func_8099E784) ## $a1 = 8099E784
/* 001B4 8099DA84 0C267636 */  jal     func_8099D8D8              
/* 001B8 8099DA88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001BC 8099DA8C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 001C0 8099DA90 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 001C4 8099DA94 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 001C8 8099DA98 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 001CC 8099DA9C E6040550 */  swc1    $f4, 0x0550($s0)           ## 00000550
/* 001D0 8099DAA0 10000017 */  beq     $zero, $zero, .L8099DB00   
/* 001D4 8099DAA4 E606055C */  swc1    $f6, 0x055C($s0)           ## 0000055C
glabel L8099DAA8
/* 001D8 8099DAA8 3C05809A */  lui     $a1, %hi(func_8099DFC0)    ## $a1 = 809A0000
/* 001DC 8099DAAC 24A5DFC0 */  addiu   $a1, $a1, %lo(func_8099DFC0) ## $a1 = 8099DFC0
/* 001E0 8099DAB0 0C267634 */  jal     func_8099D8D0              
/* 001E4 8099DAB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001E8 8099DAB8 3C05809A */  lui     $a1, %hi(func_8099E784)    ## $a1 = 809A0000
/* 001EC 8099DABC 24A5E784 */  addiu   $a1, $a1, %lo(func_8099E784) ## $a1 = 8099E784
/* 001F0 8099DAC0 0C267636 */  jal     func_8099D8D8              
/* 001F4 8099DAC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001F8 8099DAC8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 001FC 8099DACC 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 00200 8099DAD0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00204 8099DAD4 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 00208 8099DAD8 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 0020C 8099DADC A2180003 */  sb      $t8, 0x0003($s0)           ## 00000003
/* 00210 8099DAE0 E6080550 */  swc1    $f8, 0x0550($s0)           ## 00000550
/* 00214 8099DAE4 10000006 */  beq     $zero, $zero, .L8099DB00   
/* 00218 8099DAE8 E60A055C */  swc1    $f10, 0x055C($s0)          ## 0000055C
.L8099DAEC:
/* 0021C 8099DAEC 3C05809A */  lui     $a1, %hi(D_8099EB70)       ## $a1 = 809A0000
/* 00220 8099DAF0 24A5EB70 */  addiu   $a1, $a1, %lo(D_8099EB70)  ## $a1 = 8099EB70
/* 00224 8099DAF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00228 8099DAF8 0C03F5ED */  jal     SystemArena_FreeDebug              
/* 0022C 8099DAFC 240600CA */  addiu   $a2, $zero, 0x00CA         ## $a2 = 000000CA
.L8099DB00:
/* 00230 8099DB00 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 00234 8099DB04 A219054D */  sb      $t9, 0x054D($s0)           ## 0000054D
/* 00238 8099DB08 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0023C 8099DB0C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00240 8099DB10 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00244 8099DB14 03E00008 */  jr      $ra                        
/* 00248 8099DB18 00000000 */  nop
