.late_rodata
glabel D_8095C774
    .float 0.1
    .balign 4

.text
glabel func_80955EEC
/* 06C2C 80955EEC 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 06C30 80955EF0 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 06C34 80955EF4 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 06C38 80955EF8 AFA5007C */  sw      $a1, 0x007C($sp)           
/* 06C3C 80955EFC 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 06C40 80955F00 27AF0054 */  addiu   $t7, $sp, 0x0054           ## $t7 = FFFFFFDC
/* 06C44 80955F04 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 06C48 80955F08 8C590024 */  lw      $t9, 0x0024($v0)           ## 00000024
/* 06C4C 80955F0C 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 06C50 80955F10 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 06C54 80955F14 ADF90000 */  sw      $t9, 0x0000($t7)           ## FFFFFFDC
/* 06C58 80955F18 8C580028 */  lw      $t8, 0x0028($v0)           ## 00000028
/* 06C5C 80955F1C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 06C60 80955F20 ADF80004 */  sw      $t8, 0x0004($t7)           ## FFFFFFE0
/* 06C64 80955F24 8C59002C */  lw      $t9, 0x002C($v0)           ## 0000002C
/* 06C68 80955F28 ADF90008 */  sw      $t9, 0x0008($t7)           ## FFFFFFE4
/* 06C6C 80955F2C C7A40058 */  lwc1    $f4, 0x0058($sp)           
/* 06C70 80955F30 AFA20074 */  sw      $v0, 0x0074($sp)           
/* 06C74 80955F34 46062200 */  add.s   $f8, $f4, $f6              
/* 06C78 80955F38 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 06C7C 80955F3C E7A80058 */  swc1    $f8, 0x0058($sp)           
/* 06C80 80955F40 0C253CB2 */  jal     func_8094F2C8              
/* 06C84 80955F44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 06C88 80955F48 3C098096 */  lui     $t1, %hi(D_809668D1)       ## $t1 = 80960000
/* 06C8C 80955F4C 912968D1 */  lbu     $t1, %lo(D_809668D1)($t1)  
/* 06C90 80955F50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 06C94 80955F54 3C0A8096 */  lui     $t2, %hi(D_809668D0)       ## $t2 = 80960000
/* 06C98 80955F58 29210012 */  slti    $at, $t1, 0x0012           
/* 06C9C 80955F5C 14200005 */  bne     $at, $zero, .L80955F74     
/* 06CA0 80955F60 00000000 */  nop
/* 06CA4 80955F64 0C25561B */  jal     func_8095586C              
/* 06CA8 80955F68 8FA5007C */  lw      $a1, 0x007C($sp)           
/* 06CAC 80955F6C 100001B1 */  beq     $zero, $zero, .L80956634   
/* 06CB0 80955F70 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80955F74:
/* 06CB4 80955F74 914A68D0 */  lbu     $t2, %lo(D_809668D0)($t2)  
/* 06CB8 80955F78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 06CBC 80955F7C C7AA0058 */  lwc1    $f10, 0x0058($sp)          
/* 06CC0 80955F80 314B007E */  andi    $t3, $t2, 0x007E           ## $t3 = 00000000
/* 06CC4 80955F84 11600005 */  beq     $t3, $zero, .L80955F9C     
/* 06CC8 80955F88 3C014039 */  lui     $at, 0x4039                ## $at = 40390000
/* 06CCC 80955F8C 0C255596 */  jal     func_80955658              
/* 06CD0 80955F90 8FA5007C */  lw      $a1, 0x007C($sp)           
/* 06CD4 80955F94 100001A7 */  beq     $zero, $zero, .L80956634   
/* 06CD8 80955F98 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80955F9C:
/* 06CDC 80955F9C 44819800 */  mtc1    $at, $f19                  ## $f19 = 0.00
/* 06CE0 80955FA0 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 06CE4 80955FA4 46005421 */  cvt.d.s $f16, $f10                 
/* 06CE8 80955FA8 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFFDC
/* 06CEC 80955FAC 46328100 */  add.d   $f4, $f16, $f18            
/* 06CF0 80955FB0 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 06CF4 80955FB4 462021A0 */  cvt.s.d $f6, $f4                   
/* 06CF8 80955FB8 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 06CFC 80955FBC E7A60058 */  swc1    $f6, 0x0058($sp)           
/* 06D00 80955FC0 860C00B6 */  lh      $t4, 0x00B6($s0)           ## 000000B6
/* 06D04 80955FC4 00024400 */  sll     $t0, $v0, 16               
/* 06D08 80955FC8 00084403 */  sra     $t0, $t0, 16               
/* 06D0C 80955FCC 004C3023 */  subu    $a2, $v0, $t4              
/* 06D10 80955FD0 00062400 */  sll     $a0, $a2, 16               
/* 06D14 80955FD4 00042403 */  sra     $a0, $a0, 16               
/* 06D18 80955FD8 04800003 */  bltz    $a0, .L80955FE8            
/* 06D1C 80955FDC 00041823 */  subu    $v1, $zero, $a0            
/* 06D20 80955FE0 10000001 */  beq     $zero, $zero, .L80955FE8   
/* 06D24 80955FE4 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
.L80955FE8:
/* 06D28 80955FE8 28614651 */  slti    $at, $v1, 0x4651           
/* 06D2C 80955FEC 14200004 */  bne     $at, $zero, .L80956000     
/* 06D30 80955FF0 3C0D8096 */  lui     $t5, %hi(D_809668D0)       ## $t5 = 80960000
/* 06D34 80955FF4 92030195 */  lbu     $v1, 0x0195($s0)           ## 00000195
/* 06D38 80955FF8 106000AF */  beq     $v1, $zero, .L809562B8     
/* 06D3C 80955FFC 00000000 */  nop
.L80956000:
/* 06D40 80956000 91AD68D0 */  lbu     $t5, %lo(D_809668D0)($t5)  
/* 06D44 80956004 92030195 */  lbu     $v1, 0x0195($s0)           ## 00000195
/* 06D48 80956008 8FAF0074 */  lw      $t7, 0x0074($sp)           
/* 06D4C 8095600C 31AE0080 */  andi    $t6, $t5, 0x0080           ## $t6 = 00000000
/* 06D50 80956010 15C000A9 */  bne     $t6, $zero, .L809562B8     
/* 06D54 80956014 00000000 */  nop
/* 06D58 80956018 8DF8067C */  lw      $t8, 0x067C($t7)           ## 0000067C
/* 06D5C 8095601C 0018C940 */  sll     $t9, $t8,  5               
/* 06D60 80956020 072000A5 */  bltz    $t9, .L809562B8            
/* 06D64 80956024 00000000 */  nop
/* 06D68 80956028 146000A1 */  bne     $v1, $zero, .L809562B0     
/* 06D6C 8095602C 00062C00 */  sll     $a1, $a2, 16               
/* 06D70 80956030 00052C03 */  sra     $a1, $a1, 16               
/* 06D74 80956034 04A00003 */  bltz    $a1, .L80956044            
/* 06D78 80956038 260401E6 */  addiu   $a0, $s0, 0x01E6           ## $a0 = 000001E6
/* 06D7C 8095603C 10000002 */  beq     $zero, $zero, .L80956048   
/* 06D80 80956040 00A01825 */  or      $v1, $a1, $zero            ## $v1 = 00000000
.L80956044:
/* 06D84 80956044 00051823 */  subu    $v1, $zero, $a1            
.L80956048:
/* 06D88 80956048 28611771 */  slti    $at, $v1, 0x1771           
/* 06D8C 8095604C 14200006 */  bne     $at, $zero, .L80956068     
/* 06D90 80956050 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 06D94 80956054 58A00004 */  blezl   $a1, .L80956068            
/* 06D98 80956058 2405E890 */  addiu   $a1, $zero, 0xE890         ## $a1 = FFFFE890
/* 06D9C 8095605C 10000002 */  beq     $zero, $zero, .L80956068   
/* 06DA0 80956060 24051770 */  addiu   $a1, $zero, 0x1770         ## $a1 = 00001770
/* 06DA4 80956064 2405E890 */  addiu   $a1, $zero, 0xE890         ## $a1 = FFFFE890
.L80956068:
/* 06DA8 80956068 24070DAC */  addiu   $a3, $zero, 0x0DAC         ## $a3 = 00000DAC
/* 06DAC 8095606C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 06DB0 80956070 A7A50068 */  sh      $a1, 0x0068($sp)           
/* 06DB4 80956074 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 06DB8 80956078 A7A8006C */  sh      $t0, 0x006C($sp)           
/* 06DBC 8095607C 87A50068 */  lh      $a1, 0x0068($sp)           
/* 06DC0 80956080 04400003 */  bltz    $v0, .L80956090            
/* 06DC4 80956084 87A8006C */  lh      $t0, 0x006C($sp)           
/* 06DC8 80956088 10000003 */  beq     $zero, $zero, .L80956098   
/* 06DCC 8095608C AFA20060 */  sw      $v0, 0x0060($sp)           
.L80956090:
/* 06DD0 80956090 00024823 */  subu    $t1, $zero, $v0            
/* 06DD4 80956094 AFA90060 */  sw      $t1, 0x0060($sp)           
.L80956098:
/* 06DD8 80956098 01052823 */  subu    $a1, $t0, $a1              
/* 06DDC 8095609C 00052C00 */  sll     $a1, $a1, 16               
/* 06DE0 809560A0 00052C03 */  sra     $a1, $a1, 16               
/* 06DE4 809560A4 04A00003 */  bltz    $a1, .L809560B4            
/* 06DE8 809560A8 260401EC */  addiu   $a0, $s0, 0x01EC           ## $a0 = 000001EC
/* 06DEC 809560AC 10000002 */  beq     $zero, $zero, .L809560B8   
/* 06DF0 809560B0 00A01825 */  or      $v1, $a1, $zero            ## $v1 = 00000000
.L809560B4:
/* 06DF4 809560B4 00051823 */  subu    $v1, $zero, $a1            
.L809560B8:
/* 06DF8 809560B8 28611771 */  slti    $at, $v1, 0x1771           
/* 06DFC 809560BC 14200006 */  bne     $at, $zero, .L809560D8     
/* 06E00 809560C0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 06E04 809560C4 58A00004 */  blezl   $a1, .L809560D8            
/* 06E08 809560C8 2405E890 */  addiu   $a1, $zero, 0xE890         ## $a1 = FFFFE890
/* 06E0C 809560CC 10000002 */  beq     $zero, $zero, .L809560D8   
/* 06E10 809560D0 24051770 */  addiu   $a1, $zero, 0x1770         ## $a1 = 00001770
/* 06E14 809560D4 2405E890 */  addiu   $a1, $zero, 0xE890         ## $a1 = FFFFE890
.L809560D8:
/* 06E18 809560D8 24070DAC */  addiu   $a3, $zero, 0x0DAC         ## $a3 = 00000DAC
/* 06E1C 809560DC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 06E20 809560E0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 06E24 809560E4 04400003 */  bltz    $v0, .L809560F4            
/* 06E28 809560E8 8FAA0060 */  lw      $t2, 0x0060($sp)           
/* 06E2C 809560EC 10000002 */  beq     $zero, $zero, .L809560F8   
/* 06E30 809560F0 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L809560F4:
/* 06E34 809560F4 00021823 */  subu    $v1, $zero, $v0            
.L809560F8:
/* 06E38 809560F8 01435821 */  addu    $t3, $t2, $v1              
/* 06E3C 809560FC 260401CC */  addiu   $a0, $s0, 0x01CC           ## $a0 = 000001CC
/* 06E40 80956100 AFAB0060 */  sw      $t3, 0x0060($sp)           
/* 06E44 80956104 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 06E48 80956108 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 06E4C 8095610C 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFDC
/* 06E50 80956110 2445C000 */  addiu   $a1, $v0, 0xC000           ## $a1 = FFFFC000
/* 06E54 80956114 00052C00 */  sll     $a1, $a1, 16               
/* 06E58 80956118 00052C03 */  sra     $a1, $a1, 16               
/* 06E5C 8095611C 260401F2 */  addiu   $a0, $s0, 0x01F2           ## $a0 = 000001F2
/* 06E60 80956120 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 06E64 80956124 24070EA6 */  addiu   $a3, $zero, 0x0EA6         ## $a3 = 00000EA6
/* 06E68 80956128 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 06E6C 8095612C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 06E70 80956130 04400003 */  bltz    $v0, .L80956140            
/* 06E74 80956134 8FAC0060 */  lw      $t4, 0x0060($sp)           
/* 06E78 80956138 10000002 */  beq     $zero, $zero, .L80956144   
/* 06E7C 8095613C 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80956140:
/* 06E80 80956140 00021823 */  subu    $v1, $zero, $v0            
.L80956144:
/* 06E84 80956144 01836821 */  addu    $t5, $t4, $v1              
/* 06E88 80956148 AFAD0060 */  sw      $t5, 0x0060($sp)           
/* 06E8C 8095614C 8E02016C */  lw      $v0, 0x016C($s0)           ## 0000016C
/* 06E90 80956150 860F00B4 */  lh      $t7, 0x00B4($s0)           ## 000000B4
/* 06E94 80956154 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFFDC
/* 06E98 80956158 844E001E */  lh      $t6, 0x001E($v0)           ## 0000001E
/* 06E9C 8095615C 84590006 */  lh      $t9, 0x0006($v0)           ## 00000006
/* 06EA0 80956160 844A000C */  lh      $t2, 0x000C($v0)           ## 0000000C
/* 06EA4 80956164 01CFC021 */  addu    $t8, $t6, $t7              
/* 06EA8 80956168 844C0012 */  lh      $t4, 0x0012($v0)           ## 00000012
/* 06EAC 8095616C 844E0018 */  lh      $t6, 0x0018($v0)           ## 00000018
/* 06EB0 80956170 03194821 */  addu    $t1, $t8, $t9              
/* 06EB4 80956174 012A5821 */  addu    $t3, $t1, $t2              
/* 06EB8 80956178 016C6821 */  addu    $t5, $t3, $t4              
/* 06EBC 8095617C 01AE7821 */  addu    $t7, $t5, $t6              
/* 06EC0 80956180 A7AF006A */  sh      $t7, 0x006A($sp)           
/* 06EC4 80956184 0C01E027 */  jal     Math_Vec3f_Pitch
              
