glabel func_80B8F324
/* 008A4 80B8F324 27BDFF30 */  addiu   $sp, $sp, 0xFF30           ## $sp = FFFFFF30
/* 008A8 80B8F328 F7BE0070 */  sdc1    $f30, 0x0070($sp)          
/* 008AC 80B8F32C 3C0180B9 */  lui     $at, %hi(D_80B91024)       ## $at = 80B90000
/* 008B0 80B8F330 C43E1024 */  lwc1    $f30, %lo(D_80B91024)($at) 
/* 008B4 80B8F334 F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 008B8 80B8F338 3C014334 */  lui     $at, 0x4334                ## $at = 43340000
/* 008BC 80B8F33C 4481E000 */  mtc1    $at, $f28                  ## $f28 = 180.00
/* 008C0 80B8F340 F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 008C4 80B8F344 3C014150 */  lui     $at, 0x4150                ## $at = 41500000
/* 008C8 80B8F348 4481D000 */  mtc1    $at, $f26                  ## $f26 = 13.00
/* 008CC 80B8F34C F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 008D0 80B8F350 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 008D4 80B8F354 4481C000 */  mtc1    $at, $f24                  ## $f24 = 60.00
/* 008D8 80B8F358 AFBE0098 */  sw      $s8, 0x0098($sp)           
/* 008DC 80B8F35C F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 008E0 80B8F360 3C014060 */  lui     $at, 0x4060                ## $at = 40600000
/* 008E4 80B8F364 AFB70094 */  sw      $s7, 0x0094($sp)           
/* 008E8 80B8F368 AFB60090 */  sw      $s6, 0x0090($sp)           
/* 008EC 80B8F36C AFB5008C */  sw      $s5, 0x008C($sp)           
/* 008F0 80B8F370 AFB40088 */  sw      $s4, 0x0088($sp)           
/* 008F4 80B8F374 AFB1007C */  sw      $s1, 0x007C($sp)           
/* 008F8 80B8F378 AFB00078 */  sw      $s0, 0x0078($sp)           
/* 008FC 80B8F37C 3C1E80B9 */  lui     $s8, %hi(D_80B90EA0)       ## $s8 = 80B90000
/* 00900 80B8F380 4481B000 */  mtc1    $at, $f22                  ## $f22 = 3.50
/* 00904 80B8F384 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00908 80B8F388 00A0B025 */  or      $s6, $a1, $zero            ## $s6 = 00000000
/* 0090C 80B8F38C AFBF009C */  sw      $ra, 0x009C($sp)           
/* 00910 80B8F390 AFB30084 */  sw      $s3, 0x0084($sp)           
/* 00914 80B8F394 AFB20080 */  sw      $s2, 0x0080($sp)           
/* 00918 80B8F398 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 0091C 80B8F39C 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00920 80B8F3A0 27DE0EA0 */  addiu   $s8, $s8, %lo(D_80B90EA0)  ## $s8 = 80B90EA0
/* 00924 80B8F3A4 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
/* 00928 80B8F3A8 27B500C4 */  addiu   $s5, $sp, 0x00C4           ## $s5 = FFFFFFF4
/* 0092C 80B8F3AC 27B700B8 */  addiu   $s7, $sp, 0x00B8           ## $s7 = FFFFFFE8
/* 00930 80B8F3B0 26314E20 */  addiu   $s1, $s1, 0x4E20           ## $s1 = 00004E20
.L80B8F3B4:
/* 00934 80B8F3B4 00118C00 */  sll     $s1, $s1, 16               
/* 00938 80B8F3B8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0093C 80B8F3BC 00118C03 */  sra     $s1, $s1, 16               
/* 00940 80B8F3C0 46180502 */  mul.s   $f20, $f0, $f24            
/* 00944 80B8F3C4 00112400 */  sll     $a0, $s1, 16               
/* 00948 80B8F3C8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0094C 80B8F3CC 00042403 */  sra     $a0, $a0, 16               
/* 00950 80B8F3D0 46140102 */  mul.s   $f4, $f0, $f20             
/* 00954 80B8F3D4 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00958 80B8F3D8 00112400 */  sll     $a0, $s1, 16               
/* 0095C 80B8F3DC 00042403 */  sra     $a0, $a0, 16               
/* 00960 80B8F3E0 46062200 */  add.s   $f8, $f4, $f6              
/* 00964 80B8F3E4 E7A800C4 */  swc1    $f8, 0x00C4($sp)           
/* 00968 80B8F3E8 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 0096C 80B8F3EC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00970 80B8F3F0 E7AA00C8 */  swc1    $f10, 0x00C8($sp)          
/* 00974 80B8F3F4 46140402 */  mul.s   $f16, $f0, $f20            
/* 00978 80B8F3F8 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 0097C 80B8F3FC 00112400 */  sll     $a0, $s1, 16               
/* 00980 80B8F400 00042403 */  sra     $a0, $a0, 16               
/* 00984 80B8F404 46128100 */  add.s   $f4, $f16, $f18            
/* 00988 80B8F408 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0098C 80B8F40C E7A400CC */  swc1    $f4, 0x00CC($sp)           
/* 00990 80B8F410 46160182 */  mul.s   $f6, $f0, $f22             
/* 00994 80B8F414 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00998 80B8F418 E7A600B8 */  swc1    $f6, 0x00B8($sp)           
/* 0099C 80B8F41C 461A0202 */  mul.s   $f8, $f0, $f26             
/* 009A0 80B8F420 00112400 */  sll     $a0, $s1, 16               
/* 009A4 80B8F424 00042403 */  sra     $a0, $a0, 16               
/* 009A8 80B8F428 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 009AC 80B8F42C E7A800BC */  swc1    $f8, 0x00BC($sp)           
/* 009B0 80B8F430 46160282 */  mul.s   $f10, $f0, $f22            
/* 009B4 80B8F434 C7A600B8 */  lwc1    $f6, 0x00B8($sp)           
/* 009B8 80B8F438 E7AA00C0 */  swc1    $f10, 0x00C0($sp)          
/* 009BC 80B8F43C C6120100 */  lwc1    $f18, 0x0100($s0)          ## 00000100
/* 009C0 80B8F440 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 009C4 80B8F444 46128101 */  sub.s   $f4, $f16, $f18            
/* 009C8 80B8F448 46043200 */  add.s   $f8, $f6, $f4              
/* 009CC 80B8F44C C7A600BC */  lwc1    $f6, 0x00BC($sp)           
/* 009D0 80B8F450 E7A800B8 */  swc1    $f8, 0x00B8($sp)           
/* 009D4 80B8F454 C6100104 */  lwc1    $f16, 0x0104($s0)          ## 00000104
/* 009D8 80B8F458 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 009DC 80B8F45C 46105481 */  sub.s   $f18, $f10, $f16           
/* 009E0 80B8F460 46123100 */  add.s   $f4, $f6, $f18             
/* 009E4 80B8F464 C7A600C0 */  lwc1    $f6, 0x00C0($sp)           
/* 009E8 80B8F468 E7A400BC */  swc1    $f4, 0x00BC($sp)           
/* 009EC 80B8F46C C60A0108 */  lwc1    $f10, 0x0108($s0)          ## 00000108
/* 009F0 80B8F470 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 009F4 80B8F474 460A4401 */  sub.s   $f16, $f8, $f10            
/* 009F8 80B8F478 46103480 */  add.s   $f18, $f6, $f16            
/* 009FC 80B8F47C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A00 80B8F480 E7B200C0 */  swc1    $f18, 0x00C0($sp)          
/* 00A04 80B8F484 461C0102 */  mul.s   $f4, $f0, $f28             
/* 00A08 80B8F488 2413FF9C */  addiu   $s3, $zero, 0xFF9C         ## $s3 = FFFFFF9C
/* 00A0C 80B8F48C 4600220D */  trunc.w.s $f8, $f4                   
/* 00A10 80B8F490 44024000 */  mfc1    $v0, $f8                   
/* 00A14 80B8F494 00000000 */  nop
/* 00A18 80B8F498 2452001E */  addiu   $s2, $v0, 0x001E           ## $s2 = 0000001E
/* 00A1C 80B8F49C 2A41005A */  slti    $at, $s2, 0x005A           
/* 00A20 80B8F4A0 1020000B */  beq     $at, $zero, .L80B8F4D0     
/* 00A24 80B8F4A4 24020040 */  addiu   $v0, $zero, 0x0040         ## $v0 = 00000040
/* 00A28 80B8F4A8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A2C 80B8F4AC 2413FFB0 */  addiu   $s3, $zero, 0xFFB0         ## $s3 = FFFFFFB0
/* 00A30 80B8F4B0 461E003C */  c.lt.s  $f0, $f30                  
/* 00A34 80B8F4B4 00000000 */  nop
/* 00A38 80B8F4B8 45000003 */  bc1f    .L80B8F4C8                 
/* 00A3C 80B8F4BC 00000000 */  nop
/* 00A40 80B8F4C0 10000003 */  beq     $zero, $zero, .L80B8F4D0   
/* 00A44 80B8F4C4 24020060 */  addiu   $v0, $zero, 0x0060         ## $v0 = 00000060
.L80B8F4C8:
/* 00A48 80B8F4C8 10000001 */  beq     $zero, $zero, .L80B8F4D0   
/* 00A4C 80B8F4CC 24020040 */  addiu   $v0, $zero, 0x0040         ## $v0 = 00000040
.L80B8F4D0:
/* 00A50 80B8F4D0 240F0028 */  addiu   $t7, $zero, 0x0028         ## $t7 = 00000028
/* 00A54 80B8F4D4 328D0001 */  andi    $t5, $s4, 0x0001           ## $t5 = 00000000
/* 00A58 80B8F4D8 000D7080 */  sll     $t6, $t5,  2               
/* 00A5C 80B8F4DC AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 00A60 80B8F4E0 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 00A64 80B8F4E4 0012C8C3 */  sra     $t9, $s2,  3               
/* 00A68 80B8F4E8 27280028 */  addiu   $t0, $t9, 0x0028           ## $t0 = 00000028
/* 00A6C 80B8F4EC AFB8001C */  sw      $t8, 0x001C($sp)           
/* 00A70 80B8F4F0 03CE7821 */  addu    $t7, $s8, $t6              
/* 00A74 80B8F4F4 8DF80000 */  lw      $t8, 0x0000($t7)           ## 00000028
/* 00A78 80B8F4F8 00084C00 */  sll     $t1, $t0, 16               
/* 00A7C 80B8F4FC 00095403 */  sra     $t2, $t1, 16               
/* 00A80 80B8F500 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 00A84 80B8F504 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00A88 80B8F508 AFAC0038 */  sw      $t4, 0x0038($sp)           
/* 00A8C 80B8F50C AFAB0034 */  sw      $t3, 0x0034($sp)           
/* 00A90 80B8F510 AFAA0030 */  sw      $t2, 0x0030($sp)           
/* 00A94 80B8F514 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 00A98 80B8F518 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFF4
/* 00A9C 80B8F51C 02E03025 */  or      $a2, $s7, $zero            ## $a2 = FFFFFFE8
/* 00AA0 80B8F520 02A03825 */  or      $a3, $s5, $zero            ## $a3 = FFFFFFF4
/* 00AA4 80B8F524 AFB30010 */  sw      $s3, 0x0010($sp)           
/* 00AA8 80B8F528 AFA20014 */  sw      $v0, 0x0014($sp)           
/* 00AAC 80B8F52C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00AB0 80B8F530 AFB20024 */  sw      $s2, 0x0024($sp)           
/* 00AB4 80B8F534 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00AB8 80B8F538 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 00ABC 80B8F53C 0C00A7A3 */  jal     Effect_SpawnFragment
              
