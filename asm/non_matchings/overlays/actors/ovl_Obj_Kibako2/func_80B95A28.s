.late_rodata
glabel D_80B96038
    .float 0.2

glabel D_80B9603C
    .float 0.2

glabel D_80B96040
    .float 0.05
glabel D_80B96044
    .float 0.7

.text
glabel func_80B95A28
/* 00058 80B95A28 27BDFF18 */  addiu   $sp, $sp, 0xFF18           ## $sp = FFFFFF18
/* 0005C 80B95A2C F7BE0070 */  sdc1    $f30, 0x0070($sp)          
/* 00060 80B95A30 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00064 80B95A34 4481F000 */  mtc1    $at, $f30                  ## $f30 = 2.00
/* 00068 80B95A38 F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 0006C 80B95A3C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00070 80B95A40 4481E000 */  mtc1    $at, $f28                  ## $f28 = 10.00
/* 00074 80B95A44 AFB70094 */  sw      $s7, 0x0094($sp)           
/* 00078 80B95A48 F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 0007C 80B95A4C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00080 80B95A50 AFBE0098 */  sw      $s8, 0x0098($sp)           
/* 00084 80B95A54 AFB60090 */  sw      $s6, 0x0090($sp)           
/* 00088 80B95A58 AFB5008C */  sw      $s5, 0x008C($sp)           
/* 0008C 80B95A5C AFB40088 */  sw      $s4, 0x0088($sp)           
/* 00090 80B95A60 AFB30084 */  sw      $s3, 0x0084($sp)           
/* 00094 80B95A64 AFB20080 */  sw      $s2, 0x0080($sp)           
/* 00098 80B95A68 AFB1007C */  sw      $s1, 0x007C($sp)           
/* 0009C 80B95A6C 3C170600 */  lui     $s7, 0x0600                ## $s7 = 06000000
/* 000A0 80B95A70 4481D000 */  mtc1    $at, $f26                  ## $f26 = 30.00
/* 000A4 80B95A74 00A0A825 */  or      $s5, $a1, $zero            ## $s5 = 00000000
/* 000A8 80B95A78 AFBF009C */  sw      $ra, 0x009C($sp)           
/* 000AC 80B95A7C AFB00078 */  sw      $s0, 0x0078($sp)           
/* 000B0 80B95A80 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 000B4 80B95A84 F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 000B8 80B95A88 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 000BC 80B95A8C 26F71000 */  addiu   $s7, $s7, 0x1000           ## $s7 = 06001000
/* 000C0 80B95A90 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 000C4 80B95A94 24920024 */  addiu   $s2, $a0, 0x0024           ## $s2 = 00000024
/* 000C8 80B95A98 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 000CC 80B95A9C 27B400D0 */  addiu   $s4, $sp, 0x00D0           ## $s4 = FFFFFFE8
/* 000D0 80B95AA0 27B600C4 */  addiu   $s6, $sp, 0x00C4           ## $s6 = FFFFFFDC
/* 000D4 80B95AA4 241E0010 */  addiu   $s8, $zero, 0x0010         ## $s8 = 00000010
.L80B95AA8:
/* 000D8 80B95AA8 00112400 */  sll     $a0, $s1, 16               
/* 000DC 80B95AAC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 000E0 80B95AB0 00042403 */  sra     $a0, $a0, 16               
/* 000E4 80B95AB4 00112400 */  sll     $a0, $s1, 16               
/* 000E8 80B95AB8 46000506 */  mov.s   $f20, $f0                  
/* 000EC 80B95ABC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 000F0 80B95AC0 00042403 */  sra     $a0, $a0, 16               
/* 000F4 80B95AC4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 000F8 80B95AC8 46000586 */  mov.s   $f22, $f0                  
/* 000FC 80B95ACC 461A0602 */  mul.s   $f24, $f0, $f26            
/* 00100 80B95AD0 00000000 */  nop
/* 00104 80B95AD4 4618A102 */  mul.s   $f4, $f20, $f24            
/* 00108 80B95AD8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0010C 80B95ADC E7A400D0 */  swc1    $f4, 0x00D0($sp)           
/* 00110 80B95AE0 461C0182 */  mul.s   $f6, $f0, $f28             
/* 00114 80B95AE4 3C0180B9 */  lui     $at, %hi(D_80B96038)       ## $at = 80B90000
/* 00118 80B95AE8 C4326038 */  lwc1    $f18, %lo(D_80B96038)($at) 
/* 0011C 80B95AEC 4618B282 */  mul.s   $f10, $f22, $f24           
/* 00120 80B95AF0 C7B000D0 */  lwc1    $f16, 0x00D0($sp)          
/* 00124 80B95AF4 46128102 */  mul.s   $f4, $f16, $f18            
/* 00128 80B95AF8 461E3200 */  add.s   $f8, $f6, $f30             
/* 0012C 80B95AFC E7AA00D8 */  swc1    $f10, 0x00D8($sp)          
/* 00130 80B95B00 E7A800D4 */  swc1    $f8, 0x00D4($sp)           
/* 00134 80B95B04 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00138 80B95B08 E7A400C4 */  swc1    $f4, 0x00C4($sp)           
/* 0013C 80B95B0C 461C0182 */  mul.s   $f6, $f0, $f28             
/* 00140 80B95B10 3C0180B9 */  lui     $at, %hi(D_80B9603C)       ## $at = 80B90000
/* 00144 80B95B14 C430603C */  lwc1    $f16, %lo(D_80B9603C)($at) 
/* 00148 80B95B18 C7AA00D8 */  lwc1    $f10, 0x00D8($sp)          
/* 0014C 80B95B1C C7A400D0 */  lwc1    $f4, 0x00D0($sp)           
/* 00150 80B95B20 46105482 */  mul.s   $f18, $f10, $f16           
/* 00154 80B95B24 461E3200 */  add.s   $f8, $f6, $f30             
/* 00158 80B95B28 C7B000D4 */  lwc1    $f16, 0x00D4($sp)          
/* 0015C 80B95B2C E7A800C8 */  swc1    $f8, 0x00C8($sp)           
/* 00160 80B95B30 E7B200CC */  swc1    $f18, 0x00CC($sp)          
/* 00164 80B95B34 C6460000 */  lwc1    $f6, 0x0000($s2)           ## 00000024
/* 00168 80B95B38 46062200 */  add.s   $f8, $f4, $f6              
/* 0016C 80B95B3C E7A800D0 */  swc1    $f8, 0x00D0($sp)           
/* 00170 80B95B40 C6520004 */  lwc1    $f18, 0x0004($s2)          ## 00000028
/* 00174 80B95B44 46128100 */  add.s   $f4, $f16, $f18            
/* 00178 80B95B48 E7A400D4 */  swc1    $f4, 0x00D4($sp)           
/* 0017C 80B95B4C C6460008 */  lwc1    $f6, 0x0008($s2)           ## 0000002C
/* 00180 80B95B50 46065200 */  add.s   $f8, $f10, $f6             
/* 00184 80B95B54 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00188 80B95B58 E7A800D8 */  swc1    $f8, 0x00D8($sp)           
/* 0018C 80B95B5C 3C0180B9 */  lui     $at, %hi(D_80B96040)       ## $at = 80B90000
/* 00190 80B95B60 C4306040 */  lwc1    $f16, %lo(D_80B96040)($at) 
/* 00194 80B95B64 3C0180B9 */  lui     $at, %hi(D_80B96044)       ## $at = 80B90000
/* 00198 80B95B68 4610003C */  c.lt.s  $f0, $f16                  
/* 0019C 80B95B6C 00000000 */  nop
/* 001A0 80B95B70 45000003 */  bc1f    .L80B95B80                 
/* 001A4 80B95B74 00000000 */  nop
/* 001A8 80B95B78 10000009 */  beq     $zero, $zero, .L80B95BA0   
/* 001AC 80B95B7C 24100060 */  addiu   $s0, $zero, 0x0060         ## $s0 = 00000060
.L80B95B80:
/* 001B0 80B95B80 C4326044 */  lwc1    $f18, %lo(D_80B96044)($at) 
/* 001B4 80B95B84 24100020 */  addiu   $s0, $zero, 0x0020         ## $s0 = 00000020
/* 001B8 80B95B88 4612003C */  c.lt.s  $f0, $f18                  
/* 001BC 80B95B8C 00000000 */  nop
/* 001C0 80B95B90 45000003 */  bc1f    .L80B95BA0                 
/* 001C4 80B95B94 00000000 */  nop
/* 001C8 80B95B98 10000001 */  beq     $zero, $zero, .L80B95BA0   
/* 001CC 80B95B9C 24100040 */  addiu   $s0, $zero, 0x0040         ## $s0 = 00000040
.L80B95BA0:
/* 001D0 80B95BA0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 001D4 80B95BA4 00000000 */  nop
/* 001D8 80B95BA8 461A0102 */  mul.s   $f4, $f0, $f26             
/* 001DC 80B95BAC 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 001E0 80B95BB0 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 001E4 80B95BB4 240EFF38 */  addiu   $t6, $zero, 0xFF38         ## $t6 = FFFFFF38
/* 001E8 80B95BB8 240F001C */  addiu   $t7, $zero, 0x001C         ## $t7 = 0000001C
/* 001EC 80B95BBC 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 001F0 80B95BC0 24090046 */  addiu   $t1, $zero, 0x0046         ## $t1 = 00000046
/* 001F4 80B95BC4 460A2180 */  add.s   $f6, $f4, $f10             
/* 001F8 80B95BC8 240AFFFF */  addiu   $t2, $zero, 0xFFFF         ## $t2 = FFFFFFFF
/* 001FC 80B95BCC 240B0170 */  addiu   $t3, $zero, 0x0170         ## $t3 = 00000170
/* 00200 80B95BD0 AFAB0038 */  sw      $t3, 0x0038($sp)           
/* 00204 80B95BD4 4600320D */  trunc.w.s $f8, $f6                   
/* 00208 80B95BD8 AFAA0034 */  sw      $t2, 0x0034($sp)           
/* 0020C 80B95BDC AFA90030 */  sw      $t1, 0x0030($sp)           
/* 00210 80B95BE0 AFB8001C */  sw      $t8, 0x001C($sp)           
/* 00214 80B95BE4 44084000 */  mfc1    $t0, $f8                   
/* 00218 80B95BE8 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 0021C 80B95BEC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00220 80B95BF0 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00224 80B95BF4 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFE8
/* 00228 80B95BF8 02C03025 */  or      $a2, $s6, $zero            ## $a2 = FFFFFFDC
/* 0022C 80B95BFC 02803825 */  or      $a3, $s4, $zero            ## $a3 = FFFFFFE8
/* 00230 80B95C00 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00234 80B95C04 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00238 80B95C08 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 0023C 80B95C0C AFA0002C */  sw      $zero, 0x002C($sp)         
/* 00240 80B95C10 AFB7003C */  sw      $s7, 0x003C($sp)           
/* 00244 80B95C14 0C00A7A3 */  jal     Effect_SpawnFragment
              
