glabel func_80B0D878
/* 01AC8 80B0D878 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 01ACC 80B0D87C 3C0F80B1 */  lui     $t7, %hi(D_80B0F12C)       ## $t7 = 80B10000
/* 01AD0 80B0D880 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 01AD4 80B0D884 AFB00048 */  sw      $s0, 0x0048($sp)           
/* 01AD8 80B0D888 AFA5008C */  sw      $a1, 0x008C($sp)           
/* 01ADC 80B0D88C 25EFF12C */  addiu   $t7, $t7, %lo(D_80B0F12C)  ## $t7 = 80B0F12C
/* 01AE0 80B0D890 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B0F12C
/* 01AE4 80B0D894 27AE006C */  addiu   $t6, $sp, 0x006C           ## $t6 = FFFFFFE4
/* 01AE8 80B0D898 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B0F130
/* 01AEC 80B0D89C ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFE4
/* 01AF0 80B0D8A0 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B0F134
/* 01AF4 80B0D8A4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01AF8 80B0D8A8 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFE8
/* 01AFC 80B0D8AC ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFEC
/* 01B00 80B0D8B0 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 01B04 80B0D8B4 0C0295B2 */  jal     Animation_OnFrame              
/* 01B08 80B0D8B8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01B0C 80B0D8BC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01B10 80B0D8C0 14410003 */  bne     $v0, $at, .L80B0D8D0       
/* 01B14 80B0D8C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B18 80B0D8C8 0C2C33AA */  jal     func_80B0CEA8              
/* 01B1C 80B0D8CC 8FA5008C */  lw      $a1, 0x008C($sp)           
.L80B0D8D0:
/* 01B20 80B0D8D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B24 80B0D8D4 0C2C333D */  jal     func_80B0CCF4              
/* 01B28 80B0D8D8 26050420 */  addiu   $a1, $s0, 0x0420           ## $a1 = 00000420
/* 01B2C 80B0D8DC 8A090030 */  lwl     $t1, 0x0030($s0)           ## 00000030
/* 01B30 80B0D8E0 9A090033 */  lwr     $t1, 0x0033($s0)           ## 00000033
/* 01B34 80B0D8E4 86030394 */  lh      $v1, 0x0394($s0)           ## 00000394
/* 01B38 80B0D8E8 AA0900B4 */  swl     $t1, 0x00B4($s0)           ## 000000B4
/* 01B3C 80B0D8EC BA0900B7 */  swr     $t1, 0x00B7($s0)           ## 000000B7
/* 01B40 80B0D8F0 96090034 */  lhu     $t1, 0x0034($s0)           ## 00000034
/* 01B44 80B0D8F4 14600030 */  bne     $v1, $zero, .L80B0D9B8     
/* 01B48 80B0D8F8 A60900B8 */  sh      $t1, 0x00B8($s0)           ## 000000B8
/* 01B4C 80B0D8FC 860A0392 */  lh      $t2, 0x0392($s0)           ## 00000392
/* 01B50 80B0D900 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 01B54 80B0D904 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 01B58 80B0D908 1540002B */  bne     $t2, $zero, .L80B0D9B8     
/* 01B5C 80B0D90C 24044843 */  addiu   $a0, $zero, 0x4843         ## $a0 = 00004843
/* 01B60 80B0D910 3C0B8013 */  lui     $t3, %hi(D_801333E8)
/* 01B64 80B0D914 256B33E8 */  addiu   $t3, %lo(D_801333E8)
/* 01B68 80B0D918 3C058013 */  lui     $a1, %hi(D_801333D4)
/* 01B6C 80B0D91C 24A533D4 */  addiu   $a1, %lo(D_801333D4)
/* 01B70 80B0D920 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 01B74 80B0D924 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01B78 80B0D928 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 01B7C 80B0D92C AFA70010 */  sw      $a3, 0x0010($sp)           
/* 01B80 80B0D930 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01B84 80B0D934 44817000 */  mtc1    $at, $f14                  ## $f14 = 10.00
/* 01B88 80B0D938 C6040364 */  lwc1    $f4, 0x0364($s0)           ## 00000364
/* 01B8C 80B0D93C C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 01B90 80B0D940 C6060368 */  lwc1    $f6, 0x0368($s0)           ## 00000368
/* 01B94 80B0D944 460E2002 */  mul.s   $f0, $f4, $f14             
/* 01B98 80B0D948 C608036C */  lwc1    $f8, 0x036C($s0)           ## 0000036C
/* 01B9C 80B0D94C 8FA6008C */  lw      $a2, 0x008C($sp)           
/* 01BA0 80B0D950 460E3082 */  mul.s   $f2, $f6, $f14             
/* 01BA4 80B0D954 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01BA8 80B0D958 2407019C */  addiu   $a3, $zero, 0x019C         ## $a3 = 0000019C
/* 01BAC 80B0D95C 460E4302 */  mul.s   $f12, $f8, $f14            
/* 01BB0 80B0D960 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 01BB4 80B0D964 46005400 */  add.s   $f16, $f10, $f0            
/* 01BB8 80B0D968 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 01BBC 80B0D96C C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 01BC0 80B0D970 46029100 */  add.s   $f4, $f18, $f2             
/* 01BC4 80B0D974 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 01BC8 80B0D978 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 01BCC 80B0D97C AFA00024 */  sw      $zero, 0x0024($sp)         
/* 01BD0 80B0D980 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 01BD4 80B0D984 460C3200 */  add.s   $f8, $f6, $f12             
/* 01BD8 80B0D988 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 01BDC 80B0D98C E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 01BE0 80B0D990 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
/* 01BE4 80B0D994 0C00C916 */  jal     Actor_SpawnAsChild
              
