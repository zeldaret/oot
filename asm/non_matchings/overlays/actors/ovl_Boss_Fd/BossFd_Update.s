.rdata
glabel D_808D1CBC
    .asciz "FD MOVE START \n"
    .balign 4

glabel D_808D1CCC
    .asciz "FD MOVE END 1\n"
    .balign 4

glabel D_808D1CDC
    .asciz "FD MOVE END 2\n"
    .balign 4

.late_rodata
glabel D_808D1F88
    .float 0.4

glabel D_808D1F8C
 .word 0x410E6666
glabel D_808D1F90
 .word 0x41EF3333
glabel D_808D1F94
    .float 0.4

.text
glabel BossFd_Update
/* 03F24 808CECE4 27BDFF28 */  addiu   $sp, $sp, 0xFF28           ## $sp = FFFFFF28
/* 03F28 808CECE8 AFB30054 */  sw      $s3, 0x0054($sp)           
/* 03F2C 808CECEC 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 03F30 808CECF0 AFA400D0 */  sw      $a0, 0x00D0($sp)           
/* 03F34 808CECF4 AFBF005C */  sw      $ra, 0x005C($sp)           
/* 03F38 808CECF8 3C04808D */  lui     $a0, %hi(D_808D1CBC)       ## $a0 = 808D0000
/* 03F3C 808CECFC AFB40058 */  sw      $s4, 0x0058($sp)           
/* 03F40 808CED00 AFB20050 */  sw      $s2, 0x0050($sp)           
/* 03F44 808CED04 AFB1004C */  sw      $s1, 0x004C($sp)           
/* 03F48 808CED08 AFB00048 */  sw      $s0, 0x0048($sp)           
/* 03F4C 808CED0C F7B60040 */  sdc1    $f22, 0x0040($sp)          
/* 03F50 808CED10 F7B40038 */  sdc1    $f20, 0x0038($sp)          
/* 03F54 808CED14 AFA500DC */  sw      $a1, 0x00DC($sp)           
/* 03F58 808CED18 0C00084C */  jal     osSyncPrintf
              