/* 00AC0 80B8F540 AFB8003C */  sw      $t8, 0x003C($sp)           
/* 00AC4 80B8F544 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000001
/* 00AC8 80B8F548 24010024 */  addiu   $at, $zero, 0x0024         ## $at = 00000024
/* 00ACC 80B8F54C 5681FF99 */  bnel    $s4, $at, .L80B8F3B4       
/* 00AD0 80B8F550 26314E20 */  addiu   $s1, $s1, 0x4E20           ## $s1 = 00009C40
/* 00AD4 80B8F554 8FBF009C */  lw      $ra, 0x009C($sp)           
/* 00AD8 80B8F558 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 00ADC 80B8F55C D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 00AE0 80B8F560 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 00AE4 80B8F564 D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 00AE8 80B8F568 D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 00AEC 80B8F56C D7BE0070 */  ldc1    $f30, 0x0070($sp)          
/* 00AF0 80B8F570 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 00AF4 80B8F574 8FB1007C */  lw      $s1, 0x007C($sp)           
/* 00AF8 80B8F578 8FB20080 */  lw      $s2, 0x0080($sp)           
/* 00AFC 80B8F57C 8FB30084 */  lw      $s3, 0x0084($sp)           
/* 00B00 80B8F580 8FB40088 */  lw      $s4, 0x0088($sp)           
/* 00B04 80B8F584 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 00B08 80B8F588 8FB60090 */  lw      $s6, 0x0090($sp)           
/* 00B0C 80B8F58C 8FB70094 */  lw      $s7, 0x0094($sp)           
/* 00B10 80B8F590 8FBE0098 */  lw      $s8, 0x0098($sp)           
/* 00B14 80B8F594 03E00008 */  jr      $ra                        
/* 00B18 80B8F598 27BD00D0 */  addiu   $sp, $sp, 0x00D0           ## $sp = 00000000


