.late_rodata
glabel D_80A171A8
    .float 0.8

.text
glabel func_80A15B2C
/* 008AC 80A15B2C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 008B0 80A15B30 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 008B4 80A15B34 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 008B8 80A15B38 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 008BC 80A15B3C 0C285574 */  jal     func_80A155D0              
/* 008C0 80A15B40 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 008C4 80A15B44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008C8 80A15B48 0C2855DD */  jal     func_80A15774              
/* 008CC 80A15B4C 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 008D0 80A15B50 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 008D4 80A15B54 3C054086 */  lui     $a1, 0x4086                ## $a1 = 40860000
/* 008D8 80A15B58 3C063DA3 */  lui     $a2, 0x3DA3                ## $a2 = 3DA30000
/* 008DC 80A15B5C 3C073FB3 */  lui     $a3, 0x3FB3                ## $a3 = 3FB30000
/* 008E0 80A15B60 A7A20034 */  sh      $v0, 0x0034($sp)           
/* 008E4 80A15B64 34E73333 */  ori     $a3, $a3, 0x3333           ## $a3 = 3FB33333
/* 008E8 80A15B68 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3DA3D70A
/* 008EC 80A15B6C 34A56666 */  ori     $a1, $a1, 0x6666           ## $a1 = 40866666
/* 008F0 80A15B70 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 008F4 80A15B74 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 008F8 80A15B78 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 008FC 80A15B7C 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 00900 80A15B80 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 00904 80A15B84 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00908 80A15B88 0C2854A0 */  jal     func_80A15280              
/* 0090C 80A15B8C AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00910 80A15B90 3C0146C8 */  lui     $at, 0x46C8                ## $at = 46C80000
/* 00914 80A15B94 44813000 */  mtc1    $at, $f6                   ## $f6 = 25600.00
/* 00918 80A15B98 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 0091C 80A15B9C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00920 80A15BA0 4600303C */  c.lt.s  $f6, $f0                   
/* 00924 80A15BA4 00000000 */  nop
/* 00928 80A15BA8 4502000B */  bc1fl   .L80A15BD8                 
/* 0092C 80A15BAC 8E02011C */  lw      $v0, 0x011C($s0)           ## 0000011C
/* 00930 80A15BB0 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 00934 80A15BB4 00000000 */  nop
/* 00938 80A15BB8 00022C00 */  sll     $a1, $v0, 16               
/* 0093C 80A15BBC 00052C03 */  sra     $a1, $a1, 16               
/* 00940 80A15BC0 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00944 80A15BC4 0C01DED6 */  jal     func_80077B58              
/* 00948 80A15BC8 24060BB8 */  addiu   $a2, $zero, 0x0BB8         ## $a2 = 00000BB8
/* 0094C 80A15BCC 1000002B */  beq     $zero, $zero, .L80A15C7C   
/* 00950 80A15BD0 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00954 80A15BD4 8E02011C */  lw      $v0, 0x011C($s0)           ## 0000011C
.L80A15BD8:
/* 00958 80A15BD8 87AE0034 */  lh      $t6, 0x0034($sp)           
/* 0095C 80A15BDC 1040000C */  beq     $v0, $zero, .L80A15C10     
/* 00960 80A15BE0 00000000 */  nop
/* 00964 80A15BE4 1202000A */  beq     $s0, $v0, .L80A15C10       
/* 00968 80A15BE8 00000000 */  nop
/* 0096C 80A15BEC 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 00970 80A15BF0 24450024 */  addiu   $a1, $v0, 0x0024           ## $a1 = 00000024
/* 00974 80A15BF4 00022C00 */  sll     $a1, $v0, 16               
/* 00978 80A15BF8 00052C03 */  sra     $a1, $a1, 16               
/* 0097C 80A15BFC 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00980 80A15C00 0C01DED6 */  jal     func_80077B58              
/* 00984 80A15C04 240607D0 */  addiu   $a2, $zero, 0x07D0         ## $a2 = 000007D0
/* 00988 80A15C08 1000001C */  beq     $zero, $zero, .L80A15C7C   
/* 0098C 80A15C0C 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
.L80A15C10:
/* 00990 80A15C10 11C00019 */  beq     $t6, $zero, .L80A15C78     
/* 00994 80A15C14 8FA30044 */  lw      $v1, 0x0044($sp)           
/* 00998 80A15C18 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 0099C 80A15C1C 8462009E */  lh      $v0, 0x009E($v1)           ## 0000009E
/* 009A0 80A15C20 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 009A4 80A15C24 00A12821 */  addu    $a1, $a1, $at              
/* 009A8 80A15C28 00052C00 */  sll     $a1, $a1, 16               
/* 009AC 80A15C2C 304F0010 */  andi    $t7, $v0, 0x0010           ## $t7 = 00000000
/* 009B0 80A15C30 11E00008 */  beq     $t7, $zero, .L80A15C54     
/* 009B4 80A15C34 00052C03 */  sra     $a1, $a1, 16               
/* 009B8 80A15C38 30580020 */  andi    $t8, $v0, 0x0020           ## $t8 = 00000000
/* 009BC 80A15C3C 5300000C */  beql    $t8, $zero, .L80A15C70     
/* 009C0 80A15C40 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 009C4 80A15C44 24A52000 */  addiu   $a1, $a1, 0x2000           ## $a1 = 00002000
/* 009C8 80A15C48 00052C00 */  sll     $a1, $a1, 16               
/* 009CC 80A15C4C 10000007 */  beq     $zero, $zero, .L80A15C6C   
/* 009D0 80A15C50 00052C03 */  sra     $a1, $a1, 16               
.L80A15C54:
/* 009D4 80A15C54 30590020 */  andi    $t9, $v0, 0x0020           ## $t9 = 00000000
/* 009D8 80A15C58 53200005 */  beql    $t9, $zero, .L80A15C70     
/* 009DC 80A15C5C 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 009E0 80A15C60 24A5E000 */  addiu   $a1, $a1, 0xE000           ## $a1 = 00000000
/* 009E4 80A15C64 00052C00 */  sll     $a1, $a1, 16               
/* 009E8 80A15C68 00052C03 */  sra     $a1, $a1, 16               
.L80A15C6C:
/* 009EC 80A15C6C 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
.L80A15C70:
/* 009F0 80A15C70 0C01DED6 */  jal     func_80077B58              
/* 009F4 80A15C74 240607D0 */  addiu   $a2, $zero, 0x07D0         ## $a2 = 000007D0
.L80A15C78:
/* 009F8 80A15C78 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
.L80A15C7C:
/* 009FC 80A15C7C 44811000 */  mtc1    $at, $f2                   ## $f2 = 4.00
/* 00A00 80A15C80 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 00A04 80A15C84 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.50
/* 00A08 80A15C88 C6080068 */  lwc1    $f8, 0x0068($s0)           ## 00000068
/* 00A0C 80A15C8C 86080032 */  lh      $t0, 0x0032($s0)           ## 00000032
/* 00A10 80A15C90 3C0180A1 */  lui     $at, %hi(D_80A171A8)       ## $at = 80A10000
/* 00A14 80A15C94 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00A18 80A15C98 A60800B6 */  sh      $t0, 0x00B6($s0)           ## 000000B6
/* 00A1C 80A15C9C C43271A8 */  lwc1    $f18, %lo(D_80A171A8)($at) 
/* 00A20 80A15CA0 46128000 */  add.s   $f0, $f16, $f18            
/* 00A24 80A15CA4 4600103C */  c.lt.s  $f2, $f0                   
/* 00A28 80A15CA8 00000000 */  nop
/* 00A2C 80A15CAC 45020004 */  bc1fl   .L80A15CC0                 
/* 00A30 80A15CB0 E60001C8 */  swc1    $f0, 0x01C8($s0)           ## 000001C8
/* 00A34 80A15CB4 10000002 */  beq     $zero, $zero, .L80A15CC0   
/* 00A38 80A15CB8 E60201C8 */  swc1    $f2, 0x01C8($s0)           ## 000001C8
/* 00A3C 80A15CBC E60001C8 */  swc1    $f0, 0x01C8($s0)           ## 000001C8
.L80A15CC0:
/* 00A40 80A15CC0 0C02927F */  jal     Animation_Update
              
