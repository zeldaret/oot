.late_rodata
glabel D_808C0A78
 .word 0x443B8000
glabel D_808C0A7C
    .float 0.1

glabel D_808C0A80
 .word 0x3EE5C8FA

.text
glabel func_808BFE50
/* 00A40 808BFE50 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00A44 808BFE54 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A48 808BFE58 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00A4C 808BFE5C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00A50 808BFE60 C4840024 */  lwc1    $f4, 0x0024($a0)           ## 00000024
/* 00A54 808BFE64 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 00A58 808BFE68 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00A5C 808BFE6C E7A40030 */  swc1    $f4, 0x0030($sp)           
/* 00A60 808BFE70 44810000 */  mtc1    $at, $f0                   ## $f0 = 50.00
/* 00A64 808BFE74 C4860028 */  lwc1    $f6, 0x0028($a0)           ## 00000028
/* 00A68 808BFE78 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A6C 808BFE7C 44070000 */  mfc1    $a3, $f0                   
/* 00A70 808BFE80 46003201 */  sub.s   $f8, $f6, $f0              
/* 00A74 808BFE84 3C06428C */  lui     $a2, 0x428C                ## $a2 = 428C0000
/* 00A78 808BFE88 E7A80034 */  swc1    $f8, 0x0034($sp)           
/* 00A7C 808BFE8C C48A002C */  lwc1    $f10, 0x002C($a0)          ## 0000002C
/* 00A80 808BFE90 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00A84 808BFE94 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF0
/* 00A88 808BFE98 AFA3003C */  sw      $v1, 0x003C($sp)           
/* 00A8C 808BFE9C 0C023BD7 */  jal     Player_IsBurningStickInRange              
/* 00A90 808BFEA0 E7AA0038 */  swc1    $f10, 0x0038($sp)          
/* 00A94 808BFEA4 1040000A */  beq     $v0, $zero, .L808BFED0     
/* 00A98 808BFEA8 8FA3003C */  lw      $v1, 0x003C($sp)           
/* 00A9C 808BFEAC C47008B8 */  lwc1    $f16, 0x08B8($v1)          ## 000008B8
/* 00AA0 808BFEB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AA4 808BFEB4 E6100008 */  swc1    $f16, 0x0008($s0)          ## 00000008
/* 00AA8 808BFEB8 C47208C0 */  lwc1    $f18, 0x08C0($v1)          ## 000008C0
/* 00AAC 808BFEBC E6120010 */  swc1    $f18, 0x0010($s0)          ## 00000010
/* 00AB0 808BFEC0 0C22FE43 */  jal     func_808BF90C              
/* 00AB4 808BFEC4 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 00AB8 808BFEC8 10000094 */  beq     $zero, $zero, .L808C011C   
/* 00ABC 808BFECC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808BFED0:
/* 00AC0 808BFED0 920F0181 */  lbu     $t7, 0x0181($s0)           ## 00000181
/* 00AC4 808BFED4 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 00AC8 808BFED8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00ACC 808BFEDC 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 00AD0 808BFEE0 13000005 */  beq     $t8, $zero, .L808BFEF8     
/* 00AD4 808BFEE4 00000000 */  nop
/* 00AD8 808BFEE8 0C22FE43 */  jal     func_808BF90C              
/* 00ADC 808BFEEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AE0 808BFEF0 1000008A */  beq     $zero, $zero, .L808C011C   
/* 00AE4 808BFEF4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808BFEF8:
/* 00AE8 808BFEF8 0C010D5B */  jal     func_8004356C              
/* 00AEC 808BFEFC AFA3003C */  sw      $v1, 0x003C($sp)           
/* 00AF0 808BFF00 10400051 */  beq     $v0, $zero, .L808C0048     
/* 00AF4 808BFF04 8FA3003C */  lw      $v1, 0x003C($sp)           
/* 00AF8 808BFF08 84790896 */  lh      $t9, 0x0896($v1)           ## 00000896
/* 00AFC 808BFF0C 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 00B00 808BFF10 3C01808C */  lui     $at, %hi(D_808C0A78)       ## $at = 808C0000
/* 00B04 808BFF14 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 00B08 808BFF18 00000000 */  nop
/* 00B0C 808BFF1C 468020A0 */  cvt.s.w $f2, $f4                   
/* 00B10 808BFF20 460E103C */  c.lt.s  $f2, $f14                  
/* 00B14 808BFF24 00000000 */  nop
/* 00B18 808BFF28 45020004 */  bc1fl   .L808BFF3C                 
/* 00B1C 808BFF2C 46001306 */  mov.s   $f12, $f2                  
/* 00B20 808BFF30 10000002 */  beq     $zero, $zero, .L808BFF3C   
/* 00B24 808BFF34 46007306 */  mov.s   $f12, $f14                 
/* 00B28 808BFF38 46001306 */  mov.s   $f12, $f2                  
.L808BFF3C:
/* 00B2C 808BFF3C C4260A78 */  lwc1    $f6, %lo(D_808C0A78)($at)  
/* 00B30 808BFF40 46006004 */  sqrt.s  $f0, $f12                  
/* 00B34 808BFF44 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00B38 808BFF48 4602303C */  c.lt.s  $f6, $f2                   
/* 00B3C 808BFF4C 00000000 */  nop
/* 00B40 808BFF50 45020018 */  bc1fl   .L808BFFB4                 
/* 00B44 808BFF54 46000080 */  add.s   $f2, $f0, $f0              
/* 00B48 808BFF58 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 00B4C 808BFF5C 44815000 */  mtc1    $at, $f10                  ## $f10 = 80.00
/* 00B50 808BFF60 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00B54 808BFF64 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 00B58 808BFF68 460A403C */  c.lt.s  $f8, $f10                  
/* 00B5C 808BFF6C 240B0028 */  addiu   $t3, $zero, 0x0028         ## $t3 = 00000028
/* 00B60 808BFF70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B64 808BFF74 24052862 */  addiu   $a1, $zero, 0x2862         ## $a1 = 00002862
/* 00B68 808BFF78 4502000E */  bc1fl   .L808BFFB4                 
/* 00B6C 808BFF7C 46000080 */  add.s   $f2, $f0, $f0              
/* 00B70 808BFF80 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
/* 00B74 808BFF84 44818000 */  mtc1    $at, $f16                  ## $f16 = 200.00
/* 00B78 808BFF88 A2080003 */  sb      $t0, 0x0003($s0)           ## 00000003
/* 00B7C 808BFF8C 352A0010 */  ori     $t2, $t1, 0x0010           ## $t2 = 00000010
/* 00B80 808BFF90 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 00B84 808BFF94 A60B016A */  sh      $t3, 0x016A($s0)           ## 0000016A
/* 00B88 808BFF98 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00B8C 808BFF9C E610016C */  swc1    $f16, 0x016C($s0)          ## 0000016C
/* 00B90 808BFFA0 3C0C808C */  lui     $t4, %hi(func_808BFC90)    ## $t4 = 808C0000
/* 00B94 808BFFA4 258CFC90 */  addiu   $t4, $t4, %lo(func_808BFC90) ## $t4 = 808BFC90
/* 00B98 808BFFA8 1000005B */  beq     $zero, $zero, .L808C0118   
/* 00B9C 808BFFAC AE0C0164 */  sw      $t4, 0x0164($s0)           ## 00000164
/* 00BA0 808BFFB0 46000080 */  add.s   $f2, $f0, $f0              
.L808BFFB4:
/* 00BA4 808BFFB4 C612016C */  lwc1    $f18, 0x016C($s0)          ## 0000016C
/* 00BA8 808BFFB8 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00BAC 808BFFBC 4602903C */  c.lt.s  $f18, $f2                  
/* 00BB0 808BFFC0 00000000 */  nop
/* 00BB4 808BFFC4 4502000A */  bc1fl   .L808BFFF0                 
/* 00BB8 808BFFC8 C4640068 */  lwc1    $f4, 0x0068($v1)           ## 00000068
/* 00BBC 808BFFCC 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
/* 00BC0 808BFFD0 240D000E */  addiu   $t5, $zero, 0x000E         ## $t5 = 0000000E
/* 00BC4 808BFFD4 4602603C */  c.lt.s  $f12, $f2                  
/* 00BC8 808BFFD8 00000000 */  nop
/* 00BCC 808BFFDC 45020004 */  bc1fl   .L808BFFF0                 
/* 00BD0 808BFFE0 C4640068 */  lwc1    $f4, 0x0068($v1)           ## 00000068
/* 00BD4 808BFFE4 E602016C */  swc1    $f2, 0x016C($s0)           ## 0000016C
/* 00BD8 808BFFE8 A60D016A */  sh      $t5, 0x016A($s0)           ## 0000016A
/* 00BDC 808BFFEC C4640068 */  lwc1    $f4, 0x0068($v1)           ## 00000068
.L808BFFF0:
/* 00BE0 808BFFF0 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00BE4 808BFFF4 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
/* 00BE8 808BFFF8 46047032 */  c.eq.s  $f14, $f4                  
/* 00BEC 808BFFFC 3C01808C */  lui     $at, %hi(D_808C0A7C)       ## $at = 808C0000
/* 00BF0 808C0000 45030012 */  bc1tl   .L808C004C                 
/* 00BF4 808C0004 8602016A */  lh      $v0, 0x016A($s0)           ## 0000016A
/* 00BF8 808C0008 C600016C */  lwc1    $f0, 0x016C($s0)           ## 0000016C
/* 00BFC 808C000C C4260A7C */  lwc1    $f6, %lo(D_808C0A7C)($at)  
/* 00C00 808C0010 240E000E */  addiu   $t6, $zero, 0x000E         ## $t6 = 0000000E
/* 00C04 808C0014 4606003C */  c.lt.s  $f0, $f6                   
/* 00C08 808C0018 00000000 */  nop
/* 00C0C 808C001C 45020004 */  bc1fl   .L808C0030                 
/* 00C10 808C0020 460C003C */  c.lt.s  $f0, $f12                  
/* 00C14 808C0024 A60E016A */  sh      $t6, 0x016A($s0)           ## 0000016A
/* 00C18 808C0028 C600016C */  lwc1    $f0, 0x016C($s0)           ## 0000016C
/* 00C1C 808C002C 460C003C */  c.lt.s  $f0, $f12                  
.L808C0030:
/* 00C20 808C0030 00000000 */  nop
/* 00C24 808C0034 45020004 */  bc1fl   .L808C0048                 
/* 00C28 808C0038 E600016C */  swc1    $f0, 0x016C($s0)           ## 0000016C
/* 00C2C 808C003C 10000002 */  beq     $zero, $zero, .L808C0048   
/* 00C30 808C0040 E60C016C */  swc1    $f12, 0x016C($s0)          ## 0000016C
/* 00C34 808C0044 E600016C */  swc1    $f0, 0x016C($s0)           ## 0000016C
.L808C0048:
/* 00C38 808C0048 8602016A */  lh      $v0, 0x016A($s0)           ## 0000016A
.L808C004C:
/* 00C3C 808C004C 2418000E */  addiu   $t8, $zero, 0x000E         ## $t8 = 0000000E
/* 00C40 808C0050 10400003 */  beq     $v0, $zero, .L808C0060     
/* 00C44 808C0054 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 00C48 808C0058 A60F016A */  sh      $t7, 0x016A($s0)           ## 0000016A
/* 00C4C 808C005C 8602016A */  lh      $v0, 0x016A($s0)           ## 0000016A
.L808C0060:
/* 00C50 808C0060 54400004 */  bnel    $v0, $zero, .L808C0074     
/* 00C54 808C0064 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 00C58 808C0068 A618016A */  sh      $t8, 0x016A($s0)           ## 0000016A
/* 00C5C 808C006C 8602016A */  lh      $v0, 0x016A($s0)           ## 0000016A
/* 00C60 808C0070 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
.L808C0074:
/* 00C64 808C0074 3C01808C */  lui     $at, %hi(D_808C0A80)       ## $at = 808C0000
/* 00C68 808C0078 C4300A80 */  lwc1    $f16, %lo(D_808C0A80)($at) 
/* 00C6C 808C007C 468042A0 */  cvt.s.w $f10, $f8                  
/* 00C70 808C0080 46105302 */  mul.s   $f12, $f10, $f16           
/* 00C74 808C0084 0C0400A4 */  jal     sinf
              
