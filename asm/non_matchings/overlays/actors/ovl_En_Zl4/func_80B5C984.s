.late_rodata
glabel jtbl_80B5FC10
.word L80B5C9C0
.word L80B5C9E4
.word L80B5CA68
.word L80B5CA88
.word L80B5CAE0
.word L80B5CB10
.word L80B5CB70
.word L80B5CBAC
.word L80B5CC08
.word L80B5CC28
.word L80B5CC64
.word L80B5CD18
.word L80B5CD84
.word L80B5CDCC
.word L80B5CE30
.word L80B5CE5C
.word L80B5CE98
.word L80B5CED4

.text
glabel func_80B5C984
/* 011D4 80B5C984 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 011D8 80B5C988 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 011DC 80B5C98C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 011E0 80B5C990 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 011E4 80B5C994 908E0208 */  lbu     $t6, 0x0208($a0)           ## 00000208
/* 011E8 80B5C998 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 011EC 80B5C99C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 011F0 80B5C9A0 2DC10012 */  sltiu   $at, $t6, 0x0012           
/* 011F4 80B5C9A4 10200164 */  beq     $at, $zero, .L80B5CF38     
/* 011F8 80B5C9A8 000E7080 */  sll     $t6, $t6,  2               
/* 011FC 80B5C9AC 3C0180B6 */  lui     $at, %hi(jtbl_80B5FC10)       ## $at = 80B60000
/* 01200 80B5C9B0 002E0821 */  addu    $at, $at, $t6              
/* 01204 80B5C9B4 8C2EFC10 */  lw      $t6, %lo(jtbl_80B5FC10)($at)  
/* 01208 80B5C9B8 01C00008 */  jr      $t6                        
/* 0120C 80B5C9BC 00000000 */  nop
glabel L80B5C9C0
/* 01210 80B5C9C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01214 80B5C9C4 0C2D6FE4 */  jal     func_80B5BF90              
/* 01218 80B5C9C8 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 0121C 80B5C9CC 5040015B */  beql    $v0, $zero, .L80B5CF3C     
/* 01220 80B5C9D0 86020214 */  lh      $v0, 0x0214($s0)           ## 00000214
/* 01224 80B5C9D4 920F0208 */  lbu     $t7, 0x0208($s0)           ## 00000208
/* 01228 80B5C9D8 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 0122C 80B5C9DC 10000156 */  beq     $zero, $zero, .L80B5CF38   
/* 01230 80B5C9E0 A2180208 */  sb      $t8, 0x0208($s0)           ## 00000208
glabel L80B5C9E4
/* 01234 80B5C9E4 0C042F6F */  jal     func_8010BDBC              
/* 01238 80B5C9E8 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 0123C 80B5C9EC 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01240 80B5C9F0 54410152 */  bnel    $v0, $at, .L80B5CF3C       
/* 01244 80B5C9F4 86020214 */  lh      $v0, 0x0214($s0)           ## 00000214
/* 01248 80B5C9F8 0C041AF2 */  jal     func_80106BC8              
/* 0124C 80B5C9FC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01250 80B5CA00 1040014D */  beq     $v0, $zero, .L80B5CF38     
/* 01254 80B5CA04 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01258 80B5CA08 0C2D6DEC */  jal     func_80B5B7B0              
/* 0125C 80B5CA0C 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 01260 80B5CA10 3C0580B6 */  lui     $a1, %hi(D_80B5E7B8)       ## $a1 = 80B60000
/* 01264 80B5CA14 24A5E7B8 */  addiu   $a1, $a1, %lo(D_80B5E7B8)  ## $a1 = 80B5E7B8
/* 01268 80B5CA18 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0126C 80B5CA1C 0C00D3B0 */  jal     func_80034EC0              
/* 01270 80B5CA20 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01274 80B5CA24 2419000B */  addiu   $t9, $zero, 0x000B         ## $t9 = 0000000B
/* 01278 80B5CA28 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 0127C 80B5CA2C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01280 80B5CA30 A6190210 */  sh      $t9, 0x0210($s0)           ## 00000210
/* 01284 80B5CA34 A208020D */  sb      $t0, 0x020D($s0)           ## 0000020D
/* 01288 80B5CA38 A200020E */  sb      $zero, 0x020E($s0)         ## 0000020E
/* 0128C 80B5CA3C 00310821 */  addu    $at, $at, $s1              
/* 01290 80B5CA40 24090037 */  addiu   $t1, $zero, 0x0037         ## $t1 = 00000037
/* 01294 80B5CA44 A02903DC */  sb      $t1, 0x03DC($at)           ## 000103DC
/* 01298 80B5CA48 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0129C 80B5CA4C 240570FF */  addiu   $a1, $zero, 0x70FF         ## $a1 = 000070FF
/* 012A0 80B5CA50 0C042DA0 */  jal     func_8010B680              
/* 012A4 80B5CA54 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 012A8 80B5CA58 920A0208 */  lbu     $t2, 0x0208($s0)           ## 00000208
/* 012AC 80B5CA5C 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 012B0 80B5CA60 10000135 */  beq     $zero, $zero, .L80B5CF38   
/* 012B4 80B5CA64 A20B0208 */  sb      $t3, 0x0208($s0)           ## 00000208
glabel L80B5CA68
/* 012B8 80B5CA68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012BC 80B5CA6C 0C2D6FE4 */  jal     func_80B5BF90              
/* 012C0 80B5CA70 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 012C4 80B5CA74 10400004 */  beq     $v0, $zero, .L80B5CA88     
/* 012C8 80B5CA78 00000000 */  nop
/* 012CC 80B5CA7C 920C0208 */  lbu     $t4, 0x0208($s0)           ## 00000208
/* 012D0 80B5CA80 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 012D4 80B5CA84 A20D0208 */  sb      $t5, 0x0208($s0)           ## 00000208
glabel L80B5CA88
.L80B5CA88:
/* 012D8 80B5CA88 0C042F6F */  jal     func_8010BDBC              
/* 012DC 80B5CA8C 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 012E0 80B5CA90 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 012E4 80B5CA94 54410129 */  bnel    $v0, $at, .L80B5CF3C       
/* 012E8 80B5CA98 86020214 */  lh      $v0, 0x0214($s0)           ## 00000214
/* 012EC 80B5CA9C 0C041AF2 */  jal     func_80106BC8              
/* 012F0 80B5CAA0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 012F4 80B5CAA4 10400124 */  beq     $v0, $zero, .L80B5CF38     
/* 012F8 80B5CAA8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 012FC 80B5CAAC 3C0580B6 */  lui     $a1, %hi(D_80B5E7B8)       ## $a1 = 80B60000
/* 01300 80B5CAB0 24A5E7B8 */  addiu   $a1, $a1, %lo(D_80B5E7B8)  ## $a1 = 80B5E7B8
/* 01304 80B5CAB4 0C00D3B0 */  jal     func_80034EC0              
/* 01308 80B5CAB8 24060010 */  addiu   $a2, $zero, 0x0010         ## $a2 = 00000010
/* 0130C 80B5CABC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01310 80B5CAC0 A6000210 */  sh      $zero, 0x0210($s0)         ## 00000210
/* 01314 80B5CAC4 A200020D */  sb      $zero, 0x020D($s0)         ## 0000020D
/* 01318 80B5CAC8 00310821 */  addu    $at, $at, $s1              
/* 0131C 80B5CACC 240E0037 */  addiu   $t6, $zero, 0x0037         ## $t6 = 00000037
/* 01320 80B5CAD0 A02E03DC */  sb      $t6, 0x03DC($at)           ## 000103DC
/* 01324 80B5CAD4 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 01328 80B5CAD8 10000117 */  beq     $zero, $zero, .L80B5CF38   
/* 0132C 80B5CADC A20F0208 */  sb      $t7, 0x0208($s0)           ## 00000208
glabel L80B5CAE0
/* 01330 80B5CAE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01334 80B5CAE4 0C2D6FE4 */  jal     func_80B5BF90              
/* 01338 80B5CAE8 24050011 */  addiu   $a1, $zero, 0x0011         ## $a1 = 00000011
/* 0133C 80B5CAEC 10400112 */  beq     $v0, $zero, .L80B5CF38     
/* 01340 80B5CAF0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01344 80B5CAF4 24052073 */  addiu   $a1, $zero, 0x2073         ## $a1 = 00002073
/* 01348 80B5CAF8 0C042DA0 */  jal     func_8010B680              
/* 0134C 80B5CAFC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01350 80B5CB00 92180208 */  lbu     $t8, 0x0208($s0)           ## 00000208
/* 01354 80B5CB04 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 01358 80B5CB08 1000010B */  beq     $zero, $zero, .L80B5CF38   
/* 0135C 80B5CB0C A2190208 */  sb      $t9, 0x0208($s0)           ## 00000208
glabel L80B5CB10
/* 01360 80B5CB10 0C042F6F */  jal     func_8010BDBC              
/* 01364 80B5CB14 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 01368 80B5CB18 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0136C 80B5CB1C 54410107 */  bnel    $v0, $at, .L80B5CF3C       
/* 01370 80B5CB20 86020214 */  lh      $v0, 0x0214($s0)           ## 00000214
/* 01374 80B5CB24 0C041AF2 */  jal     func_80106BC8              
/* 01378 80B5CB28 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0137C 80B5CB2C 10400102 */  beq     $v0, $zero, .L80B5CF38     
/* 01380 80B5CB30 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01384 80B5CB34 0C2D6E22 */  jal     func_80B5B888              
/* 01388 80B5CB38 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 0138C 80B5CB3C 3C0580B6 */  lui     $a1, %hi(D_80B5E7B8)       ## $a1 = 80B60000
/* 01390 80B5CB40 24A5E7B8 */  addiu   $a1, $a1, %lo(D_80B5E7B8)  ## $a1 = 80B5E7B8
/* 01394 80B5CB44 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01398 80B5CB48 0C00D3B0 */  jal     func_80034EC0              
/* 0139C 80B5CB4C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 013A0 80B5CB50 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 013A4 80B5CB54 00310821 */  addu    $at, $at, $s1              
/* 013A8 80B5CB58 24080037 */  addiu   $t0, $zero, 0x0037         ## $t0 = 00000037
/* 013AC 80B5CB5C A02803DC */  sb      $t0, 0x03DC($at)           ## 000103DC
/* 013B0 80B5CB60 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
/* 013B4 80B5CB64 A6000214 */  sh      $zero, 0x0214($s0)         ## 00000214
/* 013B8 80B5CB68 100000F3 */  beq     $zero, $zero, .L80B5CF38   
/* 013BC 80B5CB6C A2090208 */  sb      $t1, 0x0208($s0)           ## 00000208
glabel L80B5CB70
/* 013C0 80B5CB70 860A0214 */  lh      $t2, 0x0214($s0)           ## 00000214
/* 013C4 80B5CB74 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 013C8 80B5CB78 24052074 */  addiu   $a1, $zero, 0x2074         ## $a1 = 00002074
/* 013CC 80B5CB7C 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 013D0 80B5CB80 A60B0214 */  sh      $t3, 0x0214($s0)           ## 00000214
/* 013D4 80B5CB84 860C0214 */  lh      $t4, 0x0214($s0)           ## 00000214
/* 013D8 80B5CB88 2981000F */  slti    $at, $t4, 0x000F           
/* 013DC 80B5CB8C 542000EB */  bnel    $at, $zero, .L80B5CF3C     
/* 013E0 80B5CB90 86020214 */  lh      $v0, 0x0214($s0)           ## 00000214
/* 013E4 80B5CB94 0C042DA0 */  jal     func_8010B680              
/* 013E8 80B5CB98 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 013EC 80B5CB9C 920D0208 */  lbu     $t5, 0x0208($s0)           ## 00000208
/* 013F0 80B5CBA0 25AE0001 */  addiu   $t6, $t5, 0x0001           ## $t6 = 00000001
/* 013F4 80B5CBA4 100000E4 */  beq     $zero, $zero, .L80B5CF38   
/* 013F8 80B5CBA8 A20E0208 */  sb      $t6, 0x0208($s0)           ## 00000208
glabel L80B5CBAC
/* 013FC 80B5CBAC 0C042F6F */  jal     func_8010BDBC              
/* 01400 80B5CBB0 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 01404 80B5CBB4 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01408 80B5CBB8 544100E0 */  bnel    $v0, $at, .L80B5CF3C       
/* 0140C 80B5CBBC 86020214 */  lh      $v0, 0x0214($s0)           ## 00000214
/* 01410 80B5CBC0 0C041AF2 */  jal     func_80106BC8              
/* 01414 80B5CBC4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01418 80B5CBC8 104000DB */  beq     $v0, $zero, .L80B5CF38     
/* 0141C 80B5CBCC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01420 80B5CBD0 3C0580B6 */  lui     $a1, %hi(D_80B5E7B8)       ## $a1 = 80B60000
/* 01424 80B5CBD4 24A5E7B8 */  addiu   $a1, $a1, %lo(D_80B5E7B8)  ## $a1 = 80B5E7B8
/* 01428 80B5CBD8 0C00D3B0 */  jal     func_80034EC0              
/* 0142C 80B5CBDC 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 01430 80B5CBE0 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01434 80B5CBE4 A20F020E */  sb      $t7, 0x020E($s0)           ## 0000020E
/* 01438 80B5CBE8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0143C 80B5CBEC 24052075 */  addiu   $a1, $zero, 0x2075         ## $a1 = 00002075
/* 01440 80B5CBF0 0C042DA0 */  jal     func_8010B680              
/* 01444 80B5CBF4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01448 80B5CBF8 92180208 */  lbu     $t8, 0x0208($s0)           ## 00000208
/* 0144C 80B5CBFC 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 01450 80B5CC00 100000CD */  beq     $zero, $zero, .L80B5CF38   
/* 01454 80B5CC04 A2190208 */  sb      $t9, 0x0208($s0)           ## 00000208
glabel L80B5CC08
/* 01458 80B5CC08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0145C 80B5CC0C 0C2D6FE4 */  jal     func_80B5BF90              
/* 01460 80B5CC10 24050019 */  addiu   $a1, $zero, 0x0019         ## $a1 = 00000019
/* 01464 80B5CC14 10400004 */  beq     $v0, $zero, .L80B5CC28     
/* 01468 80B5CC18 00000000 */  nop
/* 0146C 80B5CC1C 92080208 */  lbu     $t0, 0x0208($s0)           ## 00000208
/* 01470 80B5CC20 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 01474 80B5CC24 A2090208 */  sb      $t1, 0x0208($s0)           ## 00000208
glabel L80B5CC28
.L80B5CC28:
/* 01478 80B5CC28 0C042F6F */  jal     func_8010BDBC              
/* 0147C 80B5CC2C 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 01480 80B5CC30 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01484 80B5CC34 544100C1 */  bnel    $v0, $at, .L80B5CF3C       
/* 01488 80B5CC38 86020214 */  lh      $v0, 0x0214($s0)           ## 00000214
/* 0148C 80B5CC3C 0C041AF2 */  jal     func_80106BC8              
/* 01490 80B5CC40 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01494 80B5CC44 104000BC */  beq     $v0, $zero, .L80B5CF38     
/* 01498 80B5CC48 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0149C 80B5CC4C 24057033 */  addiu   $a1, $zero, 0x7033         ## $a1 = 00007033
/* 014A0 80B5CC50 0C042DA0 */  jal     func_8010B680              
/* 014A4 80B5CC54 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 014A8 80B5CC58 240A000A */  addiu   $t2, $zero, 0x000A         ## $t2 = 0000000A
/* 014AC 80B5CC5C 100000B6 */  beq     $zero, $zero, .L80B5CF38   
/* 014B0 80B5CC60 A20A0208 */  sb      $t2, 0x0208($s0)           ## 00000208
glabel L80B5CC64
/* 014B4 80B5CC64 0C042F6F */  jal     func_8010BDBC              
/* 014B8 80B5CC68 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 014BC 80B5CC6C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 014C0 80B5CC70 544100B2 */  bnel    $v0, $at, .L80B5CF3C       
/* 014C4 80B5CC74 86020214 */  lh      $v0, 0x0214($s0)           ## 00000214
/* 014C8 80B5CC78 0C041AF2 */  jal     func_80106BC8              
/* 014CC 80B5CC7C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 014D0 80B5CC80 104000AD */  beq     $v0, $zero, .L80B5CF38     
/* 014D4 80B5CC84 3C0B0001 */  lui     $t3, 0x0001                ## $t3 = 00010000
/* 014D8 80B5CC88 01715821 */  addu    $t3, $t3, $s1              
/* 014DC 80B5CC8C 916B04BD */  lbu     $t3, 0x04BD($t3)           ## 000104BD
/* 014E0 80B5CC90 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 014E4 80B5CC94 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 014E8 80B5CC98 15600011 */  bne     $t3, $zero, .L80B5CCE0     
/* 014EC 80B5CC9C 00000000 */  nop
/* 014F0 80B5CCA0 0C2D6E22 */  jal     func_80B5B888              
/* 014F4 80B5CCA4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 014F8 80B5CCA8 3C0580B6 */  lui     $a1, %hi(D_80B5E7B8)       ## $a1 = 80B60000
/* 014FC 80B5CCAC 24A5E7B8 */  addiu   $a1, $a1, %lo(D_80B5E7B8)  ## $a1 = 80B5E7B8
/* 01500 80B5CCB0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01504 80B5CCB4 0C00D3B0 */  jal     func_80034EC0              
/* 01508 80B5CCB8 24060021 */  addiu   $a2, $zero, 0x0021         ## $a2 = 00000021
/* 0150C 80B5CCBC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01510 80B5CCC0 A200020E */  sb      $zero, 0x020E($s0)         ## 0000020E
/* 01514 80B5CCC4 00310821 */  addu    $at, $at, $s1              
/* 01518 80B5CCC8 240C0037 */  addiu   $t4, $zero, 0x0037         ## $t4 = 00000037
/* 0151C 80B5CCCC A02C03DC */  sb      $t4, 0x03DC($at)           ## 000103DC
/* 01520 80B5CCD0 240D000F */  addiu   $t5, $zero, 0x000F         ## $t5 = 0000000F
/* 01524 80B5CCD4 A6000214 */  sh      $zero, 0x0214($s0)         ## 00000214
/* 01528 80B5CCD8 10000097 */  beq     $zero, $zero, .L80B5CF38   
/* 0152C 80B5CCDC A20D0208 */  sb      $t5, 0x0208($s0)           ## 00000208
.L80B5CCE0:
/* 01530 80B5CCE0 0C2D6DEC */  jal     func_80B5B7B0              
/* 01534 80B5CCE4 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 01538 80B5CCE8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0153C 80B5CCEC 00310821 */  addu    $at, $at, $s1              
/* 01540 80B5CCF0 240E0037 */  addiu   $t6, $zero, 0x0037         ## $t6 = 00000037
/* 01544 80B5CCF4 A02E03DC */  sb      $t6, 0x03DC($at)           ## 000103DC
/* 01548 80B5CCF8 92180208 */  lbu     $t8, 0x0208($s0)           ## 00000208
/* 0154C 80B5CCFC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01550 80B5CD00 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 01554 80B5CD04 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 01558 80B5CD08 A60F0212 */  sh      $t7, 0x0212($s0)           ## 00000212
/* 0155C 80B5CD0C A2190208 */  sb      $t9, 0x0208($s0)           ## 00000208
/* 01560 80B5CD10 10000089 */  beq     $zero, $zero, .L80B5CF38   
/* 01564 80B5CD14 E6040168 */  swc1    $f4, 0x0168($s0)           ## 00000168
glabel L80B5CD18
/* 01568 80B5CD18 86020212 */  lh      $v0, 0x0212($s0)           ## 00000212
/* 0156C 80B5CD1C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01570 80B5CD20 3C0580B6 */  lui     $a1, %hi(D_80B5E7B8)       ## $a1 = 80B60000
/* 01574 80B5CD24 14400003 */  bne     $v0, $zero, .L80B5CD34     
/* 01578 80B5CD28 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 0157C 80B5CD2C 10000003 */  beq     $zero, $zero, .L80B5CD3C   
/* 01580 80B5CD30 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80B5CD34:
/* 01584 80B5CD34 A6080212 */  sh      $t0, 0x0212($s0)           ## 00000212
/* 01588 80B5CD38 86030212 */  lh      $v1, 0x0212($s0)           ## 00000212
.L80B5CD3C:
/* 0158C 80B5CD3C 1460007E */  bne     $v1, $zero, .L80B5CF38     
/* 01590 80B5CD40 24A5E7B8 */  addiu   $a1, $a1, %lo(D_80B5E7B8)  ## $a1 = 80B5E7B8
/* 01594 80B5CD44 0C00D3B0 */  jal     func_80034EC0              
/* 01598 80B5CD48 2406000B */  addiu   $a2, $zero, 0x000B         ## $a2 = 0000000B
/* 0159C 80B5CD4C 2409000B */  addiu   $t1, $zero, 0x000B         ## $t1 = 0000000B
/* 015A0 80B5CD50 240A0003 */  addiu   $t2, $zero, 0x0003         ## $t2 = 00000003
/* 015A4 80B5CD54 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 015A8 80B5CD58 A6090210 */  sh      $t1, 0x0210($s0)           ## 00000210
/* 015AC 80B5CD5C A20A020D */  sb      $t2, 0x020D($s0)           ## 0000020D
/* 015B0 80B5CD60 A20B020E */  sb      $t3, 0x020E($s0)           ## 0000020E
/* 015B4 80B5CD64 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 015B8 80B5CD68 24057034 */  addiu   $a1, $zero, 0x7034         ## $a1 = 00007034
/* 015BC 80B5CD6C 0C042DA0 */  jal     func_8010B680              
/* 015C0 80B5CD70 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 015C4 80B5CD74 920C0208 */  lbu     $t4, 0x0208($s0)           ## 00000208
/* 015C8 80B5CD78 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 015CC 80B5CD7C 1000006E */  beq     $zero, $zero, .L80B5CF38   
/* 015D0 80B5CD80 A20D0208 */  sb      $t5, 0x0208($s0)           ## 00000208
glabel L80B5CD84
/* 015D4 80B5CD84 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 015D8 80B5CD88 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 015DC 80B5CD8C C6080164 */  lwc1    $f8, 0x0164($s0)           ## 00000164
/* 015E0 80B5CD90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015E4 80B5CD94 46083032 */  c.eq.s  $f6, $f8                   
/* 015E8 80B5CD98 00000000 */  nop
/* 015EC 80B5CD9C 45020004 */  bc1fl   .L80B5CDB0                 
/* 015F0 80B5CDA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015F4 80B5CDA4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 015F8 80B5CDA8 2405686C */  addiu   $a1, $zero, 0x686C         ## $a1 = 0000686C
/* 015FC 80B5CDAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B5CDB0:
/* 01600 80B5CDB0 0C2D6FE4 */  jal     func_80B5BF90              
/* 01604 80B5CDB4 2405000C */  addiu   $a1, $zero, 0x000C         ## $a1 = 0000000C
/* 01608 80B5CDB8 10400004 */  beq     $v0, $zero, .L80B5CDCC     
/* 0160C 80B5CDBC 00000000 */  nop
/* 01610 80B5CDC0 920E0208 */  lbu     $t6, 0x0208($s0)           ## 00000208
/* 01614 80B5CDC4 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 01618 80B5CDC8 A20F0208 */  sb      $t7, 0x0208($s0)           ## 00000208
glabel L80B5CDCC
.L80B5CDCC:
/* 0161C 80B5CDCC 0C042F6F */  jal     func_8010BDBC              
/* 01620 80B5CDD0 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 01624 80B5CDD4 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01628 80B5CDD8 54410058 */  bnel    $v0, $at, .L80B5CF3C       
/* 0162C 80B5CDDC 86020214 */  lh      $v0, 0x0214($s0)           ## 00000214
/* 01630 80B5CDE0 0C041AF2 */  jal     func_80106BC8              
/* 01634 80B5CDE4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01638 80B5CDE8 10400053 */  beq     $v0, $zero, .L80B5CF38     
/* 0163C 80B5CDEC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01640 80B5CDF0 3C0580B6 */  lui     $a1, %hi(D_80B5E7B8)       ## $a1 = 80B60000
/* 01644 80B5CDF4 24A5E7B8 */  addiu   $a1, $a1, %lo(D_80B5E7B8)  ## $a1 = 80B5E7B8
/* 01648 80B5CDF8 0C00D3B0 */  jal     func_80034EC0              
/* 0164C 80B5CDFC 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 01650 80B5CE00 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 01654 80B5CE04 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 01658 80B5CE08 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0165C 80B5CE0C A6180210 */  sh      $t8, 0x0210($s0)           ## 00000210
/* 01660 80B5CE10 A200020D */  sb      $zero, 0x020D($s0)         ## 0000020D
/* 01664 80B5CE14 A219020E */  sb      $t9, 0x020E($s0)           ## 0000020E
/* 01668 80B5CE18 00310821 */  addu    $at, $at, $s1              
/* 0166C 80B5CE1C 24080037 */  addiu   $t0, $zero, 0x0037         ## $t0 = 00000037
/* 01670 80B5CE20 A02803DC */  sb      $t0, 0x03DC($at)           ## 000103DC
/* 01674 80B5CE24 2409000E */  addiu   $t1, $zero, 0x000E         ## $t1 = 0000000E
/* 01678 80B5CE28 10000043 */  beq     $zero, $zero, .L80B5CF38   
/* 0167C 80B5CE2C A2090208 */  sb      $t1, 0x0208($s0)           ## 00000208
glabel L80B5CE30
/* 01680 80B5CE30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01684 80B5CE34 0C2D6FE4 */  jal     func_80B5BF90              
/* 01688 80B5CE38 24050019 */  addiu   $a1, $zero, 0x0019         ## $a1 = 00000019
/* 0168C 80B5CE3C 1040003E */  beq     $v0, $zero, .L80B5CF38     
/* 01690 80B5CE40 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01694 80B5CE44 24057033 */  addiu   $a1, $zero, 0x7033         ## $a1 = 00007033
/* 01698 80B5CE48 0C042DA0 */  jal     func_8010B680              
/* 0169C 80B5CE4C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 016A0 80B5CE50 240A000A */  addiu   $t2, $zero, 0x000A         ## $t2 = 0000000A
/* 016A4 80B5CE54 10000038 */  beq     $zero, $zero, .L80B5CF38   
/* 016A8 80B5CE58 A20A0208 */  sb      $t2, 0x0208($s0)           ## 00000208
glabel L80B5CE5C
/* 016AC 80B5CE5C 860B0214 */  lh      $t3, 0x0214($s0)           ## 00000214
/* 016B0 80B5CE60 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 016B4 80B5CE64 24057035 */  addiu   $a1, $zero, 0x7035         ## $a1 = 00007035
/* 016B8 80B5CE68 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 016BC 80B5CE6C A60C0214 */  sh      $t4, 0x0214($s0)           ## 00000214
/* 016C0 80B5CE70 860D0214 */  lh      $t5, 0x0214($s0)           ## 00000214
/* 016C4 80B5CE74 29A1001E */  slti    $at, $t5, 0x001E           
/* 016C8 80B5CE78 54200030 */  bnel    $at, $zero, .L80B5CF3C     
/* 016CC 80B5CE7C 86020214 */  lh      $v0, 0x0214($s0)           ## 00000214
/* 016D0 80B5CE80 0C042DA0 */  jal     func_8010B680              
/* 016D4 80B5CE84 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 016D8 80B5CE88 920E0208 */  lbu     $t6, 0x0208($s0)           ## 00000208
/* 016DC 80B5CE8C 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 016E0 80B5CE90 10000029 */  beq     $zero, $zero, .L80B5CF38   
/* 016E4 80B5CE94 A20F0208 */  sb      $t7, 0x0208($s0)           ## 00000208
glabel L80B5CE98
/* 016E8 80B5CE98 0C042F6F */  jal     func_8010BDBC              
/* 016EC 80B5CE9C 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 016F0 80B5CEA0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 016F4 80B5CEA4 5441000C */  bnel    $v0, $at, .L80B5CED8       
/* 016F8 80B5CEA8 86090214 */  lh      $t1, 0x0214($s0)           ## 00000214
/* 016FC 80B5CEAC 0C041AF2 */  jal     func_80106BC8              
/* 01700 80B5CEB0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01704 80B5CEB4 10400007 */  beq     $v0, $zero, .L80B5CED4     
/* 01708 80B5CEB8 24180037 */  addiu   $t8, $zero, 0x0037         ## $t8 = 00000037
/* 0170C 80B5CEBC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01710 80B5CEC0 00310821 */  addu    $at, $at, $s1              
/* 01714 80B5CEC4 A03803DC */  sb      $t8, 0x03DC($at)           ## 000103DC
/* 01718 80B5CEC8 92190208 */  lbu     $t9, 0x0208($s0)           ## 00000208
/* 0171C 80B5CECC 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 01720 80B5CED0 A2080208 */  sb      $t0, 0x0208($s0)           ## 00000208
glabel L80B5CED4
.L80B5CED4:
/* 01724 80B5CED4 86090214 */  lh      $t1, 0x0214($s0)           ## 00000214
.L80B5CED8:
/* 01728 80B5CED8 24010082 */  addiu   $at, $zero, 0x0082         ## $at = 00000082
/* 0172C 80B5CEDC 240C0037 */  addiu   $t4, $zero, 0x0037         ## $t4 = 00000037
/* 01730 80B5CEE0 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 01734 80B5CEE4 A60A0214 */  sh      $t2, 0x0214($s0)           ## 00000214
/* 01738 80B5CEE8 860B0214 */  lh      $t3, 0x0214($s0)           ## 00000214
/* 0173C 80B5CEEC 240D00A0 */  addiu   $t5, $zero, 0x00A0         ## $t5 = 000000A0
/* 01740 80B5CEF0 340EFFF7 */  ori     $t6, $zero, 0xFFF7         ## $t6 = 0000FFF7
/* 01744 80B5CEF4 15610010 */  bne     $t3, $at, .L80B5CF38       
/* 01748 80B5CEF8 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 0174C 80B5CEFC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01750 80B5CF00 00310821 */  addu    $at, $at, $s1              
/* 01754 80B5CF04 A02C03DC */  sb      $t4, 0x03DC($at)           ## 000103DC
/* 01758 80B5CF08 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0175C 80B5CF0C 00310821 */  addu    $at, $at, $s1              
/* 01760 80B5CF10 A42D1E1A */  sh      $t5, 0x1E1A($at)           ## 00011E1A
/* 01764 80B5CF14 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 01768 80B5CF18 A42EFA72 */  sh      $t6, -0x058E($at)          ## 8015FA72
/* 0176C 80B5CF1C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01770 80B5CF20 00310821 */  addu    $at, $at, $s1              
/* 01774 80B5CF24 A02F1E15 */  sb      $t7, 0x1E15($at)           ## 00011E15
/* 01778 80B5CF28 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0177C 80B5CF2C 00310821 */  addu    $at, $at, $s1              
/* 01780 80B5CF30 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 01784 80B5CF34 A0381E5E */  sb      $t8, 0x1E5E($at)           ## 00011E5E
.L80B5CF38:
/* 01788 80B5CF38 86020214 */  lh      $v0, 0x0214($s0)           ## 00000214
.L80B5CF3C:
/* 0178C 80B5CF3C 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 01790 80B5CF40 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01794 80B5CF44 14410005 */  bne     $v0, $at, .L80B5CF5C       
/* 01798 80B5CF48 28410083 */  slti    $at, $v0, 0x0083           
/* 0179C 80B5CF4C 54200004 */  bnel    $at, $zero, .L80B5CF60     
/* 017A0 80B5CF50 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 017A4 80B5CF54 10000002 */  beq     $zero, $zero, .L80B5CF60   
/* 017A8 80B5CF58 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B5CF5C:
/* 017AC 80B5CF5C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B5CF60:
/* 017B0 80B5CF60 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 017B4 80B5CF64 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 017B8 80B5CF68 03E00008 */  jr      $ra                        
/* 017BC 80B5CF6C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
