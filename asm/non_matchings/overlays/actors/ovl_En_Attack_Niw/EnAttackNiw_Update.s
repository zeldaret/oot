.late_rodata
glabel D_809B61F4
    .float 5000.0

.text
glabel EnAttackNiw_Update
/* 00BD4 809B5CD4 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00BD8 809B5CD8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00BDC 809B5CDC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00BE0 809B5CE0 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 00BE4 809B5CE4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BE8 809B5CE8 AFAE0040 */  sw      $t6, 0x0040($sp)           
/* 00BEC 809B5CEC 848F028C */  lh      $t7, 0x028C($a0)           ## 0000028C
/* 00BF0 809B5CF0 84820254 */  lh      $v0, 0x0254($a0)           ## 00000254
/* 00BF4 809B5CF4 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00BF8 809B5CF8 10400003 */  beq     $v0, $zero, .L809B5D08     
/* 00BFC 809B5CFC A498028C */  sh      $t8, 0x028C($a0)           ## 0000028C
/* 00C00 809B5D00 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 00C04 809B5D04 A4990254 */  sh      $t9, 0x0254($a0)           ## 00000254
.L809B5D08:
/* 00C08 809B5D08 86020258 */  lh      $v0, 0x0258($s0)           ## 00000258
/* 00C0C 809B5D0C 10400002 */  beq     $v0, $zero, .L809B5D18     
/* 00C10 809B5D10 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 00C14 809B5D14 A6080258 */  sh      $t0, 0x0258($s0)           ## 00000258
.L809B5D18:
/* 00C18 809B5D18 8602025A */  lh      $v0, 0x025A($s0)           ## 0000025A
/* 00C1C 809B5D1C 10400002 */  beq     $v0, $zero, .L809B5D28     
/* 00C20 809B5D20 2449FFFF */  addiu   $t1, $v0, 0xFFFF           ## $t1 = FFFFFFFF
/* 00C24 809B5D24 A609025A */  sh      $t1, 0x025A($s0)           ## 0000025A
.L809B5D28:
/* 00C28 809B5D28 8602025E */  lh      $v0, 0x025E($s0)           ## 0000025E
/* 00C2C 809B5D2C 10400002 */  beq     $v0, $zero, .L809B5D38     
/* 00C30 809B5D30 244AFFFF */  addiu   $t2, $v0, 0xFFFF           ## $t2 = FFFFFFFF
/* 00C34 809B5D34 A60A025E */  sh      $t2, 0x025E($s0)           ## 0000025E
.L809B5D38:
/* 00C38 809B5D38 86020260 */  lh      $v0, 0x0260($s0)           ## 00000260
/* 00C3C 809B5D3C 10400002 */  beq     $v0, $zero, .L809B5D48     
/* 00C40 809B5D40 244BFFFF */  addiu   $t3, $v0, 0xFFFF           ## $t3 = FFFFFFFF
/* 00C44 809B5D44 A60B0260 */  sh      $t3, 0x0260($s0)           ## 00000260
.L809B5D48:
/* 00C48 809B5D48 8602025C */  lh      $v0, 0x025C($s0)           ## 0000025C
/* 00C4C 809B5D4C 10400002 */  beq     $v0, $zero, .L809B5D58     
/* 00C50 809B5D50 244CFFFF */  addiu   $t4, $v0, 0xFFFF           ## $t4 = FFFFFFFF
/* 00C54 809B5D54 A60C025C */  sh      $t4, 0x025C($s0)           ## 0000025C
.L809B5D58:
/* 00C58 809B5D58 86020262 */  lh      $v0, 0x0262($s0)           ## 00000262
/* 00C5C 809B5D5C 10400002 */  beq     $v0, $zero, .L809B5D68     
/* 00C60 809B5D60 244DFFFF */  addiu   $t5, $v0, 0xFFFF           ## $t5 = FFFFFFFF
/* 00C64 809B5D64 A60D0262 */  sh      $t5, 0x0262($s0)           ## 00000262
.L809B5D68:
/* 00C68 809B5D68 8A0F0030 */  lwl     $t7, 0x0030($s0)           ## 00000030
/* 00C6C 809B5D6C 9A0F0033 */  lwr     $t7, 0x0033($s0)           ## 00000033
/* 00C70 809B5D70 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00C74 809B5D74 44812000 */  mtc1    $at, $f4                   ## $f4 = 15.00
/* 00C78 809B5D78 AA0F00B4 */  swl     $t7, 0x00B4($s0)           ## 000000B4
/* 00C7C 809B5D7C BA0F00B7 */  swr     $t7, 0x00B7($s0)           ## 000000B7
/* 00C80 809B5D80 960F0034 */  lhu     $t7, 0x0034($s0)           ## 00000034
/* 00C84 809B5D84 E60400C4 */  swc1    $f4, 0x00C4($s0)           ## 000000C4
/* 00C88 809B5D88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C8C 809B5D8C A60F00B8 */  sh      $t7, 0x00B8($s0)           ## 000000B8
/* 00C90 809B5D90 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 00C94 809B5D94 8E190250 */  lw      $t9, 0x0250($s0)           ## 00000250
/* 00C98 809B5D98 0320F809 */  jalr    $ra, $t9                   
/* 00C9C 809B5D9C 00000000 */  nop
/* 00CA0 809B5DA0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00CA4 809B5DA4 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 00CA8 809B5DA8 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00CAC 809B5DAC 44813000 */  mtc1    $at, $f6                   ## $f6 = 60.00
/* 00CB0 809B5DB0 2418001D */  addiu   $t8, $zero, 0x001D         ## $t8 = 0000001D
/* 00CB4 809B5DB4 44060000 */  mfc1    $a2, $f0                   
/* 00CB8 809B5DB8 44070000 */  mfc1    $a3, $f0                   
/* 00CBC 809B5DBC AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00CC0 809B5DC0 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00CC4 809B5DC4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00CC8 809B5DC8 0C00B92D */  jal     func_8002E4B4              
/* 00CCC 809B5DCC E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00CD0 809B5DD0 8E090250 */  lw      $t1, 0x0250($s0)           ## 00000250
/* 00CD4 809B5DD4 3C08809B */  lui     $t0, %hi(func_809B5670)    ## $t0 = 809B0000
/* 00CD8 809B5DD8 25085670 */  addiu   $t0, $t0, %lo(func_809B5670) ## $t0 = 809B5670
/* 00CDC 809B5DDC 15090005 */  bne     $t0, $t1, .L809B5DF4       
/* 00CE0 809B5DE0 00000000 */  nop
/* 00CE4 809B5DE4 0C00B65F */  jal     func_8002D97C              
/* 00CE8 809B5DE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CEC 809B5DEC 10000004 */  beq     $zero, $zero, .L809B5E00   
/* 00CF0 809B5DF0 3C01C6FA */  lui     $at, 0xC6FA                ## $at = C6FA0000
.L809B5DF4:
/* 00CF4 809B5DF4 0C00B638 */  jal     Actor_MoveForward
              
