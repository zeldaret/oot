.late_rodata
glabel D_808B9E7C
 .word 0x3B3B3EE7
glabel D_808B9E80
 .word 0x3B3B3EE7
glabel D_808B9E84
    .float 1.57079637051

.text
glabel BgSstFloor_Update
/* 00098 808B99A8 3C020602 */  lui     $v0, 0x0602                ## $v0 = 06020000
/* 0009C 808B99AC 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 000A0 808B99B0 244294F8 */  addiu   $v0, $v0, 0x94F8           ## $v0 = 060194F8
/* 000A4 808B99B4 0002C100 */  sll     $t8, $v0,  4               
/* 000A8 808B99B8 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 000AC 808B99BC 0018CF02 */  srl     $t9, $t8, 28               
/* 000B0 808B99C0 24C66FA8 */  addiu   $a2, $a2, 0x6FA8           ## $a2 = 80166FA8
/* 000B4 808B99C4 00194880 */  sll     $t1, $t9,  2               
/* 000B8 808B99C8 00C95021 */  addu    $t2, $a2, $t1              
/* 000BC 808B99CC 8D4B0000 */  lw      $t3, 0x0000($t2)           ## 00000000
/* 000C0 808B99D0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 000C4 808B99D4 AFB20020 */  sw      $s2, 0x0020($sp)           
/* 000C8 808B99D8 AFB1001C */  sw      $s1, 0x001C($sp)           
/* 000CC 808B99DC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 000D0 808B99E0 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 000D4 808B99E4 3C0700FF */  lui     $a3, 0x00FF                ## $a3 = 00FF0000
/* 000D8 808B99E8 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 000DC 808B99EC 34E7FFFF */  ori     $a3, $a3, 0xFFFF           ## $a3 = 00FFFFFF
/* 000E0 808B99F0 00476024 */  and     $t4, $v0, $a3              
/* 000E4 808B99F4 3C088000 */  lui     $t0, 0x8000                ## $t0 = 80000000
/* 000E8 808B99F8 016C6821 */  addu    $t5, $t3, $t4              
/* 000EC 808B99FC 01A89021 */  addu    $s2, $t5, $t0              
/* 000F0 808B9A00 AFAF002C */  sw      $t7, 0x002C($sp)           
/* 000F4 808B9A04 8E430010 */  lw      $v1, 0x0010($s2)           ## 00000010
/* 000F8 808B9A08 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 000FC 808B9A0C 00037100 */  sll     $t6, $v1,  4               
/* 00100 808B9A10 000E7F02 */  srl     $t7, $t6, 28               
/* 00104 808B9A14 000FC080 */  sll     $t8, $t7,  2               
/* 00108 808B9A18 00D8C821 */  addu    $t9, $a2, $t8              
/* 0010C 808B9A1C 8F290000 */  lw      $t1, 0x0000($t9)           ## 00000000
/* 00110 808B9A20 00675024 */  and     $t2, $v1, $a3              
/* 00114 808B9A24 012A5821 */  addu    $t3, $t1, $t2              
/* 00118 808B9A28 01686021 */  addu    $t4, $t3, $t0              
/* 0011C 808B9A2C 0C010D64 */  jal     func_80043590              
/* 00120 808B9A30 AE4C0010 */  sw      $t4, 0x0010($s2)           ## 00000010
/* 00124 808B9A34 1040000D */  beq     $v0, $zero, .L808B9A6C     
/* 00128 808B9A38 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 0012C 808B9A3C C6240094 */  lwc1    $f4, 0x0094($s1)           ## 00000094
/* 00130 808B9A40 44813000 */  mtc1    $at, $f6                   ## $f6 = 1000.00
/* 00134 808B9A44 8FAD003C */  lw      $t5, 0x003C($sp)           
/* 00138 808B9A48 2405000C */  addiu   $a1, $zero, 0x000C         ## $a1 = 0000000C
/* 0013C 808B9A4C 4606203C */  c.lt.s  $f4, $f6                   
/* 00140 808B9A50 00000000 */  nop
/* 00144 808B9A54 45020006 */  bc1fl   .L808B9A70                 
/* 00148 808B9A58 8FAE003C */  lw      $t6, 0x003C($sp)           
/* 0014C 808B9A5C 0C0169DF */  jal     func_8005A77C              
/* 00150 808B9A60 8DA40790 */  lw      $a0, 0x0790($t5)           ## 00000790
/* 00154 808B9A64 10000005 */  beq     $zero, $zero, .L808B9A7C   
/* 00158 808B9A68 00000000 */  nop
.L808B9A6C:
/* 0015C 808B9A6C 8FAE003C */  lw      $t6, 0x003C($sp)           
.L808B9A70:
/* 00160 808B9A70 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00164 808B9A74 0C0169DF */  jal     func_8005A77C              
/* 00168 808B9A78 8DC40790 */  lw      $a0, 0x0790($t6)           ## 00000790
.L808B9A7C:
/* 0016C 808B9A7C 0C010D5B */  jal     func_8004356C              
/* 00170 808B9A80 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00174 808B9A84 1040000F */  beq     $v0, $zero, .L808B9AC4     
/* 00178 808B9A88 8FAF002C */  lw      $t7, 0x002C($sp)           
/* 0017C 808B9A8C 85F80896 */  lh      $t8, 0x0896($t7)           ## 00000896
/* 00180 808B9A90 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00184 808B9A94 44814000 */  mtc1    $at, $f8                   ## $f8 = 1000.00
/* 00188 808B9A98 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 0018C 808B9A9C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00190 808B9AA0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00194 808B9AA4 468054A0 */  cvt.s.w $f18, $f10                 
/* 00198 808B9AA8 24053951 */  addiu   $a1, $zero, 0x3951         ## $a1 = 00003951
/* 0019C 808B9AAC 4612403C */  c.lt.s  $f8, $f18                  
/* 001A0 808B9AB0 00000000 */  nop
/* 001A4 808B9AB4 45020004 */  bc1fl   .L808B9AC8                 
/* 001A8 808B9AB8 8629001C */  lh      $t1, 0x001C($s1)           ## 0000001C
/* 001AC 808B9ABC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 001B0 808B9AC0 A639001C */  sh      $t9, 0x001C($s1)           ## 0000001C
.L808B9AC4:
/* 001B4 808B9AC4 8629001C */  lh      $t1, 0x001C($s1)           ## 0000001C
.L808B9AC8:
/* 001B8 808B9AC8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 001BC 808B9ACC 8FAA003C */  lw      $t2, 0x003C($sp)           
/* 001C0 808B9AD0 15210051 */  bne     $t1, $at, .L808B9C18       
/* 001C4 808B9AD4 240B0050 */  addiu   $t3, $zero, 0x0050         ## $t3 = 00000050
/* 001C8 808B9AD8 8D501C74 */  lw      $s0, 0x1C74($t2)           ## 00001C74
/* 001CC 808B9ADC 240C001C */  addiu   $t4, $zero, 0x001C         ## $t4 = 0000001C
/* 001D0 808B9AE0 A62B0166 */  sh      $t3, 0x0166($s1)           ## 00000166
/* 001D4 808B9AE4 A620001C */  sh      $zero, 0x001C($s1)         ## 0000001C
/* 001D8 808B9AE8 A62C0164 */  sh      $t4, 0x0164($s1)           ## 00000164
/* 001DC 808B9AEC 0C010D5B */  jal     func_8004356C              
/* 001E0 808B9AF0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001E4 808B9AF4 10400020 */  beq     $v0, $zero, .L808B9B78     
/* 001E8 808B9AF8 00000000 */  nop
/* 001EC 808B9AFC 8FA2002C */  lw      $v0, 0x002C($sp)           
/* 001F0 808B9B00 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 001F4 808B9B04 8C4D067C */  lw      $t5, 0x067C($v0)           ## 0000067C
/* 001F8 808B9B08 31AE6000 */  andi    $t6, $t5, 0x6000           ## $t6 = 00000000
/* 001FC 808B9B0C 15C0001A */  bne     $t6, $zero, .L808B9B78     
/* 00200 808B9B10 00000000 */  nop
/* 00204 808B9B14 44818000 */  mtc1    $at, $f16                  ## $f16 = 600.00
/* 00208 808B9B18 C6240090 */  lwc1    $f4, 0x0090($s1)           ## 00000090
/* 0020C 808B9B1C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00210 808B9B20 3C0143AF */  lui     $at, 0x43AF                ## $at = 43AF0000
/* 00214 808B9B24 46048301 */  sub.s   $f12, $f16, $f4            
/* 00218 808B9B28 460C303C */  c.lt.s  $f6, $f12                  
/* 0021C 808B9B2C 00000000 */  nop
/* 00220 808B9B30 45000011 */  bc1f    .L808B9B78                 
/* 00224 808B9B34 00000000 */  nop
/* 00228 808B9B38 44817000 */  mtc1    $at, $f14                  ## $f14 = 350.00
/* 0022C 808B9B3C 3C014110 */  lui     $at, 0x4110                ## $at = 41100000
/* 00230 808B9B40 44815000 */  mtc1    $at, $f10                  ## $f10 = 9.00
/* 00234 808B9B44 460C703C */  c.lt.s  $f14, $f12                 
/* 00238 808B9B48 00000000 */  nop
/* 0023C 808B9B4C 45020003 */  bc1fl   .L808B9B5C                 
/* 00240 808B9B50 944F0088 */  lhu     $t7, 0x0088($v0)           ## 00000088
/* 00244 808B9B54 46007306 */  mov.s   $f12, $f14                 
/* 00248 808B9B58 944F0088 */  lhu     $t7, 0x0088($v0)           ## 00000088
.L808B9B5C:
/* 0024C 808B9B5C 460C5202 */  mul.s   $f8, $f10, $f12            
/* 00250 808B9B60 3C01808C */  lui     $at, %hi(D_808B9E7C)       ## $at = 808C0000
/* 00254 808B9B64 31F8FFFE */  andi    $t8, $t7, 0xFFFE           ## $t8 = 00000000
/* 00258 808B9B68 A4580088 */  sh      $t8, 0x0088($v0)           ## 00000088
/* 0025C 808B9B6C C4329E7C */  lwc1    $f18, %lo(D_808B9E7C)($at) 
/* 00260 808B9B70 46124102 */  mul.s   $f4, $f8, $f18             
/* 00264 808B9B74 E4440060 */  swc1    $f4, 0x0060($v0)           ## 00000060
.L808B9B78:
/* 00268 808B9B78 52000028 */  beql    $s0, $zero, .L808B9C1C     
/* 0026C 808B9B7C 862B0164 */  lh      $t3, 0x0164($s1)           ## 00000164
/* 00270 808B9B80 86190000 */  lh      $t9, 0x0000($s0)           ## 00000000
.L808B9B84:
/* 00274 808B9B84 24010015 */  addiu   $at, $zero, 0x0015         ## $at = 00000015
/* 00278 808B9B88 57210021 */  bnel    $t9, $at, .L808B9C10       
/* 0027C 808B9B8C 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
/* 00280 808B9B90 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00284 808B9B94 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 00288 808B9B98 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0028C 808B9B9C 460A3032 */  c.eq.s  $f6, $f10                  
/* 00290 808B9BA0 00000000 */  nop
/* 00294 808B9BA4 4502001A */  bc1fl   .L808B9C10                 
/* 00298 808B9BA8 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
/* 0029C 808B9BAC 0C00B6E3 */  jal     func_8002DB8C              
/* 002A0 808B9BB0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 002A4 808B9BB4 3C0143AF */  lui     $at, 0x43AF                ## $at = 43AF0000
/* 002A8 808B9BB8 44817000 */  mtc1    $at, $f14                  ## $f14 = 350.00
/* 002AC 808B9BBC 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 002B0 808B9BC0 44818000 */  mtc1    $at, $f16                  ## $f16 = 600.00
/* 002B4 808B9BC4 3C014110 */  lui     $at, 0x4110                ## $at = 41100000
/* 002B8 808B9BC8 4610003C */  c.lt.s  $f0, $f16                  
/* 002BC 808B9BCC 46008081 */  sub.s   $f2, $f16, $f0             
/* 002C0 808B9BD0 4500000E */  bc1f    .L808B9C0C                 
/* 002C4 808B9BD4 46001306 */  mov.s   $f12, $f2                  
/* 002C8 808B9BD8 4602703C */  c.lt.s  $f14, $f2                  
/* 002CC 808B9BDC 44814000 */  mtc1    $at, $f8                   ## $f8 = 9.00
/* 002D0 808B9BE0 45020003 */  bc1fl   .L808B9BF0                 
/* 002D4 808B9BE4 96090088 */  lhu     $t1, 0x0088($s0)           ## 00000088
/* 002D8 808B9BE8 46007306 */  mov.s   $f12, $f14                 
/* 002DC 808B9BEC 96090088 */  lhu     $t1, 0x0088($s0)           ## 00000088
.L808B9BF0:
/* 002E0 808B9BF0 460C4482 */  mul.s   $f18, $f8, $f12            
/* 002E4 808B9BF4 3C01808C */  lui     $at, %hi(D_808B9E80)       ## $at = 808C0000
/* 002E8 808B9BF8 312AFFFC */  andi    $t2, $t1, 0xFFFC           ## $t2 = 00000000
/* 002EC 808B9BFC A60A0088 */  sh      $t2, 0x0088($s0)           ## 00000088
/* 002F0 808B9C00 C4249E80 */  lwc1    $f4, %lo(D_808B9E80)($at)  
/* 002F4 808B9C04 46049182 */  mul.s   $f6, $f18, $f4             
/* 002F8 808B9C08 E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
.L808B9C0C:
/* 002FC 808B9C0C 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
.L808B9C10:
/* 00300 808B9C10 5600FFDC */  bnel    $s0, $zero, .L808B9B84     
/* 00304 808B9C14 86190000 */  lh      $t9, 0x0000($s0)           ## 00000000
.L808B9C18:
/* 00308 808B9C18 862B0164 */  lh      $t3, 0x0164($s1)           ## 00000164
.L808B9C1C:
/* 0030C 808B9C1C 3C01808C */  lui     $at, %hi(D_808B9E84)       ## $at = 808C0000
/* 00310 808B9C20 C4329E84 */  lwc1    $f18, %lo(D_808B9E84)($at) 
/* 00314 808B9C24 448B5000 */  mtc1    $t3, $f10                  ## $f10 = 0.00
/* 00318 808B9C28 00000000 */  nop
/* 0031C 808B9C2C 46805220 */  cvt.s.w $f8, $f10                  
/* 00320 808B9C30 46124302 */  mul.s   $f12, $f8, $f18            
/* 00324 808B9C34 0C0400A4 */  jal     sinf
              