/* 03F5C 808CED1C 24841CBC */  addiu   $a0, $a0, %lo(D_808D1CBC)  ## $a0 = 808D1CBC
/* 03F60 808CED20 86780224 */  lh      $t8, 0x0224($s3)           ## 00000224
/* 03F64 808CED24 866E0226 */  lh      $t6, 0x0226($s3)           ## 00000226
/* 03F68 808CED28 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 03F6C 808CED2C 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 03F70 808CED30 A6790224 */  sh      $t9, 0x0224($s3)           ## 00000224
/* 03F74 808CED34 8E790218 */  lw      $t9, 0x0218($s3)           ## 00000218
/* 03F78 808CED38 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 03F7C 808CED3C A66F0226 */  sh      $t7, 0x0226($s3)           ## 00000226
/* 03F80 808CED40 0320F809 */  jalr    $ra, $t9                   
/* 03F84 808CED44 8FA500DC */  lw      $a1, 0x00DC($sp)           
/* 03F88 808CED48 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 03F8C 808CED4C 00124040 */  sll     $t0, $s2,  1               
.L808CED50:
/* 03F90 808CED50 02681021 */  addu    $v0, $s3, $t0              
/* 03F94 808CED54 84430248 */  lh      $v1, 0x0248($v0)           ## 00000248
/* 03F98 808CED58 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 03F9C 808CED5C 00129400 */  sll     $s2, $s2, 16               
/* 03FA0 808CED60 10600003 */  beq     $v1, $zero, .L808CED70     
/* 03FA4 808CED64 00129403 */  sra     $s2, $s2, 16               
/* 03FA8 808CED68 2469FFFF */  addiu   $t1, $v1, 0xFFFF           ## $t1 = FFFFFFFF
/* 03FAC 808CED6C A4490248 */  sh      $t1, 0x0248($v0)           ## 00000248
.L808CED70:
/* 03FB0 808CED70 2A410006 */  slti    $at, $s2, 0x0006           
/* 03FB4 808CED74 5420FFF6 */  bnel    $at, $zero, .L808CED50     
/* 03FB8 808CED78 00124040 */  sll     $t0, $s2,  1               
/* 03FBC 808CED7C 8662021C */  lh      $v0, 0x021C($s3)           ## 0000021C
/* 03FC0 808CED80 10400002 */  beq     $v0, $zero, .L808CED8C     
/* 03FC4 808CED84 244AFFFF */  addiu   $t2, $v0, 0xFFFF           ## $t2 = FFFFFFFF
/* 03FC8 808CED88 A66A021C */  sh      $t2, 0x021C($s3)           ## 0000021C
.L808CED8C:
/* 03FCC 808CED8C 86620230 */  lh      $v0, 0x0230($s3)           ## 00000230
/* 03FD0 808CED90 10400002 */  beq     $v0, $zero, .L808CED9C     
/* 03FD4 808CED94 244BFFFF */  addiu   $t3, $v0, 0xFFFF           ## $t3 = FFFFFFFF
/* 03FD8 808CED98 A66B0230 */  sh      $t3, 0x0230($s3)           ## 00000230
.L808CED9C:
/* 03FDC 808CED9C 8662023E */  lh      $v0, 0x023E($s3)           ## 0000023E
/* 03FE0 808CEDA0 10400002 */  beq     $v0, $zero, .L808CEDAC     
/* 03FE4 808CEDA4 244CFFFF */  addiu   $t4, $v0, 0xFFFF           ## $t4 = FFFFFFFF
/* 03FE8 808CEDA8 A66C023E */  sh      $t4, 0x023E($s3)           ## 0000023E
.L808CEDAC:
/* 03FEC 808CEDAC 866D0222 */  lh      $t5, 0x0222($s3)           ## 00000222
/* 03FF0 808CEDB0 29A100C8 */  slti    $at, $t5, 0x00C8           
/* 03FF4 808CEDB4 50200014 */  beql    $at, $zero, .L808CEE08     
/* 03FF8 808CEDB8 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 03FFC 808CEDBC 866E023E */  lh      $t6, 0x023E($s3)           ## 0000023E
/* 04000 808CEDC0 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 04004 808CEDC4 55C00004 */  bnel    $t6, $zero, .L808CEDD8     
/* 04008 808CEDC8 8FA400DC */  lw      $a0, 0x00DC($sp)           
/* 0400C 808CEDCC 0C233B0D */  jal     func_808CEC34              
/* 04010 808CEDD0 8FA500DC */  lw      $a1, 0x00DC($sp)           
/* 04014 808CEDD4 8FA400DC */  lw      $a0, 0x00DC($sp)           
.L808CEDD8:
/* 04018 808CEDD8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0401C 808CEDDC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 04020 808CEDE0 26711490 */  addiu   $s1, $s3, 0x1490           ## $s1 = 00001490
/* 04024 808CEDE4 00818021 */  addu    $s0, $a0, $at              
/* 04028 808CEDE8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0402C 808CEDEC 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 04030 808CEDF0 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00001490
/* 04034 808CEDF4 8FA400DC */  lw      $a0, 0x00DC($sp)           
/* 04038 808CEDF8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0403C 808CEDFC 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 04040 808CEE00 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00001490
/* 04044 808CEE04 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
.L808CEE08:
/* 04048 808CEE08 0C233807 */  jal     func_808CE01C              
/* 0404C 808CEE0C 8FA500DC */  lw      $a1, 0x00DC($sp)           
/* 04050 808CEE10 C6760254 */  lwc1    $f22, 0x0254($s3)          ## 00000254
/* 04054 808CEE14 C674025C */  lwc1    $f20, 0x025C($s3)          ## 0000025C
/* 04058 808CEE18 C6720260 */  lwc1    $f18, 0x0260($s3)          ## 00000260
/* 0405C 808CEE1C 866F0226 */  lh      $t7, 0x0226($s3)           ## 00000226
/* 04060 808CEE20 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 04064 808CEE24 44818000 */  mtc1    $at, $f16                  ## $f16 = 4.00
/* 04068 808CEE28 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 0406C 808CEE2C 44817000 */  mtc1    $at, $f14                  ## $f14 = 120.00
/* 04070 808CEE30 4610B400 */  add.s   $f16, $f22, $f16           
/* 04074 808CEE34 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 04078 808CEE38 4481B000 */  mtc1    $at, $f22                  ## $f22 = 3.00
/* 0407C 808CEE3C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 04080 808CEE40 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
/* 04084 808CEE44 4616A580 */  add.s   $f22, $f20, $f22           
/* 04088 808CEE48 31F80010 */  andi    $t8, $t7, 0x0010           ## $t8 = 00000000
/* 0408C 808CEE4C E6700254 */  swc1    $f16, 0x0254($s3)          ## 00000254
/* 04090 808CEE50 460C9301 */  sub.s   $f12, $f18, $f12           
/* 04094 808CEE54 E66E0258 */  swc1    $f14, 0x0258($s3)          ## 00000258
/* 04098 808CEE58 E676025C */  swc1    $f22, 0x025C($s3)          ## 0000025C
/* 0409C 808CEE5C 13000005 */  beq     $t8, $zero, .L808CEE74     
/* 040A0 808CEE60 E66C0260 */  swc1    $f12, 0x0260($s3)          ## 00000260
/* 040A4 808CEE64 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 040A8 808CEE68 44810000 */  mtc1    $at, $f0                   ## $f0 = 30.00
/* 040AC 808CEE6C 10000005 */  beq     $zero, $zero, .L808CEE84   
/* 040B0 808CEE70 44050000 */  mfc1    $a1, $f0                   
.L808CEE74:
/* 040B4 808CEE74 3C01431E */  lui     $at, 0x431E                ## $at = 431E0000
/* 040B8 808CEE78 44810000 */  mtc1    $at, $f0                   ## $f0 = 158.00
/* 040BC 808CEE7C 00000000 */  nop
/* 040C0 808CEE80 44050000 */  mfc1    $a1, $f0                   
.L808CEE84:
/* 040C4 808CEE84 26640270 */  addiu   $a0, $s3, 0x0270           ## $a0 = 00000270
/* 040C8 808CEE88 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 040CC 808CEE8C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 040D0 808CEE90 3C074100 */  lui     $a3, 0x4100                ## $a3 = 41000000
/* 040D4 808CEE94 8679021E */  lh      $t9, 0x021E($s3)           ## 0000021E
/* 040D8 808CEE98 57200005 */  bnel    $t9, $zero, .L808CEEB0     
/* 040DC 808CEE9C 86680226 */  lh      $t0, 0x0226($s3)           ## 00000226
/* 040E0 808CEEA0 C6700270 */  lwc1    $f16, 0x0270($s3)          ## 00000270
/* 040E4 808CEEA4 1000000F */  beq     $zero, $zero, .L808CEEE4   
/* 040E8 808CEEA8 E6700274 */  swc1    $f16, 0x0274($s3)          ## 00000274
/* 040EC 808CEEAC 86680226 */  lh      $t0, 0x0226($s3)           ## 00000226
.L808CEEB0:
/* 040F0 808CEEB0 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 040F4 808CEEB4 26640274 */  addiu   $a0, $s3, 0x0274           ## $a0 = 00000274
/* 040F8 808CEEB8 31090004 */  andi    $t1, $t0, 0x0004           ## $t1 = 00000000
/* 040FC 808CEEBC 11200004 */  beq     $t1, $zero, .L808CEED0     
/* 04100 808CEEC0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 04104 808CEEC4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 04108 808CEEC8 10000004 */  beq     $zero, $zero, .L808CEEDC   
/* 0410C 808CEECC 44050000 */  mfc1    $a1, $f0                   
.L808CEED0:
/* 04110 808CEED0 44810000 */  mtc1    $at, $f0                   ## $f0 = 255.00
/* 04114 808CEED4 00000000 */  nop
/* 04118 808CEED8 44050000 */  mfc1    $a1, $f0                   
.L808CEEDC:
/* 0411C 808CEEDC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 04120 808CEEE0 3C074280 */  lui     $a3, 0x4280                ## $a3 = 42800000
.L808CEEE4:
/* 04124 808CEEE4 86620226 */  lh      $v0, 0x0226($s3)           ## 00000226
/* 04128 808CEEE8 26640284 */  addiu   $a0, $s3, 0x0284           ## $a0 = 00000284
/* 0412C 808CEEEC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 04130 808CEEF0 304A0008 */  andi    $t2, $v0, 0x0008           ## $t2 = 00000000
/* 04134 808CEEF4 11400005 */  beq     $t2, $zero, .L808CEF0C     
/* 04138 808CEEF8 244B0003 */  addiu   $t3, $v0, 0x0003           ## $t3 = 00000003
/* 0413C 808CEEFC 3C014300 */  lui     $at, 0x4300                ## $at = 43000000
/* 04140 808CEF00 44811000 */  mtc1    $at, $f2                   ## $f2 = 128.00
/* 04144 808CEF04 10000006 */  beq     $zero, $zero, .L808CEF20   
/* 04148 808CEF08 46001006 */  mov.s   $f0, $f2                   
.L808CEF0C:
/* 0414C 808CEF0C 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 04150 808CEF10 44810000 */  mtc1    $at, $f0                   ## $f0 = 255.00
/* 04154 808CEF14 3C014300 */  lui     $at, 0x4300                ## $at = 43000000
/* 04158 808CEF18 44811000 */  mtc1    $at, $f2                   ## $f2 = 128.00
/* 0415C 808CEF1C 00000000 */  nop
.L808CEF20:
/* 04160 808CEF20 316C0008 */  andi    $t4, $t3, 0x0008           ## $t4 = 00000000
/* 04164 808CEF24 11800003 */  beq     $t4, $zero, .L808CEF34     
/* 04168 808CEF28 244D0006 */  addiu   $t5, $v0, 0x0006           ## $t5 = 00000006
/* 0416C 808CEF2C 10000004 */  beq     $zero, $zero, .L808CEF40   
/* 04170 808CEF30 46001586 */  mov.s   $f22, $f2                  
.L808CEF34:
/* 04174 808CEF34 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 04178 808CEF38 4481B000 */  mtc1    $at, $f22                  ## $f22 = 255.00
/* 0417C 808CEF3C 00000000 */  nop
.L808CEF40:
/* 04180 808CEF40 31AE0008 */  andi    $t6, $t5, 0x0008           ## $t6 = 00000000
/* 04184 808CEF44 11C00003 */  beq     $t6, $zero, .L808CEF54     
/* 04188 808CEF48 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 0418C 808CEF4C 10000003 */  beq     $zero, $zero, .L808CEF5C   
/* 04190 808CEF50 46001506 */  mov.s   $f20, $f2                  
.L808CEF54:
/* 04194 808CEF54 4481A000 */  mtc1    $at, $f20                  ## $f20 = 255.00
/* 04198 808CEF58 00000000 */  nop
.L808CEF5C:
/* 0419C 808CEF5C 44050000 */  mfc1    $a1, $f0                   
/* 041A0 808CEF60 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 041A4 808CEF64 3C074180 */  lui     $a3, 0x4180                ## $a3 = 41800000
/* 041A8 808CEF68 4405B000 */  mfc1    $a1, $f22                  
/* 041AC 808CEF6C 26640288 */  addiu   $a0, $s3, 0x0288           ## $a0 = 00000288
/* 041B0 808CEF70 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 041B4 808CEF74 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 041B8 808CEF78 3C074180 */  lui     $a3, 0x4180                ## $a3 = 41800000
/* 041BC 808CEF7C 4405A000 */  mfc1    $a1, $f20                  
/* 041C0 808CEF80 2664028C */  addiu   $a0, $s3, 0x028C           ## $a0 = 0000028C
/* 041C4 808CEF84 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 041C8 808CEF88 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 041CC 808CEF8C 3C074180 */  lui     $a3, 0x4180                ## $a3 = 41800000
/* 041D0 808CEF90 8662023A */  lh      $v0, 0x023A($s3)           ## 0000023A
/* 041D4 808CEF94 1040005F */  beq     $v0, $zero, .L808CF114     
/* 041D8 808CEF98 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 041DC 808CEF9C A66F023A */  sh      $t7, 0x023A($s3)           ## 0000023A
/* 041E0 808CEFA0 8678023A */  lh      $t8, 0x023A($s3)           ## 0000023A
/* 041E4 808CEFA4 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 041E8 808CEFA8 3319000F */  andi    $t9, $t8, 0x000F           ## $t9 = 00000000
/* 041EC 808CEFAC 17200059 */  bne     $t9, $zero, .L808CF114     
/* 041F0 808CEFB0 00000000 */  nop
/* 041F4 808CEFB4 44816000 */  mtc1    $at, $f12                  ## $f12 = 50.00
/* 041F8 808CEFB8 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 041FC 808CEFBC 00000000 */  nop
/* 04200 808CEFC0 4600020D */  trunc.w.s $f8, $f0                   
/* 04204 808CEFC4 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 04208 808CEFC8 44812000 */  mtc1    $at, $f4                   ## $f4 = 1000.00
/* 0420C 808CEFCC C6720024 */  lwc1    $f18, 0x0024($s3)          ## 00000024
/* 04210 808CEFD0 440A4000 */  mfc1    $t2, $f8                   
/* 04214 808CEFD4 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 04218 808CEFD8 E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 0421C 808CEFDC C666002C */  lwc1    $f6, 0x002C($s3)           ## 0000002C
/* 04220 808CEFE0 000A5C00 */  sll     $t3, $t2, 16               
/* 04224 808CEFE4 8FA600DC */  lw      $a2, 0x00DC($sp)           
/* 04228 808CEFE8 000B6403 */  sra     $t4, $t3, 16               
/* 0422C 808CEFEC 258D0082 */  addiu   $t5, $t4, 0x0082           ## $t5 = 00000082
/* 04230 808CEFF0 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 04234 808CEFF4 AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 04238 808CEFF8 AFAD0024 */  sw      $t5, 0x0024($sp)           
/* 0423C 808CEFFC AFA00020 */  sw      $zero, 0x0020($sp)         
/* 04240 808CF000 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 04244 808CF004 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 04248 808CF008 240700AD */  addiu   $a3, $zero, 0x00AD         ## $a3 = 000000AD
/* 0424C 808CF00C E7A60018 */  swc1    $f6, 0x0018($sp)           
/* 04250 808CF010 0C00C916 */  jal     Actor_SpawnAttached
              
