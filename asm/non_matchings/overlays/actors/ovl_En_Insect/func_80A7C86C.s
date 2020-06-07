.late_rodata
glabel D_80A7DFF4
    .float 0.8

glabel D_80A7DFF8
    .float 1.6

glabel D_80A7DFFC
    .float 1.9

.text
glabel func_80A7C86C
/* 00A4C 80A7C86C 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00A50 80A7C870 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00A54 80A7C874 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00A58 80A7C878 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00A5C 80A7C87C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00A60 80A7C880 44813000 */  mtc1    $at, $f6                   ## $f6 = 40.00
/* 00A64 80A7C884 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00A68 80A7C888 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A6C 80A7C88C 3C053FE6 */  lui     $a1, 0x3FE6                ## $a1 = 3FE60000
/* 00A70 80A7C890 4606203C */  c.lt.s  $f4, $f6                   
/* 00A74 80A7C894 00007025 */  or      $t6, $zero, $zero          ## $t6 = 00000000
/* 00A78 80A7C898 34A56666 */  ori     $a1, $a1, 0x6666           ## $a1 = 3FE66666
/* 00A7C 80A7C89C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00A80 80A7C8A0 45000002 */  bc1f    .L80A7C8AC                 
/* 00A84 80A7C8A4 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00A88 80A7C8A8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
.L80A7C8AC:
/* 00A8C 80A7C8AC 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00A90 80A7C8B0 A7AE0038 */  sh      $t6, 0x0038($sp)           
/* 00A94 80A7C8B4 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00A98 80A7C8B8 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 00A9C 80A7C8BC 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00AA0 80A7C8C0 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 00AA4 80A7C8C4 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 00AA8 80A7C8C8 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 00AAC 80A7C8CC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00AB0 80A7C8D0 0C29EF90 */  jal     func_80A7BE40              
/* 00AB4 80A7C8D4 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00AB8 80A7C8D8 3C0146C8 */  lui     $at, 0x46C8                ## $at = 46C80000
/* 00ABC 80A7C8DC 44815000 */  mtc1    $at, $f10                  ## $f10 = 25600.00
/* 00AC0 80A7C8E0 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00AC4 80A7C8E4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00AC8 80A7C8E8 4600503C */  c.lt.s  $f10, $f0                  
/* 00ACC 80A7C8EC 00000000 */  nop
/* 00AD0 80A7C8F0 45010006 */  bc1t    .L80A7C90C                 
/* 00AD4 80A7C8F4 00000000 */  nop
/* 00AD8 80A7C8F8 860F031A */  lh      $t7, 0x031A($s0)           ## 0000031A
/* 00ADC 80A7C8FC 87B80038 */  lh      $t8, 0x0038($sp)           
/* 00AE0 80A7C900 29E10004 */  slti    $at, $t7, 0x0004           
/* 00AE4 80A7C904 1020000A */  beq     $at, $zero, .L80A7C930     
/* 00AE8 80A7C908 00000000 */  nop
.L80A7C90C:
/* 00AEC 80A7C90C 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 00AF0 80A7C910 00000000 */  nop
/* 00AF4 80A7C914 00022C00 */  sll     $a1, $v0, 16               
/* 00AF8 80A7C918 00052C03 */  sra     $a1, $a1, 16               
/* 00AFC 80A7C91C 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00B00 80A7C920 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00B04 80A7C924 240607D0 */  addiu   $a2, $zero, 0x07D0         ## $a2 = 000007D0
/* 00B08 80A7C928 1000001C */  beq     $zero, $zero, .L80A7C99C   
/* 00B0C 80A7C92C 860A0032 */  lh      $t2, 0x0032($s0)           ## 00000032
.L80A7C930:
/* 00B10 80A7C930 13000019 */  beq     $t8, $zero, .L80A7C998     
/* 00B14 80A7C934 8FA3004C */  lw      $v1, 0x004C($sp)           
/* 00B18 80A7C938 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00B1C 80A7C93C 8462009E */  lh      $v0, 0x009E($v1)           ## 0000009E
/* 00B20 80A7C940 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00B24 80A7C944 00A12821 */  addu    $a1, $a1, $at              
/* 00B28 80A7C948 00052C00 */  sll     $a1, $a1, 16               
/* 00B2C 80A7C94C 30590010 */  andi    $t9, $v0, 0x0010           ## $t9 = 00000000
/* 00B30 80A7C950 13200008 */  beq     $t9, $zero, .L80A7C974     
/* 00B34 80A7C954 00052C03 */  sra     $a1, $a1, 16               
/* 00B38 80A7C958 30480020 */  andi    $t0, $v0, 0x0020           ## $t0 = 00000000
/* 00B3C 80A7C95C 5100000C */  beql    $t0, $zero, .L80A7C990     
/* 00B40 80A7C960 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00B44 80A7C964 24A52000 */  addiu   $a1, $a1, 0x2000           ## $a1 = 00002000
/* 00B48 80A7C968 00052C00 */  sll     $a1, $a1, 16               
/* 00B4C 80A7C96C 10000007 */  beq     $zero, $zero, .L80A7C98C   
/* 00B50 80A7C970 00052C03 */  sra     $a1, $a1, 16               
.L80A7C974:
/* 00B54 80A7C974 30490020 */  andi    $t1, $v0, 0x0020           ## $t1 = 00000000
/* 00B58 80A7C978 51200005 */  beql    $t1, $zero, .L80A7C990     
/* 00B5C 80A7C97C 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00B60 80A7C980 24A5E000 */  addiu   $a1, $a1, 0xE000           ## $a1 = 00000000
/* 00B64 80A7C984 00052C00 */  sll     $a1, $a1, 16               
/* 00B68 80A7C988 00052C03 */  sra     $a1, $a1, 16               
.L80A7C98C:
/* 00B6C 80A7C98C 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
.L80A7C990:
/* 00B70 80A7C990 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00B74 80A7C994 240607D0 */  addiu   $a2, $zero, 0x07D0         ## $a2 = 000007D0
.L80A7C998:
/* 00B78 80A7C998 860A0032 */  lh      $t2, 0x0032($s0)           ## 00000032
.L80A7C99C:
/* 00B7C 80A7C99C 3C0180A8 */  lui     $at, %hi(D_80A7DFF4)       ## $at = 80A80000
/* 00B80 80A7C9A0 C422DFF4 */  lwc1    $f2, %lo(D_80A7DFF4)($at)  
/* 00B84 80A7C9A4 3C0180A8 */  lui     $at, %hi(D_80A7DFF8)       ## $at = 80A80000
/* 00B88 80A7C9A8 A60A00B6 */  sh      $t2, 0x00B6($s0)           ## 000000B6
/* 00B8C 80A7C9AC C432DFF8 */  lwc1    $f18, %lo(D_80A7DFF8)($at) 
/* 00B90 80A7C9B0 C6100068 */  lwc1    $f16, 0x0068($s0)          ## 00000068
/* 00B94 80A7C9B4 3C0180A8 */  lui     $at, %hi(D_80A7DFFC)       ## $at = 80A80000
/* 00B98 80A7C9B8 46128002 */  mul.s   $f0, $f16, $f18            
/* 00B9C 80A7C9BC 4602003C */  c.lt.s  $f0, $f2                   
/* 00BA0 80A7C9C0 00000000 */  nop
/* 00BA4 80A7C9C4 45000003 */  bc1f    .L80A7C9D4                 
/* 00BA8 80A7C9C8 00000000 */  nop
/* 00BAC 80A7C9CC 1000000A */  beq     $zero, $zero, .L80A7C9F8   
/* 00BB0 80A7C9D0 E60201C8 */  swc1    $f2, 0x01C8($s0)           ## 000001C8
.L80A7C9D4:
/* 00BB4 80A7C9D4 C42CDFFC */  lwc1    $f12, %lo(D_80A7DFFC)($at) 
/* 00BB8 80A7C9D8 4600603C */  c.lt.s  $f12, $f0                  
/* 00BBC 80A7C9DC 00000000 */  nop
/* 00BC0 80A7C9E0 45020004 */  bc1fl   .L80A7C9F4                 
/* 00BC4 80A7C9E4 46000086 */  mov.s   $f2, $f0                   
/* 00BC8 80A7C9E8 10000002 */  beq     $zero, $zero, .L80A7C9F4   
/* 00BCC 80A7C9EC 46006086 */  mov.s   $f2, $f12                  
/* 00BD0 80A7C9F0 46000086 */  mov.s   $f2, $f0                   
.L80A7C9F4:
/* 00BD4 80A7C9F4 E60201C8 */  swc1    $f2, 0x01C8($s0)           ## 000001C8
.L80A7C9F8:
/* 00BD8 80A7C9F8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00BDC 80A7C9FC 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 00BE0 80A7CA00 860B031A */  lh      $t3, 0x031A($s0)           ## 0000031A
/* 00BE4 80A7CA04 87AC0038 */  lh      $t4, 0x0038($sp)           
/* 00BE8 80A7CA08 19600003 */  blez    $t3, .L80A7CA18            
/* 00BEC 80A7CA0C 00000000 */  nop
/* 00BF0 80A7CA10 55800006 */  bnel    $t4, $zero, .L80A7CA2C     
/* 00BF4 80A7CA14 960D0314 */  lhu     $t5, 0x0314($s0)           ## 00000314
.L80A7CA18:
/* 00BF8 80A7CA18 0C29F0E8 */  jal     func_80A7C3A0              
/* 00BFC 80A7CA1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C00 80A7CA20 1000000C */  beq     $zero, $zero, .L80A7CA54   
/* 00C04 80A7CA24 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00C08 80A7CA28 960D0314 */  lhu     $t5, 0x0314($s0)           ## 00000314
.L80A7CA2C:
/* 00C0C 80A7CA2C 31AE0001 */  andi    $t6, $t5, 0x0001           ## $t6 = 00000000
/* 00C10 80A7CA30 51C00008 */  beql    $t6, $zero, .L80A7CA54     
/* 00C14 80A7CA34 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00C18 80A7CA38 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
/* 00C1C 80A7CA3C 31F80040 */  andi    $t8, $t7, 0x0040           ## $t8 = 00000000
/* 00C20 80A7CA40 53000004 */  beql    $t8, $zero, .L80A7CA54     
/* 00C24 80A7CA44 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00C28 80A7CA48 0C29F398 */  jal     func_80A7CE60              
/* 00C2C 80A7CA4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C30 80A7CA50 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A7CA54:
/* 00C34 80A7CA54 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00C38 80A7CA58 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00C3C 80A7CA5C 03E00008 */  jr      $ra                        
/* 00C40 80A7CA60 00000000 */  nop
