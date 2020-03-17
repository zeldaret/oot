glabel func_80B91B60
/* 00000 80B91B60 27BDFF18 */  addiu   $sp, $sp, 0xFF18           ## $sp = FFFFFF18
/* 00004 80B91B64 F7BE0070 */  sdc1    $f30, 0x0070($sp)          
/* 00008 80B91B68 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 0000C 80B91B6C 4481F000 */  mtc1    $at, $f30                  ## $f30 = 25.00
/* 00010 80B91B70 F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 00014 80B91B74 3C014290 */  lui     $at, 0x4290                ## $at = 42900000
/* 00018 80B91B78 4481E000 */  mtc1    $at, $f28                  ## $f28 = 72.00
/* 0001C 80B91B7C F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 00020 80B91B80 3C0180B9 */  lui     $at, %hi(D_80B92360)       ## $at = 80B90000
/* 00024 80B91B84 C43A2360 */  lwc1    $f26, %lo(D_80B92360)($at) 
/* 00028 80B91B88 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 0002C 80B91B8C 3C0180B9 */  lui     $at, %hi(D_80B92364)       ## $at = 80B90000
/* 00030 80B91B90 C4382364 */  lwc1    $f24, %lo(D_80B92364)($at) 
/* 00034 80B91B94 AFBE0098 */  sw      $s8, 0x0098($sp)           
/* 00038 80B91B98 F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 0003C 80B91B9C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00040 80B91BA0 AFB70094 */  sw      $s7, 0x0094($sp)           
/* 00044 80B91BA4 AFB60090 */  sw      $s6, 0x0090($sp)           
/* 00048 80B91BA8 AFB5008C */  sw      $s5, 0x008C($sp)           
/* 0004C 80B91BAC AFB30084 */  sw      $s3, 0x0084($sp)           
/* 00050 80B91BB0 AFB20080 */  sw      $s2, 0x0080($sp)           
/* 00054 80B91BB4 3C1E0501 */  lui     $s8, 0x0501                ## $s8 = 05010000
/* 00058 80B91BB8 248F0024 */  addiu   $t7, $a0, 0x0024           ## $t7 = 00000024
/* 0005C 80B91BBC 4481B000 */  mtc1    $at, $f22                  ## $f22 = 0.50
/* 00060 80B91BC0 AFBF009C */  sw      $ra, 0x009C($sp)           
/* 00064 80B91BC4 AFB40088 */  sw      $s4, 0x0088($sp)           
/* 00068 80B91BC8 AFB1007C */  sw      $s1, 0x007C($sp)           
/* 0006C 80B91BCC AFB00078 */  sw      $s0, 0x0078($sp)           
/* 00070 80B91BD0 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 00074 80B91BD4 AFA400E8 */  sw      $a0, 0x00E8($sp)           
/* 00078 80B91BD8 AFA500EC */  sw      $a1, 0x00EC($sp)           
/* 0007C 80B91BDC 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 00080 80B91BE0 AFAF00A8 */  sw      $t7, 0x00A8($sp)           
/* 00084 80B91BE4 27DE9940 */  addiu   $s8, $s8, 0x9940           ## $s8 = 05009940
/* 00088 80B91BE8 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 0008C 80B91BEC 27B500D0 */  addiu   $s5, $sp, 0x00D0           ## $s5 = FFFFFFE8
/* 00090 80B91BF0 27B600DC */  addiu   $s6, $sp, 0x00DC           ## $s6 = FFFFFFF4
/* 00094 80B91BF4 27B700C4 */  addiu   $s7, $sp, 0x00C4           ## $s7 = FFFFFFDC
/* 00098 80B91BF8 26524E20 */  addiu   $s2, $s2, 0x4E20           ## $s2 = 00004E20
.L80B91BFC:
/* 0009C 80B91BFC 00129400 */  sll     $s2, $s2, 16               
/* 000A0 80B91C00 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 000A4 80B91C04 00129403 */  sra     $s2, $s2, 16               
/* 000A8 80B91C08 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 000AC 80B91C0C 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 000B0 80B91C10 00122400 */  sll     $a0, $s2, 16               
/* 000B4 80B91C14 00042403 */  sra     $a0, $a0, 16               
/* 000B8 80B91C18 46040502 */  mul.s   $f20, $f0, $f4             
/* 000BC 80B91C1C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 000C0 80B91C20 00000000 */  nop
/* 000C4 80B91C24 2678FFF1 */  addiu   $t8, $s3, 0xFFF1           ## $t8 = FFFFFFF1
/* 000C8 80B91C28 44984000 */  mtc1    $t8, $f8                   ## $f8 = NaN
/* 000CC 80B91C2C 46140182 */  mul.s   $f6, $f0, $f20             
/* 000D0 80B91C30 00122400 */  sll     $a0, $s2, 16               
/* 000D4 80B91C34 00042403 */  sra     $a0, $a0, 16               
/* 000D8 80B91C38 468042A0 */  cvt.s.w $f10, $f8                  
/* 000DC 80B91C3C E7A600DC */  swc1    $f6, 0x00DC($sp)           
/* 000E0 80B91C40 46185402 */  mul.s   $f16, $f10, $f24           
/* 000E4 80B91C44 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 000E8 80B91C48 E7B000E0 */  swc1    $f16, 0x00E0($sp)          
/* 000EC 80B91C4C 46140482 */  mul.s   $f18, $f0, $f20            
/* 000F0 80B91C50 02C02025 */  or      $a0, $s6, $zero            ## $a0 = FFFFFFF4
/* 000F4 80B91C54 8FA500A8 */  lw      $a1, 0x00A8($sp)           
/* 000F8 80B91C58 02A03025 */  or      $a2, $s5, $zero            ## $a2 = FFFFFFE8
/* 000FC 80B91C5C 0C01DFA7 */  jal     Math_Vec3f_Sum
              ## Vec3f_Add
