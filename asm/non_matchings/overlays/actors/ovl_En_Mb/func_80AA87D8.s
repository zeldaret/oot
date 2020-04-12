.late_rodata
glabel D_80AA9E8C
    .float 0.7

.text
glabel func_80AA87D8
/* 02788 80AA87D8 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 0278C 80AA87DC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02790 80AA87E0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02794 80AA87E4 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 02798 80AA87E8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0279C 80AA87EC 3C053F19 */  lui     $a1, 0x3F19                ## $a1 = 3F190000
/* 027A0 80AA87F0 AFAE003C */  sw      $t6, 0x003C($sp)           
/* 027A4 80AA87F4 849800B6 */  lh      $t8, 0x00B6($a0)           ## 000000B6
/* 027A8 80AA87F8 848F008A */  lh      $t7, 0x008A($a0)           ## 0000008A
/* 027AC 80AA87FC 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 027B0 80AA8800 34A59999 */  ori     $a1, $a1, 0x9999           ## $a1 = 3F199999
/* 027B4 80AA8804 01F81823 */  subu    $v1, $t7, $t8              
/* 027B8 80AA8808 00031C00 */  sll     $v1, $v1, 16               
/* 027BC 80AA880C 00031C03 */  sra     $v1, $v1, 16               
/* 027C0 80AA8810 04610004 */  bgez    $v1, .L80AA8824            
/* 027C4 80AA8814 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 027C8 80AA8818 00031823 */  subu    $v1, $zero, $v1            
/* 027CC 80AA881C 00031C00 */  sll     $v1, $v1, 16               
/* 027D0 80AA8820 00031C03 */  sra     $v1, $v1, 16               
.L80AA8824:
/* 027D4 80AA8824 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 027D8 80AA8828 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 027DC 80AA882C 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 027E0 80AA8830 A7A3003A */  sh      $v1, 0x003A($sp)           
/* 027E4 80AA8834 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 027E8 80AA8838 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 027EC 80AA883C C60801A4 */  lwc1    $f8, 0x01A4($s0)           ## 000001A4
/* 027F0 80AA8840 C6060068 */  lwc1    $f6, 0x0068($s0)           ## 00000068
/* 027F4 80AA8844 2604018C */  addiu   $a0, $s0, 0x018C           ## $a0 = 0000018C
/* 027F8 80AA8848 4600428D */  trunc.w.s $f10, $f8                  
/* 027FC 80AA884C E60601A8 */  swc1    $f6, 0x01A8($s0)           ## 000001A8
/* 02800 80AA8850 44085000 */  mfc1    $t0, $f10                  
/* 02804 80AA8854 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02808 80AA8858 AFA8004C */  sw      $t0, 0x004C($sp)           
/* 0280C 80AA885C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 02810 80AA8860 C60001A8 */  lwc1    $f0, 0x01A8($s0)           ## 000001A8
/* 02814 80AA8864 87A3003A */  lh      $v1, 0x003A($sp)           
/* 02818 80AA8868 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
/* 0281C 80AA886C 4600103E */  c.le.s  $f2, $f0                   
/* 02820 80AA8870 00000000 */  nop
/* 02824 80AA8874 45020004 */  bc1fl   .L80AA8888                 
/* 02828 80AA8878 46000407 */  neg.s   $f16, $f0                  
/* 0282C 80AA887C 10000003 */  beq     $zero, $zero, .L80AA888C   
/* 02830 80AA8880 E7A00034 */  swc1    $f0, 0x0034($sp)           
/* 02834 80AA8884 46000407 */  neg.s   $f16, $f0                  
.L80AA8888:
/* 02838 80AA8888 E7B00034 */  swc1    $f16, 0x0034($sp)          
.L80AA888C:
/* 0283C 80AA888C C61201A4 */  lwc1    $f18, 0x01A4($s0)          ## 000001A4
/* 02840 80AA8890 C7A40034 */  lwc1    $f4, 0x0034($sp)           
/* 02844 80AA8894 4600103E */  c.le.s  $f2, $f0                   
/* 02848 80AA8898 46049181 */  sub.s   $f6, $f18, $f4             
/* 0284C 80AA889C 4600320D */  trunc.w.s $f8, $f6                   
/* 02850 80AA88A0 440A4000 */  mfc1    $t2, $f8                   
/* 02854 80AA88A4 45000003 */  bc1f    .L80AA88B4                 
/* 02858 80AA88A8 AFAA0048 */  sw      $t2, 0x0048($sp)           
/* 0285C 80AA88AC 10000003 */  beq     $zero, $zero, .L80AA88BC   
/* 02860 80AA88B0 E7A00034 */  swc1    $f0, 0x0034($sp)           
.L80AA88B4:
/* 02864 80AA88B4 46000287 */  neg.s   $f10, $f0                  
/* 02868 80AA88B8 E7AA0034 */  swc1    $f10, 0x0034($sp)          
.L80AA88BC:
/* 0286C 80AA88BC 860B032E */  lh      $t3, 0x032E($s0)           ## 0000032E
/* 02870 80AA88C0 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 02874 80AA88C4 15600020 */  bne     $t3, $zero, .L80AA8948     
/* 02878 80AA88C8 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 0287C 80AA88CC 0C01E00A */  jal     Math_Vec3f_DistXZ
              
