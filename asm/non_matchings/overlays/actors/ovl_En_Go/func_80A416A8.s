glabel func_80A416A8
/* 03138 80A416A8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0313C 80A416AC F7B60018 */  sdc1    $f22, 0x0018($sp)          
/* 03140 80A416B0 3C0180A4 */  lui     $at, %hi(D_80A422D4)       ## $at = 80A40000
/* 03144 80A416B4 C43622D4 */  lwc1    $f22, %lo(D_80A422D4)($at) 
/* 03148 80A416B8 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 0314C 80A416BC AFB00024 */  sw      $s0, 0x0024($sp)           
/* 03150 80A416C0 F7B40010 */  sdc1    $f20, 0x0010($sp)          
/* 03154 80A416C4 3C0180A4 */  lui     $at, %hi(D_80A422D8)       ## $at = 80A40000
/* 03158 80A416C8 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0315C 80A416CC 24900268 */  addiu   $s0, $a0, 0x0268           ## $s0 = 00000268
/* 03160 80A416D0 C43422D8 */  lwc1    $f20, %lo(D_80A422D8)($at) 
/* 03164 80A416D4 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
.L80A416D8:
/* 03168 80A416D8 920E0000 */  lbu     $t6, 0x0000($s0)           ## 00000268
/* 0316C 80A416DC 51C00029 */  beql    $t6, $zero, .L80A41784     
/* 03170 80A416E0 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 03174 80A416E4 920F0001 */  lbu     $t7, 0x0001($s0)           ## 00000269
/* 03178 80A416E8 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 0317C 80A416EC 331900FF */  andi    $t9, $t8, 0x00FF           ## $t9 = 000000FF
/* 03180 80A416F0 17200002 */  bne     $t9, $zero, .L80A416FC     
/* 03184 80A416F4 A2180001 */  sb      $t8, 0x0001($s0)           ## 00000269
/* 03188 80A416F8 A2000000 */  sb      $zero, 0x0000($s0)         ## 00000268
.L80A416FC:
/* 0318C 80A416FC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 03190 80A41700 00000000 */  nop
/* 03194 80A41704 46140102 */  mul.s   $f4, $f0, $f20             
/* 03198 80A41708 46162181 */  sub.s   $f6, $f4, $f22             
/* 0319C 80A4170C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 031A0 80A41710 E606002C */  swc1    $f6, 0x002C($s0)           ## 00000294
/* 031A4 80A41714 C60C0020 */  lwc1    $f12, 0x0020($s0)          ## 00000288
/* 031A8 80A41718 C60A0014 */  lwc1    $f10, 0x0014($s0)          ## 0000027C
/* 031AC 80A4171C 46140202 */  mul.s   $f8, $f0, $f20             
/* 031B0 80A41720 C60E0024 */  lwc1    $f14, 0x0024($s0)          ## 0000028C
/* 031B4 80A41724 460C5480 */  add.s   $f18, $f10, $f12           
/* 031B8 80A41728 C6040018 */  lwc1    $f4, 0x0018($s0)           ## 00000280
/* 031BC 80A4172C C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000290
/* 031C0 80A41730 E6120014 */  swc1    $f18, 0x0014($s0)          ## 0000027C
/* 031C4 80A41734 C612002C */  lwc1    $f18, 0x002C($s0)          ## 00000294
/* 031C8 80A41738 460E2180 */  add.s   $f6, $f4, $f14             
/* 031CC 80A4173C 46164081 */  sub.s   $f2, $f8, $f22             
/* 031D0 80A41740 C608001C */  lwc1    $f8, 0x001C($s0)           ## 00000284
/* 031D4 80A41744 E6060018 */  swc1    $f6, 0x0018($s0)           ## 00000280
/* 031D8 80A41748 46126100 */  add.s   $f4, $f12, $f18            
/* 031DC 80A4174C C6060030 */  lwc1    $f6, 0x0030($s0)           ## 00000298
/* 031E0 80A41750 C6120004 */  lwc1    $f18, 0x0004($s0)          ## 0000026C
/* 031E4 80A41754 46104280 */  add.s   $f10, $f8, $f16            
/* 031E8 80A41758 E6040020 */  swc1    $f4, 0x0020($s0)           ## 00000288
/* 031EC 80A4175C C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000270
/* 031F0 80A41760 46067200 */  add.s   $f8, $f14, $f6             
/* 031F4 80A41764 E60A001C */  swc1    $f10, 0x001C($s0)          ## 00000284
/* 031F8 80A41768 E6020034 */  swc1    $f2, 0x0034($s0)           ## 0000029C
/* 031FC 80A4176C 46028280 */  add.s   $f10, $f16, $f2            
/* 03200 80A41770 E6080024 */  swc1    $f8, 0x0024($s0)           ## 0000028C
/* 03204 80A41774 46049180 */  add.s   $f6, $f18, $f4             
/* 03208 80A41778 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000290
/* 0320C 80A4177C E6060004 */  swc1    $f6, 0x0004($s0)           ## 0000026C
/* 03210 80A41780 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000002
.L80A41784:
/* 03214 80A41784 00118C00 */  sll     $s1, $s1, 16               
/* 03218 80A41788 00118C03 */  sra     $s1, $s1, 16               
/* 0321C 80A4178C 2A210014 */  slti    $at, $s1, 0x0014           
/* 03220 80A41790 1420FFD1 */  bne     $at, $zero, .L80A416D8     
/* 03224 80A41794 26100038 */  addiu   $s0, $s0, 0x0038           ## $s0 = 000002A0
/* 03228 80A41798 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0322C 80A4179C D7B40010 */  ldc1    $f20, 0x0010($sp)          
/* 03230 80A417A0 D7B60018 */  ldc1    $f22, 0x0018($sp)          
/* 03234 80A417A4 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 03238 80A417A8 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 0323C 80A417AC 03E00008 */  jr      $ra                        
/* 03240 80A417B0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