/* 04254 808CF014 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 04258 808CF018 1040003E */  beq     $v0, $zero, .L808CF114     
/* 0425C 808CF01C 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 04260 808CF020 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 04264 808CF024 4481B000 */  mtc1    $at, $f22                  ## $f22 = 15.00
/* 04268 808CF028 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 0426C 808CF02C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 300.00
/* 04270 808CF030 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 04274 808CF034 26741970 */  addiu   $s4, $s3, 0x1970           ## $s4 = 00001970
/* 04278 808CF038 27B100B0 */  addiu   $s1, $sp, 0x00B0           ## $s1 = FFFFFFD8
.L808CF03C:
/* 0427C 808CF03C 3C0F808D */  lui     $t7, %hi(D_808D1A60)       ## $t7 = 808D0000
/* 04280 808CF040 25EF1A60 */  addiu   $t7, $t7, %lo(D_808D1A60)  ## $t7 = 808D1A60
/* 04284 808CF044 8DF90000 */  lw      $t9, 0x0000($t7)           ## 808D1A60
/* 04288 808CF048 3C09808D */  lui     $t1, %hi(D_808D1A6C)       ## $t1 = 808D0000
/* 0428C 808CF04C 25291A6C */  addiu   $t1, $t1, %lo(D_808D1A6C)  ## $t1 = 808D1A6C
/* 04290 808CF050 AE390000 */  sw      $t9, 0x0000($s1)           ## FFFFFFD8
/* 04294 808CF054 8DF80004 */  lw      $t8, 0x0004($t7)           ## 808D1A64
/* 04298 808CF058 27A800A4 */  addiu   $t0, $sp, 0x00A4           ## $t0 = FFFFFFCC
/* 0429C 808CF05C 4600A306 */  mov.s   $f12, $f20                 
/* 042A0 808CF060 AE380004 */  sw      $t8, 0x0004($s1)           ## FFFFFFDC
/* 042A4 808CF064 8DF90008 */  lw      $t9, 0x0008($t7)           ## 808D1A68
/* 042A8 808CF068 AE390008 */  sw      $t9, 0x0008($s1)           ## FFFFFFE0
/* 042AC 808CF06C 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 808D1A6C
/* 042B0 808CF070 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 808D1A70
/* 042B4 808CF074 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFCC
/* 042B8 808CF078 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 808D1A74
/* 042BC 808CF07C AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFD0
/* 042C0 808CF080 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 042C4 808CF084 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFD4
/* 042C8 808CF088 C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 042CC 808CF08C 4600A306 */  mov.s   $f12, $f20                 
/* 042D0 808CF090 460A0400 */  add.s   $f16, $f0, $f10            
/* 042D4 808CF094 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 042D8 808CF098 E7B00098 */  swc1    $f16, 0x0098($sp)          
/* 042DC 808CF09C C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 042E0 808CF0A0 4600A306 */  mov.s   $f12, $f20                 
/* 042E4 808CF0A4 46120100 */  add.s   $f4, $f0, $f18             
/* 042E8 808CF0A8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 042EC 808CF0AC E7A4009C */  swc1    $f4, 0x009C($sp)           
/* 042F0 808CF0B0 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 042F4 808CF0B4 4600B306 */  mov.s   $f12, $f22                 
/* 042F8 808CF0B8 46060200 */  add.s   $f8, $f0, $f6              
/* 042FC 808CF0BC 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 04300 808CF0C0 E7A800A0 */  swc1    $f8, 0x00A0($sp)           
/* 04304 808CF0C4 4600028D */  trunc.w.s $f10, $f0                  
/* 04308 808CF0C8 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00001970
/* 0430C 808CF0CC 27A50098 */  addiu   $a1, $sp, 0x0098           ## $a1 = FFFFFFC0
/* 04310 808CF0D0 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFFD8
/* 04314 808CF0D4 440D5000 */  mfc1    $t5, $f10                  
/* 04318 808CF0D8 27A700A4 */  addiu   $a3, $sp, 0x00A4           ## $a3 = FFFFFFCC
/* 0431C 808CF0DC 000D7400 */  sll     $t6, $t5, 16               
/* 04320 808CF0E0 000E7C03 */  sra     $t7, $t6, 16               
/* 04324 808CF0E4 25F80014 */  addiu   $t8, $t7, 0x0014           ## $t8 = 00000014
/* 04328 808CF0E8 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 0432C 808CF0EC 00000000 */  nop
/* 04330 808CF0F0 468084A0 */  cvt.s.w $f18, $f16                 
/* 04334 808CF0F4 0C232BA3 */  jal     func_808CAE8C              
/* 04338 808CF0F8 E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 0433C 808CF0FC 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 04340 808CF100 00129400 */  sll     $s2, $s2, 16               
/* 04344 808CF104 00129403 */  sra     $s2, $s2, 16               
/* 04348 808CF108 2A41000A */  slti    $at, $s2, 0x000A           
/* 0434C 808CF10C 1420FFCB */  bne     $at, $zero, .L808CF03C     
/* 04350 808CF110 00000000 */  nop
.L808CF114:
/* 04354 808CF114 3C08808D */  lui     $t0, %hi(D_808D1A78)       ## $t0 = 808D0000
/* 04358 808CF118 25081A78 */  addiu   $t0, $t0, %lo(D_808D1A78)  ## $t0 = 808D1A78
/* 0435C 808CF11C 8D0A0000 */  lw      $t2, 0x0000($t0)           ## 808D1A78
/* 04360 808CF120 27B9008C */  addiu   $t9, $sp, 0x008C           ## $t9 = FFFFFFB4
/* 04364 808CF124 8D090004 */  lw      $t1, 0x0004($t0)           ## 808D1A7C
/* 04368 808CF128 AF2A0000 */  sw      $t2, 0x0000($t9)           ## FFFFFFB4
/* 0436C 808CF12C 8D0A0008 */  lw      $t2, 0x0008($t0)           ## 808D1A80
/* 04370 808CF130 3C0C808D */  lui     $t4, %hi(D_808D1A84)       ## $t4 = 808D0000
/* 04374 808CF134 258C1A84 */  addiu   $t4, $t4, %lo(D_808D1A84)  ## $t4 = 808D1A84
/* 04378 808CF138 AF290004 */  sw      $t1, 0x0004($t9)           ## FFFFFFB8
/* 0437C 808CF13C AF2A0008 */  sw      $t2, 0x0008($t9)           ## FFFFFFBC
/* 04380 808CF140 8D8E0000 */  lw      $t6, 0x0000($t4)           ## 808D1A84
/* 04384 808CF144 27AB0080 */  addiu   $t3, $sp, 0x0080           ## $t3 = FFFFFFA8
/* 04388 808CF148 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0438C 808CF14C AD6E0000 */  sw      $t6, 0x0000($t3)           ## FFFFFFA8
/* 04390 808CF150 8D8E0008 */  lw      $t6, 0x0008($t4)           ## 808D1A8C
/* 04394 808CF154 8D8D0004 */  lw      $t5, 0x0004($t4)           ## 808D1A88
/* 04398 808CF158 4481B000 */  mtc1    $at, $f22                  ## $f22 = 0.50
/* 0439C 808CF15C 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 043A0 808CF160 4481A000 */  mtc1    $at, $f20                  ## $f20 = 60.00
/* 043A4 808CF164 26741970 */  addiu   $s4, $s3, 0x1970           ## $s4 = 00001970
/* 043A8 808CF168 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 043AC 808CF16C AD6E0008 */  sw      $t6, 0x0008($t3)           ## FFFFFFB0
/* 043B0 808CF170 AD6D0004 */  sw      $t5, 0x0004($t3)           ## FFFFFFAC
.L808CF174:
/* 043B4 808CF174 3C01808D */  lui     $at, %hi(D_808D1F88)       ## $at = 808D0000
/* 043B8 808CF178 C4241F88 */  lwc1    $f4, %lo(D_808D1F88)($at)  
/* 043BC 808CF17C 4600B306 */  mov.s   $f12, $f22                 
/* 043C0 808CF180 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 043C4 808CF184 E7A40084 */  swc1    $f4, 0x0084($sp)           
/* 043C8 808CF188 E7A00080 */  swc1    $f0, 0x0080($sp)           
/* 043CC 808CF18C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 043D0 808CF190 4600B306 */  mov.s   $f12, $f22                 
/* 043D4 808CF194 3C01808D */  lui     $at, %hi(D_808D1F8C)       ## $at = 808D0000
/* 043D8 808CF198 E7A00088 */  swc1    $f0, 0x0088($sp)           
/* 043DC 808CF19C 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 043E0 808CF1A0 C42C1F8C */  lwc1    $f12, %lo(D_808D1F8C)($at) 
/* 043E4 808CF1A4 4600018D */  trunc.w.s $f6, $f0                   
/* 043E8 808CF1A8 4600A306 */  mov.s   $f12, $f20                 
/* 043EC 808CF1AC 44103000 */  mfc1    $s0, $f6                   
/* 043F0 808CF1B0 00000000 */  nop
/* 043F4 808CF1B4 00108400 */  sll     $s0, $s0, 16               
/* 043F8 808CF1B8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 043FC 808CF1BC 00108403 */  sra     $s0, $s0, 16               
/* 04400 808CF1C0 0010C080 */  sll     $t8, $s0,  2               
/* 04404 808CF1C4 0310C023 */  subu    $t8, $t8, $s0              
/* 04408 808CF1C8 3C19808D */  lui     $t9, %hi(D_808D192C)       ## $t9 = 808D0000
/* 0440C 808CF1CC 2739192C */  addiu   $t9, $t9, %lo(D_808D192C)  ## $t9 = 808D192C
/* 04410 808CF1D0 0018C080 */  sll     $t8, $t8,  2               
/* 04414 808CF1D4 03198821 */  addu    $s1, $t8, $t9              
/* 04418 808CF1D8 C6280000 */  lwc1    $f8, 0x0000($s1)           ## FFFFFFD8
/* 0441C 808CF1DC 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 04420 808CF1E0 44816000 */  mtc1    $at, $f12                  ## $f12 = 40.00
/* 04424 808CF1E4 46080280 */  add.s   $f10, $f0, $f8             
/* 04428 808CF1E8 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0442C 808CF1EC E7AA0074 */  swc1    $f10, 0x0074($sp)          
/* 04430 808CF1F0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 04434 808CF1F4 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 04438 808CF1F8 C6300004 */  lwc1    $f16, 0x0004($s1)          ## FFFFFFDC
/* 0443C 808CF1FC 4600A306 */  mov.s   $f12, $f20                 
/* 04440 808CF200 46128100 */  add.s   $f4, $f16, $f18            
/* 04444 808CF204 46040180 */  add.s   $f6, $f0, $f4              
/* 04448 808CF208 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 0444C 808CF20C E7A60078 */  swc1    $f6, 0x0078($sp)           
/* 04450 808CF210 C6280008 */  lwc1    $f8, 0x0008($s1)           ## FFFFFFE0
/* 04454 808CF214 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 04458 808CF218 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
/* 0445C 808CF21C 46080280 */  add.s   $f10, $f0, $f8             
/* 04460 808CF220 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 04464 808CF224 E7AA007C */  swc1    $f10, 0x007C($sp)          
/* 04468 808CF228 4600040D */  trunc.w.s $f16, $f0                  
/* 0446C 808CF22C 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00001970
/* 04470 808CF230 27A50074 */  addiu   $a1, $sp, 0x0074           ## $a1 = FFFFFF9C
/* 04474 808CF234 27A6008C */  addiu   $a2, $sp, 0x008C           ## $a2 = FFFFFFB4
/* 04478 808CF238 44098000 */  mfc1    $t1, $f16                  
/* 0447C 808CF23C 27A70080 */  addiu   $a3, $sp, 0x0080           ## $a3 = FFFFFFA8
/* 04480 808CF240 00095400 */  sll     $t2, $t1, 16               
/* 04484 808CF244 000A5C03 */  sra     $t3, $t2, 16               
/* 04488 808CF248 256C0006 */  addiu   $t4, $t3, 0x0006           ## $t4 = 00000006
/* 0448C 808CF24C 448C9000 */  mtc1    $t4, $f18                  ## $f18 = 0.00
/* 04490 808CF250 00000000 */  nop
/* 04494 808CF254 46809120 */  cvt.s.w $f4, $f18                  
/* 04498 808CF258 0C232B70 */  jal     func_808CADC0              
/* 0449C 808CF25C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 044A0 808CF260 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 044A4 808CF264 00129400 */  sll     $s2, $s2, 16               
/* 044A8 808CF268 00129403 */  sra     $s2, $s2, 16               
/* 044AC 808CF26C 2A410006 */  slti    $at, $s2, 0x0006           
/* 044B0 808CF270 1420FFC0 */  bne     $at, $zero, .L808CF174     
/* 044B4 808CF274 00000000 */  nop
/* 044B8 808CF278 866D021E */  lh      $t5, 0x021E($s3)           ## 0000021E
/* 044BC 808CF27C 11A0005F */  beq     $t5, $zero, .L808CF3FC     
/* 044C0 808CF280 00000000 */  nop
/* 044C4 808CF284 C6660294 */  lwc1    $f6, 0x0294($s3)           ## 00000294
/* 044C8 808CF288 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 044CC 808CF28C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 044D0 808CF290 4600320D */  trunc.w.s $f8, $f6                   
/* 044D4 808CF294 440F4000 */  mfc1    $t7, $f8                   
/* 044D8 808CF298 00000000 */  nop
/* 044DC 808CF29C 000FC400 */  sll     $t8, $t7, 16               
/* 044E0 808CF2A0 0018CC03 */  sra     $t9, $t8, 16               
/* 044E4 808CF2A4 1B200055 */  blez    $t9, .L808CF3FC            
/* 044E8 808CF2A8 00000000 */  nop
/* 044EC 808CF2AC 4481A000 */  mtc1    $at, $f20                  ## $f20 = 20.00
/* 044F0 808CF2B0 00000000 */  nop
.L808CF2B4:
/* 044F4 808CF2B4 3C01808D */  lui     $at, %hi(D_808D1F90)       ## $at = 808D0000
/* 044F8 808CF2B8 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 044FC 808CF2BC C42C1F90 */  lwc1    $f12, %lo(D_808D1F90)($at) 
/* 04500 808CF2C0 4600028D */  trunc.w.s $f10, $f0                  
/* 04504 808CF2C4 4600A306 */  mov.s   $f12, $f20                 
/* 04508 808CF2C8 44105000 */  mfc1    $s0, $f10                  
/* 0450C 808CF2CC 00000000 */  nop
/* 04510 808CF2D0 00108400 */  sll     $s0, $s0, 16               
/* 04514 808CF2D4 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 04518 808CF2D8 00108403 */  sra     $s0, $s0, 16               
/* 0451C 808CF2DC 00104880 */  sll     $t1, $s0,  2               
/* 04520 808CF2E0 01304823 */  subu    $t1, $t1, $s0              
/* 04524 808CF2E4 00094880 */  sll     $t1, $t1,  2               
/* 04528 808CF2E8 02698821 */  addu    $s1, $s3, $t1              
/* 0452C 808CF2EC C6300E08 */  lwc1    $f16, 0x0E08($s1)          ## 00000DE0
/* 04530 808CF2F0 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 04534 808CF2F4 44813000 */  mtc1    $at, $f6                   ## $f6 = 90.00
/* 04538 808CF2F8 46100480 */  add.s   $f18, $f0, $f16            
/* 0453C 808CF2FC E7B20078 */  swc1    $f18, 0x0078($sp)          
/* 04540 808CF300 C7A40078 */  lwc1    $f4, 0x0078($sp)           
/* 04544 808CF304 4604303E */  c.le.s  $f6, $f4                   
/* 04548 808CF308 00000000 */  nop
/* 0454C 808CF30C 4502002F */  bc1fl   .L808CF3CC                 
/* 04550 808CF310 8FAF00D0 */  lw      $t7, 0x00D0($sp)           
/* 04554 808CF314 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 04558 808CF318 4600A306 */  mov.s   $f12, $f20                 
/* 0455C 808CF31C C6280E04 */  lwc1    $f8, 0x0E04($s1)           ## 00000DDC
/* 04560 808CF320 4600A306 */  mov.s   $f12, $f20                 
/* 04564 808CF324 46080280 */  add.s   $f10, $f0, $f8             
/* 04568 808CF328 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 0456C 808CF32C E7AA0074 */  swc1    $f10, 0x0074($sp)          
/* 04570 808CF330 C6300E0C */  lwc1    $f16, 0x0E0C($s1)          ## 00000DE4
/* 04574 808CF334 46100480 */  add.s   $f18, $f0, $f16            
/* 04578 808CF338 E7B2007C */  swc1    $f18, 0x007C($sp)          
/* 0457C 808CF33C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 04580 808CF340 C66C0290 */  lwc1    $f12, 0x0290($s3)          ## 00000290
/* 04584 808CF344 E7A0008C */  swc1    $f0, 0x008C($sp)           
/* 04588 808CF348 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 0458C 808CF34C C66C0290 */  lwc1    $f12, 0x0290($s3)          ## 00000290
/* 04590 808CF350 E7A00090 */  swc1    $f0, 0x0090($sp)           
/* 04594 808CF354 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 04598 808CF358 C66C0290 */  lwc1    $f12, 0x0290($s3)          ## 00000290
/* 0459C 808CF35C 3C01808D */  lui     $at, %hi(D_808D1F94)       ## $at = 808D0000
/* 045A0 808CF360 C4241F94 */  lwc1    $f4, %lo(D_808D1F94)($at)  
/* 045A4 808CF364 E7A00094 */  swc1    $f0, 0x0094($sp)           
/* 045A8 808CF368 4600B306 */  mov.s   $f12, $f22                 
/* 045AC 808CF36C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 045B0 808CF370 E7A40084 */  swc1    $f4, 0x0084($sp)           
/* 045B4 808CF374 E7A00080 */  swc1    $f0, 0x0080($sp)           
/* 045B8 808CF378 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 045BC 808CF37C 4600B306 */  mov.s   $f12, $f22                 
/* 045C0 808CF380 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 045C4 808CF384 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
/* 045C8 808CF388 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 045CC 808CF38C E7A00088 */  swc1    $f0, 0x0088($sp)           
/* 045D0 808CF390 4600018D */  trunc.w.s $f6, $f0                   
/* 045D4 808CF394 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00001970
/* 045D8 808CF398 27A50074 */  addiu   $a1, $sp, 0x0074           ## $a1 = FFFFFF9C
/* 045DC 808CF39C 27A6008C */  addiu   $a2, $sp, 0x008C           ## $a2 = FFFFFFB4
/* 045E0 808CF3A0 440B3000 */  mfc1    $t3, $f6                   
/* 045E4 808CF3A4 27A70080 */  addiu   $a3, $sp, 0x0080           ## $a3 = FFFFFFA8
/* 045E8 808CF3A8 000B6400 */  sll     $t4, $t3, 16               
/* 045EC 808CF3AC 000C6C03 */  sra     $t5, $t4, 16               
/* 045F0 808CF3B0 25AE0008 */  addiu   $t6, $t5, 0x0008           ## $t6 = 00000008
/* 045F4 808CF3B4 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 045F8 808CF3B8 00000000 */  nop
/* 045FC 808CF3BC 468042A0 */  cvt.s.w $f10, $f8                  
/* 04600 808CF3C0 0C232B70 */  jal     func_808CADC0              
/* 04604 808CF3C4 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 04608 808CF3C8 8FAF00D0 */  lw      $t7, 0x00D0($sp)           
.L808CF3CC:
/* 0460C 808CF3CC 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 04610 808CF3D0 00129400 */  sll     $s2, $s2, 16               
/* 04614 808CF3D4 C5F00294 */  lwc1    $f16, 0x0294($t7)          ## 00000294
/* 04618 808CF3D8 00129403 */  sra     $s2, $s2, 16               
/* 0461C 808CF3DC 4600848D */  trunc.w.s $f18, $f16                 
/* 04620 808CF3E0 44199000 */  mfc1    $t9, $f18                  
/* 04624 808CF3E4 00000000 */  nop
/* 04628 808CF3E8 00194400 */  sll     $t0, $t9, 16               
/* 0462C 808CF3EC 00084C03 */  sra     $t1, $t0, 16               
/* 04630 808CF3F0 0249082A */  slt     $at, $s2, $t1              
/* 04634 808CF3F4 1420FFAF */  bne     $at, $zero, .L808CF2B4     
/* 04638 808CF3F8 00000000 */  nop
.L808CF3FC:
/* 0463C 808CF3FC 3C04808D */  lui     $a0, %hi(D_808D1CCC)       ## $a0 = 808D0000
/* 04640 808CF400 0C00084C */  jal     osSyncPrintf
              
