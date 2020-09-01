.late_rodata
glabel D_80A9C330
 .word 0xBDCCCCCD
glabel D_80A9C334
 .word 0xC04CCCCD, 0x00000000, 0x00000000

.text
glabel func_80A9BAD8
/* 00B38 80A9BAD8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00B3C 80A9BADC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00B40 80A9BAE0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00B44 80A9BAE4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B48 80A9BAE8 0C00BD68 */  jal     Actor_HasNoParent              
/* 00B4C 80A9BAEC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00B50 80A9BAF0 1040002A */  beq     $v0, $zero, .L80A9BB9C     
/* 00B54 80A9BAF4 8FAE002C */  lw      $t6, 0x002C($sp)           
/* 00B58 80A9BAF8 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 00B5C 80A9BAFC 01EE7821 */  addu    $t7, $t7, $t6              
/* 00B60 80A9BB00 81EF1CBC */  lb      $t7, 0x1CBC($t7)           ## 00011CBC
/* 00B64 80A9BB04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B68 80A9BB08 0C2A6EEC */  jal     func_80A9BBB0              
/* 00B6C 80A9BB0C A20F0003 */  sb      $t7, 0x0003($s0)           ## 00000003
/* 00B70 80A9BB10 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00B74 80A9BB14 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 00B78 80A9BB18 C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 00B7C 80A9BB1C 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 00B80 80A9BB20 46040182 */  mul.s   $f6, $f0, $f4              
/* 00B84 80A9BB24 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00B88 80A9BB28 E606005C */  swc1    $f6, 0x005C($s0)           ## 0000005C
/* 00B8C 80A9BB2C C6080068 */  lwc1    $f8, 0x0068($s0)           ## 00000068
/* 00B90 80A9BB30 241800F0 */  addiu   $t8, $zero, 0x00F0         ## $t8 = 000000F0
/* 00B94 80A9BB34 A21800AE */  sb      $t8, 0x00AE($s0)           ## 000000AE
/* 00B98 80A9BB38 46080282 */  mul.s   $f10, $f0, $f8             
/* 00B9C 80A9BB3C 3C0180AA */  lui     $at, %hi(D_80A9C330)       ## $at = 80AA0000
/* 00BA0 80A9BB40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BA4 80A9BB44 E60A0064 */  swc1    $f10, 0x0064($s0)          ## 00000064
/* 00BA8 80A9BB48 C430C330 */  lwc1    $f16, %lo(D_80A9C330)($at) 
/* 00BAC 80A9BB4C 0C2A6C50 */  jal     func_80A9B140              
/* 00BB0 80A9BB50 E610006C */  swc1    $f16, 0x006C($s0)          ## 0000006C
/* 00BB4 80A9BB54 3C053BA3 */  lui     $a1, 0x3BA3                ## $a1 = 3BA30000
/* 00BB8 80A9BB58 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3BA3D70A
/* 00BBC 80A9BB5C 0C2A6C5D */  jal     func_80A9B174              
/* 00BC0 80A9BB60 2604005C */  addiu   $a0, $s0, 0x005C           ## $a0 = 0000005C
/* 00BC4 80A9BB64 0C00B5FB */  jal     func_8002D7EC              
/* 00BC8 80A9BB68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BCC 80A9BB6C 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 00BD0 80A9BB70 241900C5 */  addiu   $t9, $zero, 0x00C5         ## $t9 = 000000C5
/* 00BD4 80A9BB74 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00BD8 80A9BB78 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00BDC 80A9BB7C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00BE0 80A9BB80 3C0640F0 */  lui     $a2, 0x40F0                ## $a2 = 40F00000
/* 00BE4 80A9BB84 3C07420C */  lui     $a3, 0x420C                ## $a3 = 420C0000
/* 00BE8 80A9BB88 0C00B92D */  jal     func_8002E4B4              
/* 00BEC 80A9BB8C E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 00BF0 80A9BB90 3C0180AA */  lui     $at, %hi(D_80A9C334)       ## $at = 80AA0000
/* 00BF4 80A9BB94 C424C334 */  lwc1    $f4, %lo(D_80A9C334)($at)  
/* 00BF8 80A9BB98 E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
.L80A9BB9C:
/* 00BFC 80A9BB9C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00C00 80A9BBA0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00C04 80A9BBA4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00C08 80A9BBA8 03E00008 */  jr      $ra                        
/* 00C0C 80A9BBAC 00000000 */  nop
