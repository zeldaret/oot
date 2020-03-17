glabel BossGanon_Update
/* 06D60 808DD5D0 27BDFED0 */  addiu   $sp, $sp, 0xFED0           ## $sp = FFFFFED0
/* 06D64 808DD5D4 AFBF0074 */  sw      $ra, 0x0074($sp)           
/* 06D68 808DD5D8 AFB60070 */  sw      $s6, 0x0070($sp)           
/* 06D6C 808DD5DC AFB5006C */  sw      $s5, 0x006C($sp)           
/* 06D70 808DD5E0 AFB40068 */  sw      $s4, 0x0068($sp)           
/* 06D74 808DD5E4 AFB30064 */  sw      $s3, 0x0064($sp)           
/* 06D78 808DD5E8 AFB20060 */  sw      $s2, 0x0060($sp)           
/* 06D7C 808DD5EC AFB1005C */  sw      $s1, 0x005C($sp)           
/* 06D80 808DD5F0 AFB00058 */  sw      $s0, 0x0058($sp)           
/* 06D84 808DD5F4 F7BA0050 */  sdc1    $f26, 0x0050($sp)          
/* 06D88 808DD5F8 F7B80048 */  sdc1    $f24, 0x0048($sp)          
/* 06D8C 808DD5FC F7B60040 */  sdc1    $f22, 0x0040($sp)          
/* 06D90 808DD600 F7B40038 */  sdc1    $f20, 0x0038($sp)          
/* 06D94 808DD604 8C830194 */  lw      $v1, 0x0194($a0)           ## 00000194
/* 06D98 808DD608 3C0E808D */  lui     $t6, %hi(func_808D7918)    ## $t6 = 808D0000
/* 06D9C 808DD60C 25CE7918 */  addiu   $t6, $t6, %lo(func_808D7918) ## $t6 = 808D7918
/* 06DA0 808DD610 0080A825 */  or      $s5, $a0, $zero            ## $s5 = 00000000
/* 06DA4 808DD614 00A0B025 */  or      $s6, $a1, $zero            ## $s6 = 00000000
/* 06DA8 808DD618 11C30009 */  beq     $t6, $v1, .L808DD640       
/* 06DAC 808DD61C 8CB31C44 */  lw      $s3, 0x1C44($a1)           ## 00001C44
/* 06DB0 808DD620 3C0F808E */  lui     $t7, %hi(func_808D933C)    ## $t7 = 808E0000
/* 06DB4 808DD624 25EF933C */  addiu   $t7, $t7, %lo(func_808D933C) ## $t7 = 808D933C
/* 06DB8 808DD628 51E30006 */  beql    $t7, $v1, .L808DD644       
/* 06DBC 808DD62C 8EB8014C */  lw      $t8, 0x014C($s5)           ## 0000014C
/* 06DC0 808DD630 0C235C4B */  jal     func_808D712C              
/* 06DC4 808DD634 2406017C */  addiu   $a2, $zero, 0x017C         ## $a2 = 0000017C
/* 06DC8 808DD638 1000000E */  beq     $zero, $zero, .L808DD674   
/* 06DCC 808DD63C 92A4071B */  lbu     $a0, 0x071B($s5)           ## 0000071B
.L808DD640:
/* 06DD0 808DD640 8EB8014C */  lw      $t8, 0x014C($s5)           ## 0000014C
.L808DD644:
/* 06DD4 808DD644 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 06DD8 808DD648 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 06DDC 808DD64C 0018C900 */  sll     $t9, $t8,  4               
/* 06DE0 808DD650 0338C821 */  addu    $t9, $t9, $t8              
/* 06DE4 808DD654 0019C880 */  sll     $t9, $t9,  2               
/* 06DE8 808DD658 02D94021 */  addu    $t0, $s6, $t9              
/* 06DEC 808DD65C 01284821 */  addu    $t1, $t1, $t0              
/* 06DF0 808DD660 8D2917B4 */  lw      $t1, 0x17B4($t1)           ## 000117B4
/* 06DF4 808DD664 01215021 */  addu    $t2, $t1, $at              
/* 06DF8 808DD668 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 06DFC 808DD66C AC2A6FC0 */  sw      $t2, 0x6FC0($at)           ## 80166FC0
/* 06E00 808DD670 92A4071B */  lbu     $a0, 0x071B($s5)           ## 0000071B
.L808DD674:
/* 06E04 808DD674 50800049 */  beql    $a0, $zero, .L808DD79C     
/* 06E08 808DD678 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 06E0C 808DD67C 0C23647E */  jal     func_808D91F8              
/* 06E10 808DD680 00000000 */  nop
/* 06E14 808DD684 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 06E18 808DD688 4481D000 */  mtc1    $at, $f26                  ## $f26 = 1.00
/* 06E1C 808DD68C 4480C000 */  mtc1    $zero, $f24                ## $f24 = 0.00
/* 06E20 808DD690 3C018090 */  lui     $at, %hi(D_808F802C)       ## $at = 80900000
/* 06E24 808DD694 C436802C */  lwc1    $f22, %lo(D_808F802C)($at) 
/* 06E28 808DD698 3C018090 */  lui     $at, %hi(D_808F8030)       ## $at = 80900000
/* 06E2C 808DD69C C4348030 */  lwc1    $f20, %lo(D_808F8030)($at) 
/* 06E30 808DD6A0 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 06E34 808DD6A4 27B200F4 */  addiu   $s2, $sp, 0x00F4           ## $s2 = FFFFFFC4
/* 06E38 808DD6A8 27B00100 */  addiu   $s0, $sp, 0x0100           ## $s0 = FFFFFFD0
/* 06E3C 808DD6AC E7B800F8 */  swc1    $f24, 0x00F8($sp)          
/* 06E40 808DD6B0 3C014370 */  lui     $at, 0x4370                ## $at = 43700000
.L808DD6B4:
/* 06E44 808DD6B4 44816000 */  mtc1    $at, $f12                  ## $f12 = 240.00
/* 06E48 808DD6B8 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 06E4C 808DD6BC 00000000 */  nop
/* 06E50 808DD6C0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 06E54 808DD6C4 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 06E58 808DD6C8 00000000 */  nop
/* 06E5C 808DD6CC 46040180 */  add.s   $f6, $f0, $f4              
/* 06E60 808DD6D0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 06E64 808DD6D4 E7A60104 */  swc1    $f6, 0x0104($sp)           
/* 06E68 808DD6D8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 06E6C 808DD6DC 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 06E70 808DD6E0 00000000 */  nop
/* 06E74 808DD6E4 4608003C */  c.lt.s  $f0, $f8                   
/* 06E78 808DD6E8 00000000 */  nop
/* 06E7C 808DD6EC 4502000E */  bc1fl   .L808DD728                 
/* 06E80 808DD6F0 E7B40108 */  swc1    $f20, 0x0108($sp)          
/* 06E84 808DD6F4 E7B40100 */  swc1    $f20, 0x0100($sp)          
/* 06E88 808DD6F8 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 06E8C 808DD6FC 4600B306 */  mov.s   $f12, $f22                 
/* 06E90 808DD700 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 06E94 808DD704 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
/* 06E98 808DD708 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 06E9C 808DD70C E7A00108 */  swc1    $f0, 0x0108($sp)           
/* 06EA0 808DD710 E7A000F4 */  swc1    $f0, 0x00F4($sp)           
/* 06EA4 808DD714 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 06EA8 808DD718 4600D306 */  mov.s   $f12, $f26                 
/* 06EAC 808DD71C 1000000C */  beq     $zero, $zero, .L808DD750   
/* 06EB0 808DD720 E7A000FC */  swc1    $f0, 0x00FC($sp)           
/* 06EB4 808DD724 E7B40108 */  swc1    $f20, 0x0108($sp)          
.L808DD728:
/* 06EB8 808DD728 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 06EBC 808DD72C 4600B306 */  mov.s   $f12, $f22                 
/* 06EC0 808DD730 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 06EC4 808DD734 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
/* 06EC8 808DD738 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 06ECC 808DD73C E7A00100 */  swc1    $f0, 0x0100($sp)           
/* 06ED0 808DD740 E7A000FC */  swc1    $f0, 0x00FC($sp)           
/* 06ED4 808DD744 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 06ED8 808DD748 4600D306 */  mov.s   $f12, $f26                 
/* 06EDC 808DD74C E7A000F4 */  swc1    $f0, 0x00F4($sp)           
.L808DD750:
/* 06EE0 808DD750 3C018090 */  lui     $at, %hi(D_808F8034)       ## $at = 80900000
/* 06EE4 808DD754 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 06EE8 808DD758 C42C8034 */  lwc1    $f12, %lo(D_808F8034)($at) 
/* 06EEC 808DD75C 3C018090 */  lui     $at, %hi(D_808F8038)       ## $at = 80900000
/* 06EF0 808DD760 C42A8038 */  lwc1    $f10, %lo(D_808F8038)($at) 
/* 06EF4 808DD764 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 06EF8 808DD768 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFFD0
/* 06EFC 808DD76C 460A0400 */  add.s   $f16, $f0, $f10            
/* 06F00 808DD770 02403025 */  or      $a2, $s2, $zero            ## $a2 = FFFFFFC4
/* 06F04 808DD774 44078000 */  mfc1    $a3, $f16                  
/* 06F08 808DD778 0C235A1C */  jal     func_808D6870              
/* 06F0C 808DD77C 00000000 */  nop
/* 06F10 808DD780 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 06F14 808DD784 00118C00 */  sll     $s1, $s1, 16               
/* 06F18 808DD788 00118C03 */  sra     $s1, $s1, 16               
/* 06F1C 808DD78C 2A21000A */  slti    $at, $s1, 0x000A           
/* 06F20 808DD790 5420FFC8 */  bnel    $at, $zero, .L808DD6B4     
/* 06F24 808DD794 3C014370 */  lui     $at, 0x4370                ## $at = 43700000
/* 06F28 808DD798 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
.L808DD79C:
/* 06F2C 808DD79C 4481D000 */  mtc1    $at, $f26                  ## $f26 = 1.00
/* 06F30 808DD7A0 240B0003 */  addiu   $t3, $zero, 0x0003         ## $t3 = 00000003
/* 06F34 808DD7A4 A2AB0624 */  sb      $t3, 0x0624($s5)           ## 00000624
/* 06F38 808DD7A8 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 06F3C 808DD7AC 3C0C8090 */  lui     $t4, %hi(D_808F93C0)       ## $t4 = 80900000
/* 06F40 808DD7B0 8D8C93C0 */  lw      $t4, %lo(D_808F93C0)($t4)  
/* 06F44 808DD7B4 44819000 */  mtc1    $at, $f18                  ## $f18 = -3.00
/* 06F48 808DD7B8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 06F4C 808DD7BC 3C09808E */  lui     $t1, %hi(func_808DBB78)    ## $t1 = 808E0000
/* 06F50 808DD7C0 E59216C8 */  swc1    $f18, 0x16C8($t4)          ## 809016C8
/* 06F54 808DD7C4 8EAD0004 */  lw      $t5, 0x0004($s5)           ## 00000004
/* 06F58 808DD7C8 86AF01A2 */  lh      $t7, 0x01A2($s5)           ## 000001A2
/* 06F5C 808DD7CC 86B901A4 */  lh      $t9, 0x01A4($s5)           ## 000001A4
/* 06F60 808DD7D0 8EA30194 */  lw      $v1, 0x0194($s5)           ## 00000194
/* 06F64 808DD7D4 4480C000 */  mtc1    $zero, $f24                ## $f24 = 0.00
/* 06F68 808DD7D8 2529BB78 */  addiu   $t1, $t1, %lo(func_808DBB78) ## $t1 = 808DBB78
/* 06F6C 808DD7DC 01A17024 */  and     $t6, $t5, $at              
/* 06F70 808DD7E0 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 06F74 808DD7E4 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 06F78 808DD7E8 A2A002E4 */  sb      $zero, 0x02E4($s5)         ## 000002E4
/* 06F7C 808DD7EC AEAE0004 */  sw      $t6, 0x0004($s5)           ## 00000004
/* 06F80 808DD7F0 A6B801A2 */  sh      $t8, 0x01A2($s5)           ## 000001A2
/* 06F84 808DD7F4 11230005 */  beq     $t1, $v1, .L808DD80C       
/* 06F88 808DD7F8 A6A801A4 */  sh      $t0, 0x01A4($s5)           ## 000001A4
/* 06F8C 808DD7FC 3C0A808E */  lui     $t2, %hi(func_808DC4DC)    ## $t2 = 808E0000
/* 06F90 808DD800 254AC4DC */  addiu   $t2, $t2, %lo(func_808DC4DC) ## $t2 = 808DC4DC
/* 06F94 808DD804 55430009 */  bnel    $t2, $v1, .L808DD82C       
/* 06F98 808DD808 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
.L808DD80C:
/* 06F9C 808DD80C 926B0A73 */  lbu     $t3, 0x0A73($s3)           ## 00000A73
/* 06FA0 808DD810 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 06FA4 808DD814 51600005 */  beql    $t3, $zero, .L808DD82C     
/* 06FA8 808DD818 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 06FAC 808DD81C 0C237108 */  jal     func_808DC420              
/* 06FB0 808DD820 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 06FB4 808DD824 8EA30194 */  lw      $v1, 0x0194($s5)           ## 00000194
/* 06FB8 808DD828 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
.L808DD82C:
/* 06FBC 808DD82C 0060F809 */  jalr    $ra, $v1                   
/* 06FC0 808DD830 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 06FC4 808DD834 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 06FC8 808DD838 00116040 */  sll     $t4, $s1,  1               
.L808DD83C:
/* 06FCC 808DD83C 02AC1021 */  addu    $v0, $s5, $t4              
/* 06FD0 808DD840 844301B6 */  lh      $v1, 0x01B6($v0)           ## 000001B6
/* 06FD4 808DD844 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 06FD8 808DD848 00118C00 */  sll     $s1, $s1, 16               
/* 06FDC 808DD84C 10600003 */  beq     $v1, $zero, .L808DD85C     
/* 06FE0 808DD850 00118C03 */  sra     $s1, $s1, 16               
/* 06FE4 808DD854 246DFFFF */  addiu   $t5, $v1, 0xFFFF           ## $t5 = FFFFFFFF
/* 06FE8 808DD858 A44D01B6 */  sh      $t5, 0x01B6($v0)           ## 000001B6
.L808DD85C:
/* 06FEC 808DD85C 2A210005 */  slti    $at, $s1, 0x0005           
/* 06FF0 808DD860 5420FFF6 */  bnel    $at, $zero, .L808DD83C     
/* 06FF4 808DD864 00116040 */  sll     $t4, $s1,  1               
/* 06FF8 808DD868 86A201A6 */  lh      $v0, 0x01A6($s5)           ## 000001A6
/* 06FFC 808DD86C 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 07000 808DD870 10400002 */  beq     $v0, $zero, .L808DD87C     
/* 07004 808DD874 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 07008 808DD878 A6AE01A6 */  sh      $t6, 0x01A6($s5)           ## 000001A6
.L808DD87C:
/* 0700C 808DD87C 86A202D4 */  lh      $v0, 0x02D4($s5)           ## 000002D4
/* 07010 808DD880 10400002 */  beq     $v0, $zero, .L808DD88C     
/* 07014 808DD884 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 07018 808DD888 A6AF02D4 */  sh      $t7, 0x02D4($s5)           ## 000002D4
.L808DD88C:
/* 0701C 808DD88C 86A202E8 */  lh      $v0, 0x02E8($s5)           ## 000002E8
/* 07020 808DD890 10400002 */  beq     $v0, $zero, .L808DD89C     
/* 07024 808DD894 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 07028 808DD898 A6B802E8 */  sh      $t8, 0x02E8($s5)           ## 000002E8
.L808DD89C:
/* 0702C 808DD89C 86A202E6 */  lh      $v0, 0x02E6($s5)           ## 000002E6
/* 07030 808DD8A0 10400002 */  beq     $v0, $zero, .L808DD8AC     
/* 07034 808DD8A4 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 07038 808DD8A8 A6B902E6 */  sh      $t9, 0x02E6($s5)           ## 000002E6
.L808DD8AC:
/* 0703C 808DD8AC 86A2019C */  lh      $v0, 0x019C($s5)           ## 0000019C
/* 07040 808DD8B0 10400002 */  beq     $v0, $zero, .L808DD8BC     
/* 07044 808DD8B4 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 07048 808DD8B8 A6A8019C */  sh      $t0, 0x019C($s5)           ## 0000019C
.L808DD8BC:
/* 0704C 808DD8BC 86A90678 */  lh      $t1, 0x0678($s5)           ## 00000678
/* 07050 808DD8C0 55200024 */  bnel    $t1, $zero, .L808DD954     
/* 07054 808DD8C4 92AE0199 */  lbu     $t6, 0x0199($s5)           ## 00000199
/* 07058 808DD8C8 0C237483 */  jal     func_808DD20C              
/* 0705C 808DD8CC 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 07060 808DD8D0 26B00610 */  addiu   $s0, $s5, 0x0610           ## $s0 = 00000610
/* 07064 808DD8D4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000610
/* 07068 808DD8D8 0C235C3C */  jal     func_808D70F0              
/* 0706C 808DD8DC 26A401FC */  addiu   $a0, $s5, 0x01FC           ## $a0 = 000001FC
/* 07070 808DD8E0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07074 808DD8E4 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 07078 808DD8E8 02C18821 */  addu    $s1, $s6, $at              
/* 0707C 808DD8EC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000001
/* 07080 808DD8F0 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 07084 808DD8F4 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 07088 808DD8F8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000610
/* 0708C 808DD8FC 86AA02D4 */  lh      $t2, 0x02D4($s5)           ## 000002D4
/* 07090 808DD900 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 07094 808DD904 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000001
/* 07098 808DD908 55400012 */  bnel    $t2, $zero, .L808DD954     
/* 0709C 808DD90C 92AE0199 */  lbu     $t6, 0x0199($s5)           ## 00000199
/* 070A0 808DD910 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 070A4 808DD914 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000610
/* 070A8 808DD918 8EA30194 */  lw      $v1, 0x0194($s5)           ## 00000194
/* 070AC 808DD91C 3C0B808E */  lui     $t3, %hi(func_808DC75C)    ## $t3 = 808E0000
/* 070B0 808DD920 256BC75C */  addiu   $t3, $t3, %lo(func_808DC75C) ## $t3 = 808DC75C
/* 070B4 808DD924 1163000A */  beq     $t3, $v1, .L808DD950       
/* 070B8 808DD928 3C0C808E */  lui     $t4, %hi(func_808DCB7C)    ## $t4 = 808E0000
/* 070BC 808DD92C 258CCB7C */  addiu   $t4, $t4, %lo(func_808DCB7C) ## $t4 = 808DCB7C
/* 070C0 808DD930 11830007 */  beq     $t4, $v1, .L808DD950       
/* 070C4 808DD934 3C0D808E */  lui     $t5, %hi(func_808DD14C)    ## $t5 = 808E0000
/* 070C8 808DD938 25ADD14C */  addiu   $t5, $t5, %lo(func_808DD14C) ## $t5 = 808DD14C
/* 070CC 808DD93C 11A30004 */  beq     $t5, $v1, .L808DD950       
/* 070D0 808DD940 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 070D4 808DD944 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000001
/* 070D8 808DD948 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 070DC 808DD94C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000610
.L808DD950:
/* 070E0 808DD950 92AE0199 */  lbu     $t6, 0x0199($s5)           ## 00000199
.L808DD954:
/* 070E4 808DD954 51C00030 */  beql    $t6, $zero, .L808DDA18     
/* 070E8 808DD958 4600C506 */  mov.s   $f20, $f24                 
/* 070EC 808DD95C 86A400B6 */  lh      $a0, 0x00B6($s5)           ## 000000B6
/* 070F0 808DD960 00042023 */  subu    $a0, $zero, $a0            
/* 070F4 808DD964 00042400 */  sll     $a0, $a0, 16               
/* 070F8 808DD968 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 070FC 808DD96C 00042403 */  sra     $a0, $a0, 16               
/* 07100 808DD970 86A400B6 */  lh      $a0, 0x00B6($s5)           ## 000000B6
/* 07104 808DD974 46000506 */  mov.s   $f20, $f0                  
/* 07108 808DD978 00042023 */  subu    $a0, $zero, $a0            
/* 0710C 808DD97C 00042400 */  sll     $a0, $a0, 16               
/* 07110 808DD980 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 07114 808DD984 00042403 */  sra     $a0, $a0, 16               
/* 07118 808DD988 C6A20064 */  lwc1    $f2, 0x0064($s5)           ## 00000064
/* 0711C 808DD98C C6AC005C */  lwc1    $f12, 0x005C($s5)          ## 0000005C
/* 07120 808DD990 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 07124 808DD994 46141102 */  mul.s   $f4, $f2, $f20             
/* 07128 808DD998 44817000 */  mtc1    $at, $f14                  ## $f14 = 300.00
/* 0712C 808DD99C 4600A287 */  neg.s   $f10, $f20                 
/* 07130 808DD9A0 460C0182 */  mul.s   $f6, $f0, $f12             
/* 07134 808DD9A4 46062200 */  add.s   $f8, $f4, $f6              
/* 07138 808DD9A8 460E4582 */  mul.s   $f22, $f8, $f14            
/* 0713C 808DD9AC 00000000 */  nop
/* 07140 808DD9B0 460C5402 */  mul.s   $f16, $f10, $f12           
/* 07144 808DD9B4 00000000 */  nop
/* 07148 808DD9B8 46020482 */  mul.s   $f18, $f0, $f2             
/* 0714C 808DD9BC 46128100 */  add.s   $f4, $f16, $f18            
/* 07150 808DD9C0 460E2182 */  mul.s   $f6, $f4, $f14             
/* 07154 808DD9C4 E7A60120 */  swc1    $f6, 0x0120($sp)           
/* 07158 808DD9C8 86A401A2 */  lh      $a0, 0x01A2($s5)           ## 000001A2
/* 0715C 808DD9CC 00800821 */  addu    $at, $a0, $zero            
/* 07160 808DD9D0 000420C0 */  sll     $a0, $a0,  3               
/* 07164 808DD9D4 00812021 */  addu    $a0, $a0, $at              
/* 07168 808DD9D8 000420C0 */  sll     $a0, $a0,  3               
/* 0716C 808DD9DC 00812023 */  subu    $a0, $a0, $at              
/* 07170 808DD9E0 000420C0 */  sll     $a0, $a0,  3               
/* 07174 808DD9E4 00812023 */  subu    $a0, $a0, $at              
/* 07178 808DD9E8 00042080 */  sll     $a0, $a0,  2               
/* 0717C 808DD9EC 00042400 */  sll     $a0, $a0, 16               
/* 07180 808DD9F0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 07184 808DD9F4 00042403 */  sra     $a0, $a0, 16               
/* 07188 808DD9F8 3C01C3FA */  lui     $at, 0xC3FA                ## $at = C3FA0000
/* 0718C 808DD9FC 44814000 */  mtc1    $at, $f8                   ## $f8 = -500.00
/* 07190 808DDA00 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 07194 808DDA04 44818000 */  mtc1    $at, $f16                  ## $f16 = 500.00
/* 07198 808DDA08 46080282 */  mul.s   $f10, $f0, $f8             
/* 0719C 808DDA0C 10000004 */  beq     $zero, $zero, .L808DDA20   
/* 071A0 808DDA10 46105501 */  sub.s   $f20, $f10, $f16           
/* 071A4 808DDA14 4600C506 */  mov.s   $f20, $f24                 
.L808DDA18:
/* 071A8 808DDA18 4600C586 */  mov.s   $f22, $f24                 
/* 071AC 808DDA1C E7B80120 */  swc1    $f24, 0x0120($sp)          
.L808DDA20:
/* 071B0 808DDA20 A2A00199 */  sb      $zero, 0x0199($s5)         ## 00000199
/* 071B4 808DDA24 4405B000 */  mfc1    $a1, $f22                  
/* 071B8 808DDA28 4406D000 */  mfc1    $a2, $f26                  
/* 071BC 808DDA2C E7B80010 */  swc1    $f24, 0x0010($sp)          
/* 071C0 808DDA30 26A4050C */  addiu   $a0, $s5, 0x050C           ## $a0 = 0000050C
/* 071C4 808DDA34 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 071C8 808DDA38 3C074416 */  lui     $a3, 0x4416                ## $a3 = 44160000
/* 071CC 808DDA3C 4406D000 */  mfc1    $a2, $f26                  
/* 071D0 808DDA40 26A40510 */  addiu   $a0, $s5, 0x0510           ## $a0 = 00000510
/* 071D4 808DDA44 8FA50120 */  lw      $a1, 0x0120($sp)           
/* 071D8 808DDA48 3C074416 */  lui     $a3, 0x4416                ## $a3 = 44160000
/* 071DC 808DDA4C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 071E0 808DDA50 E7B80010 */  swc1    $f24, 0x0010($sp)          
/* 071E4 808DDA54 4405A000 */  mfc1    $a1, $f20                  
/* 071E8 808DDA58 4406D000 */  mfc1    $a2, $f26                  
/* 071EC 808DDA5C 26A40514 */  addiu   $a0, $s5, 0x0514           ## $a0 = 00000514
/* 071F0 808DDA60 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 071F4 808DDA64 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 071F8 808DDA68 E7B80010 */  swc1    $f24, 0x0010($sp)          
/* 071FC 808DDA6C 86A201BA */  lh      $v0, 0x01BA($s5)           ## 000001BA
/* 07200 808DDA70 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 07204 808DDA74 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 07208 808DDA78 54410005 */  bnel    $v0, $at, .L808DDA90       
/* 0720C 808DDA7C 24010064 */  addiu   $at, $zero, 0x0064         ## $at = 00000064
/* 07210 808DDA80 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 07214 808DDA84 240539C7 */  addiu   $a1, $zero, 0x39C7         ## $a1 = 000039C7
/* 07218 808DDA88 86A201BA */  lh      $v0, 0x01BA($s5)           ## 000001BA
/* 0721C 808DDA8C 24010064 */  addiu   $at, $zero, 0x0064         ## $at = 00000064
.L808DDA90:
/* 07220 808DDA90 14410004 */  bne     $v0, $at, .L808DDAA4       
/* 07224 808DDA94 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 07228 808DDA98 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0722C 808DDA9C 240539D6 */  addiu   $a1, $zero, 0x39D6         ## $a1 = 000039D6
/* 07230 808DDAA0 A6A001BA */  sh      $zero, 0x01BA($s5)         ## 000001BA
.L808DDAA4:
/* 07234 808DDAA4 86AF02E6 */  lh      $t7, 0x02E6($s5)           ## 000002E6
/* 07238 808DDAA8 3C018090 */  lui     $at, %hi(D_808F803C)       ## $at = 80900000
/* 0723C 808DDAAC 55E00005 */  bnel    $t7, $zero, .L808DDAC4     
/* 07240 808DDAB0 24110001 */  addiu   $s1, $zero, 0x0001         ## $s1 = 00000001
/* 07244 808DDAB4 86B802E8 */  lh      $t8, 0x02E8($s5)           ## 000002E8
/* 07248 808DDAB8 53000029 */  beql    $t8, $zero, .L808DDB60     
/* 0724C 808DDABC 92AC019F */  lbu     $t4, 0x019F($s5)           ## 0000019F
/* 07250 808DDAC0 24110001 */  addiu   $s1, $zero, 0x0001         ## $s1 = 00000001
.L808DDAC4:
/* 07254 808DDAC4 C434803C */  lwc1    $f20, %lo(D_808F803C)($at) 
/* 07258 808DDAC8 0011C840 */  sll     $t9, $s1,  1               
.L808DDACC:
/* 0725C 808DDACC 02B91021 */  addu    $v0, $s5, $t9              
/* 07260 808DDAD0 844304E4 */  lh      $v1, 0x04E4($v0)           ## 000004E4
/* 07264 808DDAD4 00115080 */  sll     $t2, $s1,  2               
/* 07268 808DDAD8 02AA2021 */  addu    $a0, $s5, $t2              
/* 0726C 808DDADC 1060000B */  beq     $v1, $zero, .L808DDB0C     
/* 07270 808DDAE0 2468FFFF */  addiu   $t0, $v1, 0xFFFF           ## $t0 = FFFFFFFF
/* 07274 808DDAE4 00114880 */  sll     $t1, $s1,  2               
/* 07278 808DDAE8 A44804E4 */  sh      $t0, 0x04E4($v0)           ## 000004E4
/* 0727C 808DDAEC 02A92021 */  addu    $a0, $s5, $t1              
/* 07280 808DDAF0 4406D000 */  mfc1    $a2, $f26                  
/* 07284 808DDAF4 2484049C */  addiu   $a0, $a0, 0x049C           ## $a0 = 0000049C
/* 07288 808DDAF8 8EA50508 */  lw      $a1, 0x0508($s5)           ## 00000508
/* 0728C 808DDAFC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 07290 808DDB00 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 07294 808DDB04 10000006 */  beq     $zero, $zero, .L808DDB20   
/* 07298 808DDB08 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000002
.L808DDB0C:
/* 0729C 808DDB0C 4405D000 */  mfc1    $a1, $f26                  
/* 072A0 808DDB10 4406A000 */  mfc1    $a2, $f20                  
/* 072A4 808DDB14 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 072A8 808DDB18 2484049C */  addiu   $a0, $a0, 0x049C           ## $a0 = 0000049C
/* 072AC 808DDB1C 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000003
.L808DDB20:
/* 072B0 808DDB20 00118C00 */  sll     $s1, $s1, 16               
/* 072B4 808DDB24 00118C03 */  sra     $s1, $s1, 16               
/* 072B8 808DDB28 2A210012 */  slti    $at, $s1, 0x0012           
/* 072BC 808DDB2C 5420FFE7 */  bnel    $at, $zero, .L808DDACC     
/* 072C0 808DDB30 0011C840 */  sll     $t9, $s1,  1               
/* 072C4 808DDB34 86AB02E8 */  lh      $t3, 0x02E8($s5)           ## 000002E8
/* 072C8 808DDB38 266400E4 */  addiu   $a0, $s3, 0x00E4           ## $a0 = 000000E4
/* 072CC 808DDB3C 51600008 */  beql    $t3, $zero, .L808DDB60     
/* 072D0 808DDB40 92AC019F */  lbu     $t4, 0x019F($s5)           ## 0000019F
/* 072D4 808DDB44 0C01E245 */  jal     func_80078914              
/* 072D8 808DDB48 24050068 */  addiu   $a1, $zero, 0x0068         ## $a1 = 00000068
/* 072DC 808DDB4C 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 072E0 808DDB50 3C05442F */  lui     $a1, 0x442F                ## $a1 = 442F0000
/* 072E4 808DDB54 0C235AFC */  jal     func_808D6BF0              
/* 072E8 808DDB58 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 072EC 808DDB5C 92AC019F */  lbu     $t4, 0x019F($s5)           ## 0000019F
.L808DDB60:
/* 072F0 808DDB60 27B000E8 */  addiu   $s0, $sp, 0x00E8           ## $s0 = FFFFFFB8
/* 072F4 808DDB64 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 072F8 808DDB68 51800017 */  beql    $t4, $zero, .L808DDBC8     
/* 072FC 808DDB6C 86A2026C */  lh      $v0, 0x026C($s5)           ## 0000026C
/* 07300 808DDB70 8EAE0024 */  lw      $t6, 0x0024($s5)           ## 00000024
/* 07304 808DDB74 A2A0019F */  sb      $zero, 0x019F($s5)         ## 0000019F
/* 07308 808DDB78 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 0730C 808DDB7C AE0E0000 */  sw      $t6, 0x0000($s0)           ## FFFFFFB8
/* 07310 808DDB80 8EAD0028 */  lw      $t5, 0x0028($s5)           ## 00000028
/* 07314 808DDB84 3C073F33 */  lui     $a3, 0x3F33                ## $a3 = 3F330000
/* 07318 808DDB88 34E73333 */  ori     $a3, $a3, 0x3333           ## $a3 = 3F333333
/* 0731C 808DDB8C AE0D0004 */  sw      $t5, 0x0004($s0)           ## FFFFFFBC
/* 07320 808DDB90 8EAE002C */  lw      $t6, 0x002C($s5)           ## 0000002C
/* 07324 808DDB94 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 07328 808DDB98 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFFB8
/* 0732C 808DDB9C AE0E0008 */  sw      $t6, 0x0008($s0)           ## FFFFFFC0
/* 07330 808DDBA0 0C235B58 */  jal     func_808D6D60              
/* 07334 808DDBA4 E7B800EC */  swc1    $f24, 0x00EC($sp)          
/* 07338 808DDBA8 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 0733C 808DDBAC 3C073F4C */  lui     $a3, 0x3F4C                ## $a3 = 3F4C0000
/* 07340 808DDBB0 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3F4CCCCD
/* 07344 808DDBB4 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 07348 808DDBB8 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 0734C 808DDBBC 0C235B58 */  jal     func_808D6D60              
/* 07350 808DDBC0 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFFB8
/* 07354 808DDBC4 86A2026C */  lh      $v0, 0x026C($s5)           ## 0000026C
.L808DDBC8:
/* 07358 808DDBC8 1040001F */  beq     $v0, $zero, .L808DDC48     
/* 0735C 808DDBCC 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 07360 808DDBD0 A6AF026C */  sh      $t7, 0x026C($s5)           ## 0000026C
/* 07364 808DDBD4 86B8026C */  lh      $t8, 0x026C($s5)           ## 0000026C
/* 07368 808DDBD8 17000006 */  bne     $t8, $zero, .L808DDBF4     
/* 0736C 808DDBDC 00000000 */  nop
/* 07370 808DDBE0 4405D000 */  mfc1    $a1, $f26                  
/* 07374 808DDBE4 4406C000 */  mfc1    $a2, $f24                  
/* 07378 808DDBE8 4407C000 */  mfc1    $a3, $f24                  
/* 0737C 808DDBEC 0C235B2F */  jal     func_808D6CBC              
/* 07380 808DDBF0 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
.L808DDBF4:
/* 07384 808DDBF4 3C018090 */  lui     $at, %hi(D_808F8040)       ## $at = 80900000
/* 07388 808DDBF8 C4348040 */  lwc1    $f20, %lo(D_808F8040)($at) 
/* 0738C 808DDBFC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 07390 808DDC00 4600A306 */  mov.s   $f12, $f20                 
/* 07394 808DDC04 86B9026C */  lh      $t9, 0x026C($s5)           ## 0000026C
/* 07398 808DDC08 3C01808E */  lui     $at, %hi(D_808E4D44)       ## $at = 808E0000
/* 0739C 808DDC0C C6A60270 */  lwc1    $f6, 0x0270($s5)           ## 00000270
/* 073A0 808DDC10 00194080 */  sll     $t0, $t9,  2               
/* 073A4 808DDC14 00280821 */  addu    $at, $at, $t0              
/* 073A8 808DDC18 C4324D44 */  lwc1    $f18, %lo(D_808E4D44)($at) 
/* 073AC 808DDC1C 3C018090 */  lui     $at, %hi(D_808F8044)       ## $at = 80900000
/* 073B0 808DDC20 C42A8044 */  lwc1    $f10, %lo(D_808F8044)($at) 
/* 073B4 808DDC24 46149102 */  mul.s   $f4, $f18, $f20            
/* 073B8 808DDC28 4405D000 */  mfc1    $a1, $f26                  
/* 073BC 808DDC2C 460A0400 */  add.s   $f16, $f0, $f10            
/* 073C0 808DDC30 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 073C4 808DDC34 44078000 */  mfc1    $a3, $f16                  
/* 073C8 808DDC38 46062200 */  add.s   $f8, $f4, $f6              
/* 073CC 808DDC3C 44064000 */  mfc1    $a2, $f8                   
/* 073D0 808DDC40 0C235B2F */  jal     func_808D6CBC              
/* 073D4 808DDC44 00000000 */  nop
.L808DDC48:
/* 073D8 808DDC48 86A2019C */  lh      $v0, 0x019C($s5)           ## 0000019C
/* 073DC 808DDC4C 5040004D */  beql    $v0, $zero, .L808DDD84     
/* 073E0 808DDC50 8ED01C4C */  lw      $s0, 0x1C4C($s6)           ## 00001C4C
/* 073E4 808DDC54 92A9019E */  lbu     $t1, 0x019E($s5)           ## 0000019E
/* 073E8 808DDC58 29210004 */  slti    $at, $t1, 0x0004           
/* 073EC 808DDC5C 50200049 */  beql    $at, $zero, .L808DDD84     
/* 073F0 808DDC60 8ED01C4C */  lw      $s0, 0x1C4C($s6)           ## 00001C4C
/* 073F4 808DDC64 92AA019A */  lbu     $t2, 0x019A($s5)           ## 0000019A
/* 073F8 808DDC68 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 073FC 808DDC6C 55400025 */  bnel    $t2, $zero, .L808DDD04     
/* 07400 808DDC70 2841001E */  slti    $at, $v0, 0x001E           
/* 07404 808DDC74 14410022 */  bne     $v0, $at, .L808DDD00       
/* 07408 808DDC78 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 0740C 808DDC7C 3C01C334 */  lui     $at, 0xC334                ## $at = C3340000
/* 07410 808DDC80 4481B000 */  mtc1    $at, $f22                  ## $f22 = -180.00
/* 07414 808DDC84 A2AB019A */  sb      $t3, 0x019A($s5)           ## 0000019A
/* 07418 808DDC88 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 0741C 808DDC8C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 120.00
/* 07420 808DDC90 E7B800D0 */  swc1    $f24, 0x00D0($sp)          
/* 07424 808DDC94 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 07428 808DDC98 27B100CC */  addiu   $s1, $sp, 0x00CC           ## $s1 = FFFFFF9C
/* 0742C 808DDC9C E7B600CC */  swc1    $f22, 0x00CC($sp)          
.L808DDCA0:
/* 07430 808DDCA0 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 07434 808DDCA4 E7B600D4 */  swc1    $f22, 0x00D4($sp)          
.L808DDCA8:
/* 07438 808DDCA8 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 0743C 808DDCAC 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 07440 808DDCB0 0C2383D3 */  jal     func_808E0F4C              
/* 07444 808DDCB4 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFF9C
/* 07448 808DDCB8 C7B200D4 */  lwc1    $f18, 0x00D4($sp)          
/* 0744C 808DDCBC 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 07450 808DDCC0 00108400 */  sll     $s0, $s0, 16               
/* 07454 808DDCC4 46149100 */  add.s   $f4, $f18, $f20            
/* 07458 808DDCC8 00108403 */  sra     $s0, $s0, 16               
/* 0745C 808DDCCC 2A010004 */  slti    $at, $s0, 0x0004           
/* 07460 808DDCD0 1420FFF5 */  bne     $at, $zero, .L808DDCA8     
/* 07464 808DDCD4 E7A400D4 */  swc1    $f4, 0x00D4($sp)           
/* 07468 808DDCD8 C7A600CC */  lwc1    $f6, 0x00CC($sp)           
/* 0746C 808DDCDC 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 07470 808DDCE0 00129400 */  sll     $s2, $s2, 16               
/* 07474 808DDCE4 46143200 */  add.s   $f8, $f6, $f20             
/* 07478 808DDCE8 00129403 */  sra     $s2, $s2, 16               
/* 0747C 808DDCEC 2A410004 */  slti    $at, $s2, 0x0004           
/* 07480 808DDCF0 1420FFEB */  bne     $at, $zero, .L808DDCA0     
/* 07484 808DDCF4 E7A800CC */  swc1    $f8, 0x00CC($sp)           
/* 07488 808DDCF8 10000022 */  beq     $zero, $zero, .L808DDD84   
/* 0748C 808DDCFC 8ED01C4C */  lw      $s0, 0x1C4C($s6)           ## 00001C4C
.L808DDD00:
/* 07490 808DDD00 2841001E */  slti    $at, $v0, 0x001E           
.L808DDD04:
/* 07494 808DDD04 5020001F */  beql    $at, $zero, .L808DDD84     
/* 07498 808DDD08 8ED01C4C */  lw      $s0, 0x1C4C($s6)           ## 00001C4C
/* 0749C 808DDD0C E7B800D8 */  swc1    $f24, 0x00D8($sp)          
/* 074A0 808DDD10 E7B800DC */  swc1    $f24, 0x00DC($sp)          
/* 074A4 808DDD14 86AC019C */  lh      $t4, 0x019C($s5)           ## 0000019C
/* 074A8 808DDD18 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 074AC 808DDD1C 44815000 */  mtc1    $at, $f10                  ## $f10 = 30.00
/* 074B0 808DDD20 448C8000 */  mtc1    $t4, $f16                  ## $f16 = 0.00
/* 074B4 808DDD24 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 074B8 808DDD28 44813000 */  mtc1    $at, $f6                   ## $f6 = 15.00
/* 074BC 808DDD2C 468084A0 */  cvt.s.w $f18, $f16                 
/* 074C0 808DDD30 3C018090 */  lui     $at, %hi(D_808F8048)       ## $at = 80900000
/* 074C4 808DDD34 C42C8048 */  lwc1    $f12, %lo(D_808F8048)($at) 
/* 074C8 808DDD38 46125101 */  sub.s   $f4, $f10, $f18            
/* 074CC 808DDD3C 46062202 */  mul.s   $f8, $f4, $f6              
/* 074D0 808DDD40 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 074D4 808DDD44 E7A800E0 */  swc1    $f8, 0x00E0($sp)           
/* 074D8 808DDD48 46000306 */  mov.s   $f12, $f0                  
/* 074DC 808DDD4C 0C034348 */  jal     Matrix_RotateY              
/* 074E0 808DDD50 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 074E4 808DDD54 27B100CC */  addiu   $s1, $sp, 0x00CC           ## $s1 = FFFFFF9C
/* 074E8 808DDD58 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFF9C
/* 074EC 808DDD5C 0C0346BD */  jal     Matrix_MultVec3f              
/* 074F0 808DDD60 27A400D8 */  addiu   $a0, $sp, 0x00D8           ## $a0 = FFFFFFA8
/* 074F4 808DDD64 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 074F8 808DDD68 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 074FC 808DDD6C 0C2383D3 */  jal     func_808E0F4C              
/* 07500 808DDD70 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFF9C
/* 07504 808DDD74 92AD019E */  lbu     $t5, 0x019E($s5)           ## 0000019E
/* 07508 808DDD78 01A27021 */  addu    $t6, $t5, $v0              
/* 0750C 808DDD7C A2AE019E */  sb      $t6, 0x019E($s5)           ## 0000019E
/* 07510 808DDD80 8ED01C4C */  lw      $s0, 0x1C4C($s6)           ## 00001C4C
.L808DDD84:
/* 07514 808DDD84 3C018090 */  lui     $at, %hi(D_808F804C)       ## $at = 80900000
/* 07518 808DDD88 12000031 */  beq     $s0, $zero, .L808DDE50     
/* 0751C 808DDD8C 00000000 */  nop
/* 07520 808DDD90 C436804C */  lwc1    $f22, %lo(D_808F804C)($at) 
/* 07524 808DDD94 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 07528 808DDD98 4481A000 */  mtc1    $at, $f20                  ## $f20 = 60.00
/* 0752C 808DDD9C 27B400A4 */  addiu   $s4, $sp, 0x00A4           ## $s4 = FFFFFF74
/* 07530 808DDDA0 27B300B0 */  addiu   $s3, $sp, 0x00B0           ## $s3 = FFFFFF80
/* 07534 808DDDA4 27B200BC */  addiu   $s2, $sp, 0x00BC           ## $s2 = FFFFFF8C
/* 07538 808DDDA8 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001D
.L808DDDAC:
/* 0753C 808DDDAC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 07540 808DDDB0 51E10004 */  beql    $t7, $at, .L808DDDC4       
/* 07544 808DDDB4 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 07548 808DDDB8 10000023 */  beq     $zero, $zero, .L808DDE48   
/* 0754C 808DDDBC 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000125
/* 07550 808DDDC0 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
.L808DDDC4:
/* 07554 808DDDC4 44918000 */  mtc1    $s1, $f16                  ## $f16 = 0.00
.L808DDDC8:
/* 07558 808DDDC8 E7B800BC */  swc1    $f24, 0x00BC($sp)          
/* 0755C 808DDDCC E7B800C0 */  swc1    $f24, 0x00C0($sp)          
/* 07560 808DDDD0 468082A0 */  cvt.s.w $f10, $f16                 
/* 07564 808DDDD4 E7B400C4 */  swc1    $f20, 0x00C4($sp)          
/* 07568 808DDDD8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0756C 808DDDDC 46165302 */  mul.s   $f12, $f10, $f22           
/* 07570 808DDDE0 0C034348 */  jal     Matrix_RotateY              
/* 07574 808DDDE4 00000000 */  nop
/* 07578 808DDDE8 02402025 */  or      $a0, $s2, $zero            ## $a0 = FFFFFF8C
/* 0757C 808DDDEC 0C0346BD */  jal     Matrix_MultVec3f              
/* 07580 808DDDF0 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFF80
/* 07584 808DDDF4 C6120024 */  lwc1    $f18, 0x0024($s0)          ## 00000025
/* 07588 808DDDF8 C7A400B0 */  lwc1    $f4, 0x00B0($sp)           
/* 0758C 808DDDFC C7AA00B8 */  lwc1    $f10, 0x00B8($sp)          
/* 07590 808DDE00 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 07594 808DDE04 46049180 */  add.s   $f6, $f18, $f4             
/* 07598 808DDE08 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 0759C 808DDE0C 02803025 */  or      $a2, $s4, $zero            ## $a2 = FFFFFF74
/* 075A0 808DDE10 E7A600A4 */  swc1    $f6, 0x00A4($sp)           
/* 075A4 808DDE14 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000029
/* 075A8 808DDE18 E7A800A8 */  swc1    $f8, 0x00A8($sp)           
/* 075AC 808DDE1C C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002D
/* 075B0 808DDE20 460A8480 */  add.s   $f18, $f16, $f10           
/* 075B4 808DDE24 0C2383D3 */  jal     func_808E0F4C              
/* 075B8 808DDE28 E7B200AC */  swc1    $f18, 0x00AC($sp)          
/* 075BC 808DDE2C 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 075C0 808DDE30 00118C00 */  sll     $s1, $s1, 16               
/* 075C4 808DDE34 00118C03 */  sra     $s1, $s1, 16               
/* 075C8 808DDE38 2A210008 */  slti    $at, $s1, 0x0008           
/* 075CC 808DDE3C 5420FFE2 */  bnel    $at, $zero, .L808DDDC8     
/* 075D0 808DDE40 44918000 */  mtc1    $s1, $f16                  ## $f16 = 0.00
/* 075D4 808DDE44 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000125
.L808DDE48:
/* 075D8 808DDE48 5600FFD8 */  bnel    $s0, $zero, .L808DDDAC     
/* 075DC 808DDE4C 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001D
.L808DDE50:
/* 075E0 808DDE50 0C238D59 */  jal     func_808E3564              
/* 075E4 808DDE54 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 075E8 808DDE58 8EC21C64 */  lw      $v0, 0x1C64($s6)           ## 00001C64
/* 075EC 808DDE5C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 075F0 808DDE60 24030106 */  addiu   $v1, $zero, 0x0106         ## $v1 = 00000106
/* 075F4 808DDE64 1040000E */  beq     $v0, $zero, .L808DDEA0     
/* 075F8 808DDE68 00360821 */  addu    $at, $at, $s6              
/* 075FC 808DDE6C 84580000 */  lh      $t8, 0x0000($v0)           ## 00000000
.L808DDE70:
/* 07600 808DDE70 50780004 */  beql    $v1, $t8, .L808DDE84       
/* 07604 808DDE74 9059016E */  lbu     $t9, 0x016E($v0)           ## 0000016E
/* 07608 808DDE78 10000007 */  beq     $zero, $zero, .L808DDE98   
/* 0760C 808DDE7C 8C420124 */  lw      $v0, 0x0124($v0)           ## 00000124
/* 07610 808DDE80 9059016E */  lbu     $t9, 0x016E($v0)           ## 0000016E
.L808DDE84:
/* 07614 808DDE84 13200003 */  beq     $t9, $zero, .L808DDE94     
/* 07618 808DDE88 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 0761C 808DDE8C 10000004 */  beq     $zero, $zero, .L808DDEA0   
/* 07620 808DDE90 A2A801A0 */  sb      $t0, 0x01A0($s5)           ## 000001A0
.L808DDE94:
/* 07624 808DDE94 8C420124 */  lw      $v0, 0x0124($v0)           ## 00000124
.L808DDE98:
/* 07628 808DDE98 5440FFF5 */  bnel    $v0, $zero, .L808DDE70     
/* 0762C 808DDE9C 84580000 */  lh      $t8, 0x0000($v0)           ## 00000000
.L808DDEA0:
/* 07630 808DDEA0 A0200AE3 */  sb      $zero, 0x0AE3($at)         ## 00010AE3
/* 07634 808DDEA4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07638 808DDEA8 00360821 */  addu    $at, $at, $s6              
/* 0763C 808DDEAC A0200AE2 */  sb      $zero, 0x0AE2($at)         ## 00010AE2
/* 07640 808DDEB0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07644 808DDEB4 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
/* 07648 808DDEB8 00360821 */  addu    $at, $at, $s6              
/* 0764C 808DDEBC A0230B00 */  sb      $v1, 0x0B00($at)           ## 00010B00
/* 07650 808DDEC0 82A201A0 */  lb      $v0, 0x01A0($s5)           ## 000001A0
/* 07654 808DDEC4 28410042 */  slti    $at, $v0, 0x0042           
/* 07658 808DDEC8 14200006 */  bne     $at, $zero, .L808DDEE4     
/* 0765C 808DDECC 24490001 */  addiu   $t1, $v0, 0x0001           ## $t1 = 00000001
/* 07660 808DDED0 2401004B */  addiu   $at, $zero, 0x004B         ## $at = 0000004B
/* 07664 808DDED4 10410080 */  beq     $v0, $at, .L808DE0D8       
/* 07668 808DDED8 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 0766C 808DDEDC 10000135 */  beq     $zero, $zero, .L808DE3B4   
/* 07670 808DDEE0 C6A00714 */  lwc1    $f0, 0x0714($s5)           ## 00000714
.L808DDEE4:
/* 07674 808DDEE4 28410024 */  slti    $at, $v0, 0x0024           
/* 07678 808DDEE8 14200005 */  bne     $at, $zero, .L808DDF00     
/* 0767C 808DDEEC 24010041 */  addiu   $at, $zero, 0x0041         ## $at = 00000041
/* 07680 808DDEF0 10410061 */  beq     $v0, $at, .L808DE078       
/* 07684 808DDEF4 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
/* 07688 808DDEF8 1000012E */  beq     $zero, $zero, .L808DE3B4   
/* 0768C 808DDEFC C6A00714 */  lwc1    $f0, 0x0714($s5)           ## 00000714
.L808DDF00:
/* 07690 808DDF00 2D210025 */  sltiu   $at, $t1, 0x0025           
/* 07694 808DDF04 1020012A */  beq     $at, $zero, .L808DE3B0     
/* 07698 808DDF08 00094880 */  sll     $t1, $t1,  2               
/* 0769C 808DDF0C 3C018090 */  lui     $at, %hi(jtbl_808F8050)       ## $at = 80900000
/* 076A0 808DDF10 00290821 */  addu    $at, $at, $t1              
/* 076A4 808DDF14 8C298050 */  lw      $t1, %lo(jtbl_808F8050)($at)  
/* 076A8 808DDF18 01200008 */  jr      $t1                        
/* 076AC 808DDF1C 00000000 */  nop
glabel L808DDF20
/* 076B0 808DDF20 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 076B4 808DDF24 34210AFC */  ori     $at, $at, 0x0AFC           ## $at = 00010AFC
/* 076B8 808DDF28 4405C000 */  mfc1    $a1, $f24                  
/* 076BC 808DDF2C 4406D000 */  mfc1    $a2, $f26                  
/* 076C0 808DDF30 3C073CA3 */  lui     $a3, 0x3CA3                ## $a3 = 3CA30000
/* 076C4 808DDF34 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3CA3D70A
/* 076C8 808DDF38 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 076CC 808DDF3C 02C12021 */  addu    $a0, $s6, $at              
/* 076D0 808DDF40 1000011C */  beq     $zero, $zero, .L808DE3B4   
/* 076D4 808DDF44 C6A00714 */  lwc1    $f0, 0x0714($s5)           ## 00000714
glabel L808DDF48
/* 076D8 808DDF48 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 076DC 808DDF4C 00360821 */  addu    $at, $at, $s6              
/* 076E0 808DDF50 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 076E4 808DDF54 A02A0AE1 */  sb      $t2, 0x0AE1($at)           ## 00010AE1
/* 076E8 808DDF58 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 076EC 808DDF5C 34210AFC */  ori     $at, $at, 0x0AFC           ## $at = 00010AFC
/* 076F0 808DDF60 4405D000 */  mfc1    $a1, $f26                  
/* 076F4 808DDF64 4406D000 */  mfc1    $a2, $f26                  
/* 076F8 808DDF68 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 076FC 808DDF6C 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 07700 808DDF70 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 07704 808DDF74 02C12021 */  addu    $a0, $s6, $at              
/* 07708 808DDF78 1000010E */  beq     $zero, $zero, .L808DE3B4   
/* 0770C 808DDF7C C6A00714 */  lwc1    $f0, 0x0714($s5)           ## 00000714
glabel L808DDF80
/* 07710 808DDF80 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07714 808DDF84 00360821 */  addu    $at, $at, $s6              
/* 07718 808DDF88 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 0771C 808DDF8C A02B0AE1 */  sb      $t3, 0x0AE1($at)           ## 00010AE1
/* 07720 808DDF90 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07724 808DDF94 34210AFC */  ori     $at, $at, 0x0AFC           ## $at = 00010AFC
/* 07728 808DDF98 4405D000 */  mfc1    $a1, $f26                  
/* 0772C 808DDF9C 4406D000 */  mfc1    $a2, $f26                  
/* 07730 808DDFA0 3C073CA3 */  lui     $a3, 0x3CA3                ## $a3 = 3CA30000
/* 07734 808DDFA4 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3CA3D70A
/* 07738 808DDFA8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0773C 808DDFAC 02C12021 */  addu    $a0, $s6, $at              
/* 07740 808DDFB0 10000100 */  beq     $zero, $zero, .L808DE3B4   
/* 07744 808DDFB4 C6A00714 */  lwc1    $f0, 0x0714($s5)           ## 00000714
glabel L808DDFB8
/* 07748 808DDFB8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0774C 808DDFBC 00360821 */  addu    $at, $at, $s6              
/* 07750 808DDFC0 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 07754 808DDFC4 A02C0AE1 */  sb      $t4, 0x0AE1($at)           ## 00010AE1
/* 07758 808DDFC8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0775C 808DDFCC 00360821 */  addu    $at, $at, $s6              
/* 07760 808DDFD0 100000F7 */  beq     $zero, $zero, .L808DE3B0   
/* 07764 808DDFD4 E43A0AFC */  swc1    $f26, 0x0AFC($at)          ## 00010AFC
glabel L808DDFD8
/* 07768 808DDFD8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0776C 808DDFDC 00360821 */  addu    $at, $at, $s6              
/* 07770 808DDFE0 A0200AE1 */  sb      $zero, 0x0AE1($at)         ## 00010AE1
/* 07774 808DDFE4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07778 808DDFE8 00360821 */  addu    $at, $at, $s6              
/* 0777C 808DDFEC 100000F0 */  beq     $zero, $zero, .L808DE3B0   
/* 07780 808DDFF0 E43A0AFC */  swc1    $f26, 0x0AFC($at)          ## 00010AFC
glabel L808DDFF4
/* 07784 808DDFF4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07788 808DDFF8 00360821 */  addu    $at, $at, $s6              
/* 0778C 808DDFFC 240D0004 */  addiu   $t5, $zero, 0x0004         ## $t5 = 00000004
/* 07790 808DE000 A02D0AE1 */  sb      $t5, 0x0AE1($at)           ## 00010AE1
/* 07794 808DE004 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07798 808DE008 00360821 */  addu    $at, $at, $s6              
/* 0779C 808DE00C 100000E8 */  beq     $zero, $zero, .L808DE3B0   
/* 077A0 808DE010 E43A0AFC */  swc1    $f26, 0x0AFC($at)          ## 00010AFC
glabel L808DE014
/* 077A4 808DE014 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 077A8 808DE018 00360821 */  addu    $at, $at, $s6              
/* 077AC 808DE01C 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 077B0 808DE020 A02E0AE2 */  sb      $t6, 0x0AE2($at)           ## 00010AE2
/* 077B4 808DE024 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 077B8 808DE028 00360821 */  addu    $at, $at, $s6              
/* 077BC 808DE02C 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 077C0 808DE030 A02F0AE1 */  sb      $t7, 0x0AE1($at)           ## 00010AE1
/* 077C4 808DE034 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 077C8 808DE038 34210AFC */  ori     $at, $at, 0x0AFC           ## $at = 00010AFC
/* 077CC 808DE03C 4405D000 */  mfc1    $a1, $f26                  
/* 077D0 808DE040 3C063D99 */  lui     $a2, 0x3D99                ## $a2 = 3D990000
/* 077D4 808DE044 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3D99999A
/* 077D8 808DE048 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 077DC 808DE04C 02C12021 */  addu    $a0, $s6, $at              
/* 077E0 808DE050 100000D8 */  beq     $zero, $zero, .L808DE3B4   
/* 077E4 808DE054 C6A00714 */  lwc1    $f0, 0x0714($s5)           ## 00000714
glabel L808DE058
/* 077E8 808DE058 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 077EC 808DE05C 00360821 */  addu    $at, $at, $s6              
/* 077F0 808DE060 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 077F4 808DE064 A0380AE2 */  sb      $t8, 0x0AE2($at)           ## 00010AE2
/* 077F8 808DE068 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 077FC 808DE06C 00360821 */  addu    $at, $at, $s6              
/* 07800 808DE070 100000CF */  beq     $zero, $zero, .L808DE3B0   
/* 07804 808DE074 E4380AFC */  swc1    $f24, 0x0AFC($at)          ## 00010AFC
.L808DE078:
/* 07808 808DE078 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0780C 808DE07C 00360821 */  addu    $at, $at, $s6              
/* 07810 808DE080 A0390AE2 */  sb      $t9, 0x0AE2($at)           ## 00010AE2
/* 07814 808DE084 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07818 808DE088 00360821 */  addu    $at, $at, $s6              
/* 0781C 808DE08C 24080006 */  addiu   $t0, $zero, 0x0006         ## $t0 = 00000006
/* 07820 808DE090 A0280AE1 */  sb      $t0, 0x0AE1($at)           ## 00010AE1
/* 07824 808DE094 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07828 808DE098 34210AFC */  ori     $at, $at, 0x0AFC           ## $at = 00010AFC
/* 0782C 808DE09C 4405D000 */  mfc1    $a1, $f26                  
/* 07830 808DE0A0 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 07834 808DE0A4 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 07838 808DE0A8 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 0783C 808DE0AC 02C12021 */  addu    $a0, $s6, $at              
/* 07840 808DE0B0 100000C0 */  beq     $zero, $zero, .L808DE3B4   
/* 07844 808DE0B4 C6A00714 */  lwc1    $f0, 0x0714($s5)           ## 00000714
glabel L808DE0B8
/* 07848 808DE0B8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0784C 808DE0BC 00360821 */  addu    $at, $at, $s6              
/* 07850 808DE0C0 24090007 */  addiu   $t1, $zero, 0x0007         ## $t1 = 00000007
/* 07854 808DE0C4 A0290AE2 */  sb      $t1, 0x0AE2($at)           ## 00010AE2
/* 07858 808DE0C8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0785C 808DE0CC 00360821 */  addu    $at, $at, $s6              
/* 07860 808DE0D0 100000B7 */  beq     $zero, $zero, .L808DE3B0   
/* 07864 808DE0D4 E4380AFC */  swc1    $f24, 0x0AFC($at)          ## 00010AFC
.L808DE0D8:
/* 07868 808DE0D8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0786C 808DE0DC 00360821 */  addu    $at, $at, $s6              
/* 07870 808DE0E0 A02A0AE2 */  sb      $t2, 0x0AE2($at)           ## 00010AE2
/* 07874 808DE0E4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07878 808DE0E8 00360821 */  addu    $at, $at, $s6              
/* 0787C 808DE0EC 240B0008 */  addiu   $t3, $zero, 0x0008         ## $t3 = 00000008
/* 07880 808DE0F0 A02B0AE1 */  sb      $t3, 0x0AE1($at)           ## 00010AE1
/* 07884 808DE0F4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07888 808DE0F8 34210AFC */  ori     $at, $at, 0x0AFC           ## $at = 00010AFC
/* 0788C 808DE0FC 4405D000 */  mfc1    $a1, $f26                  
/* 07890 808DE100 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 07894 808DE104 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 07898 808DE108 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 0789C 808DE10C 02C12021 */  addu    $a0, $s6, $at              
/* 078A0 808DE110 100000A8 */  beq     $zero, $zero, .L808DE3B4   
/* 078A4 808DE114 C6A00714 */  lwc1    $f0, 0x0714($s5)           ## 00000714
glabel L808DE118
/* 078A8 808DE118 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 078AC 808DE11C 00360821 */  addu    $at, $at, $s6              
/* 078B0 808DE120 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 078B4 808DE124 A02C0AE2 */  sb      $t4, 0x0AE2($at)           ## 00010AE2
/* 078B8 808DE128 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 078BC 808DE12C 00360821 */  addu    $at, $at, $s6              
/* 078C0 808DE130 240D0009 */  addiu   $t5, $zero, 0x0009         ## $t5 = 00000009
/* 078C4 808DE134 A02D0AE1 */  sb      $t5, 0x0AE1($at)           ## 00010AE1
/* 078C8 808DE138 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 078CC 808DE13C 34210AFC */  ori     $at, $at, 0x0AFC           ## $at = 00010AFC
/* 078D0 808DE140 4405D000 */  mfc1    $a1, $f26                  
/* 078D4 808DE144 4406D000 */  mfc1    $a2, $f26                  
/* 078D8 808DE148 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 078DC 808DE14C 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3D4CCCCD
/* 078E0 808DE150 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 078E4 808DE154 02C12021 */  addu    $a0, $s6, $at              
/* 078E8 808DE158 10000096 */  beq     $zero, $zero, .L808DE3B4   
/* 078EC 808DE15C C6A00714 */  lwc1    $f0, 0x0714($s5)           ## 00000714
glabel L808DE160
/* 078F0 808DE160 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 078F4 808DE164 00360821 */  addu    $at, $at, $s6              
/* 078F8 808DE168 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 078FC 808DE16C A02E0AE2 */  sb      $t6, 0x0AE2($at)           ## 00010AE2
/* 07900 808DE170 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07904 808DE174 00360821 */  addu    $at, $at, $s6              
/* 07908 808DE178 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 0790C 808DE17C A02F0AE1 */  sb      $t7, 0x0AE1($at)           ## 00010AE1
/* 07910 808DE180 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07914 808DE184 34210AFC */  ori     $at, $at, 0x0AFC           ## $at = 00010AFC
/* 07918 808DE188 4405D000 */  mfc1    $a1, $f26                  
/* 0791C 808DE18C 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 07920 808DE190 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 07924 808DE194 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 07928 808DE198 02C12021 */  addu    $a0, $s6, $at              
/* 0792C 808DE19C 10000085 */  beq     $zero, $zero, .L808DE3B4   
/* 07930 808DE1A0 C6A00714 */  lwc1    $f0, 0x0714($s5)           ## 00000714
glabel L808DE1A4
/* 07934 808DE1A4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07938 808DE1A8 00360821 */  addu    $at, $at, $s6              
/* 0793C 808DE1AC 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 07940 808DE1B0 A0380AE2 */  sb      $t8, 0x0AE2($at)           ## 00010AE2
/* 07944 808DE1B4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07948 808DE1B8 00360821 */  addu    $at, $at, $s6              
/* 0794C 808DE1BC 2419000B */  addiu   $t9, $zero, 0x000B         ## $t9 = 0000000B
/* 07950 808DE1C0 A0390AE1 */  sb      $t9, 0x0AE1($at)           ## 00010AE1
/* 07954 808DE1C4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07958 808DE1C8 34210AFC */  ori     $at, $at, 0x0AFC           ## $at = 00010AFC
/* 0795C 808DE1CC 4405D000 */  mfc1    $a1, $f26                  
/* 07960 808DE1D0 4406D000 */  mfc1    $a2, $f26                  
/* 07964 808DE1D4 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 07968 808DE1D8 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3D4CCCCD
/* 0796C 808DE1DC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 07970 808DE1E0 02C12021 */  addu    $a0, $s6, $at              
/* 07974 808DE1E4 10000072 */  beq     $zero, $zero, .L808DE3B0   
/* 07978 808DE1E8 A6A001A4 */  sh      $zero, 0x01A4($s5)         ## 000001A4
glabel L808DE1EC
/* 0797C 808DE1EC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07980 808DE1F0 00360821 */  addu    $at, $at, $s6              
/* 07984 808DE1F4 2408000C */  addiu   $t0, $zero, 0x000C         ## $t0 = 0000000C
/* 07988 808DE1F8 A0280AE2 */  sb      $t0, 0x0AE2($at)           ## 00010AE2
/* 0798C 808DE1FC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07990 808DE200 00360821 */  addu    $at, $at, $s6              
/* 07994 808DE204 2409000B */  addiu   $t1, $zero, 0x000B         ## $t1 = 0000000B
/* 07998 808DE208 A0290AE1 */  sb      $t1, 0x0AE1($at)           ## 00010AE1
/* 0799C 808DE20C 86A401A4 */  lh      $a0, 0x01A4($s5)           ## 000001A4
/* 079A0 808DE210 00800821 */  addu    $at, $a0, $zero            
/* 079A4 808DE214 00042080 */  sll     $a0, $a0,  2               
/* 079A8 808DE218 00812023 */  subu    $a0, $a0, $at              
/* 079AC 808DE21C 000422C0 */  sll     $a0, $a0, 11               
/* 079B0 808DE220 00042400 */  sll     $a0, $a0, 16               
/* 079B4 808DE224 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 079B8 808DE228 00042403 */  sra     $a0, $a0, 16               
/* 079BC 808DE22C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 079C0 808DE230 34210AFC */  ori     $at, $at, 0x0AFC           ## $at = 00010AFC
/* 079C4 808DE234 02C12021 */  addu    $a0, $s6, $at              
/* 079C8 808DE238 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 079CC 808DE23C 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 079D0 808DE240 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 079D4 808DE244 4406D000 */  mfc1    $a2, $f26                  
/* 079D8 808DE248 46040182 */  mul.s   $f6, $f0, $f4              
/* 079DC 808DE24C 4407D000 */  mfc1    $a3, $f26                  
/* 079E0 808DE250 46083400 */  add.s   $f16, $f6, $f8             
/* 079E4 808DE254 44058000 */  mfc1    $a1, $f16                  
/* 079E8 808DE258 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 079EC 808DE25C 00000000 */  nop
/* 079F0 808DE260 10000054 */  beq     $zero, $zero, .L808DE3B4   
/* 079F4 808DE264 C6A00714 */  lwc1    $f0, 0x0714($s5)           ## 00000714
glabel L808DE268
/* 079F8 808DE268 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 079FC 808DE26C 00360821 */  addu    $at, $at, $s6              
/* 07A00 808DE270 240A000C */  addiu   $t2, $zero, 0x000C         ## $t2 = 0000000C
/* 07A04 808DE274 A02A0AE2 */  sb      $t2, 0x0AE2($at)           ## 00010AE2
/* 07A08 808DE278 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07A0C 808DE27C 00360821 */  addu    $at, $at, $s6              
/* 07A10 808DE280 240B0003 */  addiu   $t3, $zero, 0x0003         ## $t3 = 00000003
/* 07A14 808DE284 A02B0AE1 */  sb      $t3, 0x0AE1($at)           ## 00010AE1
/* 07A18 808DE288 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07A1C 808DE28C 34210AFC */  ori     $at, $at, 0x0AFC           ## $at = 00010AFC
/* 07A20 808DE290 4405D000 */  mfc1    $a1, $f26                  
/* 07A24 808DE294 4406D000 */  mfc1    $a2, $f26                  
/* 07A28 808DE298 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 07A2C 808DE29C 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3D4CCCCD
/* 07A30 808DE2A0 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 07A34 808DE2A4 02C12021 */  addu    $a0, $s6, $at              
/* 07A38 808DE2A8 10000042 */  beq     $zero, $zero, .L808DE3B4   
/* 07A3C 808DE2AC C6A00714 */  lwc1    $f0, 0x0714($s5)           ## 00000714
glabel L808DE2B0
/* 07A40 808DE2B0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07A44 808DE2B4 00360821 */  addu    $at, $at, $s6              
/* 07A48 808DE2B8 240C000D */  addiu   $t4, $zero, 0x000D         ## $t4 = 0000000D
/* 07A4C 808DE2BC A02C0AE1 */  sb      $t4, 0x0AE1($at)           ## 00010AE1
/* 07A50 808DE2C0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07A54 808DE2C4 34210AFC */  ori     $at, $at, 0x0AFC           ## $at = 00010AFC
/* 07A58 808DE2C8 4405D000 */  mfc1    $a1, $f26                  
/* 07A5C 808DE2CC 4406D000 */  mfc1    $a2, $f26                  
/* 07A60 808DE2D0 3C073CCC */  lui     $a3, 0x3CCC                ## $a3 = 3CCC0000
/* 07A64 808DE2D4 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3CCCCCCD
/* 07A68 808DE2D8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 07A6C 808DE2DC 02C12021 */  addu    $a0, $s6, $at              
/* 07A70 808DE2E0 10000034 */  beq     $zero, $zero, .L808DE3B4   
/* 07A74 808DE2E4 C6A00714 */  lwc1    $f0, 0x0714($s5)           ## 00000714
glabel L808DE2E8
/* 07A78 808DE2E8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07A7C 808DE2EC 00360821 */  addu    $at, $at, $s6              
/* 07A80 808DE2F0 240D000E */  addiu   $t5, $zero, 0x000E         ## $t5 = 0000000E
/* 07A84 808DE2F4 A02D0AE1 */  sb      $t5, 0x0AE1($at)           ## 00010AE1
/* 07A88 808DE2F8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07A8C 808DE2FC 00360821 */  addu    $at, $at, $s6              
/* 07A90 808DE300 1000002B */  beq     $zero, $zero, .L808DE3B0   
/* 07A94 808DE304 E43A0AFC */  swc1    $f26, 0x0AFC($at)          ## 00010AFC
glabel L808DE308
/* 07A98 808DE308 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07A9C 808DE30C 00360821 */  addu    $at, $at, $s6              
/* 07AA0 808DE310 240E000E */  addiu   $t6, $zero, 0x000E         ## $t6 = 0000000E
/* 07AA4 808DE314 A02E0AE2 */  sb      $t6, 0x0AE2($at)           ## 00010AE2
/* 07AA8 808DE318 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07AAC 808DE31C 00360821 */  addu    $at, $at, $s6              
/* 07AB0 808DE320 240F000F */  addiu   $t7, $zero, 0x000F         ## $t7 = 0000000F
/* 07AB4 808DE324 A02F0AE1 */  sb      $t7, 0x0AE1($at)           ## 00010AE1
/* 07AB8 808DE328 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07ABC 808DE32C 34210AFC */  ori     $at, $at, 0x0AFC           ## $at = 00010AFC
/* 07AC0 808DE330 4405D000 */  mfc1    $a1, $f26                  
/* 07AC4 808DE334 4406D000 */  mfc1    $a2, $f26                  
/* 07AC8 808DE338 3C073C23 */  lui     $a3, 0x3C23                ## $a3 = 3C230000
/* 07ACC 808DE33C 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3C23D70A
/* 07AD0 808DE340 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 07AD4 808DE344 02C12021 */  addu    $a0, $s6, $at              
/* 07AD8 808DE348 1000001A */  beq     $zero, $zero, .L808DE3B4   
/* 07ADC 808DE34C C6A00714 */  lwc1    $f0, 0x0714($s5)           ## 00000714
glabel L808DE350
/* 07AE0 808DE350 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07AE4 808DE354 00360821 */  addu    $at, $at, $s6              
/* 07AE8 808DE358 24180010 */  addiu   $t8, $zero, 0x0010         ## $t8 = 00000010
/* 07AEC 808DE35C A0380AE2 */  sb      $t8, 0x0AE2($at)           ## 00010AE2
/* 07AF0 808DE360 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07AF4 808DE364 00360821 */  addu    $at, $at, $s6              
/* 07AF8 808DE368 2419000F */  addiu   $t9, $zero, 0x000F         ## $t9 = 0000000F
/* 07AFC 808DE36C A0390AE1 */  sb      $t9, 0x0AE1($at)           ## 00010AE1
/* 07B00 808DE370 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07B04 808DE374 34210AFC */  ori     $at, $at, 0x0AFC           ## $at = 00010AFC
/* 07B08 808DE378 4405D000 */  mfc1    $a1, $f26                  
/* 07B0C 808DE37C 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 07B10 808DE380 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 07B14 808DE384 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 07B18 808DE388 02C12021 */  addu    $a0, $s6, $at              
/* 07B1C 808DE38C 10000009 */  beq     $zero, $zero, .L808DE3B4   
/* 07B20 808DE390 C6A00714 */  lwc1    $f0, 0x0714($s5)           ## 00000714
glabel L808DE394
/* 07B24 808DE394 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07B28 808DE398 00360821 */  addu    $at, $at, $s6              
/* 07B2C 808DE39C A0230AE2 */  sb      $v1, 0x0AE2($at)           ## 00010AE2
/* 07B30 808DE3A0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07B34 808DE3A4 00360821 */  addu    $at, $at, $s6              
/* 07B38 808DE3A8 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 07B3C 808DE3AC A0280AE1 */  sb      $t0, 0x0AE1($at)           ## 00010AE1
glabel L808DE3B0
.L808DE3B0:
/* 07B40 808DE3B0 C6A00714 */  lwc1    $f0, 0x0714($s5)           ## 00000714
.L808DE3B4:
/* 07B44 808DE3B4 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 07B48 808DE3B8 A2A001A0 */  sb      $zero, 0x01A0($s5)         ## 000001A0
/* 07B4C 808DE3BC 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 07B50 808DE3C0 46005032 */  c.eq.s  $f10, $f0                  
/* 07B54 808DE3C4 240300FF */  addiu   $v1, $zero, 0x00FF         ## $v1 = 000000FF
/* 07B58 808DE3C8 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 07B5C 808DE3CC 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 07B60 808DE3D0 4501002A */  bc1t    .L808DE47C                 
/* 07B64 808DE3D4 26A40670 */  addiu   $a0, $s5, 0x0670           ## $a0 = 00000670
/* 07B68 808DE3D8 4449F800 */  cfc1    $t1, $31
/* 07B6C 808DE3DC 44CAF800 */  ctc1    $t2, $31
/* 07B70 808DE3E0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07B74 808DE3E4 02C11021 */  addu    $v0, $s6, $at              
/* 07B78 808DE3E8 460004A4 */  cvt.w.s $f18, $f0                  
/* 07B7C 808DE3EC 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 07B80 808DE3F0 444AF800 */  cfc1    $t2, $31
/* 07B84 808DE3F4 00000000 */  nop
/* 07B88 808DE3F8 314A0078 */  andi    $t2, $t2, 0x0078           ## $t2 = 00000000
/* 07B8C 808DE3FC 51400013 */  beql    $t2, $zero, .L808DE44C     
/* 07B90 808DE400 440A9000 */  mfc1    $t2, $f18                  
/* 07B94 808DE404 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 07B98 808DE408 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 07B9C 808DE40C 46120481 */  sub.s   $f18, $f0, $f18            
/* 07BA0 808DE410 44CAF800 */  ctc1    $t2, $31
/* 07BA4 808DE414 00000000 */  nop
/* 07BA8 808DE418 460094A4 */  cvt.w.s $f18, $f18                 
/* 07BAC 808DE41C 444AF800 */  cfc1    $t2, $31
/* 07BB0 808DE420 00000000 */  nop
/* 07BB4 808DE424 314A0078 */  andi    $t2, $t2, 0x0078           ## $t2 = 00000000
/* 07BB8 808DE428 15400005 */  bne     $t2, $zero, .L808DE440     
/* 07BBC 808DE42C 00000000 */  nop
/* 07BC0 808DE430 440A9000 */  mfc1    $t2, $f18                  
/* 07BC4 808DE434 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 07BC8 808DE438 10000007 */  beq     $zero, $zero, .L808DE458   
/* 07BCC 808DE43C 01415025 */  or      $t2, $t2, $at              ## $t2 = 80000000
.L808DE440:
/* 07BD0 808DE440 10000005 */  beq     $zero, $zero, .L808DE458   
/* 07BD4 808DE444 240AFFFF */  addiu   $t2, $zero, 0xFFFF         ## $t2 = FFFFFFFF
/* 07BD8 808DE448 440A9000 */  mfc1    $t2, $f18                  
.L808DE44C:
/* 07BDC 808DE44C 00000000 */  nop
/* 07BE0 808DE450 0540FFFB */  bltz    $t2, .L808DE440            
/* 07BE4 808DE454 00000000 */  nop
.L808DE458:
/* 07BE8 808DE458 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07BEC 808DE45C 44C9F800 */  ctc1    $t1, $31
/* 07BF0 808DE460 A04A0B09 */  sb      $t2, 0x0B09($v0)           ## 00000B09
/* 07BF4 808DE464 A0430B08 */  sb      $v1, 0x0B08($v0)           ## 00000B08
/* 07BF8 808DE468 A0430B07 */  sb      $v1, 0x0B07($v0)           ## 00000B07
/* 07BFC 808DE46C A0430B06 */  sb      $v1, 0x0B06($v0)           ## 00000B06
/* 07C00 808DE470 00360821 */  addu    $at, $at, $s6              
/* 07C04 808DE474 1000001E */  beq     $zero, $zero, .L808DE4F0   
/* 07C08 808DE478 A02D0B05 */  sb      $t5, 0x0B05($at)           ## 00010B05
.L808DE47C:
/* 07C0C 808DE47C 86AE01C4 */  lh      $t6, 0x01C4($s5)           ## 000001C4
/* 07C10 808DE480 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07C14 808DE484 02C11021 */  addu    $v0, $s6, $at              
/* 07C18 808DE488 11C00017 */  beq     $t6, $zero, .L808DE4E8     
/* 07C1C 808DE48C 00360821 */  addu    $at, $at, $s6              
/* 07C20 808DE490 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07C24 808DE494 00360821 */  addu    $at, $at, $s6              
/* 07C28 808DE498 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 07C2C 808DE49C A02F0B05 */  sb      $t7, 0x0B05($at)           ## 00010B05
/* 07C30 808DE4A0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07C34 808DE4A4 02C11021 */  addu    $v0, $s6, $at              
/* 07C38 808DE4A8 240300FF */  addiu   $v1, $zero, 0x00FF         ## $v1 = 000000FF
/* 07C3C 808DE4AC A0430B08 */  sb      $v1, 0x0B08($v0)           ## 00000B08
/* 07C40 808DE4B0 A0430B07 */  sb      $v1, 0x0B07($v0)           ## 00000B07
/* 07C44 808DE4B4 A0430B06 */  sb      $v1, 0x0B06($v0)           ## 00000B06
/* 07C48 808DE4B8 86B901C4 */  lh      $t9, 0x01C4($s5)           ## 000001C4
/* 07C4C 808DE4BC 24090064 */  addiu   $t1, $zero, 0x0064         ## $t1 = 00000064
/* 07C50 808DE4C0 33280001 */  andi    $t0, $t9, 0x0001           ## $t0 = 00000000
/* 07C54 808DE4C4 51000004 */  beql    $t0, $zero, .L808DE4D8     
/* 07C58 808DE4C8 A0400B09 */  sb      $zero, 0x0B09($v0)         ## 00000B09
/* 07C5C 808DE4CC 10000002 */  beq     $zero, $zero, .L808DE4D8   
/* 07C60 808DE4D0 A0490B09 */  sb      $t1, 0x0B09($v0)           ## 00000B09
/* 07C64 808DE4D4 A0400B09 */  sb      $zero, 0x0B09($v0)         ## 00000B09
.L808DE4D8:
/* 07C68 808DE4D8 86AA01C4 */  lh      $t2, 0x01C4($s5)           ## 000001C4
/* 07C6C 808DE4DC 254BFFFF */  addiu   $t3, $t2, 0xFFFF           ## $t3 = FFFFFFFE
/* 07C70 808DE4E0 10000003 */  beq     $zero, $zero, .L808DE4F0   
/* 07C74 808DE4E4 A6AB01C4 */  sh      $t3, 0x01C4($s5)           ## 000001C4
.L808DE4E8:
/* 07C78 808DE4E8 A0400B09 */  sb      $zero, 0x0B09($v0)         ## 00000B09
/* 07C7C 808DE4EC A0200B05 */  sb      $zero, 0x0B05($at)         ## 00010B05
.L808DE4F0:
/* 07C80 808DE4F0 86A3066E */  lh      $v1, 0x066E($s5)           ## 0000066E
/* 07C84 808DE4F4 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 07C88 808DE4F8 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 07C8C 808DE4FC 50600019 */  beql    $v1, $zero, .L808DE564     
/* 07C90 808DE500 4405D000 */  mfc1    $a1, $f26                  
/* 07C94 808DE504 92A2066C */  lbu     $v0, 0x066C($s5)           ## 0000066C
/* 07C98 808DE508 246DFFFF */  addiu   $t5, $v1, 0xFFFF           ## $t5 = 000000FE
/* 07C9C 808DE50C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 07CA0 808DE510 14410005 */  bne     $v0, $at, .L808DE528       
/* 07CA4 808DE514 A6AD066E */  sh      $t5, 0x066E($s5)           ## 0000066E
/* 07CA8 808DE518 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 07CAC 808DE51C 44810000 */  mtc1    $at, $f0                   ## $f0 = 40.00
/* 07CB0 808DE520 1000000B */  beq     $zero, $zero, .L808DE550   
/* 07CB4 808DE524 44050000 */  mfc1    $a1, $f0                   
.L808DE528:
/* 07CB8 808DE528 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 07CBC 808DE52C 14410004 */  bne     $v0, $at, .L808DE540       
/* 07CC0 808DE530 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 07CC4 808DE534 44810000 */  mtc1    $at, $f0                   ## $f0 = 25.00
/* 07CC8 808DE538 10000005 */  beq     $zero, $zero, .L808DE550   
/* 07CCC 808DE53C 44050000 */  mfc1    $a1, $f0                   
.L808DE540:
/* 07CD0 808DE540 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 07CD4 808DE544 44810000 */  mtc1    $at, $f0                   ## $f0 = 10.00
/* 07CD8 808DE548 00000000 */  nop
/* 07CDC 808DE54C 44050000 */  mfc1    $a1, $f0                   
.L808DE550:
/* 07CE0 808DE550 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 07CE4 808DE554 26A40670 */  addiu   $a0, $s5, 0x0670           ## $a0 = 00000670
/* 07CE8 808DE558 1000000B */  beq     $zero, $zero, .L808DE588   
/* 07CEC 808DE55C 92AE066C */  lbu     $t6, 0x066C($s5)           ## 0000066C
/* 07CF0 808DE560 4405D000 */  mfc1    $a1, $f26                  
.L808DE564:
/* 07CF4 808DE564 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 07CF8 808DE568 3C0640A0 */  lui     $a2, 0x40A0                ## $a2 = 40A00000
/* 07CFC 808DE56C C6A40670 */  lwc1    $f4, 0x0670($s5)           ## 00000670
/* 07D00 808DE570 4604C032 */  c.eq.s  $f24, $f4                  
/* 07D04 808DE574 00000000 */  nop
/* 07D08 808DE578 45020003 */  bc1fl   .L808DE588                 
/* 07D0C 808DE57C 92AE066C */  lbu     $t6, 0x066C($s5)           ## 0000066C
/* 07D10 808DE580 A2A0066C */  sb      $zero, 0x066C($s5)         ## 0000066C
/* 07D14 808DE584 92AE066C */  lbu     $t6, 0x066C($s5)           ## 0000066C
.L808DE588:
/* 07D18 808DE588 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 07D1C 808DE58C 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 07D20 808DE590 11C0001C */  beq     $t6, $zero, .L808DE604     
/* 07D24 808DE594 00000000 */  nop
/* 07D28 808DE598 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 07D2C 808DE59C A02FFCF0 */  sb      $t7, -0x0310($at)          ## 8015FCF0
/* 07D30 808DE5A0 92B8066C */  lbu     $t8, 0x066C($s5)           ## 0000066C
/* 07D34 808DE5A4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 07D38 808DE5A8 5701000A */  bnel    $t8, $at, .L808DE5D4       
/* 07D3C 808DE5AC C6A60670 */  lwc1    $f6, 0x0670($s5)           ## 00000670
/* 07D40 808DE5B0 8EA90024 */  lw      $t1, 0x0024($s5)           ## 00000024
/* 07D44 808DE5B4 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 07D48 808DE5B8 2739FCF8 */  addiu   $t9, $t9, 0xFCF8           ## $t9 = 8015FCF8
/* 07D4C 808DE5BC AF290000 */  sw      $t1, 0x0000($t9)           ## 8015FCF8
/* 07D50 808DE5C0 8EA80028 */  lw      $t0, 0x0028($s5)           ## 00000028
/* 07D54 808DE5C4 AF280004 */  sw      $t0, 0x0004($t9)           ## 8015FCFC
/* 07D58 808DE5C8 8EA9002C */  lw      $t1, 0x002C($s5)           ## 0000002C
/* 07D5C 808DE5CC AF290008 */  sw      $t1, 0x0008($t9)           ## 8015FD00
/* 07D60 808DE5D0 C6A60670 */  lwc1    $f6, 0x0670($s5)           ## 00000670
.L808DE5D4:
/* 07D64 808DE5D4 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 07D68 808DE5D8 4600320D */  trunc.w.s $f8, $f6                   
/* 07D6C 808DE5DC 440B4000 */  mfc1    $t3, $f8                   
/* 07D70 808DE5E0 00000000 */  nop
/* 07D74 808DE5E4 A42BFD06 */  sh      $t3, -0x02FA($at)          ## 8015FD06
/* 07D78 808DE5E8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 07D7C 808DE5EC 44818000 */  mtc1    $at, $f16                  ## $f16 = 10.00
/* 07D80 808DE5F0 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 07D84 808DE5F4 E430FD08 */  swc1    $f16, -0x02F8($at)         ## 8015FD08
/* 07D88 808DE5F8 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 07D8C 808DE5FC 10000002 */  beq     $zero, $zero, .L808DE608   
/* 07D90 808DE600 A420FD0C */  sh      $zero, -0x02F4($at)        ## 8015FD0C
.L808DE604:
/* 07D94 808DE604 A020FCF0 */  sb      $zero, -0x0310($at)        ## 8015FCF0
.L808DE608:
/* 07D98 808DE608 92A20274 */  lbu     $v0, 0x0274($s5)           ## 00000274
/* 07D9C 808DE60C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 07DA0 808DE610 1040003A */  beq     $v0, $zero, .L808DE6FC     
/* 07DA4 808DE614 2451FFFF */  addiu   $s1, $v0, 0xFFFF           ## $s1 = FFFFFFFF
/* 07DA8 808DE618 C6B202F0 */  lwc1    $f18, 0x02F0($s5)          ## 000002F0
/* 07DAC 808DE61C 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 07DB0 808DE620 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 07DB4 808DE624 C6AA02EC */  lwc1    $f10, 0x02EC($s5)          ## 000002EC
/* 07DB8 808DE628 46049180 */  add.s   $f6, $f18, $f4             
/* 07DBC 808DE62C 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 07DC0 808DE630 00118C00 */  sll     $s1, $s1, 16               
/* 07DC4 808DE634 00118C03 */  sra     $s1, $s1, 16               
/* 07DC8 808DE638 44919000 */  mtc1    $s1, $f18                  ## $f18 = NaN
/* 07DCC 808DE63C 46083400 */  add.s   $f16, $f6, $f8             
/* 07DD0 808DE640 E6AA0278 */  swc1    $f10, 0x0278($s5)          ## 00000278
/* 07DD4 808DE644 C6AA02F4 */  lwc1    $f10, 0x02F4($s5)          ## 000002F4
/* 07DD8 808DE648 46809520 */  cvt.s.w $f20, $f18                 
/* 07DDC 808DE64C E6B0027C */  swc1    $f16, 0x027C($s5)          ## 0000027C
/* 07DE0 808DE650 3C018090 */  lui     $at, %hi(D_808F80E4)       ## $at = 80900000
/* 07DE4 808DE654 E6AA0280 */  swc1    $f10, 0x0280($s5)          ## 00000280
/* 07DE8 808DE658 C42480E4 */  lwc1    $f4, %lo(D_808F80E4)($at)  
/* 07DEC 808DE65C 4604A582 */  mul.s   $f22, $f20, $f4            
/* 07DF0 808DE660 0C0400A4 */  jal     sinf
              
