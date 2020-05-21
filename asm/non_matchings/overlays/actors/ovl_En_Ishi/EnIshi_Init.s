glabel EnIshi_Init
/* 00A78 80A7EED8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00A7C 80A7EEDC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A80 80A7EEE0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00A84 80A7EEE4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00A88 80A7EEE8 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00A8C 80A7EEEC 3C0F80A8 */  lui     $t7, %hi(D_80A873B8)       ## $t7 = 80A80000
/* 00A90 80A7EEF0 25EF73B8 */  addiu   $t7, $t7, %lo(D_80A873B8)  ## $t7 = 80A873B8
/* 00A94 80A7EEF4 30420001 */  andi    $v0, $v0, 0x0001           ## $v0 = 00000000
/* 00A98 80A7EEF8 00021400 */  sll     $v0, $v0, 16               
/* 00A9C 80A7EEFC 00021403 */  sra     $v0, $v0, 16               
/* 00AA0 80A7EF00 00027080 */  sll     $t6, $v0,  2               
/* 00AA4 80A7EF04 01C27021 */  addu    $t6, $t6, $v0              
/* 00AA8 80A7EF08 000E7080 */  sll     $t6, $t6,  2               
/* 00AAC 80A7EF0C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00AB0 80A7EF10 01CF2821 */  addu    $a1, $t6, $t7              
/* 00AB4 80A7EF14 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00AB8 80A7EF18 A7A2002A */  sh      $v0, 0x002A($sp)           
/* 00ABC 80A7EF1C 8FB80034 */  lw      $t8, 0x0034($sp)           
/* 00AC0 80A7EF20 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00AC4 80A7EF24 93191D6C */  lbu     $t9, 0x1D6C($t8)           ## 00001D6C
/* 00AC8 80A7EF28 53200007 */  beql    $t9, $zero, .L80A7EF48     
/* 00ACC 80A7EF2C 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 00AD0 80A7EF30 C60400F4 */  lwc1    $f4, 0x00F4($s0)           ## 000000F4
/* 00AD4 80A7EF34 44813000 */  mtc1    $at, $f6                   ## $f6 = 1000.00
/* 00AD8 80A7EF38 00000000 */  nop
/* 00ADC 80A7EF3C 46062200 */  add.s   $f8, $f4, $f6              
/* 00AE0 80A7EF40 E60800F4 */  swc1    $f8, 0x00F4($s0)           ## 000000F4
/* 00AE4 80A7EF44 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
.L80A7EF48:
/* 00AE8 80A7EF48 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
/* 00AEC 80A7EF4C 5500000A */  bnel    $t0, $zero, .L80A7EF78     
/* 00AF0 80A7EF50 87A2002A */  lh      $v0, 0x002A($sp)           
/* 00AF4 80A7EF54 44816000 */  mtc1    $at, $f12                  ## $f12 = 65536.00
/* 00AF8 80A7EF58 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00AFC 80A7EF5C 00000000 */  nop
/* 00B00 80A7EF60 4600028D */  trunc.w.s $f10, $f0                  
/* 00B04 80A7EF64 44025000 */  mfc1    $v0, $f10                  
/* 00B08 80A7EF68 00000000 */  nop
/* 00B0C 80A7EF6C A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 00B10 80A7EF70 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 00B14 80A7EF74 87A2002A */  lh      $v0, 0x002A($sp)           
.L80A7EF78:
/* 00B18 80A7EF78 3C0A80A8 */  lui     $t2, %hi(D_80A7FA18)       ## $t2 = 80A80000
/* 00B1C 80A7EF7C 254AFA18 */  addiu   $t2, $t2, %lo(D_80A7FA18)  ## $t2 = 80A7FA18
/* 00B20 80A7EF80 00021080 */  sll     $v0, $v0,  2               
/* 00B24 80A7EF84 004A1821 */  addu    $v1, $v0, $t2              
/* 00B28 80A7EF88 8C650000 */  lw      $a1, 0x0000($v1)           ## 00000000
/* 00B2C 80A7EF8C AFA30020 */  sw      $v1, 0x0020($sp)           
/* 00B30 80A7EF90 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 00B34 80A7EF94 0C00B58B */  jal     Actor_SetScale
              