/* 06EC8 80956188 260501C0 */  addiu   $a1, $s0, 0x01C0           ## $a1 = 000001C0
/* 06ECC 8095618C 87B8006A */  lh      $t8, 0x006A($sp)           
/* 06ED0 80956190 260401EA */  addiu   $a0, $s0, 0x01EA           ## $a0 = 000001EA
/* 06ED4 80956194 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 06ED8 80956198 00582823 */  subu    $a1, $v0, $t8              
/* 06EDC 8095619C 00052C00 */  sll     $a1, $a1, 16               
/* 06EE0 809561A0 00052C03 */  sra     $a1, $a1, 16               
/* 06EE4 809561A4 24071B58 */  addiu   $a3, $zero, 0x1B58         ## $a3 = 00001B58
/* 06EE8 809561A8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 06EEC 809561AC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 06EF0 809561B0 04400003 */  bltz    $v0, .L809561C0            
/* 06EF4 809561B4 8FB90060 */  lw      $t9, 0x0060($sp)           
/* 06EF8 809561B8 10000002 */  beq     $zero, $zero, .L809561C4   
/* 06EFC 809561BC 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L809561C0:
/* 06F00 809561C0 00021823 */  subu    $v1, $zero, $v0            
.L809561C4:
/* 06F04 809561C4 03234821 */  addu    $t1, $t9, $v1              
/* 06F08 809561C8 AFA90060 */  sw      $t1, 0x0060($sp)           
/* 06F0C 809561CC 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 06F10 809561D0 0C01E027 */  jal     Math_Vec3f_Pitch
              
