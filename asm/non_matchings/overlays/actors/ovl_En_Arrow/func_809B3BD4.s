glabel func_809B3BD4
/* 002B4 809B3BD4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 002B8 809B3BD8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 002BC 809B3BDC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 002C0 809B3BE0 8C8E0118 */  lw      $t6, 0x0118($a0)           ## 00000118
/* 002C4 809B3BE4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002C8 809B3BE8 8CA61C44 */  lw      $a2, 0x1C44($a1)           ## 00001C44
/* 002CC 809B3BEC 55C0003B */  bnel    $t6, $zero, .L809B3CDC     
/* 002D0 809B3BF0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 002D4 809B3BF4 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 002D8 809B3BF8 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 002DC 809B3BFC 10410008 */  beq     $v0, $at, .L809B3C20       
/* 002E0 809B3C00 0002C080 */  sll     $t8, $v0,  2               
/* 002E4 809B3C04 90CF0A73 */  lbu     $t7, 0x0A73($a2)           ## 00000A73
/* 002E8 809B3C08 55E00006 */  bnel    $t7, $zero, .L809B3C24     
/* 002EC 809B3C0C 2C41000A */  sltiu   $at, $v0, 0x000A           
/* 002F0 809B3C10 0C00B55C */  jal     Actor_Kill
              
/* 002F4 809B3C14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002F8 809B3C18 10000030 */  beq     $zero, $zero, .L809B3CDC   
/* 002FC 809B3C1C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809B3C20:
/* 00300 809B3C20 2C41000A */  sltiu   $at, $v0, 0x000A           
.L809B3C24:
/* 00304 809B3C24 10200012 */  beq     $at, $zero, .L809B3C70     
/* 00308 809B3C28 3C01809B */  lui     $at, %hi(jtbl_809B4F20)       ## $at = 809B0000
/* 0030C 809B3C2C 00380821 */  addu    $at, $at, $t8              
/* 00310 809B3C30 8C384F20 */  lw      $t8, %lo(jtbl_809B4F20)($at)  
/* 00314 809B3C34 03000008 */  jr      $t8                        
/* 00318 809B3C38 00000000 */  nop
glabel L809B3C3C
/* 0031C 809B3C3C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00320 809B3C40 0C00BDF7 */  jal     func_8002F7DC              
/* 00324 809B3C44 24051820 */  addiu   $a1, $zero, 0x1820         ## $a1 = 00001820
/* 00328 809B3C48 10000009 */  beq     $zero, $zero, .L809B3C70   
/* 0032C 809B3C4C 00000000 */  nop
glabel L809B3C50
/* 00330 809B3C50 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00334 809B3C54 0C00BDF7 */  jal     func_8002F7DC              
/* 00338 809B3C58 24051804 */  addiu   $a1, $zero, 0x1804         ## $a1 = 00001804
/* 0033C 809B3C5C 10000004 */  beq     $zero, $zero, .L809B3C70   
/* 00340 809B3C60 00000000 */  nop
glabel L809B3C64
/* 00344 809B3C64 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00348 809B3C68 0C00BDF7 */  jal     func_8002F7DC              
/* 0034C 809B3C6C 24051839 */  addiu   $a1, $zero, 0x1839         ## $a1 = 00001839
glabel L809B3C70
.L809B3C70:
/* 00350 809B3C70 3C05809B */  lui     $a1, %hi(func_809B3FDC)    ## $a1 = 809B0000
/* 00354 809B3C74 24A53FDC */  addiu   $a1, $a1, %lo(func_809B3FDC) ## $a1 = 809B3FDC
/* 00358 809B3C78 0C26CE48 */  jal     func_809B3920              
/* 0035C 809B3C7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00360 809B3C80 26040210 */  addiu   $a0, $s0, 0x0210           ## $a0 = 00000210
/* 00364 809B3C84 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00368 809B3C88 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 0036C 809B3C8C 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 00370 809B3C90 3C0542A0 */  lui     $a1, 0x42A0                ## $a1 = 42A00000
/* 00374 809B3C94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00378 809B3C98 2B210009 */  slti    $at, $t9, 0x0009           
/* 0037C 809B3C9C 1420000A */  bne     $at, $zero, .L809B3CC8     
/* 00380 809B3CA0 00000000 */  nop
/* 00384 809B3CA4 0C00B669 */  jal     func_8002D9A4              
/* 00388 809B3CA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0038C 809B3CAC A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
/* 00390 809B3CB0 860200B8 */  lh      $v0, 0x00B8($s0)           ## 000000B8
/* 00394 809B3CB4 2408000F */  addiu   $t0, $zero, 0x000F         ## $t0 = 0000000F
/* 00398 809B3CB8 A2080248 */  sb      $t0, 0x0248($s0)           ## 00000248
/* 0039C 809B3CBC A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 003A0 809B3CC0 10000005 */  beq     $zero, $zero, .L809B3CD8   
/* 003A4 809B3CC4 A60200B4 */  sh      $v0, 0x00B4($s0)           ## 000000B4
.L809B3CC8:
/* 003A8 809B3CC8 0C00B669 */  jal     func_8002D9A4              
/* 003AC 809B3CCC 3C054316 */  lui     $a1, 0x4316                ## $a1 = 43160000
/* 003B0 809B3CD0 2409000C */  addiu   $t1, $zero, 0x000C         ## $t1 = 0000000C
/* 003B4 809B3CD4 A2090248 */  sb      $t1, 0x0248($s0)           ## 00000248
.L809B3CD8:
/* 003B8 809B3CD8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809B3CDC:
/* 003BC 809B3CDC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 003C0 809B3CE0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 003C4 809B3CE4 03E00008 */  jr      $ra                        
/* 003C8 809B3CE8 00000000 */  nop


