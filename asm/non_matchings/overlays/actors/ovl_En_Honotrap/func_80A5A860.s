glabel func_80A5A860
/* 00C30 80A5A860 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00C34 80A5A864 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00C38 80A5A868 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C3C 80A5A86C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00C40 80A5A870 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00C44 80A5A874 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00C48 80A5A878 24840032 */  addiu   $a0, $a0, 0x0032           ## $a0 = 00000032
/* 00C4C 80A5A87C 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00C50 80A5A880 24060300 */  addiu   $a2, $zero, 0x0300         ## $a2 = 00000300
/* 00C54 80A5A884 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00C58 80A5A888 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00C5C 80A5A88C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00C60 80A5A890 0C01DE80 */  jal     Math_ApproxF
              
/* 00C64 80A5A894 3C054040 */  lui     $a1, 0x4040                ## $a1 = 40400000
/* 00C68 80A5A898 C6040094 */  lwc1    $f4, 0x0094($s0)           ## 00000094
/* 00C6C 80A5A89C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00C70 80A5A8A0 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 00C74 80A5A8A4 46002187 */  neg.s   $f6, $f4                   
/* 00C78 80A5A8A8 3C0180A6 */  lui     $at, %hi(D_80A5B138)       ## $at = 80A60000
/* 00C7C 80A5A8AC 4608303C */  c.lt.s  $f6, $f8                   
/* 00C80 80A5A8B0 00000000 */  nop
/* 00C84 80A5A8B4 45000005 */  bc1f    .L80A5A8CC                 
/* 00C88 80A5A8B8 00000000 */  nop
/* 00C8C 80A5A8BC 3C0180A6 */  lui     $at, %hi(D_80A5B134)       ## $at = 80A60000
/* 00C90 80A5A8C0 C42AB134 */  lwc1    $f10, %lo(D_80A5B134)($at) 
/* 00C94 80A5A8C4 10000003 */  beq     $zero, $zero, .L80A5A8D4   
/* 00C98 80A5A8C8 E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
.L80A5A8CC:
/* 00C9C 80A5A8CC C430B138 */  lwc1    $f16, %lo(D_80A5B138)($at) 
/* 00CA0 80A5A8D0 E610006C */  swc1    $f16, 0x006C($s0)          ## 0000006C
.L80A5A8D4:
/* 00CA4 80A5A8D4 0C00B61A */  jal     func_8002D868              
/* 00CA8 80A5A8D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CAC 80A5A8DC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00CB0 80A5A8E0 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 00CB4 80A5A8E4 C6000060 */  lwc1    $f0, 0x0060($s0)           ## 00000060
/* 00CB8 80A5A8E8 3C0180A6 */  lui     $at, %hi(D_80A5B13C)       ## $at = 80A60000
/* 00CBC 80A5A8EC 4600103C */  c.lt.s  $f2, $f0                   
/* 00CC0 80A5A8F0 00000000 */  nop
/* 00CC4 80A5A8F4 45000003 */  bc1f    .L80A5A904                 
/* 00CC8 80A5A8F8 00000000 */  nop
/* 00CCC 80A5A8FC E6020060 */  swc1    $f2, 0x0060($s0)           ## 00000060
/* 00CD0 80A5A900 C6000060 */  lwc1    $f0, 0x0060($s0)           ## 00000060
.L80A5A904:
/* 00CD4 80A5A904 C432B13C */  lwc1    $f18, %lo(D_80A5B13C)($at) 
/* 00CD8 80A5A908 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CDC 80A5A90C 46120102 */  mul.s   $f4, $f0, $f18             
/* 00CE0 80A5A910 0C00B5FB */  jal     func_8002D7EC              
/* 00CE4 80A5A914 E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
/* 00CE8 80A5A918 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00CEC 80A5A91C 240E001D */  addiu   $t6, $zero, 0x001D         ## $t6 = 0000001D
/* 00CF0 80A5A920 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00CF4 80A5A924 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00CF8 80A5A928 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00CFC 80A5A92C 3C0640E0 */  lui     $a2, 0x40E0                ## $a2 = 40E00000
/* 00D00 80A5A930 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 00D04 80A5A934 0C00B92D */  jal     func_8002E4B4              
/* 00D08 80A5A938 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00D0C 80A5A93C 92020160 */  lbu     $v0, 0x0160($s0)           ## 00000160
/* 00D10 80A5A940 8FB80044 */  lw      $t8, 0x0044($sp)           
/* 00D14 80A5A944 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF0
/* 00D18 80A5A948 304F0004 */  andi    $t7, $v0, 0x0004           ## $t7 = 00000000
/* 00D1C 80A5A94C 11E00010 */  beq     $t7, $zero, .L80A5A990     
/* 00D20 80A5A950 304C0002 */  andi    $t4, $v0, 0x0002           ## $t4 = 00000000
/* 00D24 80A5A954 8F021C44 */  lw      $v0, 0x1C44($t8)           ## 00001C44
/* 00D28 80A5A958 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00D2C 80A5A95C 0C034833 */  jal     func_800D20CC              
/* 00D30 80A5A960 24440A20 */  addiu   $a0, $v0, 0x0A20           ## $a0 = 00000A20
/* 00D34 80A5A964 87B90032 */  lh      $t9, 0x0032($sp)           
/* 00D38 80A5A968 86090032 */  lh      $t1, 0x0032($s0)           ## 00000032
/* 00D3C 80A5A96C 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00D40 80A5A970 00194040 */  sll     $t0, $t9,  1               
/* 00D44 80A5A974 01095023 */  subu    $t2, $t0, $t1              
/* 00D48 80A5A978 01415821 */  addu    $t3, $t2, $at              
/* 00D4C 80A5A97C A60B0032 */  sh      $t3, 0x0032($s0)           ## 00000032
/* 00D50 80A5A980 0C296A85 */  jal     func_80A5AA14              
/* 00D54 80A5A984 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D58 80A5A988 1000001E */  beq     $zero, $zero, .L80A5AA04   
/* 00D5C 80A5A98C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A5A990:
/* 00D60 80A5A990 1180000D */  beq     $t4, $zero, .L80A5A9C8     
/* 00D64 80A5A994 3C0180A6 */  lui     $at, %hi(D_80A5B140)       ## $at = 80A60000
/* 00D68 80A5A998 C420B140 */  lwc1    $f0, %lo(D_80A5B140)($at)  
/* 00D6C 80A5A99C C6080068 */  lwc1    $f8, 0x0068($s0)           ## 00000068
/* 00D70 80A5A9A0 C6100060 */  lwc1    $f16, 0x0060($s0)          ## 00000060
/* 00D74 80A5A9A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D78 80A5A9A8 46004282 */  mul.s   $f10, $f8, $f0             
/* 00D7C 80A5A9AC 00000000 */  nop
/* 00D80 80A5A9B0 46008482 */  mul.s   $f18, $f16, $f0            
/* 00D84 80A5A9B4 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 00D88 80A5A9B8 0C296A85 */  jal     func_80A5AA14              
/* 00D8C 80A5A9BC E6120060 */  swc1    $f18, 0x0060($s0)          ## 00000060
/* 00D90 80A5A9C0 10000010 */  beq     $zero, $zero, .L80A5AA04   
/* 00D94 80A5A9C4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A5A9C8:
/* 00D98 80A5A9C8 960D0088 */  lhu     $t5, 0x0088($s0)           ## 00000088
/* 00D9C 80A5A9CC 31AE0008 */  andi    $t6, $t5, 0x0008           ## $t6 = 00000000
/* 00DA0 80A5A9D0 15C00005 */  bne     $t6, $zero, .L80A5A9E8     
/* 00DA4 80A5A9D4 00000000 */  nop
/* 00DA8 80A5A9D8 860F0228 */  lh      $t7, 0x0228($s0)           ## 00000228
/* 00DAC 80A5A9DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DB0 80A5A9E0 1DE00005 */  bgtz    $t7, .L80A5A9F8            
/* 00DB4 80A5A9E4 00000000 */  nop
.L80A5A9E8:
/* 00DB8 80A5A9E8 0C296A85 */  jal     func_80A5AA14              
/* 00DBC 80A5A9EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DC0 80A5A9F0 10000004 */  beq     $zero, $zero, .L80A5AA04   
/* 00DC4 80A5A9F4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A5A9F8:
/* 00DC8 80A5A9F8 0C29670C */  jal     func_80A59C30              
/* 00DCC 80A5A9FC 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 00DD0 80A5AA00 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A5AA04:
/* 00DD4 80A5AA04 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00DD8 80A5AA08 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00DDC 80A5AA0C 03E00008 */  jr      $ra                        
/* 00DE0 80A5AA10 00000000 */  nop