/* 06F14 809561D4 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFDC
/* 06F18 809561D8 00022823 */  subu    $a1, $zero, $v0            
/* 06F1C 809561DC 00052C00 */  sll     $a1, $a1, 16               
/* 06F20 809561E0 00052C03 */  sra     $a1, $a1, 16               
/* 06F24 809561E4 260401F0 */  addiu   $a0, $s0, 0x01F0           ## $a0 = 000001F0
/* 06F28 809561E8 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 06F2C 809561EC 24071B58 */  addiu   $a3, $zero, 0x1B58         ## $a3 = 00001B58
/* 06F30 809561F0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 06F34 809561F4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 06F38 809561F8 04400003 */  bltz    $v0, .L80956208            
/* 06F3C 809561FC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 06F40 80956200 10000002 */  beq     $zero, $zero, .L8095620C   
/* 06F44 80956204 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80956208:
/* 06F48 80956208 00021823 */  subu    $v1, $zero, $v0            
.L8095620C:
/* 06F4C 8095620C 8FAA0060 */  lw      $t2, 0x0060($sp)           
/* 06F50 80956210 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 06F54 80956214 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 06F58 80956218 01435821 */  addu    $t3, $t2, $v1              
/* 06F5C 8095621C AFAB0060 */  sw      $t3, 0x0060($sp)           
/* 06F60 80956220 E6000168 */  swc1    $f0, 0x0168($s0)           ## 00000168
/* 06F64 80956224 44050000 */  mfc1    $a1, $f0                   
/* 06F68 80956228 44061000 */  mfc1    $a2, $f2                   
/* 06F6C 8095622C 26040164 */  addiu   $a0, $s0, 0x0164           ## $a0 = 00000164
/* 06F70 80956230 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 06F74 80956234 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 06F78 80956238 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 06F7C 8095623C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 06F80 80956240 8FAC0060 */  lw      $t4, 0x0060($sp)           
/* 06F84 80956244 46080032 */  c.eq.s  $f0, $f8                   
/* 06F88 80956248 2D810258 */  sltiu   $at, $t4, 0x0258           
/* 06F8C 8095624C 45000018 */  bc1f    .L809562B0                 
/* 06F90 80956250 00000000 */  nop
/* 06F94 80956254 10200016 */  beq     $at, $zero, .L809562B0     
/* 06F98 80956258 00000000 */  nop
/* 06F9C 8095625C 920D0195 */  lbu     $t5, 0x0195($s0)           ## 00000195
/* 06FA0 80956260 A600019C */  sh      $zero, 0x019C($s0)         ## 0000019C
/* 06FA4 80956264 27AF0054 */  addiu   $t7, $sp, 0x0054           ## $t7 = FFFFFFDC
/* 06FA8 80956268 25AE0001 */  addiu   $t6, $t5, 0x0001           ## $t6 = 00000001
/* 06FAC 8095626C A20E0195 */  sb      $t6, 0x0195($s0)           ## 00000195
/* 06FB0 80956270 8DF90000 */  lw      $t9, 0x0000($t7)           ## FFFFFFDC
/* 06FB4 80956274 AE1901D8 */  sw      $t9, 0x01D8($s0)           ## 000001D8
/* 06FB8 80956278 8DF80004 */  lw      $t8, 0x0004($t7)           ## FFFFFFE0
/* 06FBC 8095627C AE1801DC */  sw      $t8, 0x01DC($s0)           ## 000001DC
/* 06FC0 80956280 8DF90008 */  lw      $t9, 0x0008($t7)           ## FFFFFFE4
/* 06FC4 80956284 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 06FC8 80956288 AE1901E0 */  sw      $t9, 0x01E0($s0)           ## 000001E0
/* 06FCC 8095628C 3C018096 */  lui     $at, %hi(D_8095C774)       ## $at = 80960000
/* 06FD0 80956290 C42AC774 */  lwc1    $f10, %lo(D_8095C774)($at) 
/* 06FD4 80956294 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 06FD8 80956298 460A003C */  c.lt.s  $f0, $f10                  
/* 06FDC 8095629C 00000000 */  nop
/* 06FE0 809562A0 45000003 */  bc1f    .L809562B0                 
/* 06FE4 809562A4 00000000 */  nop
/* 06FE8 809562A8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 06FEC 809562AC 24053143 */  addiu   $a1, $zero, 0x3143         ## $a1 = 00003143
.L809562B0:
/* 06FF0 809562B0 1000005F */  beq     $zero, $zero, .L80956430   
/* 06FF4 809562B4 92030195 */  lbu     $v1, 0x0195($s0)           ## 00000195
.L809562B8:
/* 06FF8 809562B8 54600005 */  bnel    $v1, $zero, .L809562D0     
/* 06FFC 809562BC 920A0348 */  lbu     $t2, 0x0348($s0)           ## 00000348
/* 07000 809562C0 8609019C */  lh      $t1, 0x019C($s0)           ## 0000019C
/* 07004 809562C4 0523002C */  bgezl   $t1, .L80956378            
/* 07008 809562C8 260401E6 */  addiu   $a0, $s0, 0x01E6           ## $a0 = 000001E6
/* 0700C 809562CC 920A0348 */  lbu     $t2, 0x0348($s0)           ## 00000348
.L809562D0:
/* 07010 809562D0 8603019C */  lh      $v1, 0x019C($s0)           ## 0000019C
/* 07014 809562D4 314B0002 */  andi    $t3, $t2, 0x0002           ## $t3 = 00000000
/* 07018 809562D8 1160000E */  beq     $t3, $zero, .L80956314     
/* 0701C 809562DC 00000000 */  nop
/* 07020 809562E0 18600010 */  blez    $v1, .L80956324            
/* 07024 809562E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 07028 809562E8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0702C 809562EC 24053946 */  addiu   $a1, $zero, 0x3946         ## $a1 = 00003946
/* 07030 809562F0 0C253EDB */  jal     func_8094FB6C              
/* 07034 809562F4 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 07038 809562F8 8E0E0118 */  lw      $t6, 0x0118($s0)           ## 00000118
/* 0703C 809562FC 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 07040 80956300 A60C019C */  sh      $t4, 0x019C($s0)           ## 0000019C
/* 07044 80956304 240D0006 */  addiu   $t5, $zero, 0x0006         ## $t5 = 00000006
/* 07048 80956308 A1CD0194 */  sb      $t5, 0x0194($t6)           ## 00000194
/* 0704C 8095630C 10000005 */  beq     $zero, $zero, .L80956324   
/* 07050 80956310 8603019C */  lh      $v1, 0x019C($s0)           ## 0000019C
.L80956314:
/* 07054 80956314 18600003 */  blez    $v1, .L80956324            
/* 07058 80956318 00000000 */  nop
/* 0705C 8095631C A600019C */  sh      $zero, 0x019C($s0)         ## 0000019C
/* 07060 80956320 8603019C */  lh      $v1, 0x019C($s0)           ## 0000019C
.L80956324:
/* 07064 80956324 04610013 */  bgez    $v1, .L80956374            
/* 07068 80956328 8FAF0074 */  lw      $t7, 0x0074($sp)           
/* 0706C 8095632C 8DF8067C */  lw      $t8, 0x067C($t7)           ## 0000067C
/* 07070 80956330 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 07074 80956334 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 07078 80956338 0018C940 */  sll     $t9, $t8,  5               
/* 0707C 8095633C 0721000D */  bgez    $t9, .L80956374            
/* 07080 80956340 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 07084 80956344 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 07088 80956348 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 0708C 8095634C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 07090 80956350 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
/* 07094 80956354 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 07098 80956358 AFAA0020 */  sw      $t2, 0x0020($sp)           
/* 0709C 8095635C AFA90018 */  sw      $t1, 0x0018($sp)           
/* 070A0 80956360 2407001E */  addiu   $a3, $zero, 0x001E         ## $a3 = 0000001E
/* 070A4 80956364 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 070A8 80956368 E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 070AC 8095636C 0C253E19 */  jal     func_8094F864              
/* 070B0 80956370 E7A4001C */  swc1    $f4, 0x001C($sp)           
.L80956374:
/* 070B4 80956374 260401E6 */  addiu   $a0, $s0, 0x01E6           ## $a0 = 000001E6
.L80956378:
/* 070B8 80956378 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 070BC 8095637C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 070C0 80956380 24070EA6 */  addiu   $a3, $zero, 0x0EA6         ## $a3 = 00000EA6
/* 070C4 80956384 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 070C8 80956388 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 070CC 8095638C 260401EC */  addiu   $a0, $s0, 0x01EC           ## $a0 = 000001EC
/* 070D0 80956390 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 070D4 80956394 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 070D8 80956398 24070EA6 */  addiu   $a3, $zero, 0x0EA6         ## $a3 = 00000EA6
/* 070DC 8095639C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 070E0 809563A0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 070E4 809563A4 260401EA */  addiu   $a0, $s0, 0x01EA           ## $a0 = 000001EA
/* 070E8 809563A8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 070EC 809563AC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 070F0 809563B0 24070EA6 */  addiu   $a3, $zero, 0x0EA6         ## $a3 = 00000EA6
/* 070F4 809563B4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 070F8 809563B8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 070FC 809563BC 860B00B6 */  lh      $t3, 0x00B6($s0)           ## 000000B6
/* 07100 809563C0 860C00B4 */  lh      $t4, 0x00B4($s0)           ## 000000B4
/* 07104 809563C4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 07108 809563C8 260401F2 */  addiu   $a0, $s0, 0x01F2           ## $a0 = 000001F2
/* 0710C 809563CC 016C2823 */  subu    $a1, $t3, $t4              
/* 07110 809563D0 00052C00 */  sll     $a1, $a1, 16               
/* 07114 809563D4 00052C03 */  sra     $a1, $a1, 16               
/* 07118 809563D8 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0711C 809563DC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 07120 809563E0 24070EA6 */  addiu   $a3, $zero, 0x0EA6         ## $a3 = 00000EA6
/* 07124 809563E4 8E0D016C */  lw      $t5, 0x016C($s0)           ## 0000016C
/* 07128 809563E8 260401F0 */  addiu   $a0, $s0, 0x01F0           ## $a0 = 000001F0
/* 0712C 809563EC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 07130 809563F0 85A5002E */  lh      $a1, 0x002E($t5)           ## 0000002E
/* 07134 809563F4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 07138 809563F8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0713C 809563FC 24070EA6 */  addiu   $a3, $zero, 0x0EA6         ## $a3 = 00000EA6
/* 07140 80956400 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 07144 80956404 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 07148 80956408 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 0714C 8095640C 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 07150 80956410 44051000 */  mfc1    $a1, $f2                   
/* 07154 80956414 44061000 */  mfc1    $a2, $f2                   
/* 07158 80956418 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3D4CCCCD
/* 0715C 8095641C 26040168 */  addiu   $a0, $s0, 0x0168           ## $a0 = 00000168
/* 07160 80956420 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 07164 80956424 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 07168 80956428 A2000195 */  sb      $zero, 0x0195($s0)         ## 00000195
/* 0716C 8095642C 300300FF */  andi    $v1, $zero, 0x00FF         ## $v1 = 00000000
.L80956430:
/* 07170 80956430 1060007F */  beq     $v1, $zero, .L80956630     
/* 07174 80956434 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 07178 80956438 5061007E */  beql    $v1, $at, .L80956634       
/* 0717C 8095643C 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 07180 80956440 8603019C */  lh      $v1, 0x019C($s0)           ## 0000019C
/* 07184 80956444 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 07188 80956448 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0718C 8095644C 28610010 */  slti    $at, $v1, 0x0010           
/* 07190 80956450 14200044 */  bne     $at, $zero, .L80956564     
/* 07194 80956454 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 07198 80956458 24010012 */  addiu   $at, $zero, 0x0012         ## $at = 00000012
/* 0719C 8095645C 14610003 */  bne     $v1, $at, .L8095646C       
/* 071A0 80956460 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 071A4 80956464 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 071A8 80956468 24053942 */  addiu   $a1, $zero, 0x3942         ## $a1 = 00003942
.L8095646C:
/* 071AC 8095646C 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 071B0 80956470 44810000 */  mtc1    $at, $f0                   ## $f0 = 15.00
/* 071B4 80956474 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 071B8 80956478 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 071BC 8095647C 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 071C0 80956480 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 071C4 80956484 AFAF0020 */  sw      $t7, 0x0020($sp)           
/* 071C8 80956488 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 071CC 8095648C 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 071D0 80956490 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 071D4 80956494 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 071D8 80956498 2407006E */  addiu   $a3, $zero, 0x006E         ## $a3 = 0000006E
/* 071DC 8095649C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 071E0 809564A0 E7A00014 */  swc1    $f0, 0x0014($sp)           
/* 071E4 809564A4 0C253E19 */  jal     func_8094F864              
/* 071E8 809564A8 E7A8001C */  swc1    $f8, 0x001C($sp)           
/* 071EC 809564AC 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 071F0 809564B0 44810000 */  mtc1    $at, $f0                   ## $f0 = 15.00
/* 071F4 809564B4 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 071F8 809564B8 44815000 */  mtc1    $at, $f10                  ## $f10 = 6.00
/* 071FC 809564BC 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 07200 809564C0 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 07204 809564C4 AFB90020 */  sw      $t9, 0x0020($sp)           
/* 07208 809564C8 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 0720C 809564CC 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 07210 809564D0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 07214 809564D4 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 07218 809564D8 2407006E */  addiu   $a3, $zero, 0x006E         ## $a3 = 0000006E
/* 0721C 809564DC E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 07220 809564E0 E7A00014 */  swc1    $f0, 0x0014($sp)           
/* 07224 809564E4 0C253E19 */  jal     func_8094F864              
/* 07228 809564E8 E7AA001C */  swc1    $f10, 0x001C($sp)          
/* 0722C 809564EC 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 07230 809564F0 44810000 */  mtc1    $at, $f0                   ## $f0 = 15.00
/* 07234 809564F4 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 07238 809564F8 44818000 */  mtc1    $at, $f16                  ## $f16 = 7.00
/* 0723C 809564FC 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 07240 80956500 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 07244 80956504 AFAA0020 */  sw      $t2, 0x0020($sp)           
/* 07248 80956508 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 0724C 8095650C 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 07250 80956510 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 07254 80956514 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 07258 80956518 2407006E */  addiu   $a3, $zero, 0x006E         ## $a3 = 0000006E
/* 0725C 8095651C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 07260 80956520 E7A00014 */  swc1    $f0, 0x0014($sp)           
/* 07264 80956524 0C253E19 */  jal     func_8094F864              
/* 07268 80956528 E7B0001C */  swc1    $f16, 0x001C($sp)          
/* 0726C 8095652C 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 07270 80956530 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07274 80956534 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 07278 80956538 26060338 */  addiu   $a2, $s0, 0x0338           ## $a2 = 00000338
/* 0727C 8095653C 00812821 */  addu    $a1, $a0, $at              
/* 07280 80956540 AFA50040 */  sw      $a1, 0x0040($sp)           
/* 07284 80956544 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 07288 80956548 AFA6003C */  sw      $a2, 0x003C($sp)           
/* 0728C 8095654C 8FA50040 */  lw      $a1, 0x0040($sp)           
/* 07290 80956550 8FA6003C */  lw      $a2, 0x003C($sp)           
/* 07294 80956554 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 07298 80956558 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 0729C 8095655C 1000002D */  beq     $zero, $zero, .L80956614   
/* 072A0 80956560 8603019C */  lh      $v1, 0x019C($s0)           ## 0000019C
.L80956564:
/* 072A4 80956564 00036043 */  sra     $t4, $v1,  1               
/* 072A8 80956568 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 072AC 8095656C 448D2000 */  mtc1    $t5, $f4                   ## $f4 = 0.00
/* 072B0 80956570 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 072B4 80956574 44810000 */  mtc1    $at, $f0                   ## $f0 = 15.00
/* 072B8 80956578 468021A0 */  cvt.s.w $f6, $f4                   
/* 072BC 8095657C 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 072C0 80956580 240B0005 */  addiu   $t3, $zero, 0x0005         ## $t3 = 00000005
/* 072C4 80956584 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 072C8 80956588 AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 072CC 8095658C AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 072D0 80956590 E7A6001C */  swc1    $f6, 0x001C($sp)           
/* 072D4 80956594 24070032 */  addiu   $a3, $zero, 0x0032         ## $a3 = 00000032
/* 072D8 80956598 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 072DC 8095659C 0C253E19 */  jal     func_8094F864              
/* 072E0 809565A0 E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 072E4 809565A4 8603019C */  lh      $v1, 0x019C($s0)           ## 0000019C
/* 072E8 809565A8 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 072EC 809565AC 54610005 */  bnel    $v1, $at, .L809565C4       
/* 072F0 809565B0 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 072F4 809565B4 0C253EDB */  jal     func_8094FB6C              
/* 072F8 809565B8 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 072FC 809565BC 8603019C */  lh      $v1, 0x019C($s0)           ## 0000019C
/* 07300 809565C0 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
.L809565C4:
/* 07304 809565C4 54610014 */  bnel    $v1, $at, .L80956618       
/* 07308 809565C8 246A0001 */  addiu   $t2, $v1, 0x0001           ## $t2 = 00000001
/* 0730C 809565CC 8E1801CC */  lw      $t8, 0x01CC($s0)           ## 000001CC
/* 07310 809565D0 27A70048 */  addiu   $a3, $sp, 0x0048           ## $a3 = FFFFFFD0
/* 07314 809565D4 3C058096 */  lui     $a1, %hi(D_8095DF50)       ## $a1 = 80960000
/* 07318 809565D8 ACF80000 */  sw      $t8, 0x0000($a3)           ## FFFFFFD0
/* 0731C 809565DC 8E0F01D0 */  lw      $t7, 0x01D0($s0)           ## 000001D0
/* 07320 809565E0 261901F6 */  addiu   $t9, $s0, 0x01F6           ## $t9 = 000001F6
/* 07324 809565E4 24090064 */  addiu   $t1, $zero, 0x0064         ## $t1 = 00000064
/* 07328 809565E8 ACEF0004 */  sw      $t7, 0x0004($a3)           ## FFFFFFD4
/* 0732C 809565EC 8E1801D4 */  lw      $t8, 0x01D4($s0)           ## 000001D4
/* 07330 809565F0 24A5DF50 */  addiu   $a1, $a1, %lo(D_8095DF50)  ## $a1 = 8095DF50
/* 07334 809565F4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 07338 809565F8 ACF80008 */  sw      $t8, 0x0008($a3)           ## FFFFFFD8
/* 0733C 809565FC AFA00018 */  sw      $zero, 0x0018($sp)         
/* 07340 80956600 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 07344 80956604 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 07348 80956608 0C256EF4 */  jal     func_8095BBD0              
/* 0734C 8095660C 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 07350 80956610 8603019C */  lh      $v1, 0x019C($s0)           ## 0000019C
.L80956614:
/* 07354 80956614 246A0001 */  addiu   $t2, $v1, 0x0001           ## $t2 = 00000001
.L80956618:
/* 07358 80956618 A60A019C */  sh      $t2, 0x019C($s0)           ## 0000019C
/* 0735C 8095661C 860B019C */  lh      $t3, 0x019C($s0)           ## 0000019C
/* 07360 80956620 29610018 */  slti    $at, $t3, 0x0018           
/* 07364 80956624 54200003 */  bnel    $at, $zero, .L80956634     
/* 07368 80956628 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 0736C 8095662C A2000195 */  sb      $zero, 0x0195($s0)         ## 00000195
.L80956630:
/* 07370 80956630 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80956634:
/* 07374 80956634 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 07378 80956638 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
/* 0737C 8095663C 03E00008 */  jr      $ra                        
/* 07380 80956640 00000000 */  nop


