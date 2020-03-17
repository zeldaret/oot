glabel func_808B6BC0
/* 00000 808B6BC0 27BDFF20 */  addiu   $sp, $sp, 0xFF20           ## $sp = FFFFFF20
/* 00004 808B6BC4 AFB20080 */  sw      $s2, 0x0080($sp)           
/* 00008 808B6BC8 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 0000C 808B6BCC AFBF009C */  sw      $ra, 0x009C($sp)           
/* 00010 808B6BD0 AFBE0098 */  sw      $s8, 0x0098($sp)           
/* 00014 808B6BD4 AFB70094 */  sw      $s7, 0x0094($sp)           
/* 00018 808B6BD8 AFB60090 */  sw      $s6, 0x0090($sp)           
/* 0001C 808B6BDC AFB5008C */  sw      $s5, 0x008C($sp)           
/* 00020 808B6BE0 AFB40088 */  sw      $s4, 0x0088($sp)           
/* 00024 808B6BE4 AFB30084 */  sw      $s3, 0x0084($sp)           
/* 00028 808B6BE8 AFB1007C */  sw      $s1, 0x007C($sp)           
/* 0002C 808B6BEC AFB00078 */  sw      $s0, 0x0078($sp)           
/* 00030 808B6BF0 F7BE0070 */  sdc1    $f30, 0x0070($sp)          
/* 00034 808B6BF4 F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 00038 808B6BF8 F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 0003C 808B6BFC F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 00040 808B6C00 F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 00044 808B6C04 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 00048 808B6C08 00A0F025 */  or      $s8, $a1, $zero            ## $s8 = 00000000
/* 0004C 808B6C0C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00050 808B6C10 848400B6 */  lh      $a0, 0x00B6($a0)           ## 000000B6
/* 00054 808B6C14 46000586 */  mov.s   $f22, $f0                  
/* 00058 808B6C18 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0005C 808B6C1C 864400B6 */  lh      $a0, 0x00B6($s2)           ## 000000B6
/* 00060 808B6C20 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00064 808B6C24 4481F000 */  mtc1    $at, $f30                  ## $f30 = 20.00
/* 00068 808B6C28 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 0006C 808B6C2C 3C01430C */  lui     $at, 0x430C                ## $at = 430C0000
/* 00070 808B6C30 4481E000 */  mtc1    $at, $f28                  ## $f28 = 140.00
/* 00074 808B6C34 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00078 808B6C38 3C160501 */  lui     $s6, 0x0501                ## $s6 = 05010000
/* 0007C 808B6C3C 4481D000 */  mtc1    $at, $f26                  ## $f26 = 0.50
/* 00080 808B6C40 46000606 */  mov.s   $f24, $f0                  
/* 00084 808B6C44 26D6A880 */  addiu   $s6, $s6, 0xA880           ## $s6 = 0500A880
/* 00088 808B6C48 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 0008C 808B6C4C 24170014 */  addiu   $s7, $zero, 0x0014         ## $s7 = 00000014
/* 00090 808B6C50 27B500BC */  addiu   $s5, $sp, 0x00BC           ## $s5 = FFFFFFDC
/* 00094 808B6C54 27B400C8 */  addiu   $s4, $sp, 0x00C8           ## $s4 = FFFFFFE8
/* 00098 808B6C58 E7A200C4 */  swc1    $f2, 0x00C4($sp)           
/* 0009C 808B6C5C E7A200BC */  swc1    $f2, 0x00BC($sp)           
.L808B6C60:
/* 000A0 808B6C60 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 000A4 808B6C64 00000000 */  nop
/* 000A8 808B6C68 461A0101 */  sub.s   $f4, $f0, $f26             
/* 000AC 808B6C6C 461C2502 */  mul.s   $f20, $f4, $f28            
/* 000B0 808B6C70 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 000B4 808B6C74 00000000 */  nop
/* 000B8 808B6C78 461A0181 */  sub.s   $f6, $f0, $f26             
/* 000BC 808B6C7C C6480024 */  lwc1    $f8, 0x0024($s2)           ## 00000024
/* 000C0 808B6C80 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 000C4 808B6C84 461E3082 */  mul.s   $f2, $f6, $f30             
/* 000C8 808B6C88 00000000 */  nop
/* 000CC 808B6C8C 46161282 */  mul.s   $f10, $f2, $f22            
/* 000D0 808B6C90 460A4400 */  add.s   $f16, $f8, $f10            
/* 000D4 808B6C94 4618A482 */  mul.s   $f18, $f20, $f24           
/* 000D8 808B6C98 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 000DC 808B6C9C 3C0140D0 */  lui     $at, 0x40D0                ## $at = 40D00000
/* 000E0 808B6CA0 46128100 */  add.s   $f4, $f16, $f18            
/* 000E4 808B6CA4 44918000 */  mtc1    $s1, $f16                  ## $f16 = 0.00
/* 000E8 808B6CA8 00000000 */  nop
/* 000EC 808B6CAC 468084A0 */  cvt.s.w $f18, $f16                 
/* 000F0 808B6CB0 E7A400C8 */  swc1    $f4, 0x00C8($sp)           
/* 000F4 808B6CB4 C6460028 */  lwc1    $f6, 0x0028($s2)           ## 00000028
/* 000F8 808B6CB8 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.50
/* 000FC 808B6CBC 46083280 */  add.s   $f10, $f6, $f8             
/* 00100 808B6CC0 46049182 */  mul.s   $f6, $f18, $f4             
/* 00104 808B6CC4 46065200 */  add.s   $f8, $f10, $f6             
/* 00108 808B6CC8 46181482 */  mul.s   $f18, $f2, $f24            
/* 0010C 808B6CCC E7A800CC */  swc1    $f8, 0x00CC($sp)           
/* 00110 808B6CD0 4616A282 */  mul.s   $f10, $f20, $f22           
/* 00114 808B6CD4 C650002C */  lwc1    $f16, 0x002C($s2)          ## 0000002C
/* 00118 808B6CD8 46128100 */  add.s   $f4, $f16, $f18            
/* 0011C 808B6CDC 460A2181 */  sub.s   $f6, $f4, $f10             
/* 00120 808B6CE0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00124 808B6CE4 E7A600D0 */  swc1    $f6, 0x00D0($sp)           
/* 00128 808B6CE8 3C01808B */  lui     $at, %hi(D_808B7370)       ## $at = 808B0000
/* 0012C 808B6CEC C4287370 */  lwc1    $f8, %lo(D_808B7370)($at)  
/* 00130 808B6CF0 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 00134 808B6CF4 44819000 */  mtc1    $at, $f18                  ## $f18 = 12.00
/* 00138 808B6CF8 46080401 */  sub.s   $f16, $f0, $f8             
/* 0013C 808B6CFC 46128102 */  mul.s   $f4, $f16, $f18            
/* 00140 808B6D00 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00144 808B6D04 E7A400C0 */  swc1    $f4, 0x00C0($sp)           
/* 00148 808B6D08 3C01425C */  lui     $at, 0x425C                ## $at = 425C0000
/* 0014C 808B6D0C 44815000 */  mtc1    $at, $f10                  ## $f10 = 55.00
/* 00150 808B6D10 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00154 808B6D14 44814000 */  mtc1    $at, $f8                   ## $f8 = 8.00
/* 00158 808B6D18 460A0182 */  mul.s   $f6, $f0, $f10             
/* 0015C 808B6D1C 46083400 */  add.s   $f16, $f6, $f8             
/* 00160 808B6D20 4600848D */  trunc.w.s $f18, $f16                 
/* 00164 808B6D24 44029000 */  mfc1    $v0, $f18                  
/* 00168 808B6D28 00000000 */  nop
/* 0016C 808B6D2C 00021C00 */  sll     $v1, $v0, 16               
/* 00170 808B6D30 00031C03 */  sra     $v1, $v1, 16               
/* 00174 808B6D34 28610014 */  slti    $at, $v1, 0x0014           
/* 00178 808B6D38 00029C00 */  sll     $s3, $v0, 16               
/* 0017C 808B6D3C 10200003 */  beq     $at, $zero, .L808B6D4C     
/* 00180 808B6D40 00139C03 */  sra     $s3, $s3, 16               
/* 00184 808B6D44 10000006 */  beq     $zero, $zero, .L808B6D60   
/* 00188 808B6D48 2410FED4 */  addiu   $s0, $zero, 0xFED4         ## $s0 = FFFFFED4
.L808B6D4C:
/* 0018C 808B6D4C 28610023 */  slti    $at, $v1, 0x0023           
/* 00190 808B6D50 10200003 */  beq     $at, $zero, .L808B6D60     
/* 00194 808B6D54 2410FE5C */  addiu   $s0, $zero, 0xFE5C         ## $s0 = FFFFFE5C
/* 00198 808B6D58 10000001 */  beq     $zero, $zero, .L808B6D60   
/* 0019C 808B6D5C 2410FE98 */  addiu   $s0, $zero, 0xFE98         ## $s0 = FFFFFE98
.L808B6D60:
/* 001A0 808B6D60 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 001A4 808B6D64 00000000 */  nop
/* 001A8 808B6D68 3C01808B */  lui     $at, %hi(D_808B7374)       ## $at = 808B0000
/* 001AC 808B6D6C C4247374 */  lwc1    $f4, %lo(D_808B7374)($at)  
/* 001B0 808B6D70 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000000
/* 001B4 808B6D74 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFE8
/* 001B8 808B6D78 4604003C */  c.lt.s  $f0, $f4                   
/* 001BC 808B6D7C 02A03025 */  or      $a2, $s5, $zero            ## $a2 = FFFFFFDC
/* 001C0 808B6D80 02803825 */  or      $a3, $s4, $zero            ## $a3 = FFFFFFE8
/* 001C4 808B6D84 240F001E */  addiu   $t7, $zero, 0x001E         ## $t7 = 0000001E
/* 001C8 808B6D88 45000003 */  bc1f    .L808B6D98                 
/* 001CC 808B6D8C 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 001D0 808B6D90 10000002 */  beq     $zero, $zero, .L808B6D9C   
/* 001D4 808B6D94 24020041 */  addiu   $v0, $zero, 0x0041         ## $v0 = 00000041
.L808B6D98:
/* 001D8 808B6D98 24020021 */  addiu   $v0, $zero, 0x0021         ## $v0 = 00000021
.L808B6D9C:
/* 001DC 808B6D9C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 001E0 808B6DA0 24080003 */  addiu   $t0, $zero, 0x0003         ## $t0 = 00000003
/* 001E4 808B6DA4 24090050 */  addiu   $t1, $zero, 0x0050         ## $t1 = 00000050
/* 001E8 808B6DA8 240AFFFF */  addiu   $t2, $zero, 0xFFFF         ## $t2 = FFFFFFFF
/* 001EC 808B6DAC 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 001F0 808B6DB0 AFAB0038 */  sw      $t3, 0x0038($sp)           
/* 001F4 808B6DB4 AFAA0034 */  sw      $t2, 0x0034($sp)           
/* 001F8 808B6DB8 AFA90030 */  sw      $t1, 0x0030($sp)           
/* 001FC 808B6DBC AFA8002C */  sw      $t0, 0x002C($sp)           
/* 00200 808B6DC0 AFB90028 */  sw      $t9, 0x0028($sp)           
/* 00204 808B6DC4 AFB00010 */  sw      $s0, 0x0010($sp)           
/* 00208 808B6DC8 AFA20014 */  sw      $v0, 0x0014($sp)           
/* 0020C 808B6DCC AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 00210 808B6DD0 AFB8001C */  sw      $t8, 0x001C($sp)           
/* 00214 808B6DD4 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00218 808B6DD8 AFB30024 */  sw      $s3, 0x0024($sp)           
/* 0021C 808B6DDC 0C00A7A3 */  jal     Effect_SpawnFragment
              