/* 00B38 80A7EF98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B3C 80A7EF9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B40 80A7EFA0 0C29F918 */  jal     func_80A7E460              
/* 00B44 80A7EFA4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00B48 80A7EFA8 8FAB0020 */  lw      $t3, 0x0020($sp)           
/* 00B4C 80A7EFAC 3C0C80A8 */  lui     $t4, %hi(D_80A7FA1C)       ## $t4 = 80A80000
/* 00B50 80A7EFB0 258CFA1C */  addiu   $t4, $t4, %lo(D_80A7FA1C)  ## $t4 = 80A7FA1C
/* 00B54 80A7EFB4 156C000F */  bne     $t3, $t4, .L80A7EFF4       
/* 00B58 80A7EFB8 00000000 */  nop
/* 00B5C 80A7EFBC 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00B60 80A7EFC0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00B64 80A7EFC4 00026A83 */  sra     $t5, $v0, 10               
/* 00B68 80A7EFC8 00027983 */  sra     $t7, $v0,  6               
/* 00B6C 80A7EFCC 31F80003 */  andi    $t8, $t7, 0x0003           ## $t8 = 00000000
/* 00B70 80A7EFD0 31AE003C */  andi    $t6, $t5, 0x003C           ## $t6 = 00000000
/* 00B74 80A7EFD4 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00B78 80A7EFD8 01D82825 */  or      $a1, $t6, $t8              ## $a1 = 00000000
/* 00B7C 80A7EFDC 10400005 */  beq     $v0, $zero, .L80A7EFF4     
/* 00B80 80A7EFE0 00000000 */  nop
/* 00B84 80A7EFE4 0C00B55C */  jal     Actor_Kill
              
/* 00B88 80A7EFE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B8C 80A7EFEC 1000001C */  beq     $zero, $zero, .L80A7F060   
/* 00B90 80A7EFF0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A7EFF4:
/* 00B94 80A7EFF4 3C0680A8 */  lui     $a2, %hi(D_80A87390)       ## $a2 = 80A80000
/* 00B98 80A7EFF8 24C67390 */  addiu   $a2, $a2, %lo(D_80A87390)  ## $a2 = 80A87390
/* 00B9C 80A7EFFC 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 00BA0 80A7F000 0C0187B5 */  jal     func_80061ED4              
/* 00BA4 80A7F004 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00BA8 80A7F008 8FB90024 */  lw      $t9, 0x0024($sp)           
/* 00BAC 80A7F00C 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 00BB0 80A7F010 3C0180A8 */  lui     $at, %hi(D_80A7FA20)       ## $at = 80A80000
/* 00BB4 80A7F014 00390821 */  addu    $at, $at, $t9              
/* 00BB8 80A7F018 C430FA20 */  lwc1    $f16, %lo(D_80A7FA20)($at) 
/* 00BBC 80A7F01C 00084943 */  sra     $t1, $t0,  5               
/* 00BC0 80A7F020 312A0001 */  andi    $t2, $t1, 0x0001           ## $t2 = 00000000
/* 00BC4 80A7F024 1540000B */  bne     $t2, $zero, .L80A7F054     
/* 00BC8 80A7F028 E61000BC */  swc1    $f16, 0x00BC($s0)          ## 000000BC
/* 00BCC 80A7F02C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BD0 80A7F030 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00BD4 80A7F034 0C29F936 */  jal     func_80A7E4D8              
/* 00BD8 80A7F038 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 00BDC 80A7F03C 14400005 */  bne     $v0, $zero, .L80A7F054     
/* 00BE0 80A7F040 00000000 */  nop
/* 00BE4 80A7F044 0C00B55C */  jal     Actor_Kill
              
/* 00BE8 80A7F048 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BEC 80A7F04C 10000004 */  beq     $zero, $zero, .L80A7F060   
/* 00BF0 80A7F050 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A7F054:
/* 00BF4 80A7F054 0C29FC26 */  jal     func_80A7F098              
/* 00BF8 80A7F058 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BFC 80A7F05C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A7F060:
/* 00C00 80A7F060 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00C04 80A7F064 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00C08 80A7F068 03E00008 */  jr      $ra                        
/* 00C0C 80A7F06C 00000000 */  nop