/* 02880 80AA88D0 A7A3003A */  sh      $v1, 0x003A($sp)           
/* 02884 80AA88D4 C6100364 */  lwc1    $f16, 0x0364($s0)          ## 00000364
/* 02888 80AA88D8 87A3003A */  lh      $v1, 0x003A($sp)           
/* 0288C 80AA88DC 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 02890 80AA88E0 4610003C */  c.lt.s  $f0, $f16                  
/* 02894 80AA88E4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 02898 80AA88E8 240702EE */  addiu   $a3, $zero, 0x02EE         ## $a3 = 000002EE
/* 0289C 80AA88EC 45020017 */  bc1fl   .L80AA894C                 
/* 028A0 80AA88F0 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 028A4 80AA88F4 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 028A8 80AA88F8 A7A3003A */  sh      $v1, 0x003A($sp)           
/* 028AC 80AA88FC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 028B0 80AA8900 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 028B4 80AA8904 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 028B8 80AA8908 44812000 */  mtc1    $at, $f4                   ## $f4 = 500.00
/* 028BC 80AA890C C6120090 */  lwc1    $f18, 0x0090($s0)          ## 00000090
/* 028C0 80AA8910 8E0C0004 */  lw      $t4, 0x0004($s0)           ## 00000004
/* 028C4 80AA8914 87A3003A */  lh      $v1, 0x003A($sp)           
/* 028C8 80AA8918 4604903C */  c.lt.s  $f18, $f4                  
/* 028CC 80AA891C 358D0001 */  ori     $t5, $t4, 0x0001           ## $t5 = 00000001
/* 028D0 80AA8920 AE0D0004 */  sw      $t5, 0x0004($s0)           ## 00000004
/* 028D4 80AA8924 28611388 */  slti    $at, $v1, 0x1388           
/* 028D8 80AA8928 4502004B */  bc1fl   .L80AA8A58                 
/* 028DC 80AA892C C60A01A4 */  lwc1    $f10, 0x01A4($s0)          ## 000001A4
/* 028E0 80AA8930 50200049 */  beql    $at, $zero, .L80AA8A58     
/* 028E4 80AA8934 C60A01A4 */  lwc1    $f10, 0x01A4($s0)          ## 000001A4
/* 028E8 80AA8938 0C2A9AB2 */  jal     func_80AA6AC8              
/* 028EC 80AA893C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 028F0 80AA8940 10000045 */  beq     $zero, $zero, .L80AA8A58   
/* 028F4 80AA8944 C60A01A4 */  lwc1    $f10, 0x01A4($s0)          ## 000001A4
.L80AA8948:
/* 028F8 80AA8948 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
.L80AA894C:
/* 028FC 80AA894C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 02900 80AA8950 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 02904 80AA8954 01C17824 */  and     $t7, $t6, $at              
/* 02908 80AA8958 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 0290C 80AA895C 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 02910 80AA8960 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 02914 80AA8964 0C01E00A */  jal     Math_Vec3f_DistXZ
              