/* 00220 808B6DE0 AFB6003C */  sw      $s6, 0x003C($sp)           
/* 00224 808B6DE4 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 00228 808B6DE8 1637FF9D */  bne     $s1, $s7, .L808B6C60       
/* 0022C 808B6DEC 00000000 */  nop
/* 00230 808B6DF0 02802025 */  or      $a0, $s4, $zero            ## $a0 = FFFFFFE8
/* 00234 808B6DF4 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00238 808B6DF8 26450024 */  addiu   $a1, $s2, 0x0024           ## $a1 = 00000024
/* 0023C 808B6DFC 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00240 808B6E00 4481A000 */  mtc1    $at, $f20                  ## $f20 = 60.00
/* 00244 808B6E04 240C006E */  addiu   $t4, $zero, 0x006E         ## $t4 = 0000006E
/* 00248 808B6E08 240D00A0 */  addiu   $t5, $zero, 0x00A0         ## $t5 = 000000A0
/* 0024C 808B6E0C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00250 808B6E10 4406A000 */  mfc1    $a2, $f20                  
/* 00254 808B6E14 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 00258 808B6E18 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 0025C 808B6E1C AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00260 808B6E20 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000000
/* 00264 808B6E24 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFE8
/* 00268 808B6E28 0C00CD20 */  jal     func_80033480              
/* 0026C 808B6E2C 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 00270 808B6E30 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00274 808B6E34 4481B000 */  mtc1    $at, $f22                  ## $f22 = 40.00
/* 00278 808B6E38 C7AA00CC */  lwc1    $f10, 0x00CC($sp)          
/* 0027C 808B6E3C 4406A000 */  mfc1    $a2, $f20                  
/* 00280 808B6E40 240F0078 */  addiu   $t7, $zero, 0x0078         ## $t7 = 00000078
/* 00284 808B6E44 46165180 */  add.s   $f6, $f10, $f22            
/* 00288 808B6E48 241800A0 */  addiu   $t8, $zero, 0x00A0         ## $t8 = 000000A0
/* 0028C 808B6E4C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00290 808B6E50 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 00294 808B6E54 E7A600CC */  swc1    $f6, 0x00CC($sp)           
/* 00298 808B6E58 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 0029C 808B6E5C AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 002A0 808B6E60 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000000
/* 002A4 808B6E64 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFE8
/* 002A8 808B6E68 0C00CD20 */  jal     func_80033480              
/* 002AC 808B6E6C 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 002B0 808B6E70 C7A800CC */  lwc1    $f8, 0x00CC($sp)           
/* 002B4 808B6E74 4406A000 */  mfc1    $a2, $f20                  
/* 002B8 808B6E78 2408006E */  addiu   $t0, $zero, 0x006E         ## $t0 = 0000006E
/* 002BC 808B6E7C 46164400 */  add.s   $f16, $f8, $f22            
/* 002C0 808B6E80 240900A0 */  addiu   $t1, $zero, 0x00A0         ## $t1 = 000000A0
/* 002C4 808B6E84 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 002C8 808B6E88 AFAA0018 */  sw      $t2, 0x0018($sp)           
/* 002CC 808B6E8C E7B000CC */  swc1    $f16, 0x00CC($sp)          
/* 002D0 808B6E90 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 002D4 808B6E94 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 002D8 808B6E98 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000000
/* 002DC 808B6E9C 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFE8
/* 002E0 808B6EA0 0C00CD20 */  jal     func_80033480              
/* 002E4 808B6EA4 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 002E8 808B6EA8 8FBF009C */  lw      $ra, 0x009C($sp)           
/* 002EC 808B6EAC D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 002F0 808B6EB0 D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 002F4 808B6EB4 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 002F8 808B6EB8 D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 002FC 808B6EBC D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 00300 808B6EC0 D7BE0070 */  ldc1    $f30, 0x0070($sp)          
/* 00304 808B6EC4 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 00308 808B6EC8 8FB1007C */  lw      $s1, 0x007C($sp)           
/* 0030C 808B6ECC 8FB20080 */  lw      $s2, 0x0080($sp)           
/* 00310 808B6ED0 8FB30084 */  lw      $s3, 0x0084($sp)           
/* 00314 808B6ED4 8FB40088 */  lw      $s4, 0x0088($sp)           
/* 00318 808B6ED8 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 0031C 808B6EDC 8FB60090 */  lw      $s6, 0x0090($sp)           
/* 00320 808B6EE0 8FB70094 */  lw      $s7, 0x0094($sp)           
/* 00324 808B6EE4 8FBE0098 */  lw      $s8, 0x0098($sp)           
/* 00328 808B6EE8 03E00008 */  jr      $ra                        
/* 0032C 808B6EEC 27BD00E0 */  addiu   $sp, $sp, 0x00E0           ## $sp = 00000000


