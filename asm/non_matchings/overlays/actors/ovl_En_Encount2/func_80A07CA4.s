.rdata
glabel D_80A08C1C
    .asciz "\x1b[32m☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n\x1b[m"
    .balign 4

glabel D_80A08C4C
    .asciz "\x1b[32m☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n\x1b[m"
    .balign 4

glabel D_80A08C7C
    .asciz "\x1b[32m☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n\x1b[m"
    .balign 4

glabel D_80A08CAC
    .asciz "\x1b[32m☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n\x1b[m"
    .balign 4

glabel D_80A08CDC
    .asciz "\x1b[32m☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n\n\x1b[m"
    .balign 4

.late_rodata
glabel D_80A08D54
    .float 1500.0

glabel D_80A08D58
 .word 0xC4A14000
glabel D_80A08D5C
 .word 0xC5714000
glabel D_80A08D60
    .float 0.005

glabel D_80A08D64
 .word 0x3BE56042
glabel D_80A08D68
    .float 1.99000000954

glabel D_80A08D6C
 .word 0x407F5C29

.text
glabel func_80A07CA4
/* 00314 80A07CA4 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 00318 80A07CA8 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 0031C 80A07CAC AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00320 80A07CB0 8CB91C44 */  lw      $t9, 0x1C44($a1)           ## 00001C44
/* 00324 80A07CB4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00328 80A07CB8 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 0032C 80A07CBC AFB90094 */  sw      $t9, 0x0094($sp)           
/* 00330 80A07CC0 84880178 */  lh      $t0, 0x0178($a0)           ## 00000178
/* 00334 80A07CC4 240B003C */  addiu   $t3, $zero, 0x003C         ## $t3 = 0000003C
/* 00338 80A07CC8 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 0033C 80A07CCC A4890178 */  sh      $t1, 0x0178($a0)           ## 00000178
/* 00340 80A07CD0 848A0178 */  lh      $t2, 0x0178($a0)           ## 00000178
/* 00344 80A07CD4 2941003D */  slti    $at, $t2, 0x003D           
/* 00348 80A07CD8 54200003 */  bnel    $at, $zero, .L80A07CE8     
/* 0034C 80A07CDC A7A00060 */  sh      $zero, 0x0060($sp)         
/* 00350 80A07CE0 A48B0178 */  sh      $t3, 0x0178($a0)           ## 00000178
/* 00354 80A07CE4 A7A00060 */  sh      $zero, 0x0060($sp)         
.L80A07CE8:
/* 00358 80A07CE8 860C015A */  lh      $t4, 0x015A($s0)           ## 0000015A
/* 0035C 80A07CEC 3C01442F */  lui     $at, 0x442F                ## $at = 442F0000
/* 00360 80A07CF0 55800036 */  bnel    $t4, $zero, .L80A07DCC     
/* 00364 80A07CF4 AFA6009C */  sw      $a2, 0x009C($sp)           
/* 00368 80A07CF8 860D0154 */  lh      $t5, 0x0154($s0)           ## 00000154
/* 0036C 80A07CFC 8FB80094 */  lw      $t8, 0x0094($sp)           
/* 00370 80A07D00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00374 80A07D04 15A00007 */  bne     $t5, $zero, .L80A07D24     
/* 00378 80A07D08 24052049 */  addiu   $a1, $zero, 0x2049         ## $a1 = 00002049
/* 0037C 80A07D0C 3C0F80A0 */  lui     $t7, %hi(func_80A07A4C)    ## $t7 = 80A00000
/* 00380 80A07D10 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 00384 80A07D14 25EF7A4C */  addiu   $t7, $t7, %lo(func_80A07A4C) ## $t7 = 80A07A4C
/* 00388 80A07D18 A60E0154 */  sh      $t6, 0x0154($s0)           ## 00000154
/* 0038C 80A07D1C 1000015D */  beq     $zero, $zero, .L80A08294   
/* 00390 80A07D20 AE0F014C */  sw      $t7, 0x014C($s0)           ## 0000014C
.L80A07D24:
/* 00394 80A07D24 3C0180A1 */  lui     $at, %hi(D_80A08D54)       ## $at = 80A10000
/* 00398 80A07D28 C4248D54 */  lwc1    $f4, %lo(D_80A08D54)($at)  
/* 0039C 80A07D2C C70A0028 */  lwc1    $f10, 0x0028($t8)          ## 00000028
/* 003A0 80A07D30 3C01C42F */  lui     $at, 0xC42F                ## $at = C42F0000
/* 003A4 80A07D34 460A203C */  c.lt.s  $f4, $f10                  
/* 003A8 80A07D38 00000000 */  nop
/* 003AC 80A07D3C 4500001E */  bc1f    .L80A07DB8                 
/* 003B0 80A07D40 00000000 */  nop
/* 003B4 80A07D44 C7000024 */  lwc1    $f0, 0x0024($t8)           ## 00000024
/* 003B8 80A07D48 44813000 */  mtc1    $at, $f6                   ## $f6 = -700.00
/* 003BC 80A07D4C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 003C0 80A07D50 4600303C */  c.lt.s  $f6, $f0                   
/* 003C4 80A07D54 00000000 */  nop
/* 003C8 80A07D58 45000017 */  bc1f    .L80A07DB8                 
/* 003CC 80A07D5C 00000000 */  nop
/* 003D0 80A07D60 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 003D4 80A07D64 3C0180A1 */  lui     $at, %hi(D_80A08D58)       ## $at = 80A10000
/* 003D8 80A07D68 4608003C */  c.lt.s  $f0, $f8                   
/* 003DC 80A07D6C 00000000 */  nop
/* 003E0 80A07D70 45000011 */  bc1f    .L80A07DB8                 
/* 003E4 80A07D74 00000000 */  nop
/* 003E8 80A07D78 C700002C */  lwc1    $f0, 0x002C($t8)           ## 0000002C
/* 003EC 80A07D7C C4248D58 */  lwc1    $f4, %lo(D_80A08D58)($at)  
/* 003F0 80A07D80 3C0180A1 */  lui     $at, %hi(D_80A08D5C)       ## $at = 80A10000
/* 003F4 80A07D84 4604003C */  c.lt.s  $f0, $f4                   
/* 003F8 80A07D88 00000000 */  nop
/* 003FC 80A07D8C 4500000A */  bc1f    .L80A07DB8                 
/* 00400 80A07D90 00000000 */  nop
/* 00404 80A07D94 C42A8D5C */  lwc1    $f10, %lo(D_80A08D5C)($at) 
/* 00408 80A07D98 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 0040C 80A07D9C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00410 80A07DA0 4600503C */  c.lt.s  $f10, $f0                  
/* 00414 80A07DA4 00000000 */  nop
/* 00418 80A07DA8 45000003 */  bc1f    .L80A07DB8                 
/* 0041C 80A07DAC 00000000 */  nop
/* 00420 80A07DB0 A7B9005E */  sh      $t9, 0x005E($sp)           
/* 00424 80A07DB4 A7A80060 */  sh      $t0, 0x0060($sp)           
.L80A07DB8:
/* 00428 80A07DB8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0042C 80A07DBC AFA6009C */  sw      $a2, 0x009C($sp)           
/* 00430 80A07DC0 10000020 */  beq     $zero, $zero, .L80A07E44   
/* 00434 80A07DC4 87AD0060 */  lh      $t5, 0x0060($sp)           
/* 00438 80A07DC8 AFA6009C */  sw      $a2, 0x009C($sp)           
.L80A07DCC:
/* 0043C 80A07DCC C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 00440 80A07DD0 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.00
/* 00444 80A07DD4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00448 80A07DD8 24050037 */  addiu   $a1, $zero, 0x0037         ## $a1 = 00000037
/* 0044C 80A07DDC 4608303C */  c.lt.s  $f6, $f8                   
/* 00450 80A07DE0 00000000 */  nop
/* 00454 80A07DE4 45020017 */  bc1fl   .L80A07E44                 
/* 00458 80A07DE8 87AD0060 */  lh      $t5, 0x0060($sp)           
/* 0045C 80A07DEC 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00460 80A07DF0 AFA6009C */  sw      $a2, 0x009C($sp)           
/* 00464 80A07DF4 10400012 */  beq     $v0, $zero, .L80A07E40     
/* 00468 80A07DF8 8FA9009C */  lw      $t1, 0x009C($sp)           
/* 0046C 80A07DFC 852200A4 */  lh      $v0, 0x00A4($t1)           ## 000000A4
/* 00470 80A07E00 2401004F */  addiu   $at, $zero, 0x004F         ## $at = 0000004F
/* 00474 80A07E04 10410007 */  beq     $v0, $at, .L80A07E24       
/* 00478 80A07E08 2401001A */  addiu   $at, $zero, 0x001A         ## $at = 0000001A
/* 0047C 80A07E0C 10410005 */  beq     $v0, $at, .L80A07E24       
/* 00480 80A07E10 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 00484 80A07E14 10410003 */  beq     $v0, $at, .L80A07E24       
/* 00488 80A07E18 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 0048C 80A07E1C 54410009 */  bnel    $v0, $at, .L80A07E44       
/* 00490 80A07E20 87AD0060 */  lh      $t5, 0x0060($sp)           
.L80A07E24:
/* 00494 80A07E24 860A015C */  lh      $t2, 0x015C($s0)           ## 0000015C
/* 00498 80A07E28 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 0049C 80A07E2C 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 004A0 80A07E30 55400004 */  bnel    $t2, $zero, .L80A07E44     
/* 004A4 80A07E34 87AD0060 */  lh      $t5, 0x0060($sp)           
/* 004A8 80A07E38 A7AB005E */  sh      $t3, 0x005E($sp)           
/* 004AC 80A07E3C A7AC0060 */  sh      $t4, 0x0060($sp)           
.L80A07E40:
/* 004B0 80A07E40 87AD0060 */  lh      $t5, 0x0060($sp)           
.L80A07E44:
/* 004B4 80A07E44 8FA6009C */  lw      $a2, 0x009C($sp)           
/* 004B8 80A07E48 51A00113 */  beql    $t5, $zero, .L80A08298     
/* 004BC 80A07E4C 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 004C0 80A07E50 C4C200E0 */  lwc1    $f2, 0x00E0($a2)           ## 000000E0
/* 004C4 80A07E54 C4C400EC */  lwc1    $f4, 0x00EC($a2)           ## 000000EC
/* 004C8 80A07E58 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 004CC 80A07E5C 46022281 */  sub.s   $f10, $f4, $f2             
/* 004D0 80A07E60 E7AA008C */  swc1    $f10, 0x008C($sp)          
/* 004D4 80A07E64 C4C600F0 */  lwc1    $f6, 0x00F0($a2)           ## 000000F0
/* 004D8 80A07E68 C4CE00E4 */  lwc1    $f14, 0x00E4($a2)          ## 000000E4
/* 004DC 80A07E6C 460E3201 */  sub.s   $f8, $f6, $f14             
/* 004E0 80A07E70 C7A6008C */  lwc1    $f6, 0x008C($sp)           
/* 004E4 80A07E74 E7A80088 */  swc1    $f8, 0x0088($sp)           
/* 004E8 80A07E78 C4C400F4 */  lwc1    $f4, 0x00F4($a2)           ## 000000F4
/* 004EC 80A07E7C C4D000E8 */  lwc1    $f16, 0x00E8($a2)          ## 000000E8
/* 004F0 80A07E80 46063202 */  mul.s   $f8, $f6, $f6              
/* 004F4 80A07E84 E7A60040 */  swc1    $f6, 0x0040($sp)           
/* 004F8 80A07E88 46102281 */  sub.s   $f10, $f4, $f16            
/* 004FC 80A07E8C C7A40088 */  lwc1    $f4, 0x0088($sp)           
/* 00500 80A07E90 AFA6009C */  sw      $a2, 0x009C($sp)           
/* 00504 80A07E94 E7AA0084 */  swc1    $f10, 0x0084($sp)          
/* 00508 80A07E98 46042282 */  mul.s   $f10, $f4, $f4             
/* 0050C 80A07E9C 460A4200 */  add.s   $f8, $f8, $f10             
/* 00510 80A07EA0 C7AA0084 */  lwc1    $f10, 0x0084($sp)          
/* 00514 80A07EA4 460A5182 */  mul.s   $f6, $f10, $f10            
/* 00518 80A07EA8 46064000 */  add.s   $f0, $f8, $f6              
/* 0051C 80A07EAC C7A80040 */  lwc1    $f8, 0x0040($sp)           
/* 00520 80A07EB0 46000004 */  sqrt.s  $f0, $f0                   
/* 00524 80A07EB4 46004483 */  div.s   $f18, $f8, $f0             
/* 00528 80A07EB8 44814000 */  mtc1    $at, $f8                   ## $f8 = 300.00
/* 0052C 80A07EBC 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 00530 80A07EC0 46005183 */  div.s   $f6, $f10, $f0             
/* 00534 80A07EC4 E7B2007C */  swc1    $f18, 0x007C($sp)          
/* 00538 80A07EC8 46089282 */  mul.s   $f10, $f18, $f8            
/* 0053C 80A07ECC 460A1200 */  add.s   $f8, $f2, $f10             
/* 00540 80A07ED0 E7A60048 */  swc1    $f6, 0x0048($sp)           
/* 00544 80A07ED4 E7A60074 */  swc1    $f6, 0x0074($sp)           
/* 00548 80A07ED8 46002283 */  div.s   $f10, $f4, $f0             
/* 0054C 80A07EDC E7A8008C */  swc1    $f8, 0x008C($sp)           
/* 00550 80A07EE0 44814000 */  mtc1    $at, $f8                   ## $f8 = 160.00
/* 00554 80A07EE4 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 00558 80A07EE8 46085102 */  mul.s   $f4, $f10, $f8             
/* 0055C 80A07EEC 44814000 */  mtc1    $at, $f8                   ## $f8 = 400.00
/* 00560 80A07EF0 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 00564 80A07EF4 46047280 */  add.s   $f10, $f14, $f4            
/* 00568 80A07EF8 46085100 */  add.s   $f4, $f10, $f8             
/* 0056C 80A07EFC 44815000 */  mtc1    $at, $f10                  ## $f10 = 300.00
/* 00570 80A07F00 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00574 80A07F04 44816000 */  mtc1    $at, $f12                  ## $f12 = 200.00
/* 00578 80A07F08 460A3202 */  mul.s   $f8, $f6, $f10             
/* 0057C 80A07F0C E7A40088 */  swc1    $f4, 0x0088($sp)           
/* 00580 80A07F10 46088100 */  add.s   $f4, $f16, $f8             
/* 00584 80A07F14 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00588 80A07F18 E7A40084 */  swc1    $f4, 0x0084($sp)           
/* 0058C 80A07F1C 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00590 80A07F20 44815000 */  mtc1    $at, $f10                  ## $f10 = 200.00
/* 00594 80A07F24 C7A6007C */  lwc1    $f6, 0x007C($sp)           
/* 00598 80A07F28 8FAE009C */  lw      $t6, 0x009C($sp)           
/* 0059C 80A07F2C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 005A0 80A07F30 460A3202 */  mul.s   $f8, $f6, $f10             
/* 005A4 80A07F34 C5C400E0 */  lwc1    $f4, 0x00E0($t6)           ## 000000E0
/* 005A8 80A07F38 44816000 */  mtc1    $at, $f12                  ## $f12 = 50.00
/* 005AC 80A07F3C 46082180 */  add.s   $f6, $f4, $f8              
/* 005B0 80A07F40 46060280 */  add.s   $f10, $f0, $f6             
/* 005B4 80A07F44 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 005B8 80A07F48 E7AA0064 */  swc1    $f10, 0x0064($sp)          
/* 005BC 80A07F4C C7A40088 */  lwc1    $f4, 0x0088($sp)           
/* 005C0 80A07F50 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 005C4 80A07F54 44816000 */  mtc1    $at, $f12                  ## $f12 = 200.00
/* 005C8 80A07F58 46040200 */  add.s   $f8, $f0, $f4              
/* 005CC 80A07F5C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 005D0 80A07F60 E7A80068 */  swc1    $f8, 0x0068($sp)           
/* 005D4 80A07F64 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 005D8 80A07F68 44815000 */  mtc1    $at, $f10                  ## $f10 = 200.00
/* 005DC 80A07F6C C7A60074 */  lwc1    $f6, 0x0074($sp)           
/* 005E0 80A07F70 8FAF009C */  lw      $t7, 0x009C($sp)           
/* 005E4 80A07F74 3C0180A1 */  lui     $at, %hi(D_80A08D60)       ## $at = 80A10000
/* 005E8 80A07F78 460A3102 */  mul.s   $f4, $f6, $f10             
/* 005EC 80A07F7C C5E800E8 */  lwc1    $f8, 0x00E8($t7)           ## 000000E8
/* 005F0 80A07F80 C42C8D60 */  lwc1    $f12, %lo(D_80A08D60)($at) 
/* 005F4 80A07F84 46044180 */  add.s   $f6, $f8, $f4              
/* 005F8 80A07F88 46060280 */  add.s   $f10, $f0, $f6             
/* 005FC 80A07F8C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00600 80A07F90 E7AA006C */  swc1    $f10, 0x006C($sp)          
/* 00604 80A07F94 3C0180A1 */  lui     $at, %hi(D_80A08D64)       ## $at = 80A10000
/* 00608 80A07F98 C4288D64 */  lwc1    $f8, %lo(D_80A08D64)($at)  
/* 0060C 80A07F9C 87B80060 */  lh      $t8, 0x0060($sp)           
/* 00610 80A07FA0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00614 80A07FA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00618 80A07FA8 17010006 */  bne     $t8, $at, .L80A07FC4       
/* 0061C 80A07FAC 46080080 */  add.s   $f2, $f0, $f8              
/* 00620 80A07FB0 44061000 */  mfc1    $a2, $f2                   
/* 00624 80A07FB4 0C2821A5 */  jal     func_80A08694              
/* 00628 80A07FB8 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFCC
/* 0062C 80A07FBC 1000000B */  beq     $zero, $zero, .L80A07FEC   
/* 00630 80A07FC0 86090158 */  lh      $t1, 0x0158($s0)           ## 00000158
.L80A07FC4:
/* 00634 80A07FC4 8619015E */  lh      $t9, 0x015E($s0)           ## 0000015E
/* 00638 80A07FC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0063C 80A07FCC 57200007 */  bnel    $t9, $zero, .L80A07FEC     
/* 00640 80A07FD0 86090158 */  lh      $t1, 0x0158($s0)           ## 00000158
/* 00644 80A07FD4 44061000 */  mfc1    $a2, $f2                   
/* 00648 80A07FD8 0C2821A5 */  jal     func_80A08694              
/* 0064C 80A07FDC 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFCC
/* 00650 80A07FE0 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 00654 80A07FE4 A608015E */  sh      $t0, 0x015E($s0)           ## 0000015E
/* 00658 80A07FE8 86090158 */  lh      $t1, 0x0158($s0)           ## 00000158
.L80A07FEC:
/* 0065C 80A07FEC 87AA005E */  lh      $t2, 0x005E($sp)           
/* 00660 80A07FF0 012A082A */  slt     $at, $t1, $t2              
/* 00664 80A07FF4 502000A8 */  beql    $at, $zero, .L80A08298     
/* 00668 80A07FF8 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 0066C 80A07FFC 860B0156 */  lh      $t3, 0x0156($s0)           ## 00000156
/* 00670 80A08000 87AC0060 */  lh      $t4, 0x0060($sp)           
/* 00674 80A08004 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00678 80A08008 556000A3 */  bnel    $t3, $zero, .L80A08298     
/* 0067C 80A0800C 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00680 80A08010 15810054 */  bne     $t4, $at, .L80A08164       
/* 00684 80A08014 240D0032 */  addiu   $t5, $zero, 0x0032         ## $t5 = 00000032
/* 00688 80A08018 240D0004 */  addiu   $t5, $zero, 0x0004         ## $t5 = 00000004
/* 0068C 80A0801C A60D0156 */  sh      $t5, 0x0156($s0)           ## 00000156
/* 00690 80A08020 3C0180A1 */  lui     $at, %hi(D_80A08D68)       ## $at = 80A10000
/* 00694 80A08024 A7A00062 */  sh      $zero, 0x0062($sp)         
/* 00698 80A08028 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0069C 80A0802C C42C8D68 */  lwc1    $f12, %lo(D_80A08D68)($at) 
/* 006A0 80A08030 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 006A4 80A08034 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 006A8 80A08038 3C0E8016 */  lui     $t6, %hi(gSaveContext+4)
/* 006AC 80A0803C 8FB90094 */  lw      $t9, 0x0094($sp)           
/* 006B0 80A08040 4604003C */  c.lt.s  $f0, $f4                   
/* 006B4 80A08044 00000000 */  nop
/* 006B8 80A08048 45020015 */  bc1fl   .L80A080A0                 
/* 006BC 80A0804C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 006C0 80A08050 8DCEE664 */  lw      $t6, %lo(gSaveContext+4)($t6)
/* 006C4 80A08054 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 006C8 80A08058 51C00011 */  beql    $t6, $zero, .L80A080A0     
/* 006CC 80A0805C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 006D0 80A08060 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 006D4 80A08064 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 006D8 80A08068 00000000 */  nop
/* 006DC 80A0806C 8FAF0094 */  lw      $t7, 0x0094($sp)           
/* 006E0 80A08070 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 006E4 80A08074 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 006E8 80A08078 C5E60024 */  lwc1    $f6, 0x0024($t7)           ## 00000024
/* 006EC 80A0807C 46060280 */  add.s   $f10, $f0, $f6             
/* 006F0 80A08080 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 006F4 80A08084 E7AA007C */  swc1    $f10, 0x007C($sp)          
/* 006F8 80A08088 8FB80094 */  lw      $t8, 0x0094($sp)           
/* 006FC 80A0808C C708002C */  lwc1    $f8, 0x002C($t8)           ## 0000002C
/* 00700 80A08090 46080100 */  add.s   $f4, $f0, $f8              
/* 00704 80A08094 1000005A */  beq     $zero, $zero, .L80A08200   
/* 00708 80A08098 E7A40074 */  swc1    $f4, 0x0074($sp)           
/* 0070C 80A0809C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
.L80A080A0:
/* 00710 80A080A0 C72A0838 */  lwc1    $f10, 0x0838($t9)          ## 00000838
/* 00714 80A080A4 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00718 80A080A8 460A3032 */  c.eq.s  $f6, $f10                  
/* 0071C 80A080AC 00000000 */  nop
/* 00720 80A080B0 4503001C */  bc1tl   .L80A08124                 
/* 00724 80A080B4 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 00728 80A080B8 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 0072C 80A080BC 44816000 */  mtc1    $at, $f12                  ## $f12 = 200.00
/* 00730 80A080C0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00734 80A080C4 00000000 */  nop
/* 00738 80A080C8 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 0073C 80A080CC 44812000 */  mtc1    $at, $f4                   ## $f4 = 300.00
/* 00740 80A080D0 C7A8007C */  lwc1    $f8, 0x007C($sp)           
/* 00744 80A080D4 8FA8009C */  lw      $t0, 0x009C($sp)           
/* 00748 80A080D8 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 0074C 80A080DC 46044182 */  mul.s   $f6, $f8, $f4              
/* 00750 80A080E0 C50A00E0 */  lwc1    $f10, 0x00E0($t0)          ## 000000E0
/* 00754 80A080E4 44816000 */  mtc1    $at, $f12                  ## $f12 = 50.00
/* 00758 80A080E8 46065200 */  add.s   $f8, $f10, $f6             
/* 0075C 80A080EC 46080100 */  add.s   $f4, $f0, $f8              
/* 00760 80A080F0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00764 80A080F4 E7A4007C */  swc1    $f4, 0x007C($sp)           
/* 00768 80A080F8 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 0076C 80A080FC 44813000 */  mtc1    $at, $f6                   ## $f6 = 600.00
/* 00770 80A08100 C7AA0074 */  lwc1    $f10, 0x0074($sp)          
/* 00774 80A08104 8FA9009C */  lw      $t1, 0x009C($sp)           
/* 00778 80A08108 46065202 */  mul.s   $f8, $f10, $f6             
/* 0077C 80A0810C C52400E8 */  lwc1    $f4, 0x00E8($t1)           ## 000000E8
/* 00780 80A08110 46082280 */  add.s   $f10, $f4, $f8             
/* 00784 80A08114 460A0180 */  add.s   $f6, $f0, $f10             
/* 00788 80A08118 1000000F */  beq     $zero, $zero, .L80A08158   
/* 0078C 80A0811C E7A60074 */  swc1    $f6, 0x0074($sp)           
/* 00790 80A08120 44816000 */  mtc1    $at, $f12                  ## $f12 = 600.00
.L80A08124:
/* 00794 80A08124 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00798 80A08128 00000000 */  nop
/* 0079C 80A0812C 8FAA0094 */  lw      $t2, 0x0094($sp)           
/* 007A0 80A08130 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 007A4 80A08134 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 007A8 80A08138 C5440024 */  lwc1    $f4, 0x0024($t2)           ## 00000024
/* 007AC 80A0813C 46040200 */  add.s   $f8, $f0, $f4              
/* 007B0 80A08140 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 007B4 80A08144 E7A8007C */  swc1    $f8, 0x007C($sp)           
/* 007B8 80A08148 8FAB0094 */  lw      $t3, 0x0094($sp)           
/* 007BC 80A0814C C56A002C */  lwc1    $f10, 0x002C($t3)          ## 0000002C
/* 007C0 80A08150 460A0180 */  add.s   $f6, $f0, $f10             
/* 007C4 80A08154 E7A60074 */  swc1    $f6, 0x0074($sp)           
.L80A08158:
/* 007C8 80A08158 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 007CC 80A0815C 10000028 */  beq     $zero, $zero, .L80A08200   
/* 007D0 80A08160 A7AC0062 */  sh      $t4, 0x0062($sp)           
.L80A08164:
/* 007D4 80A08164 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 007D8 80A08168 A60D0156 */  sh      $t5, 0x0156($s0)           ## 00000156
/* 007DC 80A0816C 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 007E0 80A08170 44816000 */  mtc1    $at, $f12                  ## $f12 = 100.00
/* 007E4 80A08174 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 007E8 80A08178 A7AE0062 */  sh      $t6, 0x0062($sp)           
/* 007EC 80A0817C C7A4008C */  lwc1    $f4, 0x008C($sp)           
/* 007F0 80A08180 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 007F4 80A08184 44816000 */  mtc1    $at, $f12                  ## $f12 = 100.00
/* 007F8 80A08188 46040200 */  add.s   $f8, $f0, $f4              
/* 007FC 80A0818C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00800 80A08190 E7A8007C */  swc1    $f8, 0x007C($sp)           
/* 00804 80A08194 C7AA0084 */  lwc1    $f10, 0x0084($sp)          
/* 00808 80A08198 3C0180A1 */  lui     $at, %hi(D_80A08D6C)       ## $at = 80A10000
/* 0080C 80A0819C C42C8D6C */  lwc1    $f12, %lo(D_80A08D6C)($at) 
/* 00810 80A081A0 460A0180 */  add.s   $f6, $f0, $f10             
/* 00814 80A081A4 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00818 80A081A8 E7A60074 */  swc1    $f6, 0x0074($sp)           
/* 0081C 80A081AC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00820 80A081B0 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 00824 80A081B4 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 00828 80A081B8 4604003C */  c.lt.s  $f0, $f4                   
/* 0082C 80A081BC 00000000 */  nop
/* 00830 80A081C0 45020010 */  bc1fl   .L80A08204                 
/* 00834 80A081C4 8FA6009C */  lw      $a2, 0x009C($sp)           
/* 00838 80A081C8 44816000 */  mtc1    $at, $f12                  ## $f12 = 70.00
/* 0083C 80A081CC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00840 80A081D0 00000000 */  nop
/* 00844 80A081D4 8FAF0094 */  lw      $t7, 0x0094($sp)           
/* 00848 80A081D8 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 0084C 80A081DC 44816000 */  mtc1    $at, $f12                  ## $f12 = 70.00
/* 00850 80A081E0 C5E80024 */  lwc1    $f8, 0x0024($t7)           ## 00000024
/* 00854 80A081E4 46080280 */  add.s   $f10, $f0, $f8             
/* 00858 80A081E8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 0085C 80A081EC E7AA007C */  swc1    $f10, 0x007C($sp)          
/* 00860 80A081F0 8FB80094 */  lw      $t8, 0x0094($sp)           
/* 00864 80A081F4 C706002C */  lwc1    $f6, 0x002C($t8)           ## 0000002C
/* 00868 80A081F8 46060100 */  add.s   $f4, $f0, $f6              
/* 0086C 80A081FC E7A40074 */  swc1    $f4, 0x0074($sp)           
.L80A08200:
/* 00870 80A08200 8FA6009C */  lw      $a2, 0x009C($sp)           
.L80A08204:
/* 00874 80A08204 C7A8007C */  lwc1    $f8, 0x007C($sp)           
/* 00878 80A08208 C7AA0088 */  lwc1    $f10, 0x0088($sp)          
/* 0087C 80A0820C C7A60074 */  lwc1    $f6, 0x0074($sp)           
/* 00880 80A08210 87B90062 */  lh      $t9, 0x0062($sp)           
/* 00884 80A08214 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00888 80A08218 240700B5 */  addiu   $a3, $zero, 0x00B5         ## $a3 = 000000B5
/* 0088C 80A0821C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00890 80A08220 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00894 80A08224 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00898 80A08228 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 0089C 80A0822C E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 008A0 80A08230 E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 008A4 80A08234 E7A60018 */  swc1    $f6, 0x0018($sp)           
/* 008A8 80A08238 0C00C916 */  jal     Actor_SpawnChild
              
