glabel func_8097DAC8
/* 00458 8097DAC8 27BDFF30 */  addiu   $sp, $sp, 0xFF30           ## $sp = FFFFFF30
/* 0045C 8097DACC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00460 8097DAD0 F7BE0070 */  sdc1    $f30, 0x0070($sp)          
/* 00464 8097DAD4 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00468 8097DAD8 4481F000 */  mtc1    $at, $f30                  ## $f30 = 20.00
/* 0046C 8097DADC 4600218D */  trunc.w.s $f6, $f4                   
/* 00470 8097DAE0 F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 00474 8097DAE4 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00478 8097DAE8 4481E000 */  mtc1    $at, $f28                  ## $f28 = 2.00
/* 0047C 8097DAEC F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 00480 8097DAF0 3C014296 */  lui     $at, 0x4296                ## $at = 42960000
/* 00484 8097DAF4 AFB40088 */  sw      $s4, 0x0088($sp)           
/* 00488 8097DAF8 4481D000 */  mtc1    $at, $f26                  ## $f26 = 75.00
/* 0048C 8097DAFC 44143000 */  mfc1    $s4, $f6                   
/* 00490 8097DB00 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 00494 8097DB04 3C014238 */  lui     $at, 0x4238                ## $at = 42380000
/* 00498 8097DB08 AFBE0098 */  sw      $s8, 0x0098($sp)           
/* 0049C 8097DB0C 4481C000 */  mtc1    $at, $f24                  ## $f24 = 46.00
/* 004A0 8097DB10 AFB70094 */  sw      $s7, 0x0094($sp)           
/* 004A4 8097DB14 AFB60090 */  sw      $s6, 0x0090($sp)           
/* 004A8 8097DB18 AFB5008C */  sw      $s5, 0x008C($sp)           
/* 004AC 8097DB1C AFB30084 */  sw      $s3, 0x0084($sp)           
/* 004B0 8097DB20 AFB20080 */  sw      $s2, 0x0080($sp)           
/* 004B4 8097DB24 AFB1007C */  sw      $s1, 0x007C($sp)           
/* 004B8 8097DB28 F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 004BC 8097DB2C 3C018098 */  lui     $at, %hi(D_80982A78)       ## $at = 80980000
/* 004C0 8097DB30 3C1E0600 */  lui     $s8, 0x0600                ## $s8 = 06000000
/* 004C4 8097DB34 00C09025 */  or      $s2, $a2, $zero            ## $s2 = 00000000
/* 004C8 8097DB38 00A0A825 */  or      $s5, $a1, $zero            ## $s5 = 00000000
/* 004CC 8097DB3C AFBF009C */  sw      $ra, 0x009C($sp)           
/* 004D0 8097DB40 AFB00078 */  sw      $s0, 0x0078($sp)           
/* 004D4 8097DB44 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 004D8 8097DB48 AFA400D0 */  sw      $a0, 0x00D0($sp)           
/* 004DC 8097DB4C 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 004E0 8097DB50 27DE0EA0 */  addiu   $s8, $s8, 0x0EA0           ## $s8 = 06000EA0
/* 004E4 8097DB54 C4362A78 */  lwc1    $f22, %lo(D_80982A78)($at) 
/* 004E8 8097DB58 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 004EC 8097DB5C 27B600C4 */  addiu   $s6, $sp, 0x00C4           ## $s6 = FFFFFFF4
/* 004F0 8097DB60 27B700B8 */  addiu   $s7, $sp, 0x00B8           ## $s7 = FFFFFFE8
/* 004F4 8097DB64 2694001E */  addiu   $s4, $s4, 0x001E           ## $s4 = 0000001E
.L8097DB68:
/* 004F8 8097DB68 00112400 */  sll     $a0, $s1, 16               
/* 004FC 8097DB6C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00500 8097DB70 00042403 */  sra     $a0, $a0, 16               
/* 00504 8097DB74 46180202 */  mul.s   $f8, $f0, $f24             
/* 00508 8097DB78 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0050C 8097DB7C E7A800C4 */  swc1    $f8, 0x00C4($sp)           
/* 00510 8097DB80 461A0282 */  mul.s   $f10, $f0, $f26            
/* 00514 8097DB84 00112400 */  sll     $a0, $s1, 16               
/* 00518 8097DB88 00042403 */  sra     $a0, $a0, 16               
/* 0051C 8097DB8C 461C5400 */  add.s   $f16, $f10, $f28           
/* 00520 8097DB90 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00524 8097DB94 E7B000C8 */  swc1    $f16, 0x00C8($sp)          
/* 00528 8097DB98 46180482 */  mul.s   $f18, $f0, $f24            
/* 0052C 8097DB9C C7A400C4 */  lwc1    $f4, 0x00C4($sp)           
/* 00530 8097DBA0 46162182 */  mul.s   $f6, $f4, $f22             
/* 00534 8097DBA4 E7B200CC */  swc1    $f18, 0x00CC($sp)          
/* 00538 8097DBA8 461E3200 */  add.s   $f8, $f6, $f30             
/* 0053C 8097DBAC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00540 8097DBB0 E7A800B8 */  swc1    $f8, 0x00B8($sp)           
/* 00544 8097DBB4 3C014180 */  lui     $at, 0x4180                ## $at = 41800000
/* 00548 8097DBB8 44815000 */  mtc1    $at, $f10                  ## $f10 = 16.00
/* 0054C 8097DBBC C7B200CC */  lwc1    $f18, 0x00CC($sp)          
/* 00550 8097DBC0 C7A600C4 */  lwc1    $f6, 0x00C4($sp)           
/* 00554 8097DBC4 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00558 8097DBC8 00000000 */  nop
/* 0055C 8097DBCC 46169102 */  mul.s   $f4, $f18, $f22            
/* 00560 8097DBD0 E7B000BC */  swc1    $f16, 0x00BC($sp)          
/* 00564 8097DBD4 C7B000C8 */  lwc1    $f16, 0x00C8($sp)          
/* 00568 8097DBD8 E7A400C0 */  swc1    $f4, 0x00C0($sp)           
/* 0056C 8097DBDC C6480000 */  lwc1    $f8, 0x0000($s2)           ## 00000000
/* 00570 8097DBE0 46083280 */  add.s   $f10, $f6, $f8             
/* 00574 8097DBE4 E7AA00C4 */  swc1    $f10, 0x00C4($sp)          
/* 00578 8097DBE8 C6440004 */  lwc1    $f4, 0x0004($s2)           ## 00000004
/* 0057C 8097DBEC 46048180 */  add.s   $f6, $f16, $f4             
/* 00580 8097DBF0 E7A600C8 */  swc1    $f6, 0x00C8($sp)           
/* 00584 8097DBF4 C6480008 */  lwc1    $f8, 0x0008($s2)           ## 00000008
/* 00588 8097DBF8 46089280 */  add.s   $f10, $f18, $f8            
/* 0058C 8097DBFC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00590 8097DC00 E7AA00CC */  swc1    $f10, 0x00CC($sp)          
/* 00594 8097DC04 4616003C */  c.lt.s  $f0, $f22                  
/* 00598 8097DC08 3C018098 */  lui     $at, %hi(D_80982A7C)       ## $at = 80980000
/* 0059C 8097DC0C 45000003 */  bc1f    .L8097DC1C                 
/* 005A0 8097DC10 00000000 */  nop
/* 005A4 8097DC14 10000009 */  beq     $zero, $zero, .L8097DC3C   
/* 005A8 8097DC18 24100060 */  addiu   $s0, $zero, 0x0060         ## $s0 = 00000060
.L8097DC1C:
/* 005AC 8097DC1C C4302A7C */  lwc1    $f16, %lo(D_80982A7C)($at) 
/* 005B0 8097DC20 24100020 */  addiu   $s0, $zero, 0x0020         ## $s0 = 00000020
/* 005B4 8097DC24 4610003C */  c.lt.s  $f0, $f16                  
/* 005B8 8097DC28 00000000 */  nop
/* 005BC 8097DC2C 45000003 */  bc1f    .L8097DC3C                 
/* 005C0 8097DC30 00000000 */  nop
/* 005C4 8097DC34 10000001 */  beq     $zero, $zero, .L8097DC3C   
/* 005C8 8097DC38 24100040 */  addiu   $s0, $zero, 0x0040         ## $s0 = 00000040
.L8097DC3C:
/* 005CC 8097DC3C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 005D0 8097DC40 00000000 */  nop
/* 005D4 8097DC44 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 005D8 8097DC48 46000506 */  mov.s   $f20, $f0                  
/* 005DC 8097DC4C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 005E0 8097DC50 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 005E4 8097DC54 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 005E8 8097DC58 44819000 */  mtc1    $at, $f18                  ## $f18 = 30.00
/* 005EC 8097DC5C 4604A182 */  mul.s   $f6, $f20, $f4             
/* 005F0 8097DC60 240FFF09 */  addiu   $t7, $zero, 0xFF09         ## $t7 = FFFFFF09
/* 005F4 8097DC64 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 005F8 8097DC68 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 005FC 8097DC6C 240A012C */  addiu   $t2, $zero, 0x012C         ## $t2 = 0000012C
/* 00600 8097DC70 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 00604 8097DC74 240C0186 */  addiu   $t4, $zero, 0x0186         ## $t4 = 00000186
/* 00608 8097DC78 46123200 */  add.s   $f8, $f6, $f18             
/* 0060C 8097DC7C AFAC0038 */  sw      $t4, 0x0038($sp)           
/* 00610 8097DC80 AFAB0034 */  sw      $t3, 0x0034($sp)           
/* 00614 8097DC84 AFAA002C */  sw      $t2, 0x002C($sp)           
/* 00618 8097DC88 4600428D */  trunc.w.s $f10, $f8                  
/* 0061C 8097DC8C AFA90028 */  sw      $t1, 0x0028($sp)           
/* 00620 8097DC90 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00624 8097DC94 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00628 8097DC98 44085000 */  mfc1    $t0, $f10                  
/* 0062C 8097DC9C 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00630 8097DCA0 02C02825 */  or      $a1, $s6, $zero            ## $a1 = FFFFFFF4
/* 00634 8097DCA4 02E03025 */  or      $a2, $s7, $zero            ## $a2 = FFFFFFE8
/* 00638 8097DCA8 02403825 */  or      $a3, $s2, $zero            ## $a3 = 00000000
/* 0063C 8097DCAC AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00640 8097DCB0 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00644 8097DCB4 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00648 8097DCB8 AFB40030 */  sw      $s4, 0x0030($sp)           
/* 0064C 8097DCBC AFBE003C */  sw      $s8, 0x003C($sp)           
/* 00650 8097DCC0 0C00A7A3 */  jal     Effect_SpawnFragment
              
