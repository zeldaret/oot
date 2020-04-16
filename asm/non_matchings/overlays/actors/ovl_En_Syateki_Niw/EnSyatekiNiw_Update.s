.late_rodata
glabel D_80B1382C
 .word 0xBE19999A

.text
glabel EnSyatekiNiw_Update
/* 01384 80B12C74 27BDFF58 */  addiu   $sp, $sp, 0xFF58           ## $sp = FFFFFF58
/* 01388 80B12C78 3C0F80B1 */  lui     $t7, %hi(D_80B136B8)       ## $t7 = 80B10000
/* 0138C 80B12C7C AFBF004C */  sw      $ra, 0x004C($sp)           
/* 01390 80B12C80 AFB10048 */  sw      $s1, 0x0048($sp)           
/* 01394 80B12C84 AFB00044 */  sw      $s0, 0x0044($sp)           
/* 01398 80B12C88 F7BC0038 */  sdc1    $f28, 0x0038($sp)          
/* 0139C 80B12C8C F7BA0030 */  sdc1    $f26, 0x0030($sp)          
/* 013A0 80B12C90 F7B80028 */  sdc1    $f24, 0x0028($sp)          
/* 013A4 80B12C94 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 013A8 80B12C98 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 013AC 80B12C9C AFA500AC */  sw      $a1, 0x00AC($sp)           
/* 013B0 80B12CA0 25EF36B8 */  addiu   $t7, $t7, %lo(D_80B136B8)  ## $t7 = 80B136B8
/* 013B4 80B12CA4 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B136B8
/* 013B8 80B12CA8 27AE0090 */  addiu   $t6, $sp, 0x0090           ## $t6 = FFFFFFE8
/* 013BC 80B12CAC 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B136BC
/* 013C0 80B12CB0 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFE8
/* 013C4 80B12CB4 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B136C0
/* 013C8 80B12CB8 3C0980B1 */  lui     $t1, %hi(D_80B136C4)       ## $t1 = 80B10000
/* 013CC 80B12CBC 252936C4 */  addiu   $t1, $t1, %lo(D_80B136C4)  ## $t1 = 80B136C4
/* 013D0 80B12CC0 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFEC
/* 013D4 80B12CC4 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF0
/* 013D8 80B12CC8 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80B136C4
/* 013DC 80B12CCC 27A80084 */  addiu   $t0, $sp, 0x0084           ## $t0 = FFFFFFDC
/* 013E0 80B12CD0 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80B136C8
/* 013E4 80B12CD4 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFDC
/* 013E8 80B12CD8 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80B136CC
/* 013EC 80B12CDC AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFE0
/* 013F0 80B12CE0 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 013F4 80B12CE4 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFE4
/* 013F8 80B12CE8 0C2C4CAA */  jal     func_80B132A8              
/* 013FC 80B12CEC 8FA500AC */  lw      $a1, 0x00AC($sp)           
/* 01400 80B12CF0 862C028C */  lh      $t4, 0x028C($s1)           ## 0000028C
/* 01404 80B12CF4 86220254 */  lh      $v0, 0x0254($s1)           ## 00000254
/* 01408 80B12CF8 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 0140C 80B12CFC 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 01410 80B12D00 10400003 */  beq     $v0, $zero, .L80B12D10     
/* 01414 80B12D04 A62D028C */  sh      $t5, 0x028C($s1)           ## 0000028C
/* 01418 80B12D08 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 0141C 80B12D0C A62E0254 */  sh      $t6, 0x0254($s1)           ## 00000254
.L80B12D10:
/* 01420 80B12D10 86220258 */  lh      $v0, 0x0258($s1)           ## 00000258
/* 01424 80B12D14 10400002 */  beq     $v0, $zero, .L80B12D20     
/* 01428 80B12D18 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 0142C 80B12D1C A62F0258 */  sh      $t7, 0x0258($s1)           ## 00000258
.L80B12D20:
/* 01430 80B12D20 8622025A */  lh      $v0, 0x025A($s1)           ## 0000025A
/* 01434 80B12D24 10400002 */  beq     $v0, $zero, .L80B12D30     
/* 01438 80B12D28 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 0143C 80B12D2C A638025A */  sh      $t8, 0x025A($s1)           ## 0000025A
.L80B12D30:
/* 01440 80B12D30 8622025C */  lh      $v0, 0x025C($s1)           ## 0000025C
/* 01444 80B12D34 10400002 */  beq     $v0, $zero, .L80B12D40     
/* 01448 80B12D38 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 0144C 80B12D3C A639025C */  sh      $t9, 0x025C($s1)           ## 0000025C
.L80B12D40:
/* 01450 80B12D40 8622025E */  lh      $v0, 0x025E($s1)           ## 0000025E
/* 01454 80B12D44 10400002 */  beq     $v0, $zero, .L80B12D50     
/* 01458 80B12D48 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 0145C 80B12D4C A628025E */  sh      $t0, 0x025E($s1)           ## 0000025E
.L80B12D50:
/* 01460 80B12D50 86220262 */  lh      $v0, 0x0262($s1)           ## 00000262
/* 01464 80B12D54 10400002 */  beq     $v0, $zero, .L80B12D60     
/* 01468 80B12D58 2449FFFF */  addiu   $t1, $v0, 0xFFFF           ## $t1 = FFFFFFFF
/* 0146C 80B12D5C A6290262 */  sh      $t1, 0x0262($s1)           ## 00000262
.L80B12D60:
/* 01470 80B12D60 86220260 */  lh      $v0, 0x0260($s1)           ## 00000260
/* 01474 80B12D64 10400002 */  beq     $v0, $zero, .L80B12D70     
/* 01478 80B12D68 244AFFFF */  addiu   $t2, $v0, 0xFFFF           ## $t2 = FFFFFFFF
/* 0147C 80B12D6C A62A0260 */  sh      $t2, 0x0260($s1)           ## 00000260
.L80B12D70:
/* 01480 80B12D70 8A2C0030 */  lwl     $t4, 0x0030($s1)           ## 00000030
/* 01484 80B12D74 9A2C0033 */  lwr     $t4, 0x0033($s1)           ## 00000033
/* 01488 80B12D78 44812000 */  mtc1    $at, $f4                   ## $f4 = 15.00
/* 0148C 80B12D7C 8E390250 */  lw      $t9, 0x0250($s1)           ## 00000250
/* 01490 80B12D80 AA2C00B4 */  swl     $t4, 0x00B4($s1)           ## 000000B4
/* 01494 80B12D84 BA2C00B7 */  swr     $t4, 0x00B7($s1)           ## 000000B7
/* 01498 80B12D88 962C0034 */  lhu     $t4, 0x0034($s1)           ## 00000034
/* 0149C 80B12D8C E62400C4 */  swc1    $f4, 0x00C4($s1)           ## 000000C4
/* 014A0 80B12D90 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 014A4 80B12D94 A62C00B8 */  sh      $t4, 0x00B8($s1)           ## 000000B8
/* 014A8 80B12D98 0320F809 */  jalr    $ra, $t9                   
/* 014AC 80B12D9C 8FA500AC */  lw      $a1, 0x00AC($sp)           
/* 014B0 80B12DA0 0C00B638 */  jal     Actor_MoveForward
              