/* 00328 808B9C38 00000000 */  nop
/* 0032C 808B9C3C 862C0166 */  lh      $t4, 0x0166($s1)           ## 00000166
/* 00330 808B9C40 26240166 */  addiu   $a0, $s1, 0x0166           ## $a0 = 00000166
/* 00334 808B9C44 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00338 808B9C48 000C6823 */  subu    $t5, $zero, $t4            
/* 0033C 808B9C4C 448D2000 */  mtc1    $t5, $f4                   ## $f4 = 0.00
/* 00340 808B9C50 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 00344 808B9C54 468021A0 */  cvt.s.w $f6, $f4                   
/* 00348 808B9C58 46060282 */  mul.s   $f10, $f0, $f6             
/* 0034C 808B9C5C 4600520D */  trunc.w.s $f8, $f10                  
/* 00350 808B9C60 440F4000 */  mfc1    $t7, $f8                   
/* 00354 808B9C64 0C01DE5F */  jal     Math_ApproxS
              
/* 00358 808B9C68 A62F0168 */  sh      $t7, 0x0168($s1)           ## 00000168
/* 0035C 808B9C6C 86380168 */  lh      $t8, 0x0168($s1)           ## 00000168
/* 00360 808B9C70 C632000C */  lwc1    $f18, 0x000C($s1)          ## 0000000C
/* 00364 808B9C74 8E490010 */  lw      $t1, 0x0010($s2)           ## 00000010
/* 00368 808B9C78 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 0036C 808B9C7C 00000000 */  nop
/* 00370 808B9C80 468021A0 */  cvt.s.w $f6, $f4                   
/* 00374 808B9C84 46069280 */  add.s   $f10, $f18, $f6            
/* 00378 808B9C88 4600520D */  trunc.w.s $f8, $f10                  
/* 0037C 808B9C8C 44034000 */  mfc1    $v1, $f8                   
/* 00380 808B9C90 00000000 */  nop
/* 00384 808B9C94 00031C00 */  sll     $v1, $v1, 16               
/* 00388 808B9C98 00031C03 */  sra     $v1, $v1, 16               
/* 0038C 808B9C9C A5230050 */  sh      $v1, 0x0050($t1)           ## 00000050
/* 00390 808B9CA0 8E4A0010 */  lw      $t2, 0x0010($s2)           ## 00000010
/* 00394 808B9CA4 A5430044 */  sh      $v1, 0x0044($t2)           ## 00000044
/* 00398 808B9CA8 8E4B0010 */  lw      $t3, 0x0010($s2)           ## 00000010
/* 0039C 808B9CAC A5630038 */  sh      $v1, 0x0038($t3)           ## 00000038
/* 003A0 808B9CB0 8E4C0010 */  lw      $t4, 0x0010($s2)           ## 00000010
/* 003A4 808B9CB4 A583002C */  sh      $v1, 0x002C($t4)           ## 0000002C
/* 003A8 808B9CB8 8E4D0010 */  lw      $t5, 0x0010($s2)           ## 00000010
/* 003AC 808B9CBC A5A3001A */  sh      $v1, 0x001A($t5)           ## 0000001A
/* 003B0 808B9CC0 8E4E0010 */  lw      $t6, 0x0010($s2)           ## 00000010
/* 003B4 808B9CC4 A5C30014 */  sh      $v1, 0x0014($t6)           ## 00000014
/* 003B8 808B9CC8 8E4F0010 */  lw      $t7, 0x0010($s2)           ## 00000010
/* 003BC 808B9CCC A5E3000E */  sh      $v1, 0x000E($t7)           ## 0000000E
/* 003C0 808B9CD0 8E580010 */  lw      $t8, 0x0010($s2)           ## 00000010
/* 003C4 808B9CD4 A7030002 */  sh      $v1, 0x0002($t8)           ## 00000002
/* 003C8 808B9CD8 8E590010 */  lw      $t9, 0x0010($s2)           ## 00000010
/* 003CC 808B9CDC A7230008 */  sh      $v1, 0x0008($t9)           ## 00000008
/* 003D0 808B9CE0 86240164 */  lh      $a0, 0x0164($s1)           ## 00000164
/* 003D4 808B9CE4 10800002 */  beq     $a0, $zero, .L808B9CF0     
/* 003D8 808B9CE8 2489FFFF */  addiu   $t1, $a0, 0xFFFF           ## $t1 = FFFFFFFF
/* 003DC 808B9CEC A6290164 */  sh      $t1, 0x0164($s1)           ## 00000164
.L808B9CF0:
/* 003E0 808B9CF0 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 003E4 808B9CF4 0C00FB9B */  jal     func_8003EE6C              
/* 003E8 808B9CF8 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 003EC 808B9CFC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 003F0 808B9D00 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 003F4 808B9D04 8FB1001C */  lw      $s1, 0x001C($sp)           
/* 003F8 808B9D08 8FB20020 */  lw      $s2, 0x0020($sp)           
/* 003FC 808B9D0C 03E00008 */  jr      $ra                        
/* 00400 808B9D10 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