/* 02918 80AA8968 AFA4002C */  sw      $a0, 0x002C($sp)           
/* 0291C 80AA896C C6060360 */  lwc1    $f6, 0x0360($s0)           ## 00000360
/* 02920 80AA8970 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 02924 80AA8974 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 02928 80AA8978 4600303C */  c.lt.s  $f6, $f0                   
/* 0292C 80AA897C 00000000 */  nop
/* 02930 80AA8980 45010004 */  bc1t    .L80AA8994                 
/* 02934 80AA8984 00000000 */  nop
/* 02938 80AA8988 8603032C */  lh      $v1, 0x032C($s0)           ## 0000032C
/* 0293C 80AA898C 1060000B */  beq     $v1, $zero, .L80AA89BC     
/* 02940 80AA8990 00000000 */  nop
.L80AA8994:
/* 02944 80AA8994 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 02948 80AA8998 00000000 */  nop
/* 0294C 80AA899C 00022C00 */  sll     $a1, $v0, 16               
/* 02950 80AA89A0 00052C03 */  sra     $a1, $a1, 16               
/* 02954 80AA89A4 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 02958 80AA89A8 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0295C 80AA89AC 240702EE */  addiu   $a3, $zero, 0x02EE         ## $a3 = 000002EE
/* 02960 80AA89B0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02964 80AA89B4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02968 80AA89B8 8603032C */  lh      $v1, 0x032C($s0)           ## 0000032C
.L80AA89BC:
/* 0296C 80AA89BC 10600002 */  beq     $v1, $zero, .L80AA89C8     
/* 02970 80AA89C0 2478FFFF */  addiu   $t8, $v1, 0xFFFF           ## $t8 = FFFFFFFF
/* 02974 80AA89C4 A618032C */  sh      $t8, 0x032C($s0)           ## 0000032C
.L80AA89C8:
/* 02978 80AA89C8 8602032E */  lh      $v0, 0x032E($s0)           ## 0000032E
/* 0297C 80AA89CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02980 80AA89D0 10400002 */  beq     $v0, $zero, .L80AA89DC     
/* 02984 80AA89D4 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 02988 80AA89D8 A619032E */  sh      $t9, 0x032E($s0)           ## 0000032E
.L80AA89DC:
/* 0298C 80AA89DC 8608032C */  lh      $t0, 0x032C($s0)           ## 0000032C
/* 02990 80AA89E0 55000004 */  bnel    $t0, $zero, .L80AA89F4     
/* 02994 80AA89E4 8609032A */  lh      $t1, 0x032A($s0)           ## 0000032A
/* 02998 80AA89E8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0299C 80AA89EC 240538BB */  addiu   $a1, $zero, 0x38BB         ## $a1 = 000038BB
/* 029A0 80AA89F0 8609032A */  lh      $t1, 0x032A($s0)           ## 0000032A
.L80AA89F4:
/* 029A4 80AA89F4 252AFFFF */  addiu   $t2, $t1, 0xFFFF           ## $t2 = FFFFFFFF
/* 029A8 80AA89F8 A60A032A */  sh      $t2, 0x032A($s0)           ## 0000032A
/* 029AC 80AA89FC 860B032A */  lh      $t3, 0x032A($s0)           ## 0000032A
/* 029B0 80AA8A00 55600015 */  bnel    $t3, $zero, .L80AA8A58     
/* 029B4 80AA8A04 C60A01A4 */  lwc1    $f10, 0x01A4($s0)          ## 000001A4
/* 029B8 80AA8A08 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 029BC 80AA8A0C 00000000 */  nop
/* 029C0 80AA8A10 3C0180AB */  lui     $at, %hi(D_80AA9E8C)       ## $at = 80AB0000
/* 029C4 80AA8A14 C4289E8C */  lwc1    $f8, %lo(D_80AA9E8C)($at)  
/* 029C8 80AA8A18 24040032 */  addiu   $a0, $zero, 0x0032         ## $a0 = 00000032
/* 029CC 80AA8A1C 4600403C */  c.lt.s  $f8, $f0                   
/* 029D0 80AA8A20 00000000 */  nop
/* 029D4 80AA8A24 45000009 */  bc1f    .L80AA8A4C                 
/* 029D8 80AA8A28 00000000 */  nop
/* 029DC 80AA8A2C 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 029E0 80AA8A30 24050046 */  addiu   $a1, $zero, 0x0046         ## $a1 = 00000046
/* 029E4 80AA8A34 A602032A */  sh      $v0, 0x032A($s0)           ## 0000032A
/* 029E8 80AA8A38 2404000F */  addiu   $a0, $zero, 0x000F         ## $a0 = 0000000F
/* 029EC 80AA8A3C 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 029F0 80AA8A40 24050028 */  addiu   $a1, $zero, 0x0028         ## $a1 = 00000028
/* 029F4 80AA8A44 10000003 */  beq     $zero, $zero, .L80AA8A54   
/* 029F8 80AA8A48 A602032C */  sh      $v0, 0x032C($s0)           ## 0000032C
.L80AA8A4C:
/* 029FC 80AA8A4C 0C2A9A0C */  jal     func_80AA6830              
/* 02A00 80AA8A50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AA8A54:
/* 02A04 80AA8A54 C60A01A4 */  lwc1    $f10, 0x01A4($s0)          ## 000001A4
.L80AA8A58:
/* 02A08 80AA8A58 8FA2004C */  lw      $v0, 0x004C($sp)           
/* 02A0C 80AA8A5C 8FAE0048 */  lw      $t6, 0x0048($sp)           
/* 02A10 80AA8A60 4600540D */  trunc.w.s $f16, $f10                 
/* 02A14 80AA8A64 29C10002 */  slti    $at, $t6, 0x0002           
/* 02A18 80AA8A68 440D8000 */  mfc1    $t5, $f16                  
/* 02A1C 80AA8A6C 00000000 */  nop
/* 02A20 80AA8A70 504D0018 */  beql    $v0, $t5, .L80AA8AD4       
/* 02A24 80AA8A74 860C0032 */  lh      $t4, 0x0032($s0)           ## 00000032
/* 02A28 80AA8A78 10200007 */  beq     $at, $zero, .L80AA8A98     
/* 02A2C 80AA8A7C C7B20034 */  lwc1    $f18, 0x0034($sp)          
/* 02A30 80AA8A80 4600910D */  trunc.w.s $f4, $f18                  
/* 02A34 80AA8A84 44182000 */  mfc1    $t8, $f4                   
/* 02A38 80AA8A88 00000000 */  nop
/* 02A3C 80AA8A8C 0302C821 */  addu    $t9, $t8, $v0              
/* 02A40 80AA8A90 5F20000D */  bgtzl   $t9, .L80AA8AC8            
/* 02A44 80AA8A94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AA8A98:
/* 02A48 80AA8A98 8FA80048 */  lw      $t0, 0x0048($sp)           
/* 02A4C 80AA8A9C C7A60034 */  lwc1    $f6, 0x0034($sp)           
/* 02A50 80AA8AA0 29010015 */  slti    $at, $t0, 0x0015           
/* 02A54 80AA8AA4 5020000B */  beql    $at, $zero, .L80AA8AD4     
/* 02A58 80AA8AA8 860C0032 */  lh      $t4, 0x0032($s0)           ## 00000032
/* 02A5C 80AA8AAC 4600320D */  trunc.w.s $f8, $f6                   
/* 02A60 80AA8AB0 440A4000 */  mfc1    $t2, $f8                   
/* 02A64 80AA8AB4 00000000 */  nop
/* 02A68 80AA8AB8 01425821 */  addu    $t3, $t2, $v0              
/* 02A6C 80AA8ABC 29610014 */  slti    $at, $t3, 0x0014           
/* 02A70 80AA8AC0 14200003 */  bne     $at, $zero, .L80AA8AD0     
/* 02A74 80AA8AC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AA8AC8:
/* 02A78 80AA8AC8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02A7C 80AA8ACC 240538B8 */  addiu   $a1, $zero, 0x38B8         ## $a1 = 000038B8
.L80AA8AD0:
/* 02A80 80AA8AD0 860C0032 */  lh      $t4, 0x0032($s0)           ## 00000032
.L80AA8AD4:
/* 02A84 80AA8AD4 A60C00B6 */  sh      $t4, 0x00B6($s0)           ## 000000B6
/* 02A88 80AA8AD8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02A8C 80AA8ADC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02A90 80AA8AE0 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 02A94 80AA8AE4 03E00008 */  jr      $ra                        
/* 02A98 80AA8AE8 00000000 */  nop
