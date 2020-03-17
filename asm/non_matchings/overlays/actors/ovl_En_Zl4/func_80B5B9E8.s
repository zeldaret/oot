glabel func_80B5B9E8
/* 00238 80B5B9E8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0023C 80B5B9EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00240 80B5B9F0 84820210 */  lh      $v0, 0x0210($a0)           ## 00000210
/* 00244 80B5B9F4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00248 80B5B9F8 18400003 */  blez    $v0, .L80B5BA08            
/* 0024C 80B5B9FC 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00250 80B5BA00 10000002 */  beq     $zero, $zero, .L80B5BA0C   
/* 00254 80B5BA04 A48E0210 */  sh      $t6, 0x0210($a0)           ## 00000210
.L80B5BA08:
/* 00258 80B5BA08 A4C00210 */  sh      $zero, 0x0210($a2)         ## 00000210
.L80B5BA0C:
/* 0025C 80B5BA0C 84C20210 */  lh      $v0, 0x0210($a2)           ## 00000210
/* 00260 80B5BA10 28410003 */  slti    $at, $v0, 0x0003           
/* 00264 80B5BA14 50200004 */  beql    $at, $zero, .L80B5BA28     
/* 00268 80B5BA18 90CF020D */  lbu     $t7, 0x020D($a2)           ## 0000020D
/* 0026C 80B5BA1C A0C2020B */  sb      $v0, 0x020B($a2)           ## 0000020B
/* 00270 80B5BA20 A0C2020A */  sb      $v0, 0x020A($a2)           ## 0000020A
/* 00274 80B5BA24 90CF020D */  lbu     $t7, 0x020D($a2)           ## 0000020D
.L80B5BA28:
/* 00278 80B5BA28 2DE10007 */  sltiu   $at, $t7, 0x0007           
/* 0027C 80B5BA2C 1020002D */  beq     $at, $zero, .L80B5BAE4     
/* 00280 80B5BA30 000F7880 */  sll     $t7, $t7,  2               
/* 00284 80B5BA34 3C0180B6 */  lui     $at, %hi(jtbl_80B5FBA0)       ## $at = 80B60000
/* 00288 80B5BA38 002F0821 */  addu    $at, $at, $t7              
/* 0028C 80B5BA3C 8C2FFBA0 */  lw      $t7, %lo(jtbl_80B5FBA0)($at)  
/* 00290 80B5BA40 01E00008 */  jr      $t7                        
/* 00294 80B5BA44 00000000 */  nop
glabel L80B5BA48
/* 00298 80B5BA48 14400026 */  bne     $v0, $zero, .L80B5BAE4     
/* 0029C 80B5BA4C 2404001E */  addiu   $a0, $zero, 0x001E         ## $a0 = 0000001E
/* 002A0 80B5BA50 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 002A4 80B5BA54 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 002A8 80B5BA58 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 002AC 80B5BA5C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 002B0 80B5BA60 10000020 */  beq     $zero, $zero, .L80B5BAE4   
/* 002B4 80B5BA64 A4C20210 */  sh      $v0, 0x0210($a2)           ## 00000210
glabel L80B5BA68
/* 002B8 80B5BA68 1440001E */  bne     $v0, $zero, .L80B5BAE4     
/* 002BC 80B5BA6C 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 002C0 80B5BA70 A0D9020B */  sb      $t9, 0x020B($a2)           ## 0000020B
/* 002C4 80B5BA74 1000001B */  beq     $zero, $zero, .L80B5BAE4   
/* 002C8 80B5BA78 A0D9020A */  sb      $t9, 0x020A($a2)           ## 0000020A
glabel L80B5BA7C
/* 002CC 80B5BA7C 14400019 */  bne     $v0, $zero, .L80B5BAE4     
/* 002D0 80B5BA80 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 002D4 80B5BA84 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
/* 002D8 80B5BA88 A0C8020A */  sb      $t0, 0x020A($a2)           ## 0000020A
/* 002DC 80B5BA8C 10000015 */  beq     $zero, $zero, .L80B5BAE4   
/* 002E0 80B5BA90 A0C9020B */  sb      $t1, 0x020B($a2)           ## 0000020B
glabel L80B5BA94
/* 002E4 80B5BA94 14400013 */  bne     $v0, $zero, .L80B5BAE4     
/* 002E8 80B5BA98 240A0006 */  addiu   $t2, $zero, 0x0006         ## $t2 = 00000006
/* 002EC 80B5BA9C 240B0005 */  addiu   $t3, $zero, 0x0005         ## $t3 = 00000005
/* 002F0 80B5BAA0 A0CA020A */  sb      $t2, 0x020A($a2)           ## 0000020A
/* 002F4 80B5BAA4 1000000F */  beq     $zero, $zero, .L80B5BAE4   
/* 002F8 80B5BAA8 A0CB020B */  sb      $t3, 0x020B($a2)           ## 0000020B
glabel L80B5BAAC
/* 002FC 80B5BAAC 1440000D */  bne     $v0, $zero, .L80B5BAE4     
/* 00300 80B5BAB0 240D0003 */  addiu   $t5, $zero, 0x0003         ## $t5 = 00000003
/* 00304 80B5BAB4 A0CD020B */  sb      $t5, 0x020B($a2)           ## 0000020B
/* 00308 80B5BAB8 1000000A */  beq     $zero, $zero, .L80B5BAE4   
/* 0030C 80B5BABC A0CD020A */  sb      $t5, 0x020A($a2)           ## 0000020A
glabel L80B5BAC0
/* 00310 80B5BAC0 14400008 */  bne     $v0, $zero, .L80B5BAE4     
/* 00314 80B5BAC4 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 00318 80B5BAC8 A0CF020B */  sb      $t7, 0x020B($a2)           ## 0000020B
/* 0031C 80B5BACC 10000005 */  beq     $zero, $zero, .L80B5BAE4   
/* 00320 80B5BAD0 A0CF020A */  sb      $t7, 0x020A($a2)           ## 0000020A
glabel L80B5BAD4
/* 00324 80B5BAD4 28410003 */  slti    $at, $v0, 0x0003           
/* 00328 80B5BAD8 54200003 */  bnel    $at, $zero, .L80B5BAE8     
/* 0032C 80B5BADC 90C2020E */  lbu     $v0, 0x020E($a2)           ## 0000020E
/* 00330 80B5BAE0 A4C00210 */  sh      $zero, 0x0210($a2)         ## 00000210
.L80B5BAE4:
/* 00334 80B5BAE4 90C2020E */  lbu     $v0, 0x020E($a2)           ## 0000020E
.L80B5BAE8:
/* 00338 80B5BAE8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0033C 80B5BAEC 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00340 80B5BAF0 10410008 */  beq     $v0, $at, .L80B5BB14       
/* 00344 80B5BAF4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00348 80B5BAF8 10410008 */  beq     $v0, $at, .L80B5BB1C       
/* 0034C 80B5BAFC 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 00350 80B5BB00 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00354 80B5BB04 10410007 */  beq     $v0, $at, .L80B5BB24       
/* 00358 80B5BB08 24080003 */  addiu   $t0, $zero, 0x0003         ## $t0 = 00000003
/* 0035C 80B5BB0C 10000006 */  beq     $zero, $zero, .L80B5BB28   
/* 00360 80B5BB10 A0C0020C */  sb      $zero, 0x020C($a2)         ## 0000020C
.L80B5BB14:
/* 00364 80B5BB14 10000004 */  beq     $zero, $zero, .L80B5BB28   
/* 00368 80B5BB18 A0D8020C */  sb      $t8, 0x020C($a2)           ## 0000020C
.L80B5BB1C:
/* 0036C 80B5BB1C 10000002 */  beq     $zero, $zero, .L80B5BB28   
/* 00370 80B5BB20 A0D9020C */  sb      $t9, 0x020C($a2)           ## 0000020C
.L80B5BB24:
/* 00374 80B5BB24 A0C8020C */  sb      $t0, 0x020C($a2)           ## 0000020C
.L80B5BB28:
/* 00378 80B5BB28 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0037C 80B5BB2C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00380 80B5BB30 03E00008 */  jr      $ra                        
/* 00384 80B5BB34 00000000 */  nop