/* 00248 80B95C18 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 0024C 80B95C1C 26314E20 */  addiu   $s1, $s1, 0x4E20           ## $s1 = 00004E20
/* 00250 80B95C20 00118C00 */  sll     $s1, $s1, 16               
/* 00254 80B95C24 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 00258 80B95C28 167EFF9F */  bne     $s3, $s8, .L80B95AA8       
/* 0025C 80B95C2C 00118C03 */  sra     $s1, $s1, 16               
/* 00260 80B95C30 240C0064 */  addiu   $t4, $zero, 0x0064         ## $t4 = 00000064
/* 00264 80B95C34 240D00A0 */  addiu   $t5, $zero, 0x00A0         ## $t5 = 000000A0
/* 00268 80B95C38 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0026C 80B95C3C AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 00270 80B95C40 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 00274 80B95C44 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00278 80B95C48 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 0027C 80B95C4C 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000024
/* 00280 80B95C50 3C0642B4 */  lui     $a2, 0x42B4                ## $a2 = 42B40000
/* 00284 80B95C54 0C00CD20 */  jal     func_80033480              
/* 00288 80B95C58 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
/* 0028C 80B95C5C 8FBF009C */  lw      $ra, 0x009C($sp)           
/* 00290 80B95C60 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 00294 80B95C64 D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 00298 80B95C68 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 0029C 80B95C6C D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 002A0 80B95C70 D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 002A4 80B95C74 D7BE0070 */  ldc1    $f30, 0x0070($sp)          
/* 002A8 80B95C78 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 002AC 80B95C7C 8FB1007C */  lw      $s1, 0x007C($sp)           
/* 002B0 80B95C80 8FB20080 */  lw      $s2, 0x0080($sp)           
/* 002B4 80B95C84 8FB30084 */  lw      $s3, 0x0084($sp)           
/* 002B8 80B95C88 8FB40088 */  lw      $s4, 0x0088($sp)           
/* 002BC 80B95C8C 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 002C0 80B95C90 8FB60090 */  lw      $s6, 0x0090($sp)           
/* 002C4 80B95C94 8FB70094 */  lw      $s7, 0x0094($sp)           
/* 002C8 80B95C98 8FBE0098 */  lw      $s8, 0x0098($sp)           
/* 002CC 80B95C9C 03E00008 */  jr      $ra                        
/* 002D0 80B95CA0 27BD00E8 */  addiu   $sp, $sp, 0x00E8           ## $sp = 00000000