/* 008AC 80A0823C AFB90028 */  sw      $t9, 0x0028($sp)           
/* 008B0 80A08240 10400006 */  beq     $v0, $zero, .L80A0825C     
/* 008B4 80A08244 3C0480A1 */  lui     $a0, %hi(D_80A08C1C)       ## $a0 = 80A10000
/* 008B8 80A08248 AC500190 */  sw      $s0, 0x0190($v0)           ## 00000190
/* 008BC 80A0824C 86080158 */  lh      $t0, 0x0158($s0)           ## 00000158
/* 008C0 80A08250 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 008C4 80A08254 1000000F */  beq     $zero, $zero, .L80A08294   
/* 008C8 80A08258 A6090158 */  sh      $t1, 0x0158($s0)           ## 00000158
.L80A0825C:
/* 008CC 80A0825C 0C00084C */  jal     osSyncPrintf
              
/* 008D0 80A08260 24848C1C */  addiu   $a0, $a0, %lo(D_80A08C1C)  ## $a0 = 80A08C1C
/* 008D4 80A08264 3C0480A1 */  lui     $a0, %hi(D_80A08C4C)       ## $a0 = 80A10000
/* 008D8 80A08268 0C00084C */  jal     osSyncPrintf
              
/* 008DC 80A0826C 24848C4C */  addiu   $a0, $a0, %lo(D_80A08C4C)  ## $a0 = 80A08C4C
/* 008E0 80A08270 3C0480A1 */  lui     $a0, %hi(D_80A08C7C)       ## $a0 = 80A10000
/* 008E4 80A08274 0C00084C */  jal     osSyncPrintf
              
/* 008E8 80A08278 24848C7C */  addiu   $a0, $a0, %lo(D_80A08C7C)  ## $a0 = 80A08C7C
/* 008EC 80A0827C 3C0480A1 */  lui     $a0, %hi(D_80A08CAC)       ## $a0 = 80A10000
/* 008F0 80A08280 0C00084C */  jal     osSyncPrintf
              
/* 008F4 80A08284 24848CAC */  addiu   $a0, $a0, %lo(D_80A08CAC)  ## $a0 = 80A08CAC
/* 008F8 80A08288 3C0480A1 */  lui     $a0, %hi(D_80A08CDC)       ## $a0 = 80A10000
/* 008FC 80A0828C 0C00084C */  jal     osSyncPrintf
              
/* 00900 80A08290 24848CDC */  addiu   $a0, $a0, %lo(D_80A08CDC)  ## $a0 = 80A08CDC
.L80A08294:
/* 00904 80A08294 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80A08298:
/* 00908 80A08298 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 0090C 80A0829C 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000
/* 00910 80A082A0 03E00008 */  jr      $ra                        
/* 00914 80A082A4 00000000 */  nop