/* 00654 8097DCC4 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 00658 8097DCC8 26311555 */  addiu   $s1, $s1, 0x1555           ## $s1 = 00001555
/* 0065C 8097DCCC 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 00660 8097DCD0 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 00664 8097DCD4 00118C00 */  sll     $s1, $s1, 16               
/* 00668 8097DCD8 1661FFA3 */  bne     $s3, $at, .L8097DB68       
/* 0066C 8097DCDC 00118C03 */  sra     $s1, $s1, 16               
/* 00670 8097DCE0 8FBF009C */  lw      $ra, 0x009C($sp)           
/* 00674 8097DCE4 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 00678 8097DCE8 D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 0067C 8097DCEC D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 00680 8097DCF0 D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 00684 8097DCF4 D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 00688 8097DCF8 D7BE0070 */  ldc1    $f30, 0x0070($sp)          
/* 0068C 8097DCFC 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 00690 8097DD00 8FB1007C */  lw      $s1, 0x007C($sp)           
/* 00694 8097DD04 8FB20080 */  lw      $s2, 0x0080($sp)           
/* 00698 8097DD08 8FB30084 */  lw      $s3, 0x0084($sp)           
/* 0069C 8097DD0C 8FB40088 */  lw      $s4, 0x0088($sp)           
/* 006A0 8097DD10 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 006A4 8097DD14 8FB60090 */  lw      $s6, 0x0090($sp)           
/* 006A8 8097DD18 8FB70094 */  lw      $s7, 0x0094($sp)           
/* 006AC 8097DD1C 8FBE0098 */  lw      $s8, 0x0098($sp)           
/* 006B0 8097DD20 03E00008 */  jr      $ra                        
/* 006B4 8097DD24 27BD00D0 */  addiu   $sp, $sp, 0x00D0           ## $sp = 00000000