/* 00C78 808C0088 00000000 */  nop
/* 00C7C 808C008C C612016C */  lwc1    $f18, 0x016C($s0)          ## 0000016C
/* 00C80 808C0090 C606000C */  lwc1    $f6, 0x000C($s0)           ## 0000000C
/* 00C84 808C0094 3C063F4C */  lui     $a2, 0x3F4C                ## $a2 = 3F4C0000
/* 00C88 808C0098 46120102 */  mul.s   $f4, $f0, $f18             
/* 00C8C 808C009C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3F4CCCCD
/* 00C90 808C00A0 2604016C */  addiu   $a0, $s0, 0x016C           ## $a0 = 0000016C
/* 00C94 808C00A4 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 00C98 808C00A8 46062200 */  add.s   $f8, $f4, $f6              
/* 00C9C 808C00AC 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 00CA0 808C00B0 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 00CA4 808C00B4 8619016A */  lh      $t9, 0x016A($s0)           ## 0000016A
/* 00CA8 808C00B8 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 00CAC 808C00BC 1721000E */  bne     $t9, $at, .L808C00F8       
/* 00CB0 808C00C0 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00CB4 808C00C4 44815000 */  mtc1    $at, $f10                  ## $f10 = 3.00
/* 00CB8 808C00C8 C610016C */  lwc1    $f16, 0x016C($s0)          ## 0000016C
/* 00CBC 808C00CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CC0 808C00D0 4610503C */  c.lt.s  $f10, $f16                 
/* 00CC4 808C00D4 00000000 */  nop
/* 00CC8 808C00D8 45000005 */  bc1f    .L808C00F0                 
/* 00CCC 808C00DC 00000000 */  nop
/* 00CD0 808C00E0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00CD4 808C00E4 24052861 */  addiu   $a1, $zero, 0x2861         ## $a1 = 00002861
/* 00CD8 808C00E8 10000003 */  beq     $zero, $zero, .L808C00F8   
/* 00CDC 808C00EC 00000000 */  nop
.L808C00F0:
/* 00CE0 808C00F0 0C03E341 */  jal     func_800F8D04              
/* 00CE4 808C00F4 24042861 */  addiu   $a0, $zero, 0x2861         ## $a0 = 00002861
.L808C00F8:
/* 00CE8 808C00F8 0C22FE0F */  jal     func_808BF83C              
/* 00CEC 808C00FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CF0 808C0100 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00CF4 808C0104 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00CF8 808C0108 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00CFC 808C010C 26060170 */  addiu   $a2, $s0, 0x0170           ## $a2 = 00000170
/* 00D00 808C0110 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00D04 808C0114 00812821 */  addu    $a1, $a0, $at              
.L808C0118:
/* 00D08 808C0118 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808C011C:
/* 00D0C 808C011C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00D10 808C0120 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00D14 808C0124 03E00008 */  jr      $ra                        
/* 00D18 808C0128 00000000 */  nop
