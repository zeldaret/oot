.late_rodata
glabel D_80A21CC0
    .float 0.6

glabel D_80A21CC4
    .float 0.3

.text
glabel func_80A20100
/* 00340 80A20100 27BDFF48 */  addiu   $sp, $sp, 0xFF48           ## $sp = FFFFFF48
/* 00344 80A20104 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00348 80A20108 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 0034C 80A2010C 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 00350 80A20110 AFB30064 */  sw      $s3, 0x0064($sp)           
/* 00354 80A20114 AFB20060 */  sw      $s2, 0x0060($sp)           
/* 00358 80A20118 AFB00058 */  sw      $s0, 0x0058($sp)           
/* 0035C 80A2011C 240E009B */  addiu   $t6, $zero, 0x009B         ## $t6 = 0000009B
/* 00360 80A20120 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 00364 80A20124 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 00368 80A20128 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 0036C 80A2012C 240800C8 */  addiu   $t0, $zero, 0x00C8         ## $t0 = 000000C8
/* 00370 80A20130 240900C8 */  addiu   $t1, $zero, 0x00C8         ## $t1 = 000000C8
/* 00374 80A20134 240A00C8 */  addiu   $t2, $zero, 0x00C8         ## $t2 = 000000C8
/* 00378 80A20138 00C09025 */  or      $s2, $a2, $zero            ## $s2 = 00000000
/* 0037C 80A2013C 00E09825 */  or      $s3, $a3, $zero            ## $s3 = 00000000
/* 00380 80A20140 AFBF007C */  sw      $ra, 0x007C($sp)           
/* 00384 80A20144 AFBE0078 */  sw      $s8, 0x0078($sp)           
/* 00388 80A20148 AFB70074 */  sw      $s7, 0x0074($sp)           
/* 0038C 80A2014C AFB60070 */  sw      $s6, 0x0070($sp)           
/* 00390 80A20150 AFB5006C */  sw      $s5, 0x006C($sp)           
/* 00394 80A20154 AFB40068 */  sw      $s4, 0x0068($sp)           
/* 00398 80A20158 AFB1005C */  sw      $s1, 0x005C($sp)           
/* 0039C 80A2015C F7BE0050 */  sdc1    $f30, 0x0050($sp)          
/* 003A0 80A20160 F7BC0048 */  sdc1    $f28, 0x0048($sp)          
/* 003A4 80A20164 F7BA0040 */  sdc1    $f26, 0x0040($sp)          
/* 003A8 80A20168 F7B80038 */  sdc1    $f24, 0x0038($sp)          
/* 003AC 80A2016C F7B60030 */  sdc1    $f22, 0x0030($sp)          
/* 003B0 80A20170 F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 003B4 80A20174 AFA400B8 */  sw      $a0, 0x00B8($sp)           
/* 003B8 80A20178 AFA500BC */  sw      $a1, 0x00BC($sp)           
/* 003BC 80A2017C A3AE008C */  sb      $t6, 0x008C($sp)           
/* 003C0 80A20180 A3AF008D */  sb      $t7, 0x008D($sp)           
/* 003C4 80A20184 A3B8008E */  sb      $t8, 0x008E($sp)           
/* 003C8 80A20188 A3B9008F */  sb      $t9, 0x008F($sp)           
/* 003CC 80A2018C A3A80088 */  sb      $t0, 0x0088($sp)           
/* 003D0 80A20190 A3A90089 */  sb      $t1, 0x0089($sp)           
/* 003D4 80A20194 A3AA008A */  sb      $t2, 0x008A($sp)           
/* 003D8 80A20198 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 003DC 80A2019C E7A00098 */  swc1    $f0, 0x0098($sp)           
/* 003E0 80A201A0 E7A00090 */  swc1    $f0, 0x0090($sp)           
/* 003E4 80A201A4 18E0003E */  blez    $a3, .L80A202A0            
/* 003E8 80A201A8 E7A40094 */  swc1    $f4, 0x0094($sp)           
/* 003EC 80A201AC 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 003F0 80A201B0 4481F000 */  mtc1    $at, $f30                  ## $f30 = 5.00
/* 003F4 80A201B4 3C0180A2 */  lui     $at, %hi(D_80A21CC0)       ## $at = 80A20000
/* 003F8 80A201B8 C43C1CC0 */  lwc1    $f28, %lo(D_80A21CC0)($at) 
/* 003FC 80A201BC 3C0180A2 */  lui     $at, %hi(D_80A21CC4)       ## $at = 80A20000
/* 00400 80A201C0 C43A1CC4 */  lwc1    $f26, %lo(D_80A21CC4)($at) 
/* 00404 80A201C4 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00408 80A201C8 4481B000 */  mtc1    $at, $f22                  ## $f22 = 10.00
/* 0040C 80A201CC C7B400C8 */  lwc1    $f20, 0x00C8($sp)          
/* 00410 80A201D0 27BE0088 */  addiu   $s8, $sp, 0x0088           ## $s8 = FFFFFFD0
/* 00414 80A201D4 27B7008C */  addiu   $s7, $sp, 0x008C           ## $s7 = FFFFFFD4
/* 00418 80A201D8 27B60090 */  addiu   $s6, $sp, 0x0090           ## $s6 = FFFFFFD8
/* 0041C 80A201DC 27B5009C */  addiu   $s5, $sp, 0x009C           ## $s5 = FFFFFFE4
/* 00420 80A201E0 27B400A8 */  addiu   $s4, $sp, 0x00A8           ## $s4 = FFFFFFF0
.L80A201E4:
/* 00424 80A201E4 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 00428 80A201E8 4600D306 */  mov.s   $f12, $f26                 
/* 0042C 80A201EC 461C0600 */  add.s   $f24, $f0, $f28            
/* 00430 80A201F0 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 00434 80A201F4 4600F306 */  mov.s   $f12, $f30                 
/* 00438 80A201F8 4600018D */  trunc.w.s $f6, $f0                   
/* 0043C 80A201FC 4600A306 */  mov.s   $f12, $f20                 
/* 00440 80A20200 44113000 */  mfc1    $s1, $f6                   
/* 00444 80A20204 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 00448 80A20208 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = 0000000C
/* 0044C 80A2020C C6480000 */  lwc1    $f8, 0x0000($s2)           ## 00000000
/* 00450 80A20210 4600A306 */  mov.s   $f12, $f20                 
/* 00454 80A20214 46080280 */  add.s   $f10, $f0, $f8             
/* 00458 80A20218 0C00CFBE */  jal     Rand_ZeroFloat
              