/* 00A44 80A15CC4 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 00A48 80A15CC8 86090248 */  lh      $t1, 0x0248($s0)           ## 00000248
/* 00A4C 80A15CCC 87AA0034 */  lh      $t2, 0x0034($sp)           
/* 00A50 80A15CD0 19200003 */  blez    $t1, .L80A15CE0            
/* 00A54 80A15CD4 00000000 */  nop
/* 00A58 80A15CD8 55400006 */  bnel    $t2, $zero, .L80A15CF4     
/* 00A5C 80A15CDC 8E0B011C */  lw      $t3, 0x011C($s0)           ## 0000011C
.L80A15CE0:
/* 00A60 80A15CE0 0C2855E9 */  jal     func_80A157A4              
/* 00A64 80A15CE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A68 80A15CE8 10000007 */  beq     $zero, $zero, .L80A15D08   
/* 00A6C 80A15CEC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00A70 80A15CF0 8E0B011C */  lw      $t3, 0x011C($s0)           ## 0000011C
.L80A15CF4:
/* 00A74 80A15CF4 560B0004 */  bnel    $s0, $t3, .L80A15D08       
/* 00A78 80A15CF8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00A7C 80A15CFC 0C285746 */  jal     func_80A15D18              
/* 00A80 80A15D00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A84 80A15D04 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A15D08:
/* 00A88 80A15D08 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00A8C 80A15D0C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00A90 80A15D10 03E00008 */  jr      $ra                        
/* 00A94 80A15D14 00000000 */  nop
