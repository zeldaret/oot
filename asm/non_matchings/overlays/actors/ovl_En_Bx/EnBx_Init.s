.late_rodata
glabel D_809D25B0
    .float 0.01

glabel D_809D25B4
    .float 0.03

.text
glabel EnBx_Init
/* 00000 809D1AE0 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00004 809D1AE4 3C0E809D */  lui     $t6, %hi(D_809D250C)       ## $t6 = 809D0000
/* 00008 809D1AE8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0000C 809D1AEC AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00010 809D1AF0 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00014 809D1AF4 25CE250C */  addiu   $t6, $t6, %lo(D_809D250C)  ## $t6 = 809D250C
/* 00018 809D1AF8 8DD80000 */  lw      $t8, 0x0000($t6)           ## 809D250C
/* 0001C 809D1AFC 27A80048 */  addiu   $t0, $sp, 0x0048           ## $t0 = FFFFFFF0
/* 00020 809D1B00 3C0B809D */  lui     $t3, %hi(D_809D2518)       ## $t3 = 809D0000
/* 00024 809D1B04 AD180000 */  sw      $t8, 0x0000($t0)           ## FFFFFFF0
/* 00028 809D1B08 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 809D2510
/* 0002C 809D1B0C 256B2518 */  addiu   $t3, $t3, %lo(D_809D2518)  ## $t3 = 809D2518
/* 00030 809D1B10 27B9003C */  addiu   $t9, $sp, 0x003C           ## $t9 = FFFFFFE4
/* 00034 809D1B14 AD0F0004 */  sw      $t7, 0x0004($t0)           ## FFFFFFF4
/* 00038 809D1B18 8DD80008 */  lw      $t8, 0x0008($t6)           ## 809D2514
/* 0003C 809D1B1C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00040 809D1B20 3C05809D */  lui     $a1, %hi(D_809D2524)       ## $a1 = 809D0000
/* 00044 809D1B24 AD180008 */  sw      $t8, 0x0008($t0)           ## FFFFFFF8
/* 00048 809D1B28 8D6D0000 */  lw      $t5, 0x0000($t3)           ## 809D2518
/* 0004C 809D1B2C 8D6C0004 */  lw      $t4, 0x0004($t3)           ## 809D251C
/* 00050 809D1B30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00054 809D1B34 AF2D0000 */  sw      $t5, 0x0000($t9)           ## FFFFFFE4
/* 00058 809D1B38 8D6D0008 */  lw      $t5, 0x0008($t3)           ## 809D2520
/* 0005C 809D1B3C 24A52524 */  addiu   $a1, $a1, %lo(D_809D2524)  ## $a1 = 809D2524
/* 00060 809D1B40 AF2C0004 */  sw      $t4, 0x0004($t9)           ## FFFFFFE8
/* 00064 809D1B44 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00068 809D1B48 AF2D0008 */  sw      $t5, 0x0008($t9)           ## FFFFFFEC
/* 0006C 809D1B4C 3C01809D */  lui     $at, %hi(D_809D25B0)       ## $at = 809D0000
/* 00070 809D1B50 C42025B0 */  lwc1    $f0, %lo(D_809D25B0)($at)  
/* 00074 809D1B54 3C01809D */  lui     $at, %hi(D_809D25B4)       ## $at = 809D0000
/* 00078 809D1B58 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 0007C 809D1B5C E6000058 */  swc1    $f0, 0x0058($s0)           ## 00000058
/* 00080 809D1B60 E6000050 */  swc1    $f0, 0x0050($s0)           ## 00000050
/* 00084 809D1B64 C42425B4 */  lwc1    $f4, %lo(D_809D25B4)($at)  
/* 00088 809D1B68 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0008C 809D1B6C 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 00090 809D1B70 3C01430C */  lui     $at, 0x430C                ## $at = 430C0000
/* 00094 809D1B74 44810000 */  mtc1    $at, $f0                   ## $f0 = 140.00
/* 00098 809D1B78 46083281 */  sub.s   $f10, $f6, $f8             
/* 0009C 809D1B7C 27A80048 */  addiu   $t0, $sp, 0x0048           ## $t0 = FFFFFFF0
/* 000A0 809D1B80 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 000A4 809D1B84 26070024 */  addiu   $a3, $s0, 0x0024           ## $a3 = 00000024
/* 000A8 809D1B88 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 000AC 809D1B8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000B0 809D1B90 26050154 */  addiu   $a1, $s0, 0x0154           ## $a1 = 00000154
/* 000B4 809D1B94 26060184 */  addiu   $a2, $s0, 0x0184           ## $a2 = 00000184
/* 000B8 809D1B98 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 000BC 809D1B9C 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
/* 000C0 809D1BA0 E6040054 */  swc1    $f4, 0x0054($s0)           ## 00000054
.L809D1BA4:
/* 000C4 809D1BA4 8D0F0000 */  lw      $t7, 0x0000($t0)           ## FFFFFFF0
/* 000C8 809D1BA8 24620001 */  addiu   $v0, $v1, 0x0001           ## $v0 = 00000001
/* 000CC 809D1BAC 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 000D0 809D1BB0 ACCF0000 */  sw      $t7, 0x0000($a2)           ## 00000184
/* 000D4 809D1BB4 8D0E0004 */  lw      $t6, 0x0004($t0)           ## FFFFFFF4
/* 000D8 809D1BB8 46809120 */  cvt.s.w $f4, $f18                  
/* 000DC 809D1BBC ACCE0004 */  sw      $t6, 0x0004($a2)           ## 00000188
/* 000E0 809D1BC0 8D0F0008 */  lw      $t7, 0x0008($t0)           ## FFFFFFF8
/* 000E4 809D1BC4 14600007 */  bne     $v1, $zero, .L809D1BE4     
/* 000E8 809D1BC8 ACCF0008 */  sw      $t7, 0x0008($a2)           ## 0000018C
/* 000EC 809D1BCC 00690019 */  multu   $v1, $t1                   
/* 000F0 809D1BD0 861800B4 */  lh      $t8, 0x00B4($s0)           ## 000000B4
/* 000F4 809D1BD4 2719C000 */  addiu   $t9, $t8, 0xC000           ## $t9 = FFFFC000
/* 000F8 809D1BD8 00005812 */  mflo    $t3                        
/* 000FC 809D1BDC 020B6021 */  addu    $t4, $s0, $t3              
/* 00100 809D1BE0 A59901B4 */  sh      $t9, 0x01B4($t4)           ## 000001B4
.L809D1BE4:
/* 00104 809D1BE4 8CEE0000 */  lw      $t6, 0x0000($a3)           ## 00000024
/* 00108 809D1BE8 46002182 */  mul.s   $f6, $f4, $f0              
/* 0010C 809D1BEC 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000001
/* 00110 809D1BF0 ACAE0000 */  sw      $t6, 0x0000($a1)           ## 00000154
/* 00114 809D1BF4 8CED0004 */  lw      $t5, 0x0004($a3)           ## 00000028
/* 00118 809D1BF8 2484000C */  addiu   $a0, $a0, 0x000C           ## $a0 = 0000000C
/* 0011C 809D1BFC 24A5000C */  addiu   $a1, $a1, 0x000C           ## $a1 = 00000160
/* 00120 809D1C00 ACADFFF8 */  sw      $t5, -0x0008($a1)          ## 00000158
/* 00124 809D1C04 8CEE0008 */  lw      $t6, 0x0008($a3)           ## 0000002C
/* 00128 809D1C08 24C6000C */  addiu   $a2, $a2, 0x000C           ## $a2 = 00000190
/* 0012C 809D1C0C ACAEFFFC */  sw      $t6, -0x0004($a1)          ## 0000015C
/* 00130 809D1C10 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 00134 809D1C14 46068200 */  add.s   $f8, $f16, $f6             
/* 00138 809D1C18 144AFFE2 */  bne     $v0, $t2, .L809D1BA4       
/* 0013C 809D1C1C E488014C */  swc1    $f8, 0x014C($a0)           ## 00000158
/* 00140 809D1C20 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00144 809D1C24 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 00148 809D1C28 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 0014C 809D1C2C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00150 809D1C30 0C00AC78 */  jal     ActorShape_Init
              