/* 014B4 80B12DA4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 014B8 80B12DA8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 014BC 80B12DAC 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 014C0 80B12DB0 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 014C4 80B12DB4 44813000 */  mtc1    $at, $f6                   ## $f6 = 60.00
/* 014C8 80B12DB8 240D001D */  addiu   $t5, $zero, 0x001D         ## $t5 = 0000001D
/* 014CC 80B12DBC 44060000 */  mfc1    $a2, $f0                   
/* 014D0 80B12DC0 44070000 */  mfc1    $a3, $f0                   
/* 014D4 80B12DC4 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 014D8 80B12DC8 8FA400AC */  lw      $a0, 0x00AC($sp)           
/* 014DC 80B12DCC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 014E0 80B12DD0 0C00B92D */  jal     func_8002E4B4              
/* 014E4 80B12DD4 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 014E8 80B12DD8 862E02A0 */  lh      $t6, 0x02A0($s1)           ## 000002A0
/* 014EC 80B12DDC 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 014F0 80B12DE0 51C0003F */  beql    $t6, $zero, .L80B12EE0     
/* 014F4 80B12DE4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 014F8 80B12DE8 4481E000 */  mtc1    $at, $f28                  ## $f28 = 8.00
/* 014FC 80B12DEC 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01500 80B12DF0 4481C000 */  mtc1    $at, $f24                  ## $f24 = 2.00
/* 01504 80B12DF4 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 01508 80B12DF8 4481B000 */  mtc1    $at, $f22                  ## $f22 = 3.00
/* 0150C 80B12DFC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01510 80B12E00 4481A000 */  mtc1    $at, $f20                  ## $f20 = 10.00
/* 01514 80B12E04 4480D000 */  mtc1    $zero, $f26                ## $f26 = 0.00
/* 01518 80B12E08 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
.L80B12E0C:
/* 0151C 80B12E0C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 01520 80B12E10 4600A306 */  mov.s   $f12, $f20                 
/* 01524 80B12E14 C6280024 */  lwc1    $f8, 0x0024($s1)           ## 00000024
/* 01528 80B12E18 4600A306 */  mov.s   $f12, $f20                 
/* 0152C 80B12E1C 46080280 */  add.s   $f10, $f0, $f8             
/* 01530 80B12E20 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 01534 80B12E24 E7AA0078 */  swc1    $f10, 0x0078($sp)          
/* 01538 80B12E28 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0153C 80B12E2C 44819000 */  mtc1    $at, $f18                  ## $f18 = 20.00
/* 01540 80B12E30 C6300028 */  lwc1    $f16, 0x0028($s1)          ## 00000028
/* 01544 80B12E34 4600A306 */  mov.s   $f12, $f20                 
/* 01548 80B12E38 46128100 */  add.s   $f4, $f16, $f18            
/* 0154C 80B12E3C 46040180 */  add.s   $f6, $f0, $f4              
/* 01550 80B12E40 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 01554 80B12E44 E7A6007C */  swc1    $f6, 0x007C($sp)           
/* 01558 80B12E48 C628002C */  lwc1    $f8, 0x002C($s1)           ## 0000002C
/* 0155C 80B12E4C 4600B306 */  mov.s   $f12, $f22                 
/* 01560 80B12E50 46080280 */  add.s   $f10, $f0, $f8             
/* 01564 80B12E54 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 01568 80B12E58 E7AA0080 */  swc1    $f10, 0x0080($sp)          
/* 0156C 80B12E5C E7A0006C */  swc1    $f0, 0x006C($sp)           
/* 01570 80B12E60 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 01574 80B12E64 4600C306 */  mov.s   $f12, $f24                 
/* 01578 80B12E68 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0157C 80B12E6C 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 01580 80B12E70 4600B306 */  mov.s   $f12, $f22                 
/* 01584 80B12E74 46100482 */  mul.s   $f18, $f0, $f16            
/* 01588 80B12E78 46189100 */  add.s   $f4, $f18, $f24            
/* 0158C 80B12E7C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 01590 80B12E80 E7A40070 */  swc1    $f4, 0x0070($sp)           
/* 01594 80B12E84 3C0180B1 */  lui     $at, %hi(D_80B1382C)       ## $at = 80B10000
/* 01598 80B12E88 C426382C */  lwc1    $f6, %lo(D_80B1382C)($at)  
/* 0159C 80B12E8C E7A00074 */  swc1    $f0, 0x0074($sp)           
/* 015A0 80B12E90 E7BA0060 */  swc1    $f26, 0x0060($sp)          
/* 015A4 80B12E94 E7BA0068 */  swc1    $f26, 0x0068($sp)          
/* 015A8 80B12E98 4600E306 */  mov.s   $f12, $f28                 
/* 015AC 80B12E9C 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 015B0 80B12EA0 E7A60064 */  swc1    $f6, 0x0064($sp)           
/* 015B4 80B12EA4 461C0200 */  add.s   $f8, $f0, $f28             
/* 015B8 80B12EA8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 015BC 80B12EAC 27A50078 */  addiu   $a1, $sp, 0x0078           ## $a1 = FFFFFFD0
/* 015C0 80B12EB0 27A6006C */  addiu   $a2, $sp, 0x006C           ## $a2 = FFFFFFC4
/* 015C4 80B12EB4 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 015C8 80B12EB8 0C2C4C6E */  jal     func_80B131B8              
/* 015CC 80B12EBC 27A70060 */  addiu   $a3, $sp, 0x0060           ## $a3 = FFFFFFB8
/* 015D0 80B12EC0 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 015D4 80B12EC4 00108400 */  sll     $s0, $s0, 16               
/* 015D8 80B12EC8 00108403 */  sra     $s0, $s0, 16               
/* 015DC 80B12ECC 2A010014 */  slti    $at, $s0, 0x0014           
/* 015E0 80B12ED0 1420FFCE */  bne     $at, $zero, .L80B12E0C     
/* 015E4 80B12ED4 00000000 */  nop
/* 015E8 80B12ED8 A62002A0 */  sh      $zero, 0x02A0($s1)         ## 000002A0
/* 015EC 80B12EDC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80B12EE0:
/* 015F0 80B12EE0 0C2C4AE9 */  jal     func_80B12BA4              
/* 015F4 80B12EE4 8FA500AC */  lw      $a1, 0x00AC($sp)           
/* 015F8 80B12EE8 862F0262 */  lh      $t7, 0x0262($s1)           ## 00000262
/* 015FC 80B12EEC 55E00012 */  bnel    $t7, $zero, .L80B12F38     
/* 01600 80B12EF0 8622029E */  lh      $v0, 0x029E($s1)           ## 0000029E
/* 01604 80B12EF4 8E280250 */  lw      $t0, 0x0250($s1)           ## 00000250
/* 01608 80B12EF8 3C1880B1 */  lui     $t8, %hi(func_80B11E78)    ## $t8 = 80B10000
/* 0160C 80B12EFC 27181E78 */  addiu   $t8, $t8, %lo(func_80B11E78) ## $t8 = 80B11E78
/* 01610 80B12F00 17080008 */  bne     $t8, $t0, .L80B12F24       
/* 01614 80B12F04 240A001E */  addiu   $t2, $zero, 0x001E         ## $t2 = 0000001E
/* 01618 80B12F08 2409012C */  addiu   $t1, $zero, 0x012C         ## $t1 = 0000012C
/* 0161C 80B12F0C A6290262 */  sh      $t1, 0x0262($s1)           ## 00000262
/* 01620 80B12F10 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01624 80B12F14 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01628 80B12F18 24052811 */  addiu   $a1, $zero, 0x2811         ## $a1 = 00002811
/* 0162C 80B12F1C 10000006 */  beq     $zero, $zero, .L80B12F38   
/* 01630 80B12F20 8622029E */  lh      $v0, 0x029E($s1)           ## 0000029E
.L80B12F24:
/* 01634 80B12F24 A62A0262 */  sh      $t2, 0x0262($s1)           ## 00000262
/* 01638 80B12F28 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0163C 80B12F2C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01640 80B12F30 24052812 */  addiu   $a1, $zero, 0x2812         ## $a1 = 00002812
/* 01644 80B12F34 8622029E */  lh      $v0, 0x029E($s1)           ## 0000029E
.L80B12F38:
/* 01648 80B12F38 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 0164C 80B12F3C 8FAB00AC */  lw      $t3, 0x00AC($sp)           
/* 01650 80B12F40 10400006 */  beq     $v0, $zero, .L80B12F5C     
/* 01654 80B12F44 3C0C0001 */  lui     $t4, 0x0001                ## $t4 = 00010000
/* 01658 80B12F48 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0165C 80B12F4C 5041000A */  beql    $v0, $at, .L80B12F78       
/* 01660 80B12F50 24100001 */  addiu   $s0, $zero, 0x0001         ## $s0 = 00000001
/* 01664 80B12F54 10000008 */  beq     $zero, $zero, .L80B12F78   
/* 01668 80B12F58 00000000 */  nop
.L80B12F5C:
/* 0166C 80B12F5C 018B6021 */  addu    $t4, $t4, $t3              
/* 01670 80B12F60 818C1E5C */  lb      $t4, 0x1E5C($t4)           ## 00011E5C
/* 01674 80B12F64 11800004 */  beq     $t4, $zero, .L80B12F78     
/* 01678 80B12F68 00000000 */  nop
/* 0167C 80B12F6C 10000002 */  beq     $zero, $zero, .L80B12F78   
/* 01680 80B12F70 24100001 */  addiu   $s0, $zero, 0x0001         ## $s0 = 00000001
/* 01684 80B12F74 24100001 */  addiu   $s0, $zero, 0x0001         ## $s0 = 00000001
.L80B12F78:
/* 01688 80B12F78 1200000F */  beq     $s0, $zero, .L80B12FB8     
/* 0168C 80B12F7C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01690 80B12F80 263002FC */  addiu   $s0, $s1, 0x02FC           ## $s0 = 000002FC
/* 01694 80B12F84 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 01698 80B12F88 02002825 */  or      $a1, $s0, $zero            ## $a1 = 000002FC
/* 0169C 80B12F8C 8FA400AC */  lw      $a0, 0x00AC($sp)           
/* 016A0 80B12F90 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 016A4 80B12F94 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 016A8 80B12F98 00812821 */  addu    $a1, $a0, $at              
/* 016AC 80B12F9C AFA50054 */  sw      $a1, 0x0054($sp)           
/* 016B0 80B12FA0 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 016B4 80B12FA4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 000002FC
/* 016B8 80B12FA8 8FA50054 */  lw      $a1, 0x0054($sp)           
/* 016BC 80B12FAC 8FA400AC */  lw      $a0, 0x00AC($sp)           
/* 016C0 80B12FB0 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 016C4 80B12FB4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 000002FC
.L80B12FB8:
/* 016C8 80B12FB8 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 016CC 80B12FBC D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 016D0 80B12FC0 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 016D4 80B12FC4 D7B80028 */  ldc1    $f24, 0x0028($sp)          
/* 016D8 80B12FC8 D7BA0030 */  ldc1    $f26, 0x0030($sp)          
/* 016DC 80B12FCC D7BC0038 */  ldc1    $f28, 0x0038($sp)          
/* 016E0 80B12FD0 8FB00044 */  lw      $s0, 0x0044($sp)           
/* 016E4 80B12FD4 8FB10048 */  lw      $s1, 0x0048($sp)           
/* 016E8 80B12FD8 03E00008 */  jr      $ra                        
/* 016EC 80B12FDC 27BD00A8 */  addiu   $sp, $sp, 0x00A8           ## $sp = 00000000