/* 00CF8 809B5DF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CFC 809B5DFC 3C01C6FA */  lui     $at, 0xC6FA                ## $at = C6FA0000
.L809B5E00:
/* 00D00 809B5E00 44814000 */  mtc1    $at, $f8                   ## $f8 = -32000.00
/* 00D04 809B5E04 C60A0080 */  lwc1    $f10, 0x0080($s0)          ## 00000080
/* 00D08 809B5E08 4608503E */  c.le.s  $f10, $f8                  
/* 00D0C 809B5E0C 00000000 */  nop
/* 00D10 809B5E10 45020006 */  bc1fl   .L809B5E2C                 
/* 00D14 809B5E14 960A0088 */  lhu     $t2, 0x0088($s0)           ## 00000088
/* 00D18 809B5E18 0C00B55C */  jal     Actor_Kill
              
/* 00D1C 809B5E1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D20 809B5E20 10000059 */  beq     $zero, $zero, .L809B5F88   
/* 00D24 809B5E24 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00D28 809B5E28 960A0088 */  lhu     $t2, 0x0088($s0)           ## 00000088
.L809B5E2C:
/* 00D2C 809B5E2C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00D30 809B5E30 314B0020 */  andi    $t3, $t2, 0x0020           ## $t3 = 00000000
/* 00D34 809B5E34 51600024 */  beql    $t3, $zero, .L809B5EC8     
/* 00D38 809B5E38 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 00D3C 809B5E3C 8E0C0250 */  lw      $t4, 0x0250($s0)           ## 00000250
/* 00D40 809B5E40 3C02809B */  lui     $v0, %hi(func_809B5C18)    ## $v0 = 809B0000
/* 00D44 809B5E44 24425C18 */  addiu   $v0, $v0, %lo(func_809B5C18) ## $v0 = 809B5C18
/* 00D48 809B5E48 104C001E */  beq     $v0, $t4, .L809B5EC4       
/* 00D4C 809B5E4C 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE0
/* 00D50 809B5E50 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00D54 809B5E54 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00D58 809B5E58 AFA20028 */  sw      $v0, 0x0028($sp)           
/* 00D5C 809B5E5C C7B00034 */  lwc1    $f16, 0x0034($sp)          
/* 00D60 809B5E60 C6120084 */  lwc1    $f18, 0x0084($s0)          ## 00000084
/* 00D64 809B5E64 240D0190 */  addiu   $t5, $zero, 0x0190         ## $t5 = 00000190
/* 00D68 809B5E68 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 00D6C 809B5E6C 46128100 */  add.s   $f4, $f16, $f18            
/* 00D70 809B5E70 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00D74 809B5E74 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00D78 809B5E78 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFE0
/* 00D7C 809B5E7C E7A40034 */  swc1    $f4, 0x0034($sp)           
/* 00D80 809B5E80 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00D84 809B5E84 0C00A527 */  jal     func_8002949C              
/* 00D88 809B5E88 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00D8C 809B5E8C 860E0030 */  lh      $t6, 0x0030($s0)           ## 00000030
/* 00D90 809B5E90 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00D94 809B5E94 8FA20028 */  lw      $v0, 0x0028($sp)           
/* 00D98 809B5E98 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 00D9C 809B5E9C 3C01809B */  lui     $at, %hi(D_809B61F4)       ## $at = 809B0000
/* 00DA0 809B5EA0 E60002DC */  swc1    $f0, 0x02DC($s0)           ## 000002DC
/* 00DA4 809B5EA4 46803220 */  cvt.s.w $f8, $f6                   
/* 00DA8 809B5EA8 E600006C */  swc1    $f0, 0x006C($s0)           ## 0000006C
/* 00DAC 809B5EAC E60002E0 */  swc1    $f0, 0x02E0($s0)           ## 000002E0
/* 00DB0 809B5EB0 C42A61F4 */  lwc1    $f10, %lo(D_809B61F4)($at) 
/* 00DB4 809B5EB4 AE020250 */  sw      $v0, 0x0250($s0)           ## 00000250
/* 00DB8 809B5EB8 460A4401 */  sub.s   $f16, $f8, $f10            
/* 00DBC 809B5EBC 10000031 */  beq     $zero, $zero, .L809B5F84   
/* 00DC0 809B5EC0 E61002D0 */  swc1    $f16, 0x02D0($s0)          ## 000002D0
.L809B5EC4:
/* 00DC4 809B5EC4 44810000 */  mtc1    $at, $f0                   ## $f0 = -0.00
.L809B5EC8:
/* 00DC8 809B5EC8 C612008C */  lwc1    $f18, 0x008C($s0)          ## 0000008C
/* 00DCC 809B5ECC 46000102 */  mul.s   $f4, $f0, $f0              
/* 00DD0 809B5ED0 4604903C */  c.lt.s  $f18, $f4                  
/* 00DD4 809B5ED4 00000000 */  nop
/* 00DD8 809B5ED8 4502001D */  bc1fl   .L809B5F50                 
/* 00DDC 809B5EDC 860B025E */  lh      $t3, 0x025E($s0)           ## 0000025E
/* 00DE0 809B5EE0 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
/* 00DE4 809B5EE4 8C4F0130 */  lw      $t7, 0x0130($v0)           ## 00000130
/* 00DE8 809B5EE8 51E00019 */  beql    $t7, $zero, .L809B5F50     
/* 00DEC 809B5EEC 860B025E */  lh      $t3, 0x025E($s0)           ## 0000025E
/* 00DF0 809B5EF0 50400017 */  beql    $v0, $zero, .L809B5F50     
/* 00DF4 809B5EF4 860B025E */  lh      $t3, 0x025E($s0)           ## 0000025E
/* 00DF8 809B5EF8 50400015 */  beql    $v0, $zero, .L809B5F50     
/* 00DFC 809B5EFC 860B025E */  lh      $t3, 0x025E($s0)           ## 0000025E
/* 00E00 809B5F00 8459026A */  lh      $t9, 0x026A($v0)           ## 0000026A
/* 00E04 809B5F04 8FB80040 */  lw      $t8, 0x0040($sp)           
/* 00E08 809B5F08 57200011 */  bnel    $t9, $zero, .L809B5F50     
/* 00E0C 809B5F0C 860B025E */  lh      $t3, 0x025E($s0)           ## 0000025E
/* 00E10 809B5F10 83080A78 */  lb      $t0, 0x0A78($t8)           ## 00000A78
/* 00E14 809B5F14 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00E18 809B5F18 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00E1C 809B5F1C 1500000B */  bne     $t0, $zero, .L809B5F4C     
/* 00E20 809B5F20 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 00E24 809B5F24 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00E28 809B5F28 86070032 */  lh      $a3, 0x0032($s0)           ## 00000032
/* 00E2C 809B5F2C 24090010 */  addiu   $t1, $zero, 0x0010         ## $t1 = 00000010
/* 00E30 809B5F30 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00E34 809B5F34 AFA20044 */  sw      $v0, 0x0044($sp)           
/* 00E38 809B5F38 0C00BDB5 */  jal     func_8002F6D4              
/* 00E3C 809B5F3C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00E40 809B5F40 8FA30044 */  lw      $v1, 0x0044($sp)           
/* 00E44 809B5F44 240A0046 */  addiu   $t2, $zero, 0x0046         ## $t2 = 00000046
/* 00E48 809B5F48 A46A026A */  sh      $t2, 0x026A($v1)           ## 0000026A
.L809B5F4C:
/* 00E4C 809B5F4C 860B025E */  lh      $t3, 0x025E($s0)           ## 0000025E
.L809B5F50:
/* 00E50 809B5F50 240C001E */  addiu   $t4, $zero, 0x001E         ## $t4 = 0000001E
/* 00E54 809B5F54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E58 809B5F58 15600003 */  bne     $t3, $zero, .L809B5F68     
/* 00E5C 809B5F5C 24052812 */  addiu   $a1, $zero, 0x2812         ## $a1 = 00002812
/* 00E60 809B5F60 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00E64 809B5F64 A60C025E */  sh      $t4, 0x025E($s0)           ## 0000025E
.L809B5F68:
/* 00E68 809B5F68 860D0260 */  lh      $t5, 0x0260($s0)           ## 00000260
/* 00E6C 809B5F6C 240E0007 */  addiu   $t6, $zero, 0x0007         ## $t6 = 00000007
/* 00E70 809B5F70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E74 809B5F74 15A00003 */  bne     $t5, $zero, .L809B5F84     
/* 00E78 809B5F78 240538FF */  addiu   $a1, $zero, 0x38FF         ## $a1 = 000038FF
/* 00E7C 809B5F7C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00E80 809B5F80 A60E0260 */  sh      $t6, 0x0260($s0)           ## 00000260
.L809B5F84:
/* 00E84 809B5F84 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809B5F88:
/* 00E88 809B5F88 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00E8C 809B5F8C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00E90 809B5F90 03E00008 */  jr      $ra                        
/* 00E94 809B5F94 00000000 */  nop
