glabel func_80B0E728
/* 02978 80B0E728 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0297C 80B0E72C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02980 80B0E730 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02984 80B0E734 84830442 */  lh      $v1, 0x0442($a0)           ## 00000442
/* 02988 80B0E738 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0298C 80B0E73C 8CA71C44 */  lw      $a3, 0x1C44($a1)           ## 00001C44
/* 02990 80B0E740 14600003 */  bne     $v1, $zero, .L80B0E750     
/* 02994 80B0E744 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 02998 80B0E748 10000003 */  beq     $zero, $zero, .L80B0E758   
/* 0299C 80B0E74C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B0E750:
/* 029A0 80B0E750 A60E0442 */  sh      $t6, 0x0442($s0)           ## 00000442
/* 029A4 80B0E754 86020442 */  lh      $v0, 0x0442($s0)           ## 00000442
.L80B0E758:
/* 029A8 80B0E758 10400024 */  beq     $v0, $zero, .L80B0E7EC     
/* 029AC 80B0E75C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 029B0 80B0E760 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 029B4 80B0E764 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 029B8 80B0E768 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 029BC 80B0E76C 0C2C37AA */  jal     func_80B0DEA8              
/* 029C0 80B0E770 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 029C4 80B0E774 10400019 */  beq     $v0, $zero, .L80B0E7DC     
/* 029C8 80B0E778 8FA70034 */  lw      $a3, 0x0034($sp)           
/* 029CC 80B0E77C 8CF80024 */  lw      $t8, 0x0024($a3)           ## 00000024
/* 029D0 80B0E780 26050448 */  addiu   $a1, $s0, 0x0448           ## $a1 = 00000448
/* 029D4 80B0E784 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 029D8 80B0E788 ACB80000 */  sw      $t8, 0x0000($a1)           ## 00000448
/* 029DC 80B0E78C 8CEF0028 */  lw      $t7, 0x0028($a3)           ## 00000028
/* 029E0 80B0E790 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 029E4 80B0E794 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 029E8 80B0E798 ACAF0004 */  sw      $t7, 0x0004($a1)           ## 0000044C
/* 029EC 80B0E79C 8CF8002C */  lw      $t8, 0x002C($a3)           ## 0000002C
/* 029F0 80B0E7A0 ACB80008 */  sw      $t8, 0x0008($a1)           ## 00000450
/* 029F4 80B0E7A4 C604044C */  lwc1    $f4, 0x044C($s0)           ## 0000044C
/* 029F8 80B0E7A8 46062200 */  add.s   $f8, $f4, $f6              
/* 029FC 80B0E7AC 0C2C378D */  jal     func_80B0DE34              
/* 02A00 80B0E7B0 E608044C */  swc1    $f8, 0x044C($s0)           ## 0000044C
/* 02A04 80B0E7B4 A6020444 */  sh      $v0, 0x0444($s0)           ## 00000444
/* 02A08 80B0E7B8 8FB9003C */  lw      $t9, 0x003C($sp)           
/* 02A0C 80B0E7BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A10 80B0E7C0 3C0540C0 */  lui     $a1, 0x40C0                ## $a1 = 40C00000
/* 02A14 80B0E7C4 24060FA0 */  addiu   $a2, $zero, 0x0FA0         ## $a2 = 00000FA0
/* 02A18 80B0E7C8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02A1C 80B0E7CC 0C2C390C */  jal     func_80B0E430              
/* 02A20 80B0E7D0 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 02A24 80B0E7D4 10000049 */  beq     $zero, $zero, .L80B0E8FC   
/* 02A28 80B0E7D8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B0E7DC:
/* 02A2C 80B0E7DC 3C0880B1 */  lui     $t0, %hi(func_80B0E5E0)    ## $t0 = 80B10000
/* 02A30 80B0E7E0 2508E5E0 */  addiu   $t0, $t0, %lo(func_80B0E5E0) ## $t0 = 80B0E5E0
/* 02A34 80B0E7E4 10000044 */  beq     $zero, $zero, .L80B0E8F8   
/* 02A38 80B0E7E8 AE080190 */  sw      $t0, 0x0190($s0)           ## 00000190
.L80B0E7EC:
/* 02A3C 80B0E7EC 0C2C37FF */  jal     func_80B0DFFC              
/* 02A40 80B0E7F0 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 02A44 80B0E7F4 14400014 */  bne     $v0, $zero, .L80B0E848     
/* 02A48 80B0E7F8 24040014 */  addiu   $a0, $zero, 0x0014         ## $a0 = 00000014
/* 02A4C 80B0E7FC 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 02A50 80B0E800 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
/* 02A54 80B0E804 A6020442 */  sh      $v0, 0x0442($s0)           ## 00000442
/* 02A58 80B0E808 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 02A5C 80B0E80C AFA50028 */  sw      $a1, 0x0028($sp)           
/* 02A60 80B0E810 0C2C378D */  jal     func_80B0DE34              
/* 02A64 80B0E814 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A68 80B0E818 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 02A6C 80B0E81C A6020444 */  sh      $v0, 0x0444($s0)           ## 00000444
/* 02A70 80B0E820 3C0B80B1 */  lui     $t3, %hi(func_80B0E9BC)    ## $t3 = 80B10000
/* 02A74 80B0E824 8CAA0000 */  lw      $t2, 0x0000($a1)           ## 00000000
/* 02A78 80B0E828 256BE9BC */  addiu   $t3, $t3, %lo(func_80B0E9BC) ## $t3 = 80B0E9BC
/* 02A7C 80B0E82C AE0A0448 */  sw      $t2, 0x0448($s0)           ## 00000448
/* 02A80 80B0E830 8CA90004 */  lw      $t1, 0x0004($a1)           ## 00000004
/* 02A84 80B0E834 AE09044C */  sw      $t1, 0x044C($s0)           ## 0000044C
/* 02A88 80B0E838 8CAA0008 */  lw      $t2, 0x0008($a1)           ## 00000008
/* 02A8C 80B0E83C AE0B0190 */  sw      $t3, 0x0190($s0)           ## 00000190
/* 02A90 80B0E840 1000002D */  beq     $zero, $zero, .L80B0E8F8   
/* 02A94 80B0E844 AE0A0450 */  sw      $t2, 0x0450($s0)           ## 00000450
.L80B0E848:
/* 02A98 80B0E848 26020448 */  addiu   $v0, $s0, 0x0448           ## $v0 = 00000448
/* 02A9C 80B0E84C 8C4D0000 */  lw      $t5, 0x0000($v0)           ## 00000448
/* 02AA0 80B0E850 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 02AA4 80B0E854 44815000 */  mtc1    $at, $f10                  ## $f10 = 8.00
/* 02AA8 80B0E858 AFAD0004 */  sw      $t5, 0x0004($sp)           
/* 02AAC 80B0E85C 8C460004 */  lw      $a2, 0x0004($v0)           ## 0000044C
/* 02AB0 80B0E860 8FA50004 */  lw      $a1, 0x0004($sp)           
/* 02AB4 80B0E864 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02AB8 80B0E868 AFA60008 */  sw      $a2, 0x0008($sp)           
/* 02ABC 80B0E86C 8C470008 */  lw      $a3, 0x0008($v0)           ## 00000450
/* 02AC0 80B0E870 AFA20028 */  sw      $v0, 0x0028($sp)           
/* 02AC4 80B0E874 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 02AC8 80B0E878 0C2C38C5 */  jal     func_80B0E314              
/* 02ACC 80B0E87C AFA7000C */  sw      $a3, 0x000C($sp)           
/* 02AD0 80B0E880 86030440 */  lh      $v1, 0x0440($s0)           ## 00000440
/* 02AD4 80B0E884 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02AD8 80B0E888 14600003 */  bne     $v1, $zero, .L80B0E898     
/* 02ADC 80B0E88C 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 02AE0 80B0E890 10000003 */  beq     $zero, $zero, .L80B0E8A0   
/* 02AE4 80B0E894 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B0E898:
/* 02AE8 80B0E898 A60E0440 */  sh      $t6, 0x0440($s0)           ## 00000440
/* 02AEC 80B0E89C 86020440 */  lh      $v0, 0x0440($s0)           ## 00000440
.L80B0E8A0:
/* 02AF0 80B0E8A0 54400006 */  bnel    $v0, $zero, .L80B0E8BC     
/* 02AF4 80B0E8A4 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 02AF8 80B0E8A8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02AFC 80B0E8AC 2405388D */  addiu   $a1, $zero, 0x388D         ## $a1 = 0000388D
/* 02B00 80B0E8B0 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 02B04 80B0E8B4 A60F0440 */  sh      $t7, 0x0440($s0)           ## 00000440
/* 02B08 80B0E8B8 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
.L80B0E8BC:
/* 02B0C 80B0E8BC 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 02B10 80B0E8C0 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 02B14 80B0E8C4 3C014150 */  lui     $at, 0x4150                ## $at = 41500000
/* 02B18 80B0E8C8 44818000 */  mtc1    $at, $f16                  ## $f16 = 13.00
/* 02B1C 80B0E8CC 00000000 */  nop
/* 02B20 80B0E8D0 4600803C */  c.lt.s  $f16, $f0                  
/* 02B24 80B0E8D4 00000000 */  nop
/* 02B28 80B0E8D8 45000004 */  bc1f    .L80B0E8EC                 
/* 02B2C 80B0E8DC 00000000 */  nop
/* 02B30 80B0E8E0 0C00B77D */  jal     func_8002DDF4              
/* 02B34 80B0E8E4 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 02B38 80B0E8E8 10400003 */  beq     $v0, $zero, .L80B0E8F8     
.L80B0E8EC:
/* 02B3C 80B0E8EC 3C1880B1 */  lui     $t8, %hi(func_80B0E90C)    ## $t8 = 80B10000
/* 02B40 80B0E8F0 2718E90C */  addiu   $t8, $t8, %lo(func_80B0E90C) ## $t8 = 80B0E90C
/* 02B44 80B0E8F4 AE180190 */  sw      $t8, 0x0190($s0)           ## 00000190
.L80B0E8F8:
/* 02B48 80B0E8F8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B0E8FC:
/* 02B4C 80B0E8FC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02B50 80B0E900 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 02B54 80B0E904 03E00008 */  jr      $ra                        
/* 02B58 80B0E908 00000000 */  nop
