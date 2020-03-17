glabel func_80A22B1C
/* 00C5C 80A22B1C 27BDFF18 */  addiu   $sp, $sp, 0xFF18           ## $sp = FFFFFF18
/* 00C60 80A22B20 AFBF009C */  sw      $ra, 0x009C($sp)           
/* 00C64 80A22B24 AFBE0098 */  sw      $s8, 0x0098($sp)           
/* 00C68 80A22B28 AFB70094 */  sw      $s7, 0x0094($sp)           
/* 00C6C 80A22B2C AFB60090 */  sw      $s6, 0x0090($sp)           
/* 00C70 80A22B30 AFB5008C */  sw      $s5, 0x008C($sp)           
/* 00C74 80A22B34 AFB40088 */  sw      $s4, 0x0088($sp)           
/* 00C78 80A22B38 AFB30084 */  sw      $s3, 0x0084($sp)           
/* 00C7C 80A22B3C AFB20080 */  sw      $s2, 0x0080($sp)           
/* 00C80 80A22B40 AFB1007C */  sw      $s1, 0x007C($sp)           
/* 00C84 80A22B44 AFB00078 */  sw      $s0, 0x0078($sp)           
/* 00C88 80A22B48 F7BE0070 */  sdc1    $f30, 0x0070($sp)          
/* 00C8C 80A22B4C F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 00C90 80A22B50 F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 00C94 80A22B54 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 00C98 80A22B58 F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 00C9C 80A22B5C F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 00CA0 80A22B60 848E00B6 */  lh      $t6, 0x00B6($a0)           ## 000000B6
/* 00CA4 80A22B64 9082018D */  lbu     $v0, 0x018D($a0)           ## 0000018D
/* 00CA8 80A22B68 00A0F025 */  or      $s8, $a1, $zero            ## $s8 = 00000000
/* 00CAC 80A22B6C 25CF03C0 */  addiu   $t7, $t6, 0x03C0           ## $t7 = 000003C0
/* 00CB0 80A22B70 30580002 */  andi    $t8, $v0, 0x0002           ## $t8 = 00000000
/* 00CB4 80A22B74 13000090 */  beq     $t8, $zero, .L80A22DB8     
/* 00CB8 80A22B78 A48F00B6 */  sh      $t7, 0x00B6($a0)           ## 000000B6
/* 00CBC 80A22B7C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00CC0 80A22B80 4481F000 */  mtc1    $at, $f30                  ## $f30 = 5.00
/* 00CC4 80A22B84 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00CC8 80A22B88 4481E000 */  mtc1    $at, $f28                  ## $f28 = 0.50
/* 00CCC 80A22B8C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00CD0 80A22B90 4481D000 */  mtc1    $at, $f26                  ## $f26 = 10.00
/* 00CD4 80A22B94 3059FFFD */  andi    $t9, $v0, 0xFFFD           ## $t9 = 00000000
/* 00CD8 80A22B98 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00CDC 80A22B9C A099018D */  sb      $t9, 0x018D($a0)           ## 0000018D
/* 00CE0 80A22BA0 3C160600 */  lui     $s6, 0x0600                ## $s6 = 06000000
/* 00CE4 80A22BA4 4481C000 */  mtc1    $at, $f24                  ## $f24 = 8.00
/* 00CE8 80A22BA8 26D61960 */  addiu   $s6, $s6, 0x1960           ## $s6 = 06001960
/* 00CEC 80A22BAC AFA400E8 */  sw      $a0, 0x00E8($sp)           
/* 00CF0 80A22BB0 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 00CF4 80A22BB4 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 00CF8 80A22BB8 24910024 */  addiu   $s1, $a0, 0x0024           ## $s1 = 00000024
/* 00CFC 80A22BBC 2417001E */  addiu   $s7, $zero, 0x001E         ## $s7 = 0000001E
/* 00D00 80A22BC0 27B500C4 */  addiu   $s5, $sp, 0x00C4           ## $s5 = FFFFFFDC
/* 00D04 80A22BC4 27B400D0 */  addiu   $s4, $sp, 0x00D0           ## $s4 = FFFFFFE8
.L80A22BC8:
/* 00D08 80A22BC8 00122400 */  sll     $a0, $s2, 16               
/* 00D0C 80A22BCC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00D10 80A22BD0 00042403 */  sra     $a0, $a0, 16               
/* 00D14 80A22BD4 00122400 */  sll     $a0, $s2, 16               
/* 00D18 80A22BD8 46000506 */  mov.s   $f20, $f0                  
/* 00D1C 80A22BDC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00D20 80A22BE0 00042403 */  sra     $a0, $a0, 16               
/* 00D24 80A22BE4 4618A102 */  mul.s   $f4, $f20, $f24            
/* 00D28 80A22BE8 46000586 */  mov.s   $f22, $f0                  
/* 00D2C 80A22BEC 4600F306 */  mov.s   $f12, $f30                 
/* 00D30 80A22BF0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00D34 80A22BF4 E7A400D0 */  swc1    $f4, 0x00D0($sp)           
/* 00D38 80A22BF8 4618B202 */  mul.s   $f8, $f22, $f24            
/* 00D3C 80A22BFC C7AA00D0 */  lwc1    $f10, 0x00D0($sp)          
/* 00D40 80A22C00 461A0180 */  add.s   $f6, $f0, $f26             
/* 00D44 80A22C04 461C5402 */  mul.s   $f16, $f10, $f28           
/* 00D48 80A22C08 E7A600D4 */  swc1    $f6, 0x00D4($sp)           
/* 00D4C 80A22C0C E7A800D8 */  swc1    $f8, 0x00D8($sp)           
/* 00D50 80A22C10 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00D54 80A22C14 E7B000C4 */  swc1    $f16, 0x00C4($sp)          
/* 00D58 80A22C18 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00D5C 80A22C1C 44819000 */  mtc1    $at, $f18                  ## $f18 = 15.00
/* 00D60 80A22C20 C7A800D8 */  lwc1    $f8, 0x00D8($sp)           
/* 00D64 80A22C24 C7B000D0 */  lwc1    $f16, 0x00D0($sp)          
/* 00D68 80A22C28 46120102 */  mul.s   $f4, $f0, $f18             
/* 00D6C 80A22C2C 461A2180 */  add.s   $f6, $f4, $f26             
/* 00D70 80A22C30 461C4282 */  mul.s   $f10, $f8, $f28            
/* 00D74 80A22C34 E7A600C8 */  swc1    $f6, 0x00C8($sp)           
/* 00D78 80A22C38 C7A600D4 */  lwc1    $f6, 0x00D4($sp)           
/* 00D7C 80A22C3C E7AA00CC */  swc1    $f10, 0x00CC($sp)          
/* 00D80 80A22C40 C6320000 */  lwc1    $f18, 0x0000($s1)          ## 00000024
/* 00D84 80A22C44 46128100 */  add.s   $f4, $f16, $f18            
/* 00D88 80A22C48 E7A400D0 */  swc1    $f4, 0x00D0($sp)           
/* 00D8C 80A22C4C C62A0004 */  lwc1    $f10, 0x0004($s1)          ## 00000028
/* 00D90 80A22C50 460A3400 */  add.s   $f16, $f6, $f10            
/* 00D94 80A22C54 E7B000D4 */  swc1    $f16, 0x00D4($sp)          
/* 00D98 80A22C58 C6320008 */  lwc1    $f18, 0x0008($s1)          ## 0000002C
/* 00D9C 80A22C5C 46124100 */  add.s   $f4, $f8, $f18             
/* 00DA0 80A22C60 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00DA4 80A22C64 E7A400D8 */  swc1    $f4, 0x00D8($sp)           
/* 00DA8 80A22C68 3C0180A2 */  lui     $at, %hi(D_80A23B10)       ## $at = 80A20000
/* 00DAC 80A22C6C C4263B10 */  lwc1    $f6, %lo(D_80A23B10)($at)  
/* 00DB0 80A22C70 3C0180A2 */  lui     $at, %hi(D_80A23B14)       ## $at = 80A20000
/* 00DB4 80A22C74 4606003C */  c.lt.s  $f0, $f6                   
/* 00DB8 80A22C78 00000000 */  nop
/* 00DBC 80A22C7C 45000003 */  bc1f    .L80A22C8C                 
/* 00DC0 80A22C80 00000000 */  nop
/* 00DC4 80A22C84 10000009 */  beq     $zero, $zero, .L80A22CAC   
/* 00DC8 80A22C88 24100060 */  addiu   $s0, $zero, 0x0060         ## $s0 = 00000060
.L80A22C8C:
/* 00DCC 80A22C8C C42A3B14 */  lwc1    $f10, %lo(D_80A23B14)($at) 
/* 00DD0 80A22C90 24100020 */  addiu   $s0, $zero, 0x0020         ## $s0 = 00000020
/* 00DD4 80A22C94 460A003C */  c.lt.s  $f0, $f10                  
/* 00DD8 80A22C98 00000000 */  nop
/* 00DDC 80A22C9C 45000003 */  bc1f    .L80A22CAC                 
/* 00DE0 80A22CA0 00000000 */  nop
/* 00DE4 80A22CA4 10000001 */  beq     $zero, $zero, .L80A22CAC   
/* 00DE8 80A22CA8 24100040 */  addiu   $s0, $zero, 0x0040         ## $s0 = 00000040
.L80A22CAC:
/* 00DEC 80A22CAC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00DF0 80A22CB0 00000000 */  nop
/* 00DF4 80A22CB4 3C014302 */  lui     $at, 0x4302                ## $at = 43020000
/* 00DF8 80A22CB8 44818000 */  mtc1    $at, $f16                  ## $f16 = 130.00
/* 00DFC 80A22CBC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00E00 80A22CC0 44819000 */  mtc1    $at, $f18                  ## $f18 = 30.00
/* 00E04 80A22CC4 46100202 */  mul.s   $f8, $f0, $f16             
/* 00E08 80A22CC8 2408FF10 */  addiu   $t0, $zero, 0xFF10         ## $t0 = FFFFFF10
/* 00E0C 80A22CCC 2409000A */  addiu   $t1, $zero, 0x000A         ## $t1 = 0000000A
/* 00E10 80A22CD0 240A000A */  addiu   $t2, $zero, 0x000A         ## $t2 = 0000000A
/* 00E14 80A22CD4 240D0020 */  addiu   $t5, $zero, 0x0020         ## $t5 = 00000020
/* 00E18 80A22CD8 240E003C */  addiu   $t6, $zero, 0x003C         ## $t6 = 0000003C
/* 00E1C 80A22CDC 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 00E20 80A22CE0 46124100 */  add.s   $f4, $f8, $f18             
/* 00E24 80A22CE4 2418012C */  addiu   $t8, $zero, 0x012C         ## $t8 = 0000012C
/* 00E28 80A22CE8 AFB80038 */  sw      $t8, 0x0038($sp)           
/* 00E2C 80A22CEC AFAF0034 */  sw      $t7, 0x0034($sp)           
/* 00E30 80A22CF0 4600218D */  trunc.w.s $f6, $f4                   
/* 00E34 80A22CF4 AFAE0030 */  sw      $t6, 0x0030($sp)           
/* 00E38 80A22CF8 AFAD002C */  sw      $t5, 0x002C($sp)           
/* 00E3C 80A22CFC AFAA001C */  sw      $t2, 0x001C($sp)           
/* 00E40 80A22D00 440C3000 */  mfc1    $t4, $f6                   
/* 00E44 80A22D04 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 00E48 80A22D08 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00E4C 80A22D0C 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000000
/* 00E50 80A22D10 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFE8
/* 00E54 80A22D14 02A03025 */  or      $a2, $s5, $zero            ## $a2 = FFFFFFDC
/* 00E58 80A22D18 02203825 */  or      $a3, $s1, $zero            ## $a3 = 00000024
/* 00E5C 80A22D1C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00E60 80A22D20 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00E64 80A22D24 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00E68 80A22D28 AFB6003C */  sw      $s6, 0x003C($sp)           
/* 00E6C 80A22D2C 0C00A7A3 */  jal     Effect_SpawnFragment
              
