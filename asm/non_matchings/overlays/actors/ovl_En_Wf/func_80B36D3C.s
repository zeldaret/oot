glabel func_80B36D3C
/* 0308C 80B36D3C 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 03090 80B36D40 AFBF0074 */  sw      $ra, 0x0074($sp)           
/* 03094 80B36D44 AFB40070 */  sw      $s4, 0x0070($sp)           
/* 03098 80B36D48 AFB3006C */  sw      $s3, 0x006C($sp)           
/* 0309C 80B36D4C AFB20068 */  sw      $s2, 0x0068($sp)           
/* 030A0 80B36D50 AFB10064 */  sw      $s1, 0x0064($sp)           
/* 030A4 80B36D54 AFB00060 */  sw      $s0, 0x0060($sp)           
/* 030A8 80B36D58 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 030AC 80B36D5C F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 030B0 80B36D60 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 030B4 80B36D64 94820088 */  lhu     $v0, 0x0088($a0)           ## 00000088
/* 030B8 80B36D68 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 030BC 80B36D6C 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 030C0 80B36D70 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 030C4 80B36D74 11C00004 */  beq     $t6, $zero, .L80B36D88     
/* 030C8 80B36D78 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 030CC 80B36D7C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 030D0 80B36D80 94820088 */  lhu     $v0, 0x0088($a0)           ## 00000088
/* 030D4 80B36D84 E4800068 */  swc1    $f0, 0x0068($a0)           ## 00000068
.L80B36D88:
/* 030D8 80B36D88 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 030DC 80B36D8C 304F0001 */  andi    $t7, $v0, 0x0001           ## $t7 = 00000000
/* 030E0 80B36D90 11E00006 */  beq     $t7, $zero, .L80B36DAC     
/* 030E4 80B36D94 26240068 */  addiu   $a0, $s1, 0x0068           ## $a0 = 00000068
/* 030E8 80B36D98 44050000 */  mfc1    $a1, $f0                   
/* 030EC 80B36D9C 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 030F0 80B36DA0 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 030F4 80B36DA4 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 030F8 80B36DA8 A6200300 */  sh      $zero, 0x0300($s1)         ## 00000300
.L80B36DAC:
/* 030FC 80B36DAC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 03100 80B36DB0 26240188 */  addiu   $a0, $s1, 0x0188           ## $a0 = 00000188
/* 03104 80B36DB4 10400010 */  beq     $v0, $zero, .L80B36DF8     
/* 03108 80B36DB8 3C1880B3 */  lui     $t8, %hi(D_80B37AD0)       ## $t8 = 80B30000
/* 0310C 80B36DBC 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 03110 80B36DC0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 03114 80B36DC4 26260024 */  addiu   $a2, $s1, 0x0024           ## $a2 = 00000024
/* 03118 80B36DC8 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 0311C 80B36DCC 240700D0 */  addiu   $a3, $zero, 0x00D0         ## $a3 = 000000D0
/* 03120 80B36DD0 862502FC */  lh      $a1, 0x02FC($s1)           ## 000002FC
/* 03124 80B36DD4 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 03128 80B36DD8 10A10003 */  beq     $a1, $at, .L80B36DE8       
/* 0312C 80B36DDC 00000000 */  nop
/* 03130 80B36DE0 0C00B2DD */  jal     Flags_SetSwitch
              
/* 03134 80B36DE4 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
.L80B36DE8:
/* 03138 80B36DE8 0C00B55C */  jal     Actor_Kill
              