/* 01BE8 80B0D998 AFAC0028 */  sw      $t4, 0x0028($sp)           
/* 01BEC 80B0D99C 10400002 */  beq     $v0, $zero, .L80B0D9A8     
/* 01BF0 80B0D9A0 00000000 */  nop
/* 01BF4 80B0D9A4 AC400118 */  sw      $zero, 0x0118($v0)         ## 00000118
.L80B0D9A8:
/* 01BF8 80B0D9A8 0C00B55C */  jal     Actor_Kill
              
/* 01BFC 80B0D9AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C00 80B0D9B0 1000004F */  beq     $zero, $zero, .L80B0DAF0   
/* 01C04 80B0D9B4 8FBF004C */  lw      $ra, 0x004C($sp)           
.L80B0D9B8:
/* 01C08 80B0D9B8 860D0392 */  lh      $t5, 0x0392($s0)           ## 00000392
/* 01C0C 80B0D9BC 55A0004C */  bnel    $t5, $zero, .L80B0DAF0     
/* 01C10 80B0D9C0 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 01C14 80B0D9C4 14600003 */  bne     $v1, $zero, .L80B0D9D4     
/* 01C18 80B0D9C8 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 01C1C 80B0D9CC 10000003 */  beq     $zero, $zero, .L80B0D9DC   
/* 01C20 80B0D9D0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B0D9D4:
/* 01C24 80B0D9D4 A60E0394 */  sh      $t6, 0x0394($s0)           ## 00000394
/* 01C28 80B0D9D8 86020394 */  lh      $v0, 0x0394($s0)           ## 00000394
.L80B0D9DC:
/* 01C2C 80B0D9DC 50400044 */  beql    $v0, $zero, .L80B0DAF0     
/* 01C30 80B0D9E0 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 01C34 80B0D9E4 8E190024 */  lw      $t9, 0x0024($s0)           ## 00000024
/* 01C38 80B0D9E8 27AF0078 */  addiu   $t7, $sp, 0x0078           ## $t7 = FFFFFFF0
/* 01C3C 80B0D9EC ADF90000 */  sw      $t9, 0x0000($t7)           ## FFFFFFF0
/* 01C40 80B0D9F0 8E180028 */  lw      $t8, 0x0028($s0)           ## 00000028
/* 01C44 80B0D9F4 ADF80004 */  sw      $t8, 0x0004($t7)           ## FFFFFFF4
/* 01C48 80B0D9F8 8E19002C */  lw      $t9, 0x002C($s0)           ## 0000002C
/* 01C4C 80B0D9FC 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 01C50 80B0DA00 ADF90008 */  sw      $t9, 0x0008($t7)           ## FFFFFFF8
/* 01C54 80B0DA04 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01C58 80B0DA08 44817000 */  mtc1    $at, $f14                  ## $f14 = 10.00
/* 01C5C 80B0DA0C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01C60 80B0DA10 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 01C64 80B0DA14 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 01C68 80B0DA18 44819000 */  mtc1    $at, $f18                  ## $f18 = 6.00
/* 01C6C 80B0DA1C 460A0401 */  sub.s   $f16, $f0, $f10            
/* 01C70 80B0DA20 C7A8007C */  lwc1    $f8, 0x007C($sp)           
/* 01C74 80B0DA24 46128102 */  mul.s   $f4, $f16, $f18            
/* 01C78 80B0DA28 46047180 */  add.s   $f6, $f14, $f4             
/* 01C7C 80B0DA2C 46064280 */  add.s   $f10, $f8, $f6             
/* 01C80 80B0DA30 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 01C84 80B0DA34 E7AA007C */  swc1    $f10, 0x007C($sp)          
/* 01C88 80B0DA38 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01C8C 80B0DA3C 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 01C90 80B0DA40 3C014200 */  lui     $at, 0x4200                ## $at = 42000000
/* 01C94 80B0DA44 44812000 */  mtc1    $at, $f4                   ## $f4 = 32.00
/* 01C98 80B0DA48 46100481 */  sub.s   $f18, $f0, $f16            
/* 01C9C 80B0DA4C C7A60078 */  lwc1    $f6, 0x0078($sp)           
/* 01CA0 80B0DA50 46049202 */  mul.s   $f8, $f18, $f4             
/* 01CA4 80B0DA54 46083280 */  add.s   $f10, $f6, $f8             
/* 01CA8 80B0DA58 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 01CAC 80B0DA5C E7AA0078 */  swc1    $f10, 0x0078($sp)          
/* 01CB0 80B0DA60 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01CB4 80B0DA64 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 01CB8 80B0DA68 3C014200 */  lui     $at, 0x4200                ## $at = 42000000
/* 01CBC 80B0DA6C 44812000 */  mtc1    $at, $f4                   ## $f4 = 32.00
/* 01CC0 80B0DA70 46100481 */  sub.s   $f18, $f0, $f16            
/* 01CC4 80B0DA74 C7A80080 */  lwc1    $f8, 0x0080($sp)           
/* 01CC8 80B0DA78 27A6006C */  addiu   $a2, $sp, 0x006C           ## $a2 = FFFFFFE4
/* 01CCC 80B0DA7C 2408002A */  addiu   $t0, $zero, 0x002A         ## $t0 = 0000002A
/* 01CD0 80B0DA80 46049182 */  mul.s   $f6, $f18, $f4             
/* 01CD4 80B0DA84 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 01CD8 80B0DA88 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 01CDC 80B0DA8C 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 01CE0 80B0DA90 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 01CE4 80B0DA94 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 01CE8 80B0DA98 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01CEC 80B0DA9C 46064280 */  add.s   $f10, $f8, $f6             
/* 01CF0 80B0DAA0 240F0009 */  addiu   $t7, $zero, 0x0009         ## $t7 = 00000009
/* 01CF4 80B0DAA4 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 01CF8 80B0DAA8 AFB8003C */  sw      $t8, 0x003C($sp)           
/* 01CFC 80B0DAAC E7AA0080 */  swc1    $f10, 0x0080($sp)          
/* 01D00 80B0DAB0 AFAF0038 */  sw      $t7, 0x0038($sp)           
/* 01D04 80B0DAB4 AFAE0034 */  sw      $t6, 0x0034($sp)           
/* 01D08 80B0DAB8 AFAD0028 */  sw      $t5, 0x0028($sp)           
/* 01D0C 80B0DABC AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 01D10 80B0DAC0 AFAB0020 */  sw      $t3, 0x0020($sp)           
/* 01D14 80B0DAC4 AFAA001C */  sw      $t2, 0x001C($sp)           
/* 01D18 80B0DAC8 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 01D1C 80B0DACC AFA80010 */  sw      $t0, 0x0010($sp)           
/* 01D20 80B0DAD0 00C03825 */  or      $a3, $a2, $zero            ## $a3 = FFFFFFE4
/* 01D24 80B0DAD4 8FA4008C */  lw      $a0, 0x008C($sp)           
/* 01D28 80B0DAD8 27A50078 */  addiu   $a1, $sp, 0x0078           ## $a1 = FFFFFFF0
/* 01D2C 80B0DADC AFA00014 */  sw      $zero, 0x0014($sp)         
/* 01D30 80B0DAE0 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 01D34 80B0DAE4 0C00A9AE */  jal     EffectSsDeadDb_Spawn              
/* 01D38 80B0DAE8 AFA00030 */  sw      $zero, 0x0030($sp)         
/* 01D3C 80B0DAEC 8FBF004C */  lw      $ra, 0x004C($sp)           
.L80B0DAF0:
/* 01D40 80B0DAF0 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 01D44 80B0DAF4 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
/* 01D48 80B0DAF8 03E00008 */  jr      $ra                        
/* 01D4C 80B0DAFC 00000000 */  nop
