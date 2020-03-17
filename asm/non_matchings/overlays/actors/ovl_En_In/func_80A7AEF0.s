glabel func_80A7AEF0
/* 01F40 80A7AEF0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01F44 80A7AEF4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01F48 80A7AEF8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01F4C 80A7AEFC 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 01F50 80A7AF00 27AF002C */  addiu   $t7, $sp, 0x002C           ## $t7 = FFFFFFEC
/* 01F54 80A7AF04 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01F58 80A7AF08 AFAE003C */  sw      $t6, 0x003C($sp)           
/* 01F5C 80A7AF0C 8C990024 */  lw      $t9, 0x0024($a0)           ## 00000024
/* 01F60 80A7AF10 ADF90000 */  sw      $t9, 0x0000($t7)           ## FFFFFFEC
/* 01F64 80A7AF14 8C980028 */  lw      $t8, 0x0028($a0)           ## 00000028
/* 01F68 80A7AF18 ADF80004 */  sw      $t8, 0x0004($t7)           ## FFFFFFF0
/* 01F6C 80A7AF1C 8C99002C */  lw      $t9, 0x002C($a0)           ## 0000002C
/* 01F70 80A7AF20 ADF90008 */  sw      $t9, 0x0008($t7)           ## FFFFFFF4
/* 01F74 80A7AF24 848400B6 */  lh      $a0, 0x00B6($a0)           ## 000000B6
/* 01F78 80A7AF28 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01F7C 80A7AF2C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 01F80 80A7AF30 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 01F84 80A7AF34 44813000 */  mtc1    $at, $f6                   ## $f6 = 90.00
/* 01F88 80A7AF38 C7A4002C */  lwc1    $f4, 0x002C($sp)           
/* 01F8C 80A7AF3C 46003202 */  mul.s   $f8, $f6, $f0              
/* 01F90 80A7AF40 46082280 */  add.s   $f10, $f4, $f8             
/* 01F94 80A7AF44 E7AA002C */  swc1    $f10, 0x002C($sp)          
/* 01F98 80A7AF48 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01F9C 80A7AF4C 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 01FA0 80A7AF50 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 01FA4 80A7AF54 44819000 */  mtc1    $at, $f18                  ## $f18 = 90.00
/* 01FA8 80A7AF58 C7B00034 */  lwc1    $f16, 0x0034($sp)          
/* 01FAC 80A7AF5C 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 01FB0 80A7AF60 46009182 */  mul.s   $f6, $f18, $f0             
/* 01FB4 80A7AF64 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFEC
/* 01FB8 80A7AF68 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 01FBC 80A7AF6C 46068100 */  add.s   $f4, $f16, $f6             
/* 01FC0 80A7AF70 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 01FC4 80A7AF74 E7A40034 */  swc1    $f4, 0x0034($sp)           
/* 01FC8 80A7AF78 04400003 */  bltz    $v0, .L80A7AF88            
/* 01FCC 80A7AF7C 8FA60044 */  lw      $a2, 0x0044($sp)           
/* 01FD0 80A7AF80 10000002 */  beq     $zero, $zero, .L80A7AF8C   
/* 01FD4 80A7AF84 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80A7AF88:
/* 01FD8 80A7AF88 00021823 */  subu    $v1, $zero, $v0            
.L80A7AF8C:
/* 01FDC 80A7AF8C 28614001 */  slti    $at, $v1, 0x4001           
/* 01FE0 80A7AF90 14200010 */  bne     $at, $zero, .L80A7AFD4     
/* 01FE4 80A7AF94 24080476 */  addiu   $t0, $zero, 0x0476         ## $t0 = 00000476
/* 01FE8 80A7AF98 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01FEC 80A7AF9C 00260821 */  addu    $at, $at, $a2              
/* 01FF0 80A7AFA0 A4281E1A */  sh      $t0, 0x1E1A($at)           ## 00011E1A
/* 01FF4 80A7AFA4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01FF8 80A7AFA8 00260821 */  addu    $at, $at, $a2              
/* 01FFC 80A7AFAC 24090014 */  addiu   $t1, $zero, 0x0014         ## $t1 = 00000014
/* 02000 80A7AFB0 A0291E15 */  sb      $t1, 0x1E15($at)           ## 00011E15
/* 02004 80A7AFB4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02008 80A7AFB8 00260821 */  addu    $at, $at, $a2              
/* 0200C 80A7AFBC 240A0005 */  addiu   $t2, $zero, 0x0005         ## $t2 = 00000005
/* 02010 80A7AFC0 3C0B80A8 */  lui     $t3, %hi(func_80A7B018)    ## $t3 = 80A80000
/* 02014 80A7AFC4 A02A1E5E */  sb      $t2, 0x1E5E($at)           ## 00011E5E
/* 02018 80A7AFC8 256BB018 */  addiu   $t3, $t3, %lo(func_80A7B018) ## $t3 = 80A7B018
/* 0201C 80A7AFCC 1000000D */  beq     $zero, $zero, .L80A7B004   
/* 02020 80A7AFD0 AE0B0190 */  sw      $t3, 0x0190($s0)           ## 00000190
.L80A7AFD4:
/* 02024 80A7AFD4 860C0308 */  lh      $t4, 0x0308($s0)           ## 00000308
/* 02028 80A7AFD8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0202C 80A7AFDC 240D0004 */  addiu   $t5, $zero, 0x0004         ## $t5 = 00000004
/* 02030 80A7AFE0 15810008 */  bne     $t4, $at, .L80A7B004       
/* 02034 80A7AFE4 240E0036 */  addiu   $t6, $zero, 0x0036         ## $t6 = 00000036
/* 02038 80A7AFE8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0203C 80A7AFEC 00260821 */  addu    $at, $at, $a2              
/* 02040 80A7AFF0 A02D04BF */  sb      $t5, 0x04BF($at)           ## 000104BF
/* 02044 80A7AFF4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02048 80A7AFF8 00260821 */  addu    $at, $at, $a2              
/* 0204C 80A7AFFC A02E03DC */  sb      $t6, 0x03DC($at)           ## 000103DC
/* 02050 80A7B000 A6000308 */  sh      $zero, 0x0308($s0)         ## 00000308
.L80A7B004:
/* 02054 80A7B004 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02058 80A7B008 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0205C 80A7B00C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 02060 80A7B010 03E00008 */  jr      $ra                        
/* 02064 80A7B014 00000000 */  nop