/* 0045C 80A2021C E7AA00A8 */  swc1    $f10, 0x00A8($sp)          
/* 00460 80A20220 C6500004 */  lwc1    $f16, 0x0004($s2)          ## 00000004
/* 00464 80A20224 4600A306 */  mov.s   $f12, $f20                 
/* 00468 80A20228 46100480 */  add.s   $f18, $f0, $f16            
/* 0046C 80A2022C 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 00470 80A20230 E7B200AC */  swc1    $f18, 0x00AC($sp)          
/* 00474 80A20234 C6440008 */  lwc1    $f4, 0x0008($s2)           ## 00000008
/* 00478 80A20238 4600B306 */  mov.s   $f12, $f22                 
/* 0047C 80A2023C 46040180 */  add.s   $f6, $f0, $f4              
/* 00480 80A20240 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 00484 80A20244 E7A600B0 */  swc1    $f6, 0x00B0($sp)           
/* 00488 80A20248 E7A0009C */  swc1    $f0, 0x009C($sp)           
/* 0048C 80A2024C 0C00CFBE */  jal     Rand_ZeroFloat
              
/* 00490 80A20250 4600B306 */  mov.s   $f12, $f22                 
/* 00494 80A20254 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00498 80A20258 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.00
/* 0049C 80A2025C 4600B306 */  mov.s   $f12, $f22                 
/* 004A0 80A20260 46080280 */  add.s   $f10, $f0, $f8             
/* 004A4 80A20264 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 004A8 80A20268 E7AA00A0 */  swc1    $f10, 0x00A0($sp)          
/* 004AC 80A2026C 4406C000 */  mfc1    $a2, $f24                  
/* 004B0 80A20270 E7A000A4 */  swc1    $f0, 0x00A4($sp)           
/* 004B4 80A20274 8FA400BC */  lw      $a0, 0x00BC($sp)           
/* 004B8 80A20278 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFF0
/* 004BC 80A2027C 02A03825 */  or      $a3, $s5, $zero            ## $a3 = FFFFFFE4
/* 004C0 80A20280 AFB60010 */  sw      $s6, 0x0010($sp)           
/* 004C4 80A20284 AFB70014 */  sw      $s7, 0x0014($sp)           
/* 004C8 80A20288 AFBE0018 */  sw      $s8, 0x0018($sp)           
/* 004CC 80A2028C 0C00A8A9 */  jal     EffectSsEnIce_Spawn              
/* 004D0 80A20290 AFB1001C */  sw      $s1, 0x001C($sp)           
/* 004D4 80A20294 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 004D8 80A20298 1613FFD2 */  bne     $s0, $s3, .L80A201E4       
/* 004DC 80A2029C 00000000 */  nop
.L80A202A0:
/* 004E0 80A202A0 8FA400BC */  lw      $a0, 0x00BC($sp)           
/* 004E4 80A202A4 0C018B35 */  jal     func_80062CD4              
/* 004E8 80A202A8 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 004EC 80A202AC 8FBF007C */  lw      $ra, 0x007C($sp)           
/* 004F0 80A202B0 D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 004F4 80A202B4 D7B60030 */  ldc1    $f22, 0x0030($sp)          
/* 004F8 80A202B8 D7B80038 */  ldc1    $f24, 0x0038($sp)          
/* 004FC 80A202BC D7BA0040 */  ldc1    $f26, 0x0040($sp)          
/* 00500 80A202C0 D7BC0048 */  ldc1    $f28, 0x0048($sp)          
/* 00504 80A202C4 D7BE0050 */  ldc1    $f30, 0x0050($sp)          
/* 00508 80A202C8 8FB00058 */  lw      $s0, 0x0058($sp)           
/* 0050C 80A202CC 8FB1005C */  lw      $s1, 0x005C($sp)           
/* 00510 80A202D0 8FB20060 */  lw      $s2, 0x0060($sp)           
/* 00514 80A202D4 8FB30064 */  lw      $s3, 0x0064($sp)           
/* 00518 80A202D8 8FB40068 */  lw      $s4, 0x0068($sp)           
/* 0051C 80A202DC 8FB5006C */  lw      $s5, 0x006C($sp)           
/* 00520 80A202E0 8FB60070 */  lw      $s6, 0x0070($sp)           
/* 00524 80A202E4 8FB70074 */  lw      $s7, 0x0074($sp)           
/* 00528 80A202E8 8FBE0078 */  lw      $s8, 0x0078($sp)           
/* 0052C 80A202EC 03E00008 */  jr      $ra                        
/* 00530 80A202F0 27BD00B8 */  addiu   $sp, $sp, 0x00B8           ## $sp = 00000000
glabel L80A202F4
/* 00534 80A202F4 03E00008 */  jr      $ra                        
/* 00538 80A202F8 AFA40000 */  sw      $a0, 0x0000($sp)           
