.rdata
glabel D_809E55A0
    .asciz "<%d>\n"
    .balign 4

.late_rodata
glabel D_809E561C
    .float 9.58738019108e-05

glabel D_809E5620
    .float 9.58738019108e-05

glabel D_809E5624
    .float 9.58738019108e-05

glabel D_809E5628
    .float 9.58738019108e-05

glabel D_809E562C
    .float 9.58738019108e-05

glabel D_809E5630
    .float 9.58738019108e-05

.text
glabel func_809E50B4
/* 00D94 809E50B4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00D98 809E50B8 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00D9C 809E50BC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00DA0 809E50C0 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00DA4 809E50C4 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 00DA8 809E50C8 10A10006 */  beq     $a1, $at, .L809E50E4       
/* 00DAC 809E50CC AFA70034 */  sw      $a3, 0x0034($sp)           
/* 00DB0 809E50D0 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 00DB4 809E50D4 50A10020 */  beql    $a1, $at, .L809E5158       
/* 00DB8 809E50D8 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 00DBC 809E50DC 10000066 */  beq     $zero, $zero, .L809E5278   
/* 00DC0 809E50E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809E50E4:
/* 00DC4 809E50E4 8FAF003C */  lw      $t7, 0x003C($sp)           
/* 00DC8 809E50E8 27AE001C */  addiu   $t6, $sp, 0x001C           ## $t6 = FFFFFFF4
/* 00DCC 809E50EC 3C01809E */  lui     $at, %hi(D_809E561C)       ## $at = 809E0000
/* 00DD0 809E50F0 89F90212 */  lwl     $t9, 0x0212($t7)           ## 00000212
/* 00DD4 809E50F4 99F90215 */  lwr     $t9, 0x0215($t7)           ## 00000215
/* 00DD8 809E50F8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00DDC 809E50FC ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 00DE0 809E5100 95F90216 */  lhu     $t9, 0x0216($t7)           ## 00000216
/* 00DE4 809E5104 A5D90004 */  sh      $t9, 0x0004($t6)           ## FFFFFFF8
/* 00DE8 809E5108 87A8001E */  lh      $t0, 0x001E($sp)           
/* 00DEC 809E510C C428561C */  lwc1    $f8, %lo(D_809E561C)($at)  
/* 00DF0 809E5110 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 00DF4 809E5114 00000000 */  nop
/* 00DF8 809E5118 468021A0 */  cvt.s.w $f6, $f4                   
/* 00DFC 809E511C 46083302 */  mul.s   $f12, $f6, $f8             
/* 00E00 809E5120 0C0342DC */  jal     Matrix_RotateX              
/* 00E04 809E5124 46006307 */  neg.s   $f12, $f12                 
/* 00E08 809E5128 87A9001C */  lh      $t1, 0x001C($sp)           
/* 00E0C 809E512C 3C01809E */  lui     $at, %hi(D_809E5620)       ## $at = 809E0000
/* 00E10 809E5130 C4325620 */  lwc1    $f18, %lo(D_809E5620)($at) 
/* 00E14 809E5134 44895000 */  mtc1    $t1, $f10                  ## $f10 = 0.00
/* 00E18 809E5138 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00E1C 809E513C 46805420 */  cvt.s.w $f16, $f10                 
/* 00E20 809E5140 46128302 */  mul.s   $f12, $f16, $f18           
/* 00E24 809E5144 0C0343B5 */  jal     Matrix_RotateZ              
/* 00E28 809E5148 46006307 */  neg.s   $f12, $f12                 
/* 00E2C 809E514C 1000004A */  beq     $zero, $zero, .L809E5278   
/* 00E30 809E5150 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E34 809E5154 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
.L809E5158:
/* 00E38 809E5158 3C0144AF */  lui     $at, 0x44AF                ## $at = 44AF0000
/* 00E3C 809E515C 44816000 */  mtc1    $at, $f12                  ## $f12 = 1400.00
/* 00E40 809E5160 44067000 */  mfc1    $a2, $f14                  
/* 00E44 809E5164 0C034261 */  jal     Matrix_Translate              
/* 00E48 809E5168 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00E4C 809E516C 8FA2003C */  lw      $v0, 0x003C($sp)           
/* 00E50 809E5170 27AA001C */  addiu   $t2, $sp, 0x001C           ## $t2 = FFFFFFF4
/* 00E54 809E5174 3C04809E */  lui     $a0, %hi(D_809E55A0)       ## $a0 = 809E0000
/* 00E58 809E5178 884C020C */  lwl     $t4, 0x020C($v0)           ## 0000020C
/* 00E5C 809E517C 984C020F */  lwr     $t4, 0x020F($v0)           ## 0000020F
/* 00E60 809E5180 248455A0 */  addiu   $a0, $a0, %lo(D_809E55A0)  ## $a0 = 809E55A0
/* 00E64 809E5184 AD4C0000 */  sw      $t4, 0x0000($t2)           ## FFFFFFF4
/* 00E68 809E5188 944C0210 */  lhu     $t4, 0x0210($v0)           ## 00000210
/* 00E6C 809E518C A54C0004 */  sh      $t4, 0x0004($t2)           ## FFFFFFF8
/* 00E70 809E5190 944D0200 */  lhu     $t5, 0x0200($v0)           ## 00000200
/* 00E74 809E5194 31AE1000 */  andi    $t6, $t5, 0x1000           ## $t6 = 00000000
/* 00E78 809E5198 11C0001F */  beq     $t6, $zero, .L809E5218     
/* 00E7C 809E519C 87AD001E */  lh      $t5, 0x001E($sp)           
/* 00E80 809E51A0 0C00084C */  jal     osSyncPrintf
              