/* 07DF4 808DE664 4600B306 */  mov.s   $f12, $f22                 
/* 07DF8 808DE668 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 07DFC 808DE66C 44813000 */  mtc1    $at, $f6                   ## $f6 = 600.00
/* 07E00 808DE670 4600B306 */  mov.s   $f12, $f22                 
/* 07E04 808DE674 46060602 */  mul.s   $f24, $f0, $f6             
/* 07E08 808DE678 0C041184 */  jal     cosf
              
/* 07E0C 808DE67C 00000000 */  nop
/* 07E10 808DE680 C6A801FC */  lwc1    $f8, 0x01FC($s5)           ## 000001FC
/* 07E14 808DE684 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 07E18 808DE688 44812000 */  mtc1    $at, $f4                   ## $f4 = 600.00
/* 07E1C 808DE68C 46184400 */  add.s   $f16, $f8, $f24            
/* 07E20 808DE690 3C018090 */  lui     $at, %hi(D_808F80E8)       ## $at = 80900000
/* 07E24 808DE694 46040182 */  mul.s   $f6, $f0, $f4              
/* 07E28 808DE698 263900FA */  addiu   $t9, $s1, 0x00FA           ## $t9 = 000000F9
/* 07E2C 808DE69C E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 07E30 808DE6A0 C6AA0200 */  lwc1    $f10, 0x0200($s5)          ## 00000200
/* 07E34 808DE6A4 C43080E8 */  lwc1    $f16, %lo(D_808F80E8)($at) 
/* 07E38 808DE6A8 26C41C24 */  addiu   $a0, $s6, 0x1C24           ## $a0 = 00001C24
/* 07E3C 808DE6AC E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 07E40 808DE6B0 4610A282 */  mul.s   $f10, $f20, $f16           
/* 07E44 808DE6B4 C6B20204 */  lwc1    $f18, 0x0204($s5)          ## 00000204
/* 07E48 808DE6B8 AFB90028 */  sw      $t9, 0x0028($sp)           
/* 07E4C 808DE6BC AFA00024 */  sw      $zero, 0x0024($sp)         
/* 07E50 808DE6C0 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 07E54 808DE6C4 46069200 */  add.s   $f8, $f18, $f6             
/* 07E58 808DE6C8 02A02825 */  or      $a1, $s5, $zero            ## $a1 = 00000000
/* 07E5C 808DE6CC 02C03025 */  or      $a2, $s6, $zero            ## $a2 = 00000000
/* 07E60 808DE6D0 4600510D */  trunc.w.s $f4, $f10                  
/* 07E64 808DE6D4 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 07E68 808DE6D8 240700E8 */  addiu   $a3, $zero, 0x00E8         ## $a3 = 000000E8
/* 07E6C 808DE6DC 440D2000 */  mfc1    $t5, $f4                   
/* 07E70 808DE6E0 00000000 */  nop
/* 07E74 808DE6E4 000D7400 */  sll     $t6, $t5, 16               
/* 07E78 808DE6E8 000E7C03 */  sra     $t7, $t6, 16               
/* 07E7C 808DE6EC 25F86000 */  addiu   $t8, $t7, 0x6000           ## $t8 = 00006000
/* 07E80 808DE6F0 0C00C916 */  jal     Actor_SpawnAttached
              