/* 00E70 80A22D30 AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 00E74 80A22D34 26524E20 */  addiu   $s2, $s2, 0x4E20           ## $s2 = 00004E20
/* 00E78 80A22D38 00129400 */  sll     $s2, $s2, 16               
/* 00E7C 80A22D3C 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 00E80 80A22D40 1677FFA1 */  bne     $s3, $s7, .L80A22BC8       
/* 00E84 80A22D44 00129403 */  sra     $s2, $s2, 16               
/* 00E88 80A22D48 24190014 */  addiu   $t9, $zero, 0x0014         ## $t9 = 00000014
/* 00E8C 80A22D4C 24080032 */  addiu   $t0, $zero, 0x0032         ## $t0 = 00000032
/* 00E90 80A22D50 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 00E94 80A22D54 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00E98 80A22D58 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000000
/* 00E9C 80A22D5C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000024
/* 00EA0 80A22D60 3C0641F0 */  lui     $a2, 0x41F0                ## $a2 = 41F00000
/* 00EA4 80A22D64 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 00EA8 80A22D68 0C00CD20 */  jal     func_80033480              
/* 00EAC 80A22D6C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00EB0 80A22D70 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000000
/* 00EB4 80A22D74 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000024
/* 00EB8 80A22D78 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 00EBC 80A22D7C 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00EC0 80A22D80 24072887 */  addiu   $a3, $zero, 0x2887         ## $a3 = 00002887
/* 00EC4 80A22D84 8FA400E8 */  lw      $a0, 0x00E8($sp)           
/* 00EC8 80A22D88 0C288894 */  jal     func_80A22250              
/* 00ECC 80A22D8C 03C02825 */  or      $a1, $s8, $zero            ## $a1 = 00000000
/* 00ED0 80A22D90 8FAA00E8 */  lw      $t2, 0x00E8($sp)           
/* 00ED4 80A22D94 24090032 */  addiu   $t1, $zero, 0x0032         ## $t1 = 00000032
/* 00ED8 80A22D98 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00EDC 80A22D9C A5490156 */  sh      $t1, 0x0156($t2)           ## 00000156
/* 00EE0 80A22DA0 8FAC00E8 */  lw      $t4, 0x00E8($sp)           
/* 00EE4 80A22DA4 3C0D80A2 */  lui     $t5, %hi(func_80A22E00)    ## $t5 = 80A20000
/* 00EE8 80A22DA8 25AD2E00 */  addiu   $t5, $t5, %lo(func_80A22E00) ## $t5 = 80A22E00
/* 00EEC 80A22DAC A58B015A */  sh      $t3, 0x015A($t4)           ## 0000015A
/* 00EF0 80A22DB0 8FAE00E8 */  lw      $t6, 0x00E8($sp)           
/* 00EF4 80A22DB4 ADCD014C */  sw      $t5, 0x014C($t6)           ## 0000014C
.L80A22DB8:
/* 00EF8 80A22DB8 8FBF009C */  lw      $ra, 0x009C($sp)           
/* 00EFC 80A22DBC D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 00F00 80A22DC0 D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 00F04 80A22DC4 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 00F08 80A22DC8 D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 00F0C 80A22DCC D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 00F10 80A22DD0 D7BE0070 */  ldc1    $f30, 0x0070($sp)          
/* 00F14 80A22DD4 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 00F18 80A22DD8 8FB1007C */  lw      $s1, 0x007C($sp)           
/* 00F1C 80A22DDC 8FB20080 */  lw      $s2, 0x0080($sp)           
/* 00F20 80A22DE0 8FB30084 */  lw      $s3, 0x0084($sp)           
/* 00F24 80A22DE4 8FB40088 */  lw      $s4, 0x0088($sp)           
/* 00F28 80A22DE8 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 00F2C 80A22DEC 8FB60090 */  lw      $s6, 0x0090($sp)           
/* 00F30 80A22DF0 8FB70094 */  lw      $s7, 0x0094($sp)           
/* 00F34 80A22DF4 8FBE0098 */  lw      $s8, 0x0098($sp)           
/* 00F38 80A22DF8 03E00008 */  jr      $ra                        
/* 00F3C 80A22DFC 27BD00E8 */  addiu   $sp, $sp, 0x00E8           ## $sp = 00000000