/* 00100 80B91C60 E7B200E4 */  swc1    $f18, 0x00E4($sp)          
/* 00104 80B91C64 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00108 80B91C68 00000000 */  nop
/* 0010C 80B91C6C C7A600DC */  lwc1    $f6, 0x00DC($sp)           
/* 00110 80B91C70 46160101 */  sub.s   $f4, $f0, $f22             
/* 00114 80B91C74 46163202 */  mul.s   $f8, $f6, $f22             
/* 00118 80B91C78 46082280 */  add.s   $f10, $f4, $f8             
/* 0011C 80B91C7C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00120 80B91C80 E7AA00C4 */  swc1    $f10, 0x00C4($sp)          
/* 00124 80B91C84 C7B200E0 */  lwc1    $f18, 0x00E0($sp)          
/* 00128 80B91C88 46160401 */  sub.s   $f16, $f0, $f22            
/* 0012C 80B91C8C 461A9182 */  mul.s   $f6, $f18, $f26            
/* 00130 80B91C90 46068100 */  add.s   $f4, $f16, $f6             
/* 00134 80B91C94 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00138 80B91C98 E7A400C8 */  swc1    $f4, 0x00C8($sp)           
/* 0013C 80B91C9C C7AA00E4 */  lwc1    $f10, 0x00E4($sp)          
/* 00140 80B91CA0 46160201 */  sub.s   $f8, $f0, $f22             
/* 00144 80B91CA4 46165482 */  mul.s   $f18, $f10, $f22           
/* 00148 80B91CA8 46124400 */  add.s   $f16, $f8, $f18            
/* 0014C 80B91CAC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00150 80B91CB0 E7B000CC */  swc1    $f16, 0x00CC($sp)          
/* 00154 80B91CB4 461C0182 */  mul.s   $f6, $f0, $f28             
/* 00158 80B91CB8 2410FF38 */  addiu   $s0, $zero, 0xFF38         ## $s0 = FFFFFF38
/* 0015C 80B91CBC 461E3100 */  add.s   $f4, $f6, $f30             
/* 00160 80B91CC0 4600228D */  trunc.w.s $f10, $f4                  
/* 00164 80B91CC4 44025000 */  mfc1    $v0, $f10                  
/* 00168 80B91CC8 00000000 */  nop
/* 0016C 80B91CCC 00021C00 */  sll     $v1, $v0, 16               
/* 00170 80B91CD0 00031C03 */  sra     $v1, $v1, 16               
/* 00174 80B91CD4 28610028 */  slti    $at, $v1, 0x0028           
/* 00178 80B91CD8 0002A400 */  sll     $s4, $v0, 16               
/* 0017C 80B91CDC 10200003 */  beq     $at, $zero, .L80B91CEC     
/* 00180 80B91CE0 0014A403 */  sra     $s4, $s4, 16               
/* 00184 80B91CE4 10000008 */  beq     $zero, $zero, .L80B91D08   
/* 00188 80B91CE8 24110028 */  addiu   $s1, $zero, 0x0028         ## $s1 = 00000028
.L80B91CEC:
/* 0018C 80B91CEC 28610046 */  slti    $at, $v1, 0x0046           
/* 00190 80B91CF0 10200004 */  beq     $at, $zero, .L80B91D04     
/* 00194 80B91CF4 2410FEAC */  addiu   $s0, $zero, 0xFEAC         ## $s0 = FFFFFEAC
/* 00198 80B91CF8 2410FEE8 */  addiu   $s0, $zero, 0xFEE8         ## $s0 = FFFFFEE8
/* 0019C 80B91CFC 10000002 */  beq     $zero, $zero, .L80B91D08   
/* 001A0 80B91D00 2411001E */  addiu   $s1, $zero, 0x001E         ## $s1 = 0000001E
.L80B91D04:
/* 001A4 80B91D04 24110014 */  addiu   $s1, $zero, 0x0014         ## $s1 = 00000014
.L80B91D08:
/* 001A8 80B91D08 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 001AC 80B91D0C 00000000 */  nop
/* 001B0 80B91D10 3C0180B9 */  lui     $at, %hi(D_80B92368)       ## $at = 80B90000
/* 001B4 80B91D14 C4282368 */  lwc1    $f8, %lo(D_80B92368)($at)  
/* 001B8 80B91D18 8FA400EC */  lw      $a0, 0x00EC($sp)           
/* 001BC 80B91D1C 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFE8
/* 001C0 80B91D20 4608003C */  c.lt.s  $f0, $f8                   
/* 001C4 80B91D24 02E03025 */  or      $a2, $s7, $zero            ## $a2 = FFFFFFDC
/* 001C8 80B91D28 02A03825 */  or      $a3, $s5, $zero            ## $a3 = FFFFFFE8
/* 001CC 80B91D2C 24080004 */  addiu   $t0, $zero, 0x0004         ## $t0 = 00000004
/* 001D0 80B91D30 45000003 */  bc1f    .L80B91D40                 
/* 001D4 80B91D34 24090050 */  addiu   $t1, $zero, 0x0050         ## $t1 = 00000050
/* 001D8 80B91D38 1000000A */  beq     $zero, $zero, .L80B91D64   
/* 001DC 80B91D3C 24020060 */  addiu   $v0, $zero, 0x0060         ## $v0 = 00000060
.L80B91D40:
/* 001E0 80B91D40 3C0180B9 */  lui     $at, %hi(D_80B9236C)       ## $at = 80B90000
/* 001E4 80B91D44 C432236C */  lwc1    $f18, %lo(D_80B9236C)($at) 
/* 001E8 80B91D48 24020020 */  addiu   $v0, $zero, 0x0020         ## $v0 = 00000020
/* 001EC 80B91D4C 4612003C */  c.lt.s  $f0, $f18                  
/* 001F0 80B91D50 00000000 */  nop
/* 001F4 80B91D54 45000003 */  bc1f    .L80B91D64                 
/* 001F8 80B91D58 00000000 */  nop
/* 001FC 80B91D5C 10000001 */  beq     $zero, $zero, .L80B91D64   
/* 00200 80B91D60 24020040 */  addiu   $v0, $zero, 0x0040         ## $v0 = 00000040
.L80B91D64:
/* 00204 80B91D64 240AFFFF */  addiu   $t2, $zero, 0xFFFF         ## $t2 = FFFFFFFF
/* 00208 80B91D68 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 0020C 80B91D6C AFAB0038 */  sw      $t3, 0x0038($sp)           
/* 00210 80B91D70 AFAA0034 */  sw      $t2, 0x0034($sp)           
/* 00214 80B91D74 AFB00010 */  sw      $s0, 0x0010($sp)           
/* 00218 80B91D78 AFA20014 */  sw      $v0, 0x0014($sp)           
/* 0021C 80B91D7C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00220 80B91D80 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 00224 80B91D84 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00228 80B91D88 AFB40024 */  sw      $s4, 0x0024($sp)           
/* 0022C 80B91D8C AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00230 80B91D90 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 00234 80B91D94 AFA90030 */  sw      $t1, 0x0030($sp)           
/* 00238 80B91D98 0C00A7A3 */  jal     Effect_SpawnFragment
              