/* 07E84 808DE6F4 AFB80020 */  sw      $t8, 0x0020($sp)           
/* 07E88 808DE6F8 A2A00274 */  sb      $zero, 0x0274($s5)         ## 00000274
.L808DE6FC:
/* 07E8C 808DE6FC 8FBF0074 */  lw      $ra, 0x0074($sp)           
/* 07E90 808DE700 D7B40038 */  ldc1    $f20, 0x0038($sp)          
/* 07E94 808DE704 D7B60040 */  ldc1    $f22, 0x0040($sp)          
/* 07E98 808DE708 D7B80048 */  ldc1    $f24, 0x0048($sp)          
/* 07E9C 808DE70C D7BA0050 */  ldc1    $f26, 0x0050($sp)          
/* 07EA0 808DE710 8FB00058 */  lw      $s0, 0x0058($sp)           
/* 07EA4 808DE714 8FB1005C */  lw      $s1, 0x005C($sp)           
/* 07EA8 808DE718 8FB20060 */  lw      $s2, 0x0060($sp)           
/* 07EAC 808DE71C 8FB30064 */  lw      $s3, 0x0064($sp)           
/* 07EB0 808DE720 8FB40068 */  lw      $s4, 0x0068($sp)           
/* 07EB4 808DE724 8FB5006C */  lw      $s5, 0x006C($sp)           
/* 07EB8 808DE728 8FB60070 */  lw      $s6, 0x0070($sp)           
/* 07EBC 808DE72C 03E00008 */  jr      $ra                        
/* 07EC0 808DE730 27BD0130 */  addiu   $sp, $sp, 0x0130           ## $sp = 00000000


