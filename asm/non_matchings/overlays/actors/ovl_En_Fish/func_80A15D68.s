.late_rodata
glabel D_80A171AC
    .float 0.8

.text
glabel func_80A15D68
/* 00AE8 80A15D68 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00AEC 80A15D6C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00AF0 80A15D70 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00AF4 80A15D74 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 00AF8 80A15D78 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 00AFC 80A15D7C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B00 80A15D80 0C285574 */  jal     func_80A155D0              
/* 00B04 80A15D84 AFAF0048 */  sw      $t7, 0x0048($sp)           
/* 00B08 80A15D88 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00B0C 80A15D8C 3C053FE6 */  lui     $a1, 0x3FE6                ## $a1 = 3FE60000
/* 00B10 80A15D90 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00B14 80A15D94 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00B18 80A15D98 34A56666 */  ori     $a1, $a1, 0x6666           ## $a1 = 3FE66666
/* 00B1C 80A15D9C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00B20 80A15DA0 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 00B24 80A15DA4 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00B28 80A15DA8 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00B2C 80A15DAC 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 00B30 80A15DB0 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 00B34 80A15DB4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00B38 80A15DB8 0C2854A0 */  jal     func_80A15280              
/* 00B3C 80A15DBC AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00B40 80A15DC0 3C0145C8 */  lui     $at, 0x45C8                ## $at = 45C80000
/* 00B44 80A15DC4 44813000 */  mtc1    $at, $f6                   ## $f6 = 6400.00
/* 00B48 80A15DC8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00B4C 80A15DCC 8FB80054 */  lw      $t8, 0x0054($sp)           
/* 00B50 80A15DD0 4600303C */  c.lt.s  $f6, $f0                   
/* 00B54 80A15DD4 00000000 */  nop
/* 00B58 80A15DD8 4502000B */  bc1fl   .L80A15E08                 
/* 00B5C 80A15DDC 8719009E */  lh      $t9, 0x009E($t8)           ## 0000009E
/* 00B60 80A15DE0 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 00B64 80A15DE4 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00B68 80A15DE8 00022C00 */  sll     $a1, $v0, 16               
/* 00B6C 80A15DEC 00052C03 */  sra     $a1, $a1, 16               
/* 00B70 80A15DF0 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00B74 80A15DF4 0C01DED6 */  jal     func_80077B58              
/* 00B78 80A15DF8 24060BB8 */  addiu   $a2, $zero, 0x0BB8         ## $a2 = 00000BB8
/* 00B7C 80A15DFC 1000002C */  beq     $zero, $zero, .L80A15EB0   
/* 00B80 80A15E00 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00B84 80A15E04 8719009E */  lh      $t9, 0x009E($t8)           ## 0000009E
.L80A15E08:
/* 00B88 80A15E08 33280040 */  andi    $t0, $t9, 0x0040           ## $t0 = 00000000
/* 00B8C 80A15E0C 51000008 */  beql    $t0, $zero, .L80A15E30     
/* 00B90 80A15E10 8604008A */  lh      $a0, 0x008A($s0)           ## 0000008A
/* 00B94 80A15E14 8604008A */  lh      $a0, 0x008A($s0)           ## 0000008A
/* 00B98 80A15E18 34019000 */  ori     $at, $zero, 0x9000         ## $at = 00009000
/* 00B9C 80A15E1C 00812021 */  addu    $a0, $a0, $at              
/* 00BA0 80A15E20 00042400 */  sll     $a0, $a0, 16               
/* 00BA4 80A15E24 10000005 */  beq     $zero, $zero, .L80A15E3C   
/* 00BA8 80A15E28 00042403 */  sra     $a0, $a0, 16               
/* 00BAC 80A15E2C 8604008A */  lh      $a0, 0x008A($s0)           ## 0000008A
.L80A15E30:
/* 00BB0 80A15E30 24847000 */  addiu   $a0, $a0, 0x7000           ## $a0 = 00007000
/* 00BB4 80A15E34 00042400 */  sll     $a0, $a0, 16               
/* 00BB8 80A15E38 00042403 */  sra     $a0, $a0, 16               
.L80A15E3C:
/* 00BBC 80A15E3C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00BC0 80A15E40 A7A40034 */  sh      $a0, 0x0034($sp)           
/* 00BC4 80A15E44 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00BC8 80A15E48 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 00BCC 80A15E4C 8FA20048 */  lw      $v0, 0x0048($sp)           
/* 00BD0 80A15E50 87A40034 */  lh      $a0, 0x0034($sp)           
/* 00BD4 80A15E54 46080282 */  mul.s   $f10, $f0, $f8             
/* 00BD8 80A15E58 C4500024 */  lwc1    $f16, 0x0024($v0)          ## 00000024
/* 00BDC 80A15E5C 46105480 */  add.s   $f18, $f10, $f16           
/* 00BE0 80A15E60 E7B20038 */  swc1    $f18, 0x0038($sp)          
/* 00BE4 80A15E64 C4440028 */  lwc1    $f4, 0x0028($v0)           ## 00000028
/* 00BE8 80A15E68 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00BEC 80A15E6C E7A4003C */  swc1    $f4, 0x003C($sp)           
/* 00BF0 80A15E70 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00BF4 80A15E74 44813000 */  mtc1    $at, $f6                   ## $f6 = 20.00
/* 00BF8 80A15E78 8FA90048 */  lw      $t1, 0x0048($sp)           
/* 00BFC 80A15E7C 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00C00 80A15E80 46060202 */  mul.s   $f8, $f0, $f6              
/* 00C04 80A15E84 C52A002C */  lwc1    $f10, 0x002C($t1)          ## 0000002C
/* 00C08 80A15E88 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFE8
/* 00C0C 80A15E8C 460A4400 */  add.s   $f16, $f8, $f10            
/* 00C10 80A15E90 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 00C14 80A15E94 E7B00040 */  swc1    $f16, 0x0040($sp)          
/* 00C18 80A15E98 00022C00 */  sll     $a1, $v0, 16               
/* 00C1C 80A15E9C 00052C03 */  sra     $a1, $a1, 16               
/* 00C20 80A15EA0 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00C24 80A15EA4 0C01DED6 */  jal     func_80077B58              
/* 00C28 80A15EA8 24060BB8 */  addiu   $a2, $zero, 0x0BB8         ## $a2 = 00000BB8
/* 00C2C 80A15EAC 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
.L80A15EB0:
/* 00C30 80A15EB0 44811000 */  mtc1    $at, $f2                   ## $f2 = 4.00
/* 00C34 80A15EB4 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 00C38 80A15EB8 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.50
/* 00C3C 80A15EBC C6120068 */  lwc1    $f18, 0x0068($s0)          ## 00000068
/* 00C40 80A15EC0 860A0032 */  lh      $t2, 0x0032($s0)           ## 00000032
/* 00C44 80A15EC4 3C0180A1 */  lui     $at, %hi(D_80A171AC)       ## $at = 80A10000
/* 00C48 80A15EC8 46049182 */  mul.s   $f6, $f18, $f4             
/* 00C4C 80A15ECC A60A00B6 */  sh      $t2, 0x00B6($s0)           ## 000000B6
/* 00C50 80A15ED0 C42871AC */  lwc1    $f8, %lo(D_80A171AC)($at)  
/* 00C54 80A15ED4 46083000 */  add.s   $f0, $f6, $f8              
/* 00C58 80A15ED8 4600103C */  c.lt.s  $f2, $f0                   
/* 00C5C 80A15EDC 00000000 */  nop
/* 00C60 80A15EE0 45020004 */  bc1fl   .L80A15EF4                 
/* 00C64 80A15EE4 E60001C8 */  swc1    $f0, 0x01C8($s0)           ## 000001C8
/* 00C68 80A15EE8 10000002 */  beq     $zero, $zero, .L80A15EF4   
/* 00C6C 80A15EEC E60201C8 */  swc1    $f2, 0x01C8($s0)           ## 000001C8
/* 00C70 80A15EF0 E60001C8 */  swc1    $f0, 0x01C8($s0)           ## 000001C8
.L80A15EF4:
/* 00C74 80A15EF4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00C78 80A15EF8 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 00C7C 80A15EFC 860B0248 */  lh      $t3, 0x0248($s0)           ## 00000248
/* 00C80 80A15F00 5D600004 */  bgtzl   $t3, .L80A15F14            
/* 00C84 80A15F04 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00C88 80A15F08 0C2855E9 */  jal     func_80A157A4              
/* 00C8C 80A15F0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C90 80A15F10 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A15F14:
/* 00C94 80A15F14 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00C98 80A15F18 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00C9C 80A15F1C 03E00008 */  jr      $ra                        
/* 00CA0 80A15F20 00000000 */  nop