/* 0313C 80B36DEC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 03140 80B36DF0 10000049 */  beq     $zero, $zero, .L80B36F18   
/* 03144 80B36DF4 8FBF0074 */  lw      $ra, 0x0074($sp)           
.L80B36DF8:
/* 03148 80B36DF8 27187AD0 */  addiu   $t8, $t8, %lo(D_80B37AD0)  ## $t8 = 00007AD0
/* 0314C 80B36DFC 8F080000 */  lw      $t0, 0x0000($t8)           ## 00007AD0
/* 03150 80B36E00 27B2007C */  addiu   $s2, $sp, 0x007C           ## $s2 = FFFFFFE4
/* 03154 80B36E04 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 03158 80B36E08 AE480000 */  sw      $t0, 0x0000($s2)           ## FFFFFFE4
/* 0315C 80B36E0C 8F190004 */  lw      $t9, 0x0004($t8)           ## 00007AD4
/* 03160 80B36E10 AE590004 */  sw      $t9, 0x0004($s2)           ## FFFFFFE8
/* 03164 80B36E14 8F080008 */  lw      $t0, 0x0008($t8)           ## 00007AD8
/* 03168 80B36E18 AE480008 */  sw      $t0, 0x0008($s2)           ## FFFFFFEC
/* 0316C 80B36E1C C624019C */  lwc1    $f4, 0x019C($s1)           ## 0000019C
/* 03170 80B36E20 8E2902E8 */  lw      $t1, 0x02E8($s1)           ## 000002E8
/* 03174 80B36E24 4600218D */  trunc.w.s $f6, $f4                   
/* 03178 80B36E28 252AFFFF */  addiu   $t2, $t1, 0xFFFF           ## $t2 = FFFFFFFF
/* 0317C 80B36E2C AE2A02E8 */  sw      $t2, 0x02E8($s1)           ## 000002E8
/* 03180 80B36E30 440C3000 */  mfc1    $t4, $f6                   
/* 03184 80B36E34 00000000 */  nop
/* 03188 80B36E38 018A8023 */  subu    $s0, $t4, $t2              
/* 0318C 80B36E3C 00108043 */  sra     $s0, $s0,  1               
/* 03190 80B36E40 06020035 */  bltzl   $s0, .L80B36F18            
/* 03194 80B36E44 8FBF0074 */  lw      $ra, 0x0074($sp)           
/* 03198 80B36E48 4481C000 */  mtc1    $at, $f24                  ## $f24 = 20.00
/* 0319C 80B36E4C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 031A0 80B36E50 4481B000 */  mtc1    $at, $f22                  ## $f22 = 50.00
/* 031A4 80B36E54 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 031A8 80B36E58 4481A000 */  mtc1    $at, $f20                  ## $f20 = 60.00
/* 031AC 80B36E5C 27B30088 */  addiu   $s3, $sp, 0x0088           ## $s3 = FFFFFFF0
.L80B36E60:
/* 031B0 80B36E60 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 031B4 80B36E64 4600A306 */  mov.s   $f12, $f20                 
/* 031B8 80B36E68 C6280024 */  lwc1    $f8, 0x0024($s1)           ## 00000024
/* 031BC 80B36E6C 4600A306 */  mov.s   $f12, $f20                 
/* 031C0 80B36E70 46080280 */  add.s   $f10, $f0, $f8             
/* 031C4 80B36E74 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 031C8 80B36E78 E7AA0088 */  swc1    $f10, 0x0088($sp)          
/* 031CC 80B36E7C C630002C */  lwc1    $f16, 0x002C($s1)          ## 0000002C
/* 031D0 80B36E80 4600B306 */  mov.s   $f12, $f22                 
/* 031D4 80B36E84 46100480 */  add.s   $f18, $f0, $f16            
/* 031D8 80B36E88 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 031DC 80B36E8C E7B20090 */  swc1    $f18, 0x0090($sp)          
/* 031E0 80B36E90 C6240028 */  lwc1    $f4, 0x0028($s1)           ## 00000028
/* 031E4 80B36E94 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 031E8 80B36E98 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 031EC 80B36E9C 46182180 */  add.s   $f6, $f4, $f24             
/* 031F0 80B36EA0 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 031F4 80B36EA4 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 031F8 80B36EA8 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 031FC 80B36EAC 46060200 */  add.s   $f8, $f0, $f6              
/* 03200 80B36EB0 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 03204 80B36EB4 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 03208 80B36EB8 240B0009 */  addiu   $t3, $zero, 0x0009         ## $t3 = 00000009
/* 0320C 80B36EBC 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 03210 80B36EC0 E7A8008C */  swc1    $f8, 0x008C($sp)           
/* 03214 80B36EC4 AFAC003C */  sw      $t4, 0x003C($sp)           
/* 03218 80B36EC8 AFAB0038 */  sw      $t3, 0x0038($sp)           
/* 0321C 80B36ECC AFAA0034 */  sw      $t2, 0x0034($sp)           
/* 03220 80B36ED0 AFA90030 */  sw      $t1, 0x0030($sp)           
/* 03224 80B36ED4 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 03228 80B36ED8 AFB90020 */  sw      $t9, 0x0020($sp)           
/* 0322C 80B36EDC AFB8001C */  sw      $t8, 0x001C($sp)           
/* 03230 80B36EE0 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 03234 80B36EE4 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 03238 80B36EE8 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 0323C 80B36EEC AFA00028 */  sw      $zero, 0x0028($sp)         
/* 03240 80B36EF0 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 03244 80B36EF4 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 03248 80B36EF8 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFF0
/* 0324C 80B36EFC 02403025 */  or      $a2, $s2, $zero            ## $a2 = FFFFFFE4
/* 03250 80B36F00 0C00A9AE */  jal     func_8002A6B8              
/* 03254 80B36F04 02403825 */  or      $a3, $s2, $zero            ## $a3 = FFFFFFE4
/* 03258 80B36F08 2610FFFF */  addiu   $s0, $s0, 0xFFFF           ## $s0 = FFFFFFFF
/* 0325C 80B36F0C 0601FFD4 */  bgez    $s0, .L80B36E60            
/* 03260 80B36F10 00000000 */  nop
/* 03264 80B36F14 8FBF0074 */  lw      $ra, 0x0074($sp)           
.L80B36F18:
/* 03268 80B36F18 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 0326C 80B36F1C D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 03270 80B36F20 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 03274 80B36F24 8FB00060 */  lw      $s0, 0x0060($sp)           
/* 03278 80B36F28 8FB10064 */  lw      $s1, 0x0064($sp)           
/* 0327C 80B36F2C 8FB20068 */  lw      $s2, 0x0068($sp)           
/* 03280 80B36F30 8FB3006C */  lw      $s3, 0x006C($sp)           
/* 03284 80B36F34 8FB40070 */  lw      $s4, 0x0070($sp)           
/* 03288 80B36F38 03E00008 */  jr      $ra                        
/* 0328C 80B36F3C 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000