/* 0023C 80B91D9C AFBE003C */  sw      $s8, 0x003C($sp)           
/* 00240 80B91DA0 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 00244 80B91DA4 2401001F */  addiu   $at, $zero, 0x001F         ## $at = 0000001F
/* 00248 80B91DA8 5661FF94 */  bnel    $s3, $at, .L80B91BFC       
/* 0024C 80B91DAC 26524E20 */  addiu   $s2, $s2, 0x4E20           ## $s2 = 00009C40
/* 00250 80B91DB0 8FAC00E8 */  lw      $t4, 0x00E8($sp)           
/* 00254 80B91DB4 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00258 80B91DB8 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 0025C 80B91DBC C5900024 */  lwc1    $f16, 0x0024($t4)          ## 00000024
/* 00260 80B91DC0 240D0046 */  addiu   $t5, $zero, 0x0046         ## $t5 = 00000046
/* 00264 80B91DC4 240E003C */  addiu   $t6, $zero, 0x003C         ## $t6 = 0000003C
/* 00268 80B91DC8 E7B000D0 */  swc1    $f16, 0x00D0($sp)          
/* 0026C 80B91DCC C5860028 */  lwc1    $f6, 0x0028($t4)           ## 00000028
/* 00270 80B91DD0 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00274 80B91DD4 8FA400EC */  lw      $a0, 0x00EC($sp)           
/* 00278 80B91DD8 46043281 */  sub.s   $f10, $f6, $f4             
/* 0027C 80B91DDC 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFE8
/* 00280 80B91DE0 3C064220 */  lui     $a2, 0x4220                ## $a2 = 42200000
/* 00284 80B91DE4 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
/* 00288 80B91DE8 E7AA00D4 */  swc1    $f10, 0x00D4($sp)          
/* 0028C 80B91DEC C588002C */  lwc1    $f8, 0x002C($t4)           ## 0000002C
/* 00290 80B91DF0 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 00294 80B91DF4 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00298 80B91DF8 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 0029C 80B91DFC 0C00CD20 */  jal     func_80033480              
/* 002A0 80B91E00 E7A800D8 */  swc1    $f8, 0x00D8($sp)           
/* 002A4 80B91E04 8FBF009C */  lw      $ra, 0x009C($sp)           
/* 002A8 80B91E08 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 002AC 80B91E0C D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 002B0 80B91E10 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 002B4 80B91E14 D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 002B8 80B91E18 D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 002BC 80B91E1C D7BE0070 */  ldc1    $f30, 0x0070($sp)          
/* 002C0 80B91E20 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 002C4 80B91E24 8FB1007C */  lw      $s1, 0x007C($sp)           
/* 002C8 80B91E28 8FB20080 */  lw      $s2, 0x0080($sp)           
/* 002CC 80B91E2C 8FB30084 */  lw      $s3, 0x0084($sp)           
/* 002D0 80B91E30 8FB40088 */  lw      $s4, 0x0088($sp)           
/* 002D4 80B91E34 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 002D8 80B91E38 8FB60090 */  lw      $s6, 0x0090($sp)           
/* 002DC 80B91E3C 8FB70094 */  lw      $s7, 0x0094($sp)           
/* 002E0 80B91E40 8FBE0098 */  lw      $s8, 0x0098($sp)           
/* 002E4 80B91E44 03E00008 */  jr      $ra                        
/* 002E8 80B91E48 27BD00E8 */  addiu   $sp, $sp, 0x00E8           ## $sp = 00000000