/* 04644 808CF404 24841CCC */  addiu   $a0, $a0, %lo(D_808D1CCC)  ## $a0 = 808D1CCC
/* 04648 808CF408 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 0464C 808CF40C 0C233D12 */  jal     func_808CF448              
/* 04650 808CF410 8FA500DC */  lw      $a1, 0x00DC($sp)           
/* 04654 808CF414 3C04808D */  lui     $a0, %hi(D_808D1CDC)       ## $a0 = 808D0000
/* 04658 808CF418 0C00084C */  jal     osSyncPrintf
              
/* 0465C 808CF41C 24841CDC */  addiu   $a0, $a0, %lo(D_808D1CDC)  ## $a0 = 808D1CDC
/* 04660 808CF420 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 04664 808CF424 D7B40038 */  ldc1    $f20, 0x0038($sp)          
/* 04668 808CF428 D7B60040 */  ldc1    $f22, 0x0040($sp)          
/* 0466C 808CF42C 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 04670 808CF430 8FB1004C */  lw      $s1, 0x004C($sp)           
/* 04674 808CF434 8FB20050 */  lw      $s2, 0x0050($sp)           
/* 04678 808CF438 8FB30054 */  lw      $s3, 0x0054($sp)           
/* 0467C 808CF43C 8FB40058 */  lw      $s4, 0x0058($sp)           
/* 04680 808CF440 03E00008 */  jr      $ra                        
/* 04684 808CF444 27BD00D8 */  addiu   $sp, $sp, 0x00D8           ## $sp = 00000000