/* 00154 809D1C34 3C074240 */  lui     $a3, 0x4240                ## $a3 = 42400000
/* 00158 809D1C38 260501CC */  addiu   $a1, $s0, 0x01CC           ## $a1 = 000001CC
/* 0015C 809D1C3C AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00160 809D1C40 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00164 809D1C44 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00168 809D1C48 3C07809D */  lui     $a3, %hi(D_809D2490)       ## $a3 = 809D0000
/* 0016C 809D1C4C 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00170 809D1C50 24E72490 */  addiu   $a3, $a3, %lo(D_809D2490)  ## $a3 = 809D2490
/* 00174 809D1C54 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00178 809D1C58 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 0017C 809D1C5C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00180 809D1C60 26050218 */  addiu   $a1, $s0, 0x0218           ## $a1 = 00000218
/* 00184 809D1C64 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00188 809D1C68 0C017406 */  jal     func_8005D018              
/* 0018C 809D1C6C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00190 809D1C70 3C07809D */  lui     $a3, %hi(D_809D24BC)       ## $a3 = 809D0000
/* 00194 809D1C74 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00198 809D1C78 24E724BC */  addiu   $a3, $a3, %lo(D_809D24BC)  ## $a3 = 809D24BC
/* 0019C 809D1C7C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001A0 809D1C80 0C017441 */  jal     func_8005D104              
/* 001A4 809D1C84 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 001A8 809D1C88 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 001AC 809D1C8C 3C0144FA */  lui     $at, 0x44FA                ## $at = 44FA0000
/* 001B0 809D1C90 44815000 */  mtc1    $at, $f10                  ## $f10 = 2000.00
/* 001B4 809D1C94 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 001B8 809D1C98 00052A03 */  sra     $a1, $a1,  8               
/* 001BC 809D1C9C A20F00AE */  sb      $t7, 0x00AE($s0)           ## 000000AE
/* 001C0 809D1CA0 A600014C */  sh      $zero, 0x014C($s0)         ## 0000014C
/* 001C4 809D1CA4 30A500FF */  andi    $a1, $a1, 0x00FF           ## $a1 = 00000000
/* 001C8 809D1CA8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001CC 809D1CAC 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 001D0 809D1CB0 E60A00FC */  swc1    $f10, 0x00FC($s0)          ## 000000FC
/* 001D4 809D1CB4 50400004 */  beql    $v0, $zero, .L809D1CC8     
/* 001D8 809D1CB8 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 001DC 809D1CBC 0C00B55C */  jal     Actor_Kill
              
/* 001E0 809D1CC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001E4 809D1CC4 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
.L809D1CC8:
/* 001E8 809D1CC8 330B00FF */  andi    $t3, $t8, 0x00FF           ## $t3 = 00000000
/* 001EC 809D1CCC A60B001C */  sh      $t3, 0x001C($s0)           ## 0000001C
/* 001F0 809D1CD0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 001F4 809D1CD4 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 001F8 809D1CD8 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 001FC 809D1CDC 03E00008 */  jr      $ra                        
/* 00200 809D1CE0 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