/* 00E84 809E51A4 844502FC */  lh      $a1, 0x02FC($v0)           ## 000002FC
/* 00E88 809E51A8 8FB8003C */  lw      $t8, 0x003C($sp)           
/* 00E8C 809E51AC 87AF001E */  lh      $t7, 0x001E($sp)           
/* 00E90 809E51B0 3C01809E */  lui     $at, %hi(D_809E5624)       ## $at = 809E0000
/* 00E94 809E51B4 871902FE */  lh      $t9, 0x02FE($t8)           ## 000002FE
/* 00E98 809E51B8 C4285624 */  lwc1    $f8, %lo(D_809E5624)($at)  
/* 00E9C 809E51BC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00EA0 809E51C0 01F94021 */  addu    $t0, $t7, $t9              
/* 00EA4 809E51C4 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 00EA8 809E51C8 00000000 */  nop
/* 00EAC 809E51CC 468021A0 */  cvt.s.w $f6, $f4                   
/* 00EB0 809E51D0 46083302 */  mul.s   $f12, $f6, $f8             
/* 00EB4 809E51D4 0C0342DC */  jal     Matrix_RotateX              
/* 00EB8 809E51D8 00000000 */  nop
/* 00EBC 809E51DC 8FAA003C */  lw      $t2, 0x003C($sp)           
/* 00EC0 809E51E0 87A9001C */  lh      $t1, 0x001C($sp)           
/* 00EC4 809E51E4 3C01809E */  lui     $at, %hi(D_809E5628)       ## $at = 809E0000
/* 00EC8 809E51E8 854B02FC */  lh      $t3, 0x02FC($t2)           ## 000002FC
/* 00ECC 809E51EC C4325628 */  lwc1    $f18, %lo(D_809E5628)($at) 
/* 00ED0 809E51F0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00ED4 809E51F4 012B6021 */  addu    $t4, $t1, $t3              
/* 00ED8 809E51F8 448C5000 */  mtc1    $t4, $f10                  ## $f10 = 0.00
/* 00EDC 809E51FC 00000000 */  nop
/* 00EE0 809E5200 46805420 */  cvt.s.w $f16, $f10                 
/* 00EE4 809E5204 46128302 */  mul.s   $f12, $f16, $f18           
/* 00EE8 809E5208 0C0343B5 */  jal     Matrix_RotateZ              
/* 00EEC 809E520C 00000000 */  nop
/* 00EF0 809E5210 10000013 */  beq     $zero, $zero, .L809E5260   
/* 00EF4 809E5214 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
.L809E5218:
/* 00EF8 809E5218 448D2000 */  mtc1    $t5, $f4                   ## $f4 = 0.00
/* 00EFC 809E521C 3C01809E */  lui     $at, %hi(D_809E562C)       ## $at = 809E0000
/* 00F00 809E5220 C428562C */  lwc1    $f8, %lo(D_809E562C)($at)  
/* 00F04 809E5224 468021A0 */  cvt.s.w $f6, $f4                   
/* 00F08 809E5228 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00F0C 809E522C 46083302 */  mul.s   $f12, $f6, $f8             
/* 00F10 809E5230 0C0342DC */  jal     Matrix_RotateX              
/* 00F14 809E5234 00000000 */  nop
/* 00F18 809E5238 87AE001C */  lh      $t6, 0x001C($sp)           
/* 00F1C 809E523C 3C01809E */  lui     $at, %hi(D_809E5630)       ## $at = 809E0000
/* 00F20 809E5240 C4325630 */  lwc1    $f18, %lo(D_809E5630)($at) 
/* 00F24 809E5244 448E5000 */  mtc1    $t6, $f10                  ## $f10 = 0.00
/* 00F28 809E5248 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00F2C 809E524C 46805420 */  cvt.s.w $f16, $f10                 
/* 00F30 809E5250 46128302 */  mul.s   $f12, $f16, $f18           
/* 00F34 809E5254 0C0343B5 */  jal     Matrix_RotateZ              
/* 00F38 809E5258 00000000 */  nop
/* 00F3C 809E525C 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
.L809E5260:
/* 00F40 809E5260 3C01C4AF */  lui     $at, 0xC4AF                ## $at = C4AF0000
/* 00F44 809E5264 44816000 */  mtc1    $at, $f12                  ## $f12 = -1400.00
/* 00F48 809E5268 44067000 */  mfc1    $a2, $f14                  
/* 00F4C 809E526C 0C034261 */  jal     Matrix_Translate              
/* 00F50 809E5270 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00F54 809E5274 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809E5278:
/* 00F58 809E5278 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00F5C 809E527C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00F60 809E5280 03E00008 */  jr      $ra                        
/* 00F64 809E5284 00000000 */  nop
