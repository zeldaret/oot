glabel func_80B7825C
/* 0E8BC 80B7825C 27BDFED8 */  addiu   $sp, $sp, 0xFED8           ## $sp = FFFFFED8
/* 0E8C0 80B78260 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0E8C4 80B78264 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0E8C8 80B78268 AFA40128 */  sw      $a0, 0x0128($sp)           
/* 0E8CC 80B7826C 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 0E8D0 80B78270 3C0180B8 */  lui     $at, %hi(D_80B7B82C)       ## $at = 80B80000
/* 0E8D4 80B78274 C42AB82C */  lwc1    $f10, %lo(D_80B7B82C)($at) 
/* 0E8D8 80B78278 904E00C8 */  lbu     $t6, 0x00C8($v0)           ## 000000C8
/* 0E8DC 80B7827C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0E8E0 80B78280 240500C8 */  addiu   $a1, $zero, 0x00C8         ## $a1 = 000000C8
/* 0E8E4 80B78284 A7AE00F8 */  sh      $t6, 0x00F8($sp)           
/* 0E8E8 80B78288 C4400024 */  lwc1    $f0, 0x0024($v0)           ## 00000024
/* 0E8EC 80B7828C C442002C */  lwc1    $f2, 0x002C($v0)           ## 0000002C
/* 0E8F0 80B78290 27A400F8 */  addiu   $a0, $sp, 0x00F8           ## $a0 = FFFFFFD0
/* 0E8F4 80B78294 46000102 */  mul.s   $f4, $f0, $f0              
/* 0E8F8 80B78298 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0E8FC 80B7829C 24070028 */  addiu   $a3, $zero, 0x0028         ## $a3 = 00000028
/* 0E900 80B782A0 46021182 */  mul.s   $f6, $f2, $f2              
/* 0E904 80B782A4 46062200 */  add.s   $f8, $f4, $f6              
/* 0E908 80B782A8 460A403C */  c.lt.s  $f8, $f10                  
/* 0E90C 80B782AC 00000000 */  nop
/* 0E910 80B782B0 45000009 */  bc1f    .L80B782D8                 
/* 0E914 80B782B4 00000000 */  nop
/* 0E918 80B782B8 27A400F8 */  addiu   $a0, $sp, 0x00F8           ## $a0 = FFFFFFD0
/* 0E91C 80B782BC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0E920 80B782C0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0E924 80B782C4 24070028 */  addiu   $a3, $zero, 0x0028         ## $a3 = 00000028
/* 0E928 80B782C8 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 0E92C 80B782CC AFA200E4 */  sw      $v0, 0x00E4($sp)           
/* 0E930 80B782D0 10000004 */  beq     $zero, $zero, .L80B782E4   
/* 0E934 80B782D4 87AF00F8 */  lh      $t7, 0x00F8($sp)           
.L80B782D8:
/* 0E938 80B782D8 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 0E93C 80B782DC AFA200E4 */  sw      $v0, 0x00E4($sp)           
/* 0E940 80B782E0 87AF00F8 */  lh      $t7, 0x00F8($sp)           
.L80B782E4:
/* 0E944 80B782E4 8FB800E4 */  lw      $t8, 0x00E4($sp)           
/* 0E948 80B782E8 A30F00C8 */  sb      $t7, 0x00C8($t8)           ## 000000C8
/* 0E94C 80B782EC 8FA40128 */  lw      $a0, 0x0128($sp)           
/* 0E950 80B782F0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0E954 80B782F4 248401D8 */  addiu   $a0, $a0, 0x01D8           ## $a0 = 000001D8
/* 0E958 80B782F8 3C1980B8 */  lui     $t9, %hi(D_80B7A684)       ## $t9 = 80B80000
/* 0E95C 80B782FC 8739A684 */  lh      $t9, %lo(D_80B7A684)($t9)  
/* 0E960 80B78300 57200006 */  bnel    $t9, $zero, .L80B7831C     
/* 0E964 80B78304 8FA20128 */  lw      $v0, 0x0128($sp)           
/* 0E968 80B78308 0C042F6F */  jal     func_8010BDBC              
/* 0E96C 80B7830C 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 0E970 80B78310 10400007 */  beq     $v0, $zero, .L80B78330     
/* 0E974 80B78314 8FAB0128 */  lw      $t3, 0x0128($sp)           
/* 0E978 80B78318 8FA20128 */  lw      $v0, 0x0128($sp)           
.L80B7831C:
/* 0E97C 80B7831C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 0E980 80B78320 8C490004 */  lw      $t1, 0x0004($v0)           ## 00000004
/* 0E984 80B78324 01215024 */  and     $t2, $t1, $at              
/* 0E988 80B78328 10000005 */  beq     $zero, $zero, .L80B78340   
/* 0E98C 80B7832C AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
.L80B78330:
/* 0E990 80B78330 8D6C0004 */  lw      $t4, 0x0004($t3)           ## 00000004
/* 0E994 80B78334 358D0021 */  ori     $t5, $t4, 0x0021           ## $t5 = 00000021
/* 0E998 80B78338 AD6D0004 */  sw      $t5, 0x0004($t3)           ## 00000004
/* 0E99C 80B7833C 8FA20128 */  lw      $v0, 0x0128($sp)           
.L80B78340:
/* 0E9A0 80B78340 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 0E9A4 80B78344 44813000 */  mtc1    $at, $f6                   ## $f6 = 120.00
/* 0E9A8 80B78348 C4440090 */  lwc1    $f4, 0x0090($v0)           ## 00000090
/* 0E9AC 80B7834C 4606203C */  c.lt.s  $f4, $f6                   
/* 0E9B0 80B78350 00000000 */  nop
/* 0E9B4 80B78354 45030007 */  bc1tl   .L80B78374                 
/* 0E9B8 80B78358 844E00B6 */  lh      $t6, 0x00B6($v0)           ## 000000B6
/* 0E9BC 80B7835C 0C042F6F */  jal     func_8010BDBC              
/* 0E9C0 80B78360 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 0E9C4 80B78364 10400008 */  beq     $v0, $zero, .L80B78388     
/* 0E9C8 80B78368 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0E9CC 80B7836C 8FA20128 */  lw      $v0, 0x0128($sp)           
/* 0E9D0 80B78370 844E00B6 */  lh      $t6, 0x00B6($v0)           ## 000000B6
.L80B78374:
/* 0E9D4 80B78374 844F008A */  lh      $t7, 0x008A($v0)           ## 0000008A
/* 0E9D8 80B78378 01CF2823 */  subu    $a1, $t6, $t7              
/* 0E9DC 80B7837C 00052C00 */  sll     $a1, $a1, 16               
/* 0E9E0 80B78380 10000002 */  beq     $zero, $zero, .L80B7838C   
/* 0E9E4 80B78384 00052C03 */  sra     $a1, $a1, 16               
.L80B78388:
/* 0E9E8 80B78388 8FA20128 */  lw      $v0, 0x0128($sp)           
.L80B7838C:
/* 0E9EC 80B7838C 28A12711 */  slti    $at, $a1, 0x2711           
/* 0E9F0 80B78390 14200003 */  bne     $at, $zero, .L80B783A0     
/* 0E9F4 80B78394 24440164 */  addiu   $a0, $v0, 0x0164           ## $a0 = 00000164
/* 0E9F8 80B78398 10000005 */  beq     $zero, $zero, .L80B783B0   
/* 0E9FC 80B7839C 24052710 */  addiu   $a1, $zero, 0x2710         ## $a1 = 00002710
.L80B783A0:
/* 0EA00 80B783A0 28A1D8F0 */  slti    $at, $a1, 0xD8F0           
/* 0EA04 80B783A4 50200003 */  beql    $at, $zero, .L80B783B4     
/* 0EA08 80B783A8 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 0EA0C 80B783AC 2405D8F0 */  addiu   $a1, $zero, 0xD8F0         ## $a1 = FFFFD8F0
.L80B783B0:
/* 0EA10 80B783B0 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
.L80B783B4:
/* 0EA14 80B783B4 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 0EA18 80B783B8 24071388 */  addiu   $a3, $zero, 0x1388         ## $a3 = 00001388
/* 0EA1C 80B783BC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0EA20 80B783C0 0201C021 */  addu    $t8, $s0, $at              
/* 0EA24 80B783C4 AFB80028 */  sw      $t8, 0x0028($sp)           
/* 0EA28 80B783C8 8F091DE4 */  lw      $t1, 0x1DE4($t8)           ## 00001DE4
/* 0EA2C 80B783CC 312A001F */  andi    $t2, $t1, 0x001F           ## $t2 = 00000000
/* 0EA30 80B783D0 5540000C */  bnel    $t2, $zero, .L80B78404     
/* 0EA34 80B783D4 8FAB0128 */  lw      $t3, 0x0128($sp)           
/* 0EA38 80B783D8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0EA3C 80B783DC 00000000 */  nop
/* 0EA40 80B783E0 3C0180B8 */  lui     $at, %hi(D_80B7B830)       ## $at = 80B80000
/* 0EA44 80B783E4 C428B830 */  lwc1    $f8, %lo(D_80B7B830)($at)  
/* 0EA48 80B783E8 8FAD0128 */  lw      $t5, 0x0128($sp)           
/* 0EA4C 80B783EC 4608003C */  c.lt.s  $f0, $f8                   
/* 0EA50 80B783F0 00000000 */  nop
/* 0EA54 80B783F4 45000002 */  bc1f    .L80B78400                 
/* 0EA58 80B783F8 240C0004 */  addiu   $t4, $zero, 0x0004         ## $t4 = 00000004
/* 0EA5C 80B783FC A5AC0162 */  sh      $t4, 0x0162($t5)           ## 00000162
.L80B78400:
/* 0EA60 80B78400 8FAB0128 */  lw      $t3, 0x0128($sp)           
.L80B78404:
/* 0EA64 80B78404 3C0F80B8 */  lui     $t7, %hi(D_80B7AFC4)       ## $t7 = 80B80000
/* 0EA68 80B78408 3C0380B8 */  lui     $v1, %hi(D_80B7A68C)       ## $v1 = 80B80000
/* 0EA6C 80B7840C 85620162 */  lh      $v0, 0x0162($t3)           ## 00000162
/* 0EA70 80B78410 2463A68C */  addiu   $v1, $v1, %lo(D_80B7A68C)  ## $v1 = 80B7A68C
/* 0EA74 80B78414 3C0180B8 */  lui     $at, %hi(D_80B7A684)       ## $at = 80B80000
/* 0EA78 80B78418 00027040 */  sll     $t6, $v0,  1               
/* 0EA7C 80B7841C 01EE7821 */  addu    $t7, $t7, $t6              
/* 0EA80 80B78420 85EFAFC4 */  lh      $t7, %lo(D_80B7AFC4)($t7)  
/* 0EA84 80B78424 3C0C80B8 */  lui     $t4, %hi(D_80B7E0B6)       ## $t4 = 80B80000
/* 0EA88 80B78428 10400004 */  beq     $v0, $zero, .L80B7843C     
/* 0EA8C 80B7842C A56F0160 */  sh      $t7, 0x0160($t3)           ## 00000160
/* 0EA90 80B78430 8FB90128 */  lw      $t9, 0x0128($sp)           
/* 0EA94 80B78434 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 0EA98 80B78438 A7380162 */  sh      $t8, 0x0162($t9)           ## 00000162
.L80B7843C:
/* 0EA9C 80B7843C 3C0280B8 */  lui     $v0, %hi(D_80B7A684)       ## $v0 = 80B80000
/* 0EAA0 80B78440 8442A684 */  lh      $v0, %lo(D_80B7A684)($v0)  
/* 0EAA4 80B78444 10400002 */  beq     $v0, $zero, .L80B78450     
/* 0EAA8 80B78448 2449FFFF */  addiu   $t1, $v0, 0xFFFF           ## $t1 = 80B7FFFF
/* 0EAAC 80B7844C A429A684 */  sh      $t1, %lo(D_80B7A684)($at)  
.L80B78450:
/* 0EAB0 80B78450 906A0000 */  lbu     $t2, 0x0000($v1)           ## 80B7A68C
/* 0EAB4 80B78454 1540003A */  bne     $t2, $zero, .L80B78540     
/* 0EAB8 80B78458 00000000 */  nop
/* 0EABC 80B7845C 918CE0B6 */  lbu     $t4, %lo(D_80B7E0B6)($t4)  
/* 0EAC0 80B78460 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0EAC4 80B78464 3C0D80B8 */  lui     $t5, %hi(D_80B7A694)       ## $t5 = 80B80000
/* 0EAC8 80B78468 11810035 */  beq     $t4, $at, .L80B78540       
/* 0EACC 80B7846C 00000000 */  nop
/* 0EAD0 80B78470 85ADA694 */  lh      $t5, %lo(D_80B7A694)($t5)  
/* 0EAD4 80B78474 3C0780B8 */  lui     $a3, %hi(D_80B7A688)       ## $a3 = 80B80000
/* 0EAD8 80B78478 24E7A688 */  addiu   $a3, $a3, %lo(D_80B7A688)  ## $a3 = 80B7A688
/* 0EADC 80B7847C 19A00030 */  blez    $t5, .L80B78540            
/* 0EAE0 80B78480 00000000 */  nop
/* 0EAE4 80B78484 90EE0000 */  lbu     $t6, 0x0000($a3)           ## 80B7A688
/* 0EAE8 80B78488 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0EAEC 80B7848C 3C0F80B8 */  lui     $t7, %hi(D_80B7A684)       ## $t7 = 80B80000
/* 0EAF0 80B78490 15C1002B */  bne     $t6, $at, .L80B78540       
/* 0EAF4 80B78494 00000000 */  nop
/* 0EAF8 80B78498 85EFA684 */  lh      $t7, %lo(D_80B7A684)($t7)  
/* 0EAFC 80B7849C 3C0280B8 */  lui     $v0, %hi(D_80B7E090)       ## $v0 = 80B80000
/* 0EB00 80B784A0 2442E090 */  addiu   $v0, $v0, %lo(D_80B7E090)  ## $v0 = 80B7E090
/* 0EB04 80B784A4 15E00026 */  bne     $t7, $zero, .L80B78540     
/* 0EB08 80B784A8 3C0180B8 */  lui     $at, %hi(D_80B7E0B8)       ## $at = 80B80000
/* 0EB0C 80B784AC C44A0000 */  lwc1    $f10, 0x0000($v0)          ## 80B7E090
/* 0EB10 80B784B0 C424E0B8 */  lwc1    $f4, %lo(D_80B7E0B8)($at)  
/* 0EB14 80B784B4 C4460004 */  lwc1    $f6, 0x0004($v0)           ## 80B7E094
/* 0EB18 80B784B8 C428E0BC */  lwc1    $f8, %lo(D_80B7E0BC)($at)  
/* 0EB1C 80B784BC 46045081 */  sub.s   $f2, $f10, $f4             
/* 0EB20 80B784C0 3C0180B8 */  lui     $at, %hi(D_80B7E0C0)       ## $at = 80B80000
/* 0EB24 80B784C4 C424E0C0 */  lwc1    $f4, %lo(D_80B7E0C0)($at)  
/* 0EB28 80B784C8 46083301 */  sub.s   $f12, $f6, $f8             
/* 0EB2C 80B784CC 46021182 */  mul.s   $f6, $f2, $f2              
/* 0EB30 80B784D0 C44A0008 */  lwc1    $f10, 0x0008($v0)          ## 80B7E098
/* 0EB34 80B784D4 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 0EB38 80B784D8 460C6202 */  mul.s   $f8, $f12, $f12            
/* 0EB3C 80B784DC 3C0B8016 */  lui     $t3, 0x8016                ## $t3 = 80160000
/* 0EB40 80B784E0 46045381 */  sub.s   $f14, $f10, $f4            
/* 0EB44 80B784E4 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 0EB48 80B784E8 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 0EB4C 80B784EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0EB50 80B784F0 460E7102 */  mul.s   $f4, $f14, $f14            
/* 0EB54 80B784F4 46083280 */  add.s   $f10, $f6, $f8             
/* 0EB58 80B784F8 44813000 */  mtc1    $at, $f6                   ## $f6 = 25.00
/* 0EB5C 80B784FC 46045000 */  add.s   $f0, $f10, $f4             
/* 0EB60 80B78500 46000004 */  sqrt.s  $f0, $f0                   
/* 0EB64 80B78504 4606003C */  c.lt.s  $f0, $f6                   
/* 0EB68 80B78508 00000000 */  nop
/* 0EB6C 80B7850C 45010005 */  bc1t    .L80B78524                 
/* 0EB70 80B78510 00000000 */  nop
/* 0EB74 80B78514 8D6BFA90 */  lw      $t3, -0x0570($t3)          ## 8015FA90
/* 0EB78 80B78518 85780A6E */  lh      $t8, 0x0A6E($t3)           ## 80160A6E
/* 0EB7C 80B7851C 1B000008 */  blez    $t8, .L80B78540            
/* 0EB80 80B78520 00000000 */  nop
.L80B78524:
/* 0EB84 80B78524 8F39FA90 */  lw      $t9, -0x0570($t9)          ## 8015FA90
/* 0EB88 80B78528 24054087 */  addiu   $a1, $zero, 0x4087         ## $a1 = 00004087
/* 0EB8C 80B7852C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0EB90 80B78530 A7200A6E */  sh      $zero, 0x0A6E($t9)         ## 80160A6E
/* 0EB94 80B78534 A0E00000 */  sb      $zero, 0x0000($a3)         ## 80B7A688
/* 0EB98 80B78538 0C042DA0 */  jal     func_8010B680              
/* 0EB9C 80B7853C A0690000 */  sb      $t1, 0x0000($v1)           ## 80B7A68C
.L80B78540:
/* 0EBA0 80B78540 3C0780B8 */  lui     $a3, %hi(D_80B7A688)       ## $a3 = 80B80000
/* 0EBA4 80B78544 24E7A688 */  addiu   $a3, $a3, %lo(D_80B7A688)  ## $a3 = 80B7A688
/* 0EBA8 80B78548 90E30000 */  lbu     $v1, 0x0000($a3)           ## 80B7A688
/* 0EBAC 80B7854C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0EBB0 80B78550 8C42FA90 */  lw      $v0, -0x0570($v0)          ## 8015FA90
/* 0EBB4 80B78554 14600007 */  bne     $v1, $zero, .L80B78574     
/* 0EBB8 80B78558 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0EBBC 80B7855C 3C0A8016 */  lui     $t2, 0x8016                ## $t2 = 80160000
/* 0EBC0 80B78560 8D4AF520 */  lw      $t2, -0x0AE0($t2)          ## 8015F520
/* 0EBC4 80B78564 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 0EBC8 80B78568 354C1000 */  ori     $t4, $t2, 0x1000           ## $t4 = 80161000
/* 0EBCC 80B7856C 10000008 */  beq     $zero, $zero, .L80B78590   
/* 0EBD0 80B78570 AC2CF520 */  sw      $t4, -0x0AE0($at)          ## 8015F520
.L80B78574:
/* 0EBD4 80B78574 14610006 */  bne     $v1, $at, .L80B78590       
/* 0EBD8 80B78578 3C0D8016 */  lui     $t5, 0x8016                ## $t5 = 80160000
/* 0EBDC 80B7857C 8DADF520 */  lw      $t5, -0x0AE0($t5)          ## 8015F520
/* 0EBE0 80B78580 2401EFFF */  addiu   $at, $zero, 0xEFFF         ## $at = FFFFEFFF
/* 0EBE4 80B78584 01A17024 */  and     $t6, $t5, $at              
/* 0EBE8 80B78588 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 0EBEC 80B7858C AC2EF520 */  sw      $t6, -0x0AE0($at)          ## 8015F520
.L80B78590:
/* 0EBF0 80B78590 844F0A6E */  lh      $t7, 0x0A6E($v0)           ## 80160A6E
/* 0EBF4 80B78594 3C0380B8 */  lui     $v1, %hi(D_80B7A67C)       ## $v1 = 80B80000
/* 0EBF8 80B78598 2463A67C */  addiu   $v1, $v1, %lo(D_80B7A67C)  ## $v1 = 80B7A67C
/* 0EBFC 80B7859C 05E10004 */  bgez    $t7, .L80B785B0            
/* 0EC00 80B785A0 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 0EC04 80B785A4 A4400A6E */  sh      $zero, 0x0A6E($v0)         ## 80160A6E
/* 0EC08 80B785A8 3C0180B8 */  lui     $at, %hi(D_80B7A690)       ## $at = 80B80000
/* 0EC0C 80B785AC A02BA690 */  sb      $t3, %lo(D_80B7A690)($at)  
.L80B785B0:
/* 0EC10 80B785B0 90620000 */  lbu     $v0, 0x0000($v1)           ## 80B7A67C
/* 0EC14 80B785B4 10400009 */  beq     $v0, $zero, .L80B785DC     
/* 0EC18 80B785B8 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = 8015FFFF
/* 0EC1C 80B785BC 331900FF */  andi    $t9, $t8, 0x00FF           ## $t9 = 000000FF
/* 0EC20 80B785C0 17200006 */  bne     $t9, $zero, .L80B785DC     
/* 0EC24 80B785C4 A0780000 */  sb      $t8, 0x0000($v1)           ## 80B7A67C
/* 0EC28 80B785C8 3C0580B8 */  lui     $a1, %hi(D_80B7E086)       ## $a1 = 80B80000
/* 0EC2C 80B785CC 94A5E086 */  lhu     $a1, %lo(D_80B7E086)($a1)  
/* 0EC30 80B785D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0EC34 80B785D4 0C042DA0 */  jal     func_8010B680              
/* 0EC38 80B785D8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
.L80B785DC:
/* 0EC3C 80B785DC 8FA40128 */  lw      $a0, 0x0128($sp)           
/* 0EC40 80B785E0 0C2DDD01 */  jal     func_80B77404              
/* 0EC44 80B785E4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0EC48 80B785E8 3C0180B8 */  lui     $at, %hi(D_80B7B834)       ## $at = 80B80000
/* 0EC4C 80B785EC C428B834 */  lwc1    $f8, %lo(D_80B7B834)($at)  
/* 0EC50 80B785F0 3C0980B8 */  lui     $t1, %hi(D_80B7A680)       ## $t1 = 80B80000
/* 0EC54 80B785F4 8D29A680 */  lw      $t1, %lo(D_80B7A680)($t1)  
/* 0EC58 80B785F8 3C0C80B8 */  lui     $t4, %hi(D_80B7E0AC)       ## $t4 = 80B80000
/* 0EC5C 80B785FC 858CE0AC */  lh      $t4, %lo(D_80B7E0AC)($t4)  
/* 0EC60 80B78600 3C0180B8 */  lui     $at, %hi(D_80B7E14C)       ## $at = 80B80000
/* 0EC64 80B78604 E428E14C */  swc1    $f8, %lo(D_80B7E14C)($at)  
/* 0EC68 80B78608 3C0180B8 */  lui     $at, %hi(D_80B7A680)       ## $at = 80B80000
/* 0EC6C 80B7860C 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 80B80001
/* 0EC70 80B78610 11800008 */  beq     $t4, $zero, .L80B78634     
/* 0EC74 80B78614 AC2AA680 */  sw      $t2, %lo(D_80B7A680)($at)  
/* 0EC78 80B78618 3C0D80B8 */  lui     $t5, %hi(D_80B7A674)       ## $t5 = 80B80000
/* 0EC7C 80B7861C 91ADA674 */  lbu     $t5, %lo(D_80B7A674)($t5)  
/* 0EC80 80B78620 8FA40128 */  lw      $a0, 0x0128($sp)           
/* 0EC84 80B78624 51A00004 */  beql    $t5, $zero, .L80B78638     
/* 0EC88 80B78628 8FAE0028 */  lw      $t6, 0x0028($sp)           
/* 0EC8C 80B7862C 0C2DBA78 */  jal     func_80B6E9E0              
/* 0EC90 80B78630 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
.L80B78634:
/* 0EC94 80B78634 8FAE0028 */  lw      $t6, 0x0028($sp)           
.L80B78638:
/* 0EC98 80B78638 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0EC9C 80B7863C 0C2DABCA */  jal     func_80B6AF28              
/* 0ECA0 80B78640 8DC41E10 */  lw      $a0, 0x1E10($t6)           ## 00001E10
/* 0ECA4 80B78644 0C2DD86E */  jal     func_80B761B8              
/* 0ECA8 80B78648 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0ECAC 80B7864C 0C2DDA3F */  jal     func_80B768FC              
/* 0ECB0 80B78650 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0ECB4 80B78654 3C0F80B8 */  lui     $t7, %hi(D_80B7E0AC)       ## $t7 = 80B80000
/* 0ECB8 80B78658 85EFE0AC */  lh      $t7, %lo(D_80B7E0AC)($t7)  
/* 0ECBC 80B7865C 3C0480B8 */  lui     $a0, %hi(D_80B7A66C)       ## $a0 = 80B80000
/* 0ECC0 80B78660 3C0B80B8 */  lui     $t3, %hi(D_80B7A6CC)       ## $t3 = 80B80000
/* 0ECC4 80B78664 11E00020 */  beq     $t7, $zero, .L80B786E8     
/* 0ECC8 80B78668 2484A66C */  addiu   $a0, $a0, %lo(D_80B7A66C)  ## $a0 = 80B7A66C
/* 0ECCC 80B7866C 916BA6CC */  lbu     $t3, %lo(D_80B7A6CC)($t3)  
/* 0ECD0 80B78670 8FA800E4 */  lw      $t0, 0x00E4($sp)           
/* 0ECD4 80B78674 3C0144AA */  lui     $at, 0x44AA                ## $at = 44AA0000
/* 0ECD8 80B78678 5560001C */  bnel    $t3, $zero, .L80B786EC     
/* 0ECDC 80B7867C 90830000 */  lbu     $v1, 0x0000($a0)           ## 80B7A66C
/* 0ECE0 80B78680 44815000 */  mtc1    $at, $f10                  ## $f10 = 1360.00
/* 0ECE4 80B78684 C504002C */  lwc1    $f4, 0x002C($t0)           ## 0000002C
/* 0ECE8 80B78688 4604503C */  c.lt.s  $f10, $f4                  
/* 0ECEC 80B7868C 00000000 */  nop
/* 0ECF0 80B78690 45020016 */  bc1fl   .L80B786EC                 
/* 0ECF4 80B78694 90830000 */  lbu     $v1, 0x0000($a0)           ## 80B7A66C
/* 0ECF8 80B78698 C5000024 */  lwc1    $f0, 0x0024($t0)           ## 00000024
/* 0ECFC 80B7869C 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 0ED00 80B786A0 44813000 */  mtc1    $at, $f6                   ## $f6 = 25.00
/* 0ED04 80B786A4 46000005 */  abs.s   $f0, $f0                   
/* 0ED08 80B786A8 3C0144AA */  lui     $at, 0x44AA                ## $at = 44AA0000
/* 0ED0C 80B786AC 4606003C */  c.lt.s  $f0, $f6                   
/* 0ED10 80B786B0 00000000 */  nop
/* 0ED14 80B786B4 4502000D */  bc1fl   .L80B786EC                 
/* 0ED18 80B786B8 90830000 */  lbu     $v1, 0x0000($a0)           ## 80B7A66C
/* 0ED1C 80B786BC 44814000 */  mtc1    $at, $f8                   ## $f8 = 1360.00
/* 0ED20 80B786C0 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 0ED24 80B786C4 3C1880B8 */  lui     $t8, %hi(D_80B7A6D0)       ## $t8 = 80B80000
/* 0ED28 80B786C8 E508002C */  swc1    $f8, 0x002C($t0)           ## 0000002C
/* 0ED2C 80B786CC E50A0068 */  swc1    $f10, 0x0068($t0)          ## 00000068
/* 0ED30 80B786D0 9318A6D0 */  lbu     $t8, %lo(D_80B7A6D0)($t8)  
/* 0ED34 80B786D4 3C0180B8 */  lui     $at, %hi(D_80B7A6CC)       ## $at = 80B80000
/* 0ED38 80B786D8 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 0ED3C 80B786DC 57000003 */  bnel    $t8, $zero, .L80B786EC     
/* 0ED40 80B786E0 90830000 */  lbu     $v1, 0x0000($a0)           ## 80B7A66C
/* 0ED44 80B786E4 A039A6CC */  sb      $t9, %lo(D_80B7A6CC)($at)  
.L80B786E8:
/* 0ED48 80B786E8 90830000 */  lbu     $v1, 0x0000($a0)           ## 80B7A66C
.L80B786EC:
/* 0ED4C 80B786EC 8FA800E4 */  lw      $t0, 0x00E4($sp)           
/* 0ED50 80B786F0 3C0A80B8 */  lui     $t2, %hi(D_80B7AFDC)       ## $t2 = 80B80000
/* 0ED54 80B786F4 10600038 */  beq     $v1, $zero, .L80B787D8     
/* 0ED58 80B786F8 00034880 */  sll     $t1, $v1,  2               
/* 0ED5C 80B786FC 01234823 */  subu    $t1, $t1, $v1              
/* 0ED60 80B78700 00094840 */  sll     $t1, $t1,  1               
/* 0ED64 80B78704 254AAFDC */  addiu   $t2, $t2, %lo(D_80B7AFDC)  ## $t2 = 80B7AFDC
/* 0ED68 80B78708 012A1021 */  addu    $v0, $t1, $t2              
/* 0ED6C 80B7870C 844CFFFA */  lh      $t4, -0x0006($v0)          ## FFFFFFFA
/* 0ED70 80B78710 C5040024 */  lwc1    $f4, 0x0024($t0)           ## 00000024
/* 0ED74 80B78714 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 0ED78 80B78718 448C3000 */  mtc1    $t4, $f6                   ## $f6 = 0.00
/* 0ED7C 80B7871C 44815000 */  mtc1    $at, $f10                  ## $f10 = 25.00
/* 0ED80 80B78720 46803220 */  cvt.s.w $f8, $f6                   
/* 0ED84 80B78724 46082001 */  sub.s   $f0, $f4, $f8              
/* 0ED88 80B78728 46000005 */  abs.s   $f0, $f0                   
/* 0ED8C 80B7872C 460A003C */  c.lt.s  $f0, $f10                  
/* 0ED90 80B78730 00000000 */  nop
/* 0ED94 80B78734 45000028 */  bc1f    .L80B787D8                 
/* 0ED98 80B78738 00000000 */  nop
/* 0ED9C 80B7873C 844DFFFC */  lh      $t5, -0x0004($v0)          ## FFFFFFFC
/* 0EDA0 80B78740 C5060028 */  lwc1    $f6, 0x0028($t0)           ## 00000028
/* 0EDA4 80B78744 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0EDA8 80B78748 448D2000 */  mtc1    $t5, $f4                   ## $f4 = 0.00
/* 0EDAC 80B7874C 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 0EDB0 80B78750 46802220 */  cvt.s.w $f8, $f4                   
/* 0EDB4 80B78754 46083001 */  sub.s   $f0, $f6, $f8              
/* 0EDB8 80B78758 46000005 */  abs.s   $f0, $f0                   
/* 0EDBC 80B7875C 460A003C */  c.lt.s  $f0, $f10                  
/* 0EDC0 80B78760 00000000 */  nop
/* 0EDC4 80B78764 4500001C */  bc1f    .L80B787D8                 
/* 0EDC8 80B78768 00000000 */  nop
/* 0EDCC 80B7876C 844EFFFE */  lh      $t6, -0x0002($v0)          ## FFFFFFFE
/* 0EDD0 80B78770 C504002C */  lwc1    $f4, 0x002C($t0)           ## 0000002C
/* 0EDD4 80B78774 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 0EDD8 80B78778 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 0EDDC 80B7877C 44815000 */  mtc1    $at, $f10                  ## $f10 = 25.00
/* 0EDE0 80B78780 3C0180B8 */  lui     $at, %hi(D_80B7A6CC)       ## $at = 80B80000
/* 0EDE4 80B78784 46803220 */  cvt.s.w $f8, $f6                   
/* 0EDE8 80B78788 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 0EDEC 80B7878C 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 0EDF0 80B78790 2407000A */  addiu   $a3, $zero, 0x000A         ## $a3 = 0000000A
/* 0EDF4 80B78794 46082001 */  sub.s   $f0, $f4, $f8              
/* 0EDF8 80B78798 46000005 */  abs.s   $f0, $f0                   
/* 0EDFC 80B7879C 460A003C */  c.lt.s  $f0, $f10                  
/* 0EE00 80B787A0 00000000 */  nop
/* 0EE04 80B787A4 4500000C */  bc1f    .L80B787D8                 
/* 0EE08 80B787A8 00000000 */  nop
/* 0EE0C 80B787AC A0800000 */  sb      $zero, 0x0000($a0)         ## 80B7A66C
/* 0EE10 80B787B0 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 0EE14 80B787B4 A02FA6CC */  sb      $t7, %lo(D_80B7A6CC)($at)  
/* 0EE18 80B787B8 0C02A7DB */  jal     func_800A9F6C              
/* 0EE1C 80B787BC 24050096 */  addiu   $a1, $zero, 0x0096         ## $a1 = 00000096
/* 0EE20 80B787C0 0C01E221 */  jal     func_80078884              
/* 0EE24 80B787C4 24044807 */  addiu   $a0, $zero, 0x4807         ## $a0 = 00004807
/* 0EE28 80B787C8 3C041014 */  lui     $a0, 0x1014                ## $a0 = 10140000
/* 0EE2C 80B787CC 0C03E803 */  jal     Audio_SetBGM
              
/* 0EE30 80B787D0 348400FF */  ori     $a0, $a0, 0x00FF           ## $a0 = 101400FF
/* 0EE34 80B787D4 8FA800E4 */  lw      $t0, 0x00E4($sp)           
.L80B787D8:
/* 0EE38 80B787D8 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0EE3C 80B787DC 8C42FA90 */  lw      $v0, -0x0570($v0)          ## 8015FA90
/* 0EE40 80B787E0 3C0180B8 */  lui     $at, %hi(D_80B7E0B6)       ## $at = 80B80000
/* 0EE44 80B787E4 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 0EE48 80B787E8 844B09D4 */  lh      $t3, 0x09D4($v0)           ## 801609D4
/* 0EE4C 80B787EC 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 0EE50 80B787F0 2407000A */  addiu   $a3, $zero, 0x000A         ## $a3 = 0000000A
/* 0EE54 80B787F4 1160000E */  beq     $t3, $zero, .L80B78830     
/* 0EE58 80B787F8 00000000 */  nop
/* 0EE5C 80B787FC A44009D4 */  sh      $zero, 0x09D4($v0)         ## 801609D4
/* 0EE60 80B78800 A020E0B6 */  sb      $zero, %lo(D_80B7E0B6)($at) 
/* 0EE64 80B78804 3C0180B8 */  lui     $at, %hi(D_80B7A6CC)       ## $at = 80B80000
/* 0EE68 80B78808 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 0EE6C 80B7880C A038A6CC */  sb      $t8, %lo(D_80B7A6CC)($at)  
/* 0EE70 80B78810 0C02A7DB */  jal     func_800A9F6C              
/* 0EE74 80B78814 24050096 */  addiu   $a1, $zero, 0x0096         ## $a1 = 00000096
/* 0EE78 80B78818 0C01E221 */  jal     func_80078884              
/* 0EE7C 80B7881C 24044807 */  addiu   $a0, $zero, 0x4807         ## $a0 = 00004807
/* 0EE80 80B78820 3C041014 */  lui     $a0, 0x1014                ## $a0 = 10140000
/* 0EE84 80B78824 0C03E803 */  jal     Audio_SetBGM
              
/* 0EE88 80B78828 348400FF */  ori     $a0, $a0, 0x00FF           ## $a0 = 101400FF
/* 0EE8C 80B7882C 8FA800E4 */  lw      $t0, 0x00E4($sp)           
.L80B78830:
/* 0EE90 80B78830 3C0280B8 */  lui     $v0, %hi(D_80B7A6D0)       ## $v0 = 80B80000
/* 0EE94 80B78834 9042A6D0 */  lbu     $v0, %lo(D_80B7A6D0)($v0)  
/* 0EE98 80B78838 3C0380B8 */  lui     $v1, %hi(D_80B7A6CC)       ## $v1 = 80B80000
/* 0EE9C 80B7883C 9063A6CC */  lbu     $v1, %lo(D_80B7A6CC)($v1)  
/* 0EEA0 80B78840 10400003 */  beq     $v0, $zero, .L80B78850     
/* 0EEA4 80B78844 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = 80B7FFFF
/* 0EEA8 80B78848 3C0180B8 */  lui     $at, %hi(D_80B7A6D0)       ## $at = 80B80000
/* 0EEAC 80B7884C A039A6D0 */  sb      $t9, %lo(D_80B7A6D0)($at)  
.L80B78850:
/* 0EEB0 80B78850 28610017 */  slti    $at, $v1, 0x0017           
/* 0EEB4 80B78854 14200006 */  bne     $at, $zero, .L80B78870     
/* 0EEB8 80B78858 00601025 */  or      $v0, $v1, $zero            ## $v0 = 80B80000
/* 0EEBC 80B7885C 24010064 */  addiu   $at, $zero, 0x0064         ## $at = 00000064
/* 0EEC0 80B78860 1061033E */  beq     $v1, $at, .L80B7955C       
/* 0EEC4 80B78864 00000000 */  nop
/* 0EEC8 80B78868 1000033C */  beq     $zero, $zero, .L80B7955C   
/* 0EECC 80B7886C 00000000 */  nop
.L80B78870:
/* 0EED0 80B78870 2C410017 */  sltiu   $at, $v0, 0x0017           
/* 0EED4 80B78874 10200339 */  beq     $at, $zero, .L80B7955C     
/* 0EED8 80B78878 00024880 */  sll     $t1, $v0,  2               
/* 0EEDC 80B7887C 3C0180B8 */  lui     $at, %hi(jtbl_80B7B838)       ## $at = 80B80000
/* 0EEE0 80B78880 00290821 */  addu    $at, $at, $t1              
/* 0EEE4 80B78884 8C29B838 */  lw      $t1, %lo(jtbl_80B7B838)($at)  
/* 0EEE8 80B78888 01200008 */  jr      $t1                        
/* 0EEEC 80B7888C 00000000 */  nop
glabel L80B78890
/* 0EEF0 80B78890 0C03008C */  jal     func_800C0230              
/* 0EEF4 80B78894 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0EEF8 80B78898 3C0180B8 */  lui     $at, %hi(D_80B7FEC4)       ## $at = 80B80000
/* 0EEFC 80B7889C A422FEC4 */  sh      $v0, %lo(D_80B7FEC4)($at)  
/* 0EF00 80B788A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0EF04 80B788A4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0EF08 80B788A8 0C0300C5 */  jal     func_800C0314              
/* 0EF0C 80B788AC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0EF10 80B788B0 3C0580B8 */  lui     $a1, %hi(D_80B7FEC4)       ## $a1 = 80B80000
/* 0EF14 80B788B4 84A5FEC4 */  lh      $a1, %lo(D_80B7FEC4)($a1)  
/* 0EF18 80B788B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0EF1C 80B788BC 0C0300C5 */  jal     func_800C0314              
/* 0EF20 80B788C0 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 0EF24 80B788C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0EF28 80B788C8 0C030129 */  jal     func_800C04A4              
/* 0EF2C 80B788CC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0EF30 80B788D0 C446005C */  lwc1    $f6, 0x005C($v0)           ## 0000005C
/* 0EF34 80B788D4 3C0180B8 */  lui     $at, %hi(D_80B7FEA8)       ## $at = 80B80000
/* 0EF38 80B788D8 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 0EF3C 80B788DC E426FEA8 */  swc1    $f6, %lo(D_80B7FEA8)($at)  
/* 0EF40 80B788E0 C4440060 */  lwc1    $f4, 0x0060($v0)           ## 00000060
/* 0EF44 80B788E4 2404000C */  addiu   $a0, $zero, 0x000C         ## $a0 = 0000000C
/* 0EF48 80B788E8 E424FEAC */  swc1    $f4, %lo(D_80B7FEAC)($at)  
/* 0EF4C 80B788EC C4480064 */  lwc1    $f8, 0x0064($v0)           ## 00000064
/* 0EF50 80B788F0 3C0180B8 */  lui     $at, %hi(D_80B7FEB0)       ## $at = 80B80000
/* 0EF54 80B788F4 E428FEB0 */  swc1    $f8, %lo(D_80B7FEB0)($at)  
/* 0EF58 80B788F8 C44A0050 */  lwc1    $f10, 0x0050($v0)          ## 00000050
/* 0EF5C 80B788FC 3C0180B8 */  lui     $at, %hi(D_80B7FEB8)       ## $at = 80B80000
/* 0EF60 80B78900 E42AFEB8 */  swc1    $f10, %lo(D_80B7FEB8)($at) 
/* 0EF64 80B78904 C4460054 */  lwc1    $f6, 0x0054($v0)           ## 00000054
/* 0EF68 80B78908 E426FEBC */  swc1    $f6, %lo(D_80B7FEBC)($at)  
/* 0EF6C 80B7890C C4440058 */  lwc1    $f4, 0x0058($v0)           ## 00000058
/* 0EF70 80B78910 3C0180B8 */  lui     $at, %hi(D_80B7FEC0)       ## $at = 80B80000
/* 0EF74 80B78914 E424FEC0 */  swc1    $f4, %lo(D_80B7FEC0)($at)  
/* 0EF78 80B78918 3C0180B8 */  lui     $at, %hi(D_80B7A6CC)       ## $at = 80B80000
/* 0EF7C 80B7891C 0C020978 */  jal     Interface_ChangeAlpha              
/* 0EF80 80B78920 A02AA6CC */  sb      $t2, %lo(D_80B7A6CC)($at)  
/* 0EF84 80B78924 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0EF88 80B78928 3C0180B8 */  lui     $at, %hi(D_80B7FECC)       ## $at = 80B80000
/* 0EF8C 80B7892C E428FECC */  swc1    $f8, %lo(D_80B7FECC)($at)  
glabel L80B78930
/* 0EF90 80B78930 0C02CE10 */  jal     func_800B3840              ## letterbox_target_addr
/* 0EF94 80B78934 2404001B */  addiu   $a0, $zero, 0x001B         ## $a0 = 0000001B
/* 0EF98 80B78938 8FAC00E4 */  lw      $t4, 0x00E4($sp)           
/* 0EF9C 80B7893C 3C0280B8 */  lui     $v0, %hi(D_80B7E0B8)       ## $v0 = 80B80000
/* 0EFA0 80B78940 2442E0B8 */  addiu   $v0, $v0, %lo(D_80B7E0B8)  ## $v0 = 80B7E0B8
/* 0EFA4 80B78944 C44A0000 */  lwc1    $f10, 0x0000($v0)          ## 80B7E0B8
/* 0EFA8 80B78948 C5860024 */  lwc1    $f6, 0x0024($t4)           ## 00000024
/* 0EFAC 80B7894C C4480008 */  lwc1    $f8, 0x0008($v0)           ## 80B7E0C0
/* 0EFB0 80B78950 46065101 */  sub.s   $f4, $f10, $f6             
/* 0EFB4 80B78954 E7A400FC */  swc1    $f4, 0x00FC($sp)           
/* 0EFB8 80B78958 C58A002C */  lwc1    $f10, 0x002C($t4)          ## 0000002C
/* 0EFBC 80B7895C C7AE00FC */  lwc1    $f14, 0x00FC($sp)          
/* 0EFC0 80B78960 460A4181 */  sub.s   $f6, $f8, $f10             
/* 0EFC4 80B78964 460E7202 */  mul.s   $f8, $f14, $f14            
/* 0EFC8 80B78968 E7A60104 */  swc1    $f6, 0x0104($sp)           
/* 0EFCC 80B7896C C7AC0104 */  lwc1    $f12, 0x0104($sp)          
/* 0EFD0 80B78970 460C6182 */  mul.s   $f6, $f12, $f12            
/* 0EFD4 80B78974 46064000 */  add.s   $f0, $f8, $f6              
/* 0EFD8 80B78978 46000004 */  sqrt.s  $f0, $f0                   
/* 0EFDC 80B7897C 0C0341F5 */  jal     atan2f
              
/* 0EFE0 80B78980 E7A000EC */  swc1    $f0, 0x00EC($sp)           
/* 0EFE4 80B78984 46000306 */  mov.s   $f12, $f0                  
/* 0EFE8 80B78988 0C034348 */  jal     Matrix_RotateY              
/* 0EFEC 80B7898C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0EFF0 80B78990 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0EFF4 80B78994 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0EFF8 80B78998 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 0EFFC 80B7899C 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 0F000 80B789A0 27A40114 */  addiu   $a0, $sp, 0x0114           ## $a0 = FFFFFFEC
/* 0F004 80B789A4 27A500FC */  addiu   $a1, $sp, 0x00FC           ## $a1 = FFFFFFD4
/* 0F008 80B789A8 E7A80114 */  swc1    $f8, 0x0114($sp)           
/* 0F00C 80B789AC E7A20118 */  swc1    $f2, 0x0118($sp)           
/* 0F010 80B789B0 0C0346BD */  jal     Matrix_MultVec3f              
/* 0F014 80B789B4 E7A6011C */  swc1    $f6, 0x011C($sp)           
/* 0F018 80B789B8 3C0D80B8 */  lui     $t5, %hi(D_80B7A694)       ## $t5 = 80B80000
/* 0F01C 80B789BC 85ADA694 */  lh      $t5, %lo(D_80B7A694)($t5)  
/* 0F020 80B789C0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0F024 80B789C4 C7AE00FC */  lwc1    $f14, 0x00FC($sp)          
/* 0F028 80B789C8 15A10003 */  bne     $t5, $at, .L80B789D8       
/* 0F02C 80B789CC 3C0180B8 */  lui     $at, %hi(D_80B7B894)       ## $at = 80B80000
/* 0F030 80B789D0 10000003 */  beq     $zero, $zero, .L80B789E0   
/* 0F034 80B789D4 C422B894 */  lwc1    $f2, %lo(D_80B7B894)($at)  
.L80B789D8:
/* 0F038 80B789D8 3C0180B8 */  lui     $at, %hi(D_80B7B898)       ## $at = 80B80000
/* 0F03C 80B789DC C422B898 */  lwc1    $f2, %lo(D_80B7B898)($at)  
.L80B789E0:
/* 0F040 80B789E0 3C0180B8 */  lui     $at, %hi(D_80B7FECC)       ## $at = 80B80000
/* 0F044 80B789E4 C42AFECC */  lwc1    $f10, %lo(D_80B7FECC)($at) 
/* 0F048 80B789E8 46007005 */  abs.s   $f0, $f14                  
/* 0F04C 80B789EC 3C0480B8 */  lui     $a0, %hi(D_80B7FEB8)       ## $a0 = 80B80000
/* 0F050 80B789F0 460A0102 */  mul.s   $f4, $f0, $f10             
/* 0F054 80B789F4 3C0580B8 */  lui     $a1, %hi(D_80B7E0B8)       ## $a1 = 80B80000
/* 0F058 80B789F8 44061000 */  mfc1    $a2, $f2                   
/* 0F05C 80B789FC 8CA5E0B8 */  lw      $a1, %lo(D_80B7E0B8)($a1)  
/* 0F060 80B78A00 2484FEB8 */  addiu   $a0, $a0, %lo(D_80B7FEB8)  ## $a0 = 80B7FEB8
/* 0F064 80B78A04 E7A200F0 */  swc1    $f2, 0x00F0($sp)           
/* 0F068 80B78A08 44072000 */  mfc1    $a3, $f4                   
/* 0F06C 80B78A0C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0F070 80B78A10 00000000 */  nop
/* 0F074 80B78A14 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 0F078 80B78A18 44814000 */  mtc1    $at, $f8                   ## $f8 = 50.00
/* 0F07C 80B78A1C 3C0180B8 */  lui     $at, %hi(D_80B7FECC)       ## $at = 80B80000
/* 0F080 80B78A20 C426FECC */  lwc1    $f6, %lo(D_80B7FECC)($at)  
/* 0F084 80B78A24 C7A200F0 */  lwc1    $f2, 0x00F0($sp)           
/* 0F088 80B78A28 3C0480B8 */  lui     $a0, %hi(D_80B7FEBC)       ## $a0 = 80B80000
/* 0F08C 80B78A2C 46064282 */  mul.s   $f10, $f8, $f6             
/* 0F090 80B78A30 3C0580B8 */  lui     $a1, %hi(D_80B7E0BC)       ## $a1 = 80B80000
/* 0F094 80B78A34 44061000 */  mfc1    $a2, $f2                   
/* 0F098 80B78A38 8CA5E0BC */  lw      $a1, %lo(D_80B7E0BC)($a1)  
/* 0F09C 80B78A3C 2484FEBC */  addiu   $a0, $a0, %lo(D_80B7FEBC)  ## $a0 = 80B7FEBC
/* 0F0A0 80B78A40 44075000 */  mfc1    $a3, $f10                  
/* 0F0A4 80B78A44 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0F0A8 80B78A48 00000000 */  nop
/* 0F0AC 80B78A4C C7B00104 */  lwc1    $f16, 0x0104($sp)          
/* 0F0B0 80B78A50 3C0180B8 */  lui     $at, %hi(D_80B7FECC)       ## $at = 80B80000
/* 0F0B4 80B78A54 C424FECC */  lwc1    $f4, %lo(D_80B7FECC)($at)  
/* 0F0B8 80B78A58 46008005 */  abs.s   $f0, $f16                  
/* 0F0BC 80B78A5C C7A200F0 */  lwc1    $f2, 0x00F0($sp)           
/* 0F0C0 80B78A60 46040202 */  mul.s   $f8, $f0, $f4              
/* 0F0C4 80B78A64 3C0480B8 */  lui     $a0, %hi(D_80B7FEC0)       ## $a0 = 80B80000
/* 0F0C8 80B78A68 3C0580B8 */  lui     $a1, %hi(D_80B7E0C0)       ## $a1 = 80B80000
/* 0F0CC 80B78A6C 44061000 */  mfc1    $a2, $f2                   
/* 0F0D0 80B78A70 8CA5E0C0 */  lw      $a1, %lo(D_80B7E0C0)($a1)  
/* 0F0D4 80B78A74 2484FEC0 */  addiu   $a0, $a0, %lo(D_80B7FEC0)  ## $a0 = 80B7FEC0
/* 0F0D8 80B78A78 44074000 */  mfc1    $a3, $f8                   
/* 0F0DC 80B78A7C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0F0E0 80B78A80 00000000 */  nop
/* 0F0E4 80B78A84 3C0180B8 */  lui     $at, %hi(D_80B7FED0)       ## $at = 80B80000
/* 0F0E8 80B78A88 C42AFED0 */  lwc1    $f10, %lo(D_80B7FED0)($at) 
/* 0F0EC 80B78A8C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 0F0F0 80B78A90 3C0E80B8 */  lui     $t6, %hi(D_80B7E075)       ## $t6 = 80B80000
/* 0F0F4 80B78A94 91CEE075 */  lbu     $t6, %lo(D_80B7E075)($t6)  
/* 0F0F8 80B78A98 460A3101 */  sub.s   $f4, $f6, $f10             
/* 0F0FC 80B78A9C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0F100 80B78AA0 27A40114 */  addiu   $a0, $sp, 0x0114           ## $a0 = FFFFFFEC
/* 0F104 80B78AA4 11C10005 */  beq     $t6, $at, .L80B78ABC       
/* 0F108 80B78AA8 E7A40114 */  swc1    $f4, 0x0114($sp)           
/* 0F10C 80B78AAC 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 0F110 80B78AB0 44811000 */  mtc1    $at, $f2                   ## $f2 = 80.00
/* 0F114 80B78AB4 10000005 */  beq     $zero, $zero, .L80B78ACC   
/* 0F118 80B78AB8 E7A20118 */  swc1    $f2, 0x0118($sp)           
.L80B78ABC:
/* 0F11C 80B78ABC 3C01425C */  lui     $at, 0x425C                ## $at = 425C0000
/* 0F120 80B78AC0 44811000 */  mtc1    $at, $f2                   ## $f2 = 55.00
/* 0F124 80B78AC4 00000000 */  nop
/* 0F128 80B78AC8 E7A20118 */  swc1    $f2, 0x0118($sp)           
.L80B78ACC:
/* 0F12C 80B78ACC 3C01C2A0 */  lui     $at, 0xC2A0                ## $at = C2A00000
/* 0F130 80B78AD0 44814000 */  mtc1    $at, $f8                   ## $f8 = -80.00
/* 0F134 80B78AD4 27A50108 */  addiu   $a1, $sp, 0x0108           ## $a1 = FFFFFFE0
/* 0F138 80B78AD8 0C0346BD */  jal     Matrix_MultVec3f              
/* 0F13C 80B78ADC E7A8011C */  swc1    $f8, 0x011C($sp)           
/* 0F140 80B78AE0 8FAF00E4 */  lw      $t7, 0x00E4($sp)           
/* 0F144 80B78AE4 C7A60108 */  lwc1    $f6, 0x0108($sp)           
/* 0F148 80B78AE8 C7A8010C */  lwc1    $f8, 0x010C($sp)           
/* 0F14C 80B78AEC C5EA0024 */  lwc1    $f10, 0x0024($t7)          ## 00000024
/* 0F150 80B78AF0 3C0480B8 */  lui     $a0, %hi(D_80B7FED0)       ## $a0 = 80B80000
/* 0F154 80B78AF4 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 0F158 80B78AF8 460A3100 */  add.s   $f4, $f6, $f10             
/* 0F15C 80B78AFC 3C073ECC */  lui     $a3, 0x3ECC                ## $a3 = 3ECC0000
/* 0F160 80B78B00 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3ECCCCCD
/* 0F164 80B78B04 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 0F168 80B78B08 E7A40108 */  swc1    $f4, 0x0108($sp)           
/* 0F16C 80B78B0C C5E60028 */  lwc1    $f6, 0x0028($t7)           ## 00000028
/* 0F170 80B78B10 C7A40110 */  lwc1    $f4, 0x0110($sp)           
/* 0F174 80B78B14 2484FED0 */  addiu   $a0, $a0, %lo(D_80B7FED0)  ## $a0 = 80B7FED0
/* 0F178 80B78B18 46064280 */  add.s   $f10, $f8, $f6             
/* 0F17C 80B78B1C 3C0541F0 */  lui     $a1, 0x41F0                ## $a1 = 41F00000
/* 0F180 80B78B20 E7AA010C */  swc1    $f10, 0x010C($sp)          
/* 0F184 80B78B24 C5E8002C */  lwc1    $f8, 0x002C($t7)           ## 0000002C
/* 0F188 80B78B28 46082180 */  add.s   $f6, $f4, $f8              
/* 0F18C 80B78B2C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0F190 80B78B30 E7A60110 */  swc1    $f6, 0x0110($sp)           
/* 0F194 80B78B34 960B0020 */  lhu     $t3, 0x0020($s0)           ## 00000020
/* 0F198 80B78B38 2401DFFF */  addiu   $at, $zero, 0xDFFF         ## $at = FFFFDFFF
/* 0F19C 80B78B3C 3C0380B8 */  lui     $v1, %hi(D_80B7E088)       ## $v1 = 80B80000
/* 0F1A0 80B78B40 0161C027 */  nor     $t8, $t3, $at              
/* 0F1A4 80B78B44 1700001A */  bne     $t8, $zero, .L80B78BB0     
/* 0F1A8 80B78B48 2463E088 */  addiu   $v1, $v1, %lo(D_80B7E088)  ## $v1 = 80B7E088
/* 0F1AC 80B78B4C 80620000 */  lb      $v0, 0x0000($v1)           ## 80B7E088
/* 0F1B0 80B78B50 3C1980B8 */  lui     $t9, %hi(D_80B7E122)       ## $t9 = 80B80000
/* 0F1B4 80B78B54 04400016 */  bltz    $v0, .L80B78BB0            
/* 0F1B8 80B78B58 00000000 */  nop
/* 0F1BC 80B78B5C 8739E122 */  lh      $t9, %lo(D_80B7E122)($t9)  
/* 0F1C0 80B78B60 24490001 */  addiu   $t1, $v0, 0x0001           ## $t1 = 00000001
/* 0F1C4 80B78B64 17200012 */  bne     $t9, $zero, .L80B78BB0     
/* 0F1C8 80B78B68 00000000 */  nop
/* 0F1CC 80B78B6C A0690000 */  sb      $t1, 0x0000($v1)           ## 80B7E088
/* 0F1D0 80B78B70 80620000 */  lb      $v0, 0x0000($v1)           ## 80B7E088
/* 0F1D4 80B78B74 28410004 */  slti    $at, $v0, 0x0004           
/* 0F1D8 80B78B78 14200003 */  bne     $at, $zero, .L80B78B88     
/* 0F1DC 80B78B7C 00000000 */  nop
/* 0F1E0 80B78B80 A0600000 */  sb      $zero, 0x0000($v1)         ## 80B7E088
/* 0F1E4 80B78B84 80620000 */  lb      $v0, 0x0000($v1)           ## 80B7E088
.L80B78B88:
/* 0F1E8 80B78B88 10400003 */  beq     $v0, $zero, .L80B78B98     
/* 0F1EC 80B78B8C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0F1F0 80B78B90 14410005 */  bne     $v0, $at, .L80B78BA8       
/* 0F1F4 80B78B94 00000000 */  nop
.L80B78B98:
/* 0F1F8 80B78B98 0C01E221 */  jal     func_80078884              
/* 0F1FC 80B78B9C 24044814 */  addiu   $a0, $zero, 0x4814         ## $a0 = 00004814
/* 0F200 80B78BA0 10000003 */  beq     $zero, $zero, .L80B78BB0   
/* 0F204 80B78BA4 00000000 */  nop
.L80B78BA8:
/* 0F208 80B78BA8 0C01E221 */  jal     func_80078884              
/* 0F20C 80B78BAC 24044813 */  addiu   $a0, $zero, 0x4813         ## $a0 = 00004813
.L80B78BB0:
/* 0F210 80B78BB0 3C0A80B8 */  lui     $t2, %hi(D_80B7A694)       ## $t2 = 80B80000
/* 0F214 80B78BB4 854AA694 */  lh      $t2, %lo(D_80B7A694)($t2)  
/* 0F218 80B78BB8 3C0380B8 */  lui     $v1, %hi(D_80B7E088)       ## $v1 = 80B80000
/* 0F21C 80B78BBC 2463E088 */  addiu   $v1, $v1, %lo(D_80B7E088)  ## $v1 = 80B7E088
/* 0F220 80B78BC0 29410003 */  slti    $at, $t2, 0x0003           
/* 0F224 80B78BC4 14200016 */  bne     $at, $zero, .L80B78C20     
/* 0F228 80B78BC8 27A40114 */  addiu   $a0, $sp, 0x0114           ## $a0 = FFFFFFEC
/* 0F22C 80B78BCC 3C0142DC */  lui     $at, 0x42DC                ## $at = 42DC0000
/* 0F230 80B78BD0 C7A000EC */  lwc1    $f0, 0x00EC($sp)           
/* 0F234 80B78BD4 44815000 */  mtc1    $at, $f10                  ## $f10 = 110.00
/* 0F238 80B78BD8 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 0F23C 80B78BDC 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 0F240 80B78BE0 460A003C */  c.lt.s  $f0, $f10                  
/* 0F244 80B78BE4 00000000 */  nop
/* 0F248 80B78BE8 45020004 */  bc1fl   .L80B78BFC                 
/* 0F24C 80B78BEC 44812000 */  mtc1    $at, $f4                   ## $f4 = 300.00
/* 0F250 80B78BF0 1000000B */  beq     $zero, $zero, .L80B78C20   
/* 0F254 80B78BF4 A06C0000 */  sb      $t4, 0x0000($v1)           ## 80B7E088
/* 0F258 80B78BF8 44812000 */  mtc1    $at, $f4                   ## $f4 = 300.00
.L80B78BFC:
/* 0F25C 80B78BFC 00000000 */  nop
/* 0F260 80B78C00 4600203C */  c.lt.s  $f4, $f0                   
/* 0F264 80B78C04 00000000 */  nop
/* 0F268 80B78C08 45020006 */  bc1fl   .L80B78C24                 
/* 0F26C 80B78C0C 80620000 */  lb      $v0, 0x0000($v1)           ## 80B7E088
/* 0F270 80B78C10 806D0000 */  lb      $t5, 0x0000($v1)           ## 80B7E088
/* 0F274 80B78C14 05A30003 */  bgezl   $t5, .L80B78C24            
/* 0F278 80B78C18 80620000 */  lb      $v0, 0x0000($v1)           ## 80B7E088
/* 0F27C 80B78C1C A0600000 */  sb      $zero, 0x0000($v1)         ## 80B7E088
.L80B78C20:
/* 0F280 80B78C20 80620000 */  lb      $v0, 0x0000($v1)           ## 80B7E088
.L80B78C24:
/* 0F284 80B78C24 C7AE00FC */  lwc1    $f14, 0x00FC($sp)          
/* 0F288 80B78C28 C7B00104 */  lwc1    $f16, 0x0104($sp)          
/* 0F28C 80B78C2C 1840003A */  blez    $v0, .L80B78D18            
/* 0F290 80B78C30 27A500FC */  addiu   $a1, $sp, 0x00FC           ## $a1 = FFFFFFD4
/* 0F294 80B78C34 460E7202 */  mul.s   $f8, $f14, $f14            
/* 0F298 80B78C38 3C0180B8 */  lui     $at, %hi(D_80B7B89C)       ## $at = 80B80000
/* 0F29C 80B78C3C C42AB89C */  lwc1    $f10, %lo(D_80B7B89C)($at) 
/* 0F2A0 80B78C40 46108182 */  mul.s   $f6, $f16, $f16            
/* 0F2A4 80B78C44 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0F2A8 80B78C48 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 0F2AC 80B78C4C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0F2B0 80B78C50 46064000 */  add.s   $f0, $f8, $f6              
/* 0F2B4 80B78C54 46000004 */  sqrt.s  $f0, $f0                   
/* 0F2B8 80B78C58 460A0302 */  mul.s   $f12, $f0, $f10            
/* 0F2BC 80B78C5C 460C203C */  c.lt.s  $f4, $f12                  
/* 0F2C0 80B78C60 00000000 */  nop
/* 0F2C4 80B78C64 45020004 */  bc1fl   .L80B78C78                 
/* 0F2C8 80B78C68 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0F2CC 80B78C6C 44816000 */  mtc1    $at, $f12                  ## $f12 = 0.00
/* 0F2D0 80B78C70 00000000 */  nop
/* 0F2D4 80B78C74 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
.L80B78C78:
/* 0F2D8 80B78C78 14410003 */  bne     $v0, $at, .L80B78C88       
/* 0F2DC 80B78C7C 3C0180B8 */  lui     $at, %hi(D_80B7B8A0)       ## $at = 80B80000
/* 0F2E0 80B78C80 10000003 */  beq     $zero, $zero, .L80B78C90   
/* 0F2E4 80B78C84 C422B8A0 */  lwc1    $f2, %lo(D_80B7B8A0)($at)  
.L80B78C88:
/* 0F2E8 80B78C88 3C0180B8 */  lui     $at, %hi(D_80B7B8A4)       ## $at = 80B80000
/* 0F2EC 80B78C8C C422B8A4 */  lwc1    $f2, %lo(D_80B7B8A4)($at)  
.L80B78C90:
/* 0F2F0 80B78C90 3C0180B8 */  lui     $at, %hi(D_80B7B8A8)       ## $at = 80B80000
/* 0F2F4 80B78C94 C428B8A8 */  lwc1    $f8, %lo(D_80B7B8A8)($at)  
/* 0F2F8 80B78C98 3C0180B8 */  lui     $at, %hi(D_80B7B8AC)       ## $at = 80B80000
/* 0F2FC 80B78C9C C42AB8AC */  lwc1    $f10, %lo(D_80B7B8AC)($at) 
/* 0F300 80B78CA0 46024180 */  add.s   $f6, $f8, $f2              
/* 0F304 80B78CA4 3C0180B8 */  lui     $at, %hi(D_80B7E0B8)       ## $at = 80B80000
/* 0F308 80B78CA8 460A6102 */  mul.s   $f4, $f12, $f10            
/* 0F30C 80B78CAC C7B00108 */  lwc1    $f16, 0x0108($sp)          
/* 0F310 80B78CB0 C428E0B8 */  lwc1    $f8, %lo(D_80B7E0B8)($at)  
/* 0F314 80B78CB4 C7AE010C */  lwc1    $f14, 0x010C($sp)          
/* 0F318 80B78CB8 C7B20110 */  lwc1    $f18, 0x0110($sp)          
/* 0F31C 80B78CBC 46104281 */  sub.s   $f10, $f8, $f16            
/* 0F320 80B78CC0 46043000 */  add.s   $f0, $f6, $f4              
/* 0F324 80B78CC4 C424E0BC */  lwc1    $f4, %lo(D_80B7E0BC)($at)  
/* 0F328 80B78CC8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0F32C 80B78CCC 46005182 */  mul.s   $f6, $f10, $f0             
/* 0F330 80B78CD0 460E2201 */  sub.s   $f8, $f4, $f14             
/* 0F334 80B78CD4 46004282 */  mul.s   $f10, $f8, $f0             
/* 0F338 80B78CD8 46068400 */  add.s   $f16, $f16, $f6            
/* 0F33C 80B78CDC 44813000 */  mtc1    $at, $f6                   ## $f6 = 20.00
/* 0F340 80B78CE0 3C0180B8 */  lui     $at, %hi(D_80B7E0C0)       ## $at = 80B80000
/* 0F344 80B78CE4 C428E0C0 */  lwc1    $f8, %lo(D_80B7E0C0)($at)  
/* 0F348 80B78CE8 3C0180B8 */  lui     $at, %hi(D_80B7B8B0)       ## $at = 80B80000
/* 0F34C 80B78CEC 46065100 */  add.s   $f4, $f10, $f6             
/* 0F350 80B78CF0 E7B00108 */  swc1    $f16, 0x0108($sp)          
/* 0F354 80B78CF4 46124281 */  sub.s   $f10, $f8, $f18            
/* 0F358 80B78CF8 46047380 */  add.s   $f14, $f14, $f4            
/* 0F35C 80B78CFC 46005182 */  mul.s   $f6, $f10, $f0             
/* 0F360 80B78D00 C424B8B0 */  lwc1    $f4, %lo(D_80B7B8B0)($at)  
/* 0F364 80B78D04 3C0180B8 */  lui     $at, %hi(D_80B7E14C)       ## $at = 80B80000
/* 0F368 80B78D08 E7AE010C */  swc1    $f14, 0x010C($sp)          
/* 0F36C 80B78D0C E424E14C */  swc1    $f4, %lo(D_80B7E14C)($at)  
/* 0F370 80B78D10 46069480 */  add.s   $f18, $f18, $f6            
/* 0F374 80B78D14 E7B20110 */  swc1    $f18, 0x0110($sp)          
.L80B78D18:
/* 0F378 80B78D18 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0F37C 80B78D1C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0F380 80B78D20 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 0F384 80B78D24 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 0F388 80B78D28 E7A80114 */  swc1    $f8, 0x0114($sp)           
/* 0F38C 80B78D2C E7A20118 */  swc1    $f2, 0x0118($sp)           
/* 0F390 80B78D30 0C0346BD */  jal     Matrix_MultVec3f              
/* 0F394 80B78D34 E7AA011C */  swc1    $f10, 0x011C($sp)          
/* 0F398 80B78D38 C7AE00FC */  lwc1    $f14, 0x00FC($sp)          
/* 0F39C 80B78D3C 3C0180B8 */  lui     $at, %hi(D_80B7FECC)       ## $at = 80B80000
/* 0F3A0 80B78D40 C426FECC */  lwc1    $f6, %lo(D_80B7FECC)($at)  
/* 0F3A4 80B78D44 46007005 */  abs.s   $f0, $f14                  
/* 0F3A8 80B78D48 C7B00108 */  lwc1    $f16, 0x0108($sp)          
/* 0F3AC 80B78D4C 46060102 */  mul.s   $f4, $f0, $f6              
/* 0F3B0 80B78D50 3C0480B8 */  lui     $a0, %hi(D_80B7FEA8)       ## $a0 = 80B80000
/* 0F3B4 80B78D54 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 0F3B8 80B78D58 44058000 */  mfc1    $a1, $f16                  
/* 0F3BC 80B78D5C 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 0F3C0 80B78D60 2484FEA8 */  addiu   $a0, $a0, %lo(D_80B7FEA8)  ## $a0 = 80B7FEA8
/* 0F3C4 80B78D64 44072000 */  mfc1    $a3, $f4                   
/* 0F3C8 80B78D68 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0F3CC 80B78D6C 00000000 */  nop
/* 0F3D0 80B78D70 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0F3D4 80B78D74 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 0F3D8 80B78D78 3C0180B8 */  lui     $at, %hi(D_80B7FECC)       ## $at = 80B80000
/* 0F3DC 80B78D7C C42AFECC */  lwc1    $f10, %lo(D_80B7FECC)($at) 
/* 0F3E0 80B78D80 C7AE010C */  lwc1    $f14, 0x010C($sp)          
/* 0F3E4 80B78D84 3C0480B8 */  lui     $a0, %hi(D_80B7FEAC)       ## $a0 = 80B80000
/* 0F3E8 80B78D88 460A4182 */  mul.s   $f6, $f8, $f10             
/* 0F3EC 80B78D8C 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 0F3F0 80B78D90 44057000 */  mfc1    $a1, $f14                  
/* 0F3F4 80B78D94 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 0F3F8 80B78D98 2484FEAC */  addiu   $a0, $a0, %lo(D_80B7FEAC)  ## $a0 = 80B7FEAC
/* 0F3FC 80B78D9C 44073000 */  mfc1    $a3, $f6                   
/* 0F400 80B78DA0 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0F404 80B78DA4 00000000 */  nop
/* 0F408 80B78DA8 C7B00104 */  lwc1    $f16, 0x0104($sp)          
/* 0F40C 80B78DAC 3C0180B8 */  lui     $at, %hi(D_80B7FECC)       ## $at = 80B80000
/* 0F410 80B78DB0 C424FECC */  lwc1    $f4, %lo(D_80B7FECC)($at)  
/* 0F414 80B78DB4 46008005 */  abs.s   $f0, $f16                  
/* 0F418 80B78DB8 C7B20110 */  lwc1    $f18, 0x0110($sp)          
/* 0F41C 80B78DBC 46040202 */  mul.s   $f8, $f0, $f4              
/* 0F420 80B78DC0 3C0480B8 */  lui     $a0, %hi(D_80B7FEB0)       ## $a0 = 80B80000
/* 0F424 80B78DC4 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 0F428 80B78DC8 44059000 */  mfc1    $a1, $f18                  
/* 0F42C 80B78DCC 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 0F430 80B78DD0 2484FEB0 */  addiu   $a0, $a0, %lo(D_80B7FEB0)  ## $a0 = 80B7FEB0
/* 0F434 80B78DD4 44074000 */  mfc1    $a3, $f8                   
/* 0F438 80B78DD8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0F43C 80B78DDC 00000000 */  nop
/* 0F440 80B78DE0 100001DE */  beq     $zero, $zero, .L80B7955C   
/* 0F444 80B78DE4 8FA800E4 */  lw      $t0, 0x00E4($sp)           
glabel L80B78DE8
/* 0F448 80B78DE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F44C 80B78DEC 0C030129 */  jal     func_800C04A4              
/* 0F450 80B78DF0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0F454 80B78DF4 3C0E80B8 */  lui     $t6, %hi(D_80B7FEA8)       ## $t6 = 80B80000
/* 0F458 80B78DF8 25CEFEA8 */  addiu   $t6, $t6, %lo(D_80B7FEA8)  ## $t6 = 80B7FEA8
/* 0F45C 80B78DFC 8DCB0000 */  lw      $t3, 0x0000($t6)           ## 80B7FEA8
/* 0F460 80B78E00 3C1880B8 */  lui     $t8, %hi(D_80B7FEA8)       ## $t8 = 80B80000
/* 0F464 80B78E04 2718FEA8 */  addiu   $t8, $t8, %lo(D_80B7FEA8)  ## $t8 = 80B7FEA8
/* 0F468 80B78E08 AC4B005C */  sw      $t3, 0x005C($v0)           ## 0000005C
/* 0F46C 80B78E0C 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80B7FEAC
/* 0F470 80B78E10 3C0A80B8 */  lui     $t2, %hi(D_80B7FEB8)       ## $t2 = 80B80000
/* 0F474 80B78E14 254AFEB8 */  addiu   $t2, $t2, %lo(D_80B7FEB8)  ## $t2 = 80B7FEB8
/* 0F478 80B78E18 AC4F0060 */  sw      $t7, 0x0060($v0)           ## 00000060
/* 0F47C 80B78E1C 8DCB0008 */  lw      $t3, 0x0008($t6)           ## 80B7FEB0
/* 0F480 80B78E20 3C0580B8 */  lui     $a1, %hi(D_80B7FEC4)       ## $a1 = 80B80000
/* 0F484 80B78E24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F488 80B78E28 AC4B0064 */  sw      $t3, 0x0064($v0)           ## 00000064
/* 0F48C 80B78E2C 8F090000 */  lw      $t1, 0x0000($t8)           ## 80B7FEA8
/* 0F490 80B78E30 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0F494 80B78E34 AC490074 */  sw      $t1, 0x0074($v0)           ## 00000074
/* 0F498 80B78E38 8F190004 */  lw      $t9, 0x0004($t8)           ## 80B7FEAC
/* 0F49C 80B78E3C AC590078 */  sw      $t9, 0x0078($v0)           ## 00000078
/* 0F4A0 80B78E40 8F090008 */  lw      $t1, 0x0008($t8)           ## 80B7FEB0
/* 0F4A4 80B78E44 AC49007C */  sw      $t1, 0x007C($v0)           ## 0000007C
/* 0F4A8 80B78E48 8D4D0000 */  lw      $t5, 0x0000($t2)           ## 80B7FEB8
/* 0F4AC 80B78E4C AC4D0050 */  sw      $t5, 0x0050($v0)           ## 00000050
/* 0F4B0 80B78E50 8D4C0004 */  lw      $t4, 0x0004($t2)           ## 80B7FEBC
/* 0F4B4 80B78E54 AC4C0054 */  sw      $t4, 0x0054($v0)           ## 00000054
/* 0F4B8 80B78E58 8D4D0008 */  lw      $t5, 0x0008($t2)           ## 80B7FEC0
/* 0F4BC 80B78E5C AC4D0058 */  sw      $t5, 0x0058($v0)           ## 00000058
/* 0F4C0 80B78E60 0C03022B */  jal     func_800C08AC              
/* 0F4C4 80B78E64 84A5FEC4 */  lh      $a1, %lo(D_80B7FEC4)($a1)  
/* 0F4C8 80B78E68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F4CC 80B78E6C 0C01914D */  jal     func_80064534              
/* 0F4D0 80B78E70 26051D64 */  addiu   $a1, $s0, 0x1D64           ## $a1 = 00001D64
/* 0F4D4 80B78E74 3C0180B8 */  lui     $at, %hi(D_80B7A6CC)       ## $at = 80B80000
/* 0F4D8 80B78E78 A020A6CC */  sb      $zero, %lo(D_80B7A6CC)($at) 
/* 0F4DC 80B78E7C 3C0180B8 */  lui     $at, %hi(D_80B7FEC4)       ## $at = 80B80000
/* 0F4E0 80B78E80 A420FEC4 */  sh      $zero, %lo(D_80B7FEC4)($at) 
/* 0F4E4 80B78E84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F4E8 80B78E88 0C01C180 */  jal     func_80070600              
/* 0F4EC 80B78E8C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0F4F0 80B78E90 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0F4F4 80B78E94 00300821 */  addu    $at, $at, $s0              
/* 0F4F8 80B78E98 A4200AC2 */  sh      $zero, 0x0AC2($at)         ## 00010AC2
/* 0F4FC 80B78E9C 8FAF00E4 */  lw      $t7, 0x00E4($sp)           
/* 0F500 80B78EA0 240EFFFB */  addiu   $t6, $zero, 0xFFFB         ## $t6 = FFFFFFFB
/* 0F504 80B78EA4 3C0180B8 */  lui     $at, %hi(D_80B7E0B0)       ## $at = 80B80000
/* 0F508 80B78EA8 240B0005 */  addiu   $t3, $zero, 0x0005         ## $t3 = 00000005
/* 0F50C 80B78EAC A5EE0860 */  sh      $t6, 0x0860($t7)           ## 00000860
/* 0F510 80B78EB0 A42BE0B0 */  sh      $t3, %lo(D_80B7E0B0)($at)  
/* 0F514 80B78EB4 100001A9 */  beq     $zero, $zero, .L80B7955C   
/* 0F518 80B78EB8 8FA800E4 */  lw      $t0, 0x00E4($sp)           
glabel L80B78EBC
/* 0F51C 80B78EBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F520 80B78EC0 0C019148 */  jal     func_80064520              
/* 0F524 80B78EC4 26051D64 */  addiu   $a1, $s0, 0x1D64           ## $a1 = 00001D64
/* 0F528 80B78EC8 0C03008C */  jal     func_800C0230              
/* 0F52C 80B78ECC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F530 80B78ED0 3C0180B8 */  lui     $at, %hi(D_80B7FEC4)       ## $at = 80B80000
/* 0F534 80B78ED4 A422FEC4 */  sh      $v0, %lo(D_80B7FEC4)($at)  
/* 0F538 80B78ED8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F53C 80B78EDC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0F540 80B78EE0 0C0300C5 */  jal     func_800C0314              
/* 0F544 80B78EE4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0F548 80B78EE8 3C0580B8 */  lui     $a1, %hi(D_80B7FEC4)       ## $a1 = 80B80000
/* 0F54C 80B78EEC 84A5FEC4 */  lh      $a1, %lo(D_80B7FEC4)($a1)  
/* 0F550 80B78EF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F554 80B78EF4 0C0300C5 */  jal     func_800C0314              
/* 0F558 80B78EF8 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 0F55C 80B78EFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F560 80B78F00 8FA50128 */  lw      $a1, 0x0128($sp)           
/* 0F564 80B78F04 0C00B7D5 */  jal     func_8002DF54              
/* 0F568 80B78F08 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 0F56C 80B78F0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F570 80B78F10 0C030129 */  jal     func_800C04A4              
/* 0F574 80B78F14 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0F578 80B78F18 C44A005C */  lwc1    $f10, 0x005C($v0)          ## 0000005C
/* 0F57C 80B78F1C 3C0180B8 */  lui     $at, %hi(D_80B7FEA8)       ## $at = 80B80000
/* 0F580 80B78F20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F584 80B78F24 E42AFEA8 */  swc1    $f10, %lo(D_80B7FEA8)($at) 
/* 0F588 80B78F28 C4460060 */  lwc1    $f6, 0x0060($v0)           ## 00000060
/* 0F58C 80B78F2C 2405409E */  addiu   $a1, $zero, 0x409E         ## $a1 = 0000409E
/* 0F590 80B78F30 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0F594 80B78F34 E426FEAC */  swc1    $f6, %lo(D_80B7FEAC)($at)  
/* 0F598 80B78F38 C4440064 */  lwc1    $f4, 0x0064($v0)           ## 00000064
/* 0F59C 80B78F3C 3C0180B8 */  lui     $at, %hi(D_80B7FEB0)       ## $at = 80B80000
/* 0F5A0 80B78F40 E424FEB0 */  swc1    $f4, %lo(D_80B7FEB0)($at)  
/* 0F5A4 80B78F44 C4480050 */  lwc1    $f8, 0x0050($v0)           ## 00000050
/* 0F5A8 80B78F48 3C0180B8 */  lui     $at, %hi(D_80B7FEB8)       ## $at = 80B80000
/* 0F5AC 80B78F4C E428FEB8 */  swc1    $f8, %lo(D_80B7FEB8)($at)  
/* 0F5B0 80B78F50 C44A0054 */  lwc1    $f10, 0x0054($v0)          ## 00000054
/* 0F5B4 80B78F54 E42AFEBC */  swc1    $f10, %lo(D_80B7FEBC)($at) 
/* 0F5B8 80B78F58 C4460058 */  lwc1    $f6, 0x0058($v0)           ## 00000058
/* 0F5BC 80B78F5C 3C0180B8 */  lui     $at, %hi(D_80B7FEC0)       ## $at = 80B80000
/* 0F5C0 80B78F60 0C042DA0 */  jal     func_8010B680              
/* 0F5C4 80B78F64 E426FEC0 */  swc1    $f6, %lo(D_80B7FEC0)($at)  
/* 0F5C8 80B78F68 2418000B */  addiu   $t8, $zero, 0x000B         ## $t8 = 0000000B
/* 0F5CC 80B78F6C 3C0180B8 */  lui     $at, %hi(D_80B7A6CC)       ## $at = 80B80000
/* 0F5D0 80B78F70 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 0F5D4 80B78F74 A038A6CC */  sb      $t8, %lo(D_80B7A6CC)($at)  
/* 0F5D8 80B78F78 24050096 */  addiu   $a1, $zero, 0x0096         ## $a1 = 00000096
/* 0F5DC 80B78F7C 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 0F5E0 80B78F80 0C02A7DB */  jal     func_800A9F6C              
/* 0F5E4 80B78F84 2407000A */  addiu   $a3, $zero, 0x000A         ## $a3 = 0000000A
/* 0F5E8 80B78F88 8FA800E4 */  lw      $t0, 0x00E4($sp)           
glabel L80B78F8C
/* 0F5EC 80B78F8C 3C0144AA */  lui     $at, 0x44AA                ## $at = 44AA0000
/* 0F5F0 80B78F90 44812000 */  mtc1    $at, $f4                   ## $f4 = 1360.00
/* 0F5F4 80B78F94 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0F5F8 80B78F98 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 0F5FC 80B78F9C E504002C */  swc1    $f4, 0x002C($t0)           ## 0000002C
/* 0F600 80B78FA0 0C042F6F */  jal     func_8010BDBC              
/* 0F604 80B78FA4 E5080068 */  swc1    $f8, 0x0068($t0)           ## 00000068
/* 0F608 80B78FA8 14400034 */  bne     $v0, $zero, .L80B7907C     
/* 0F60C 80B78FAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F610 80B78FB0 26191D64 */  addiu   $t9, $s0, 0x1D64           ## $t9 = 00001D64
/* 0F614 80B78FB4 AFB90038 */  sw      $t9, 0x0038($sp)           
/* 0F618 80B78FB8 0C030129 */  jal     func_800C04A4              
/* 0F61C 80B78FBC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0F620 80B78FC0 3C0380B8 */  lui     $v1, %hi(D_80B7FEA8)       ## $v1 = 80B80000
/* 0F624 80B78FC4 2463FEA8 */  addiu   $v1, $v1, %lo(D_80B7FEA8)  ## $v1 = 80B7FEA8
/* 0F628 80B78FC8 8C6A0000 */  lw      $t2, 0x0000($v1)           ## 80B7FEA8
/* 0F62C 80B78FCC 3C0E80B8 */  lui     $t6, %hi(D_80B7FEB8)       ## $t6 = 80B80000
/* 0F630 80B78FD0 25CEFEB8 */  addiu   $t6, $t6, %lo(D_80B7FEB8)  ## $t6 = 80B7FEB8
/* 0F634 80B78FD4 AC4A005C */  sw      $t2, 0x005C($v0)           ## 0000005C
/* 0F638 80B78FD8 8C690004 */  lw      $t1, 0x0004($v1)           ## 80B7FEAC
/* 0F63C 80B78FDC 3C0580B8 */  lui     $a1, %hi(D_80B7FEC4)       ## $a1 = 80B80000
/* 0F640 80B78FE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F644 80B78FE4 AC490060 */  sw      $t1, 0x0060($v0)           ## 00000060
/* 0F648 80B78FE8 8C6A0008 */  lw      $t2, 0x0008($v1)           ## 80B7FEB0
/* 0F64C 80B78FEC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0F650 80B78FF0 AC4A0064 */  sw      $t2, 0x0064($v0)           ## 00000064
/* 0F654 80B78FF4 8C6D0000 */  lw      $t5, 0x0000($v1)           ## 80B7FEA8
/* 0F658 80B78FF8 AC4D0074 */  sw      $t5, 0x0074($v0)           ## 00000074
/* 0F65C 80B78FFC 8C6C0004 */  lw      $t4, 0x0004($v1)           ## 80B7FEAC
/* 0F660 80B79000 AC4C0078 */  sw      $t4, 0x0078($v0)           ## 00000078
/* 0F664 80B79004 8C6D0008 */  lw      $t5, 0x0008($v1)           ## 80B7FEB0
/* 0F668 80B79008 AC4D007C */  sw      $t5, 0x007C($v0)           ## 0000007C
/* 0F66C 80B7900C 8DCB0000 */  lw      $t3, 0x0000($t6)           ## 80B7FEB8
/* 0F670 80B79010 AC4B0050 */  sw      $t3, 0x0050($v0)           ## 00000050
/* 0F674 80B79014 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80B7FEBC
/* 0F678 80B79018 AC4F0054 */  sw      $t7, 0x0054($v0)           ## 00000054
/* 0F67C 80B7901C 8DCB0008 */  lw      $t3, 0x0008($t6)           ## 80B7FEC0
/* 0F680 80B79020 AC4B0058 */  sw      $t3, 0x0058($v0)           ## 00000058
/* 0F684 80B79024 0C03022B */  jal     func_800C08AC              
/* 0F688 80B79028 84A5FEC4 */  lh      $a1, %lo(D_80B7FEC4)($a1)  
/* 0F68C 80B7902C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F690 80B79030 0C01914D */  jal     func_80064534              
/* 0F694 80B79034 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 0F698 80B79038 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F69C 80B7903C 8FA50128 */  lw      $a1, 0x0128($sp)           
/* 0F6A0 80B79040 0C00B7D5 */  jal     func_8002DF54              
/* 0F6A4 80B79044 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 0F6A8 80B79048 3C0180B8 */  lui     $at, %hi(D_80B7A6CC)       ## $at = 80B80000
/* 0F6AC 80B7904C A020A6CC */  sb      $zero, %lo(D_80B7A6CC)($at) 
/* 0F6B0 80B79050 3C0180B8 */  lui     $at, %hi(D_80B7FEC4)       ## $at = 80B80000
/* 0F6B4 80B79054 A420FEC4 */  sh      $zero, %lo(D_80B7FEC4)($at) 
/* 0F6B8 80B79058 3C0180B8 */  lui     $at, %hi(D_80B7A6D0)       ## $at = 80B80000
/* 0F6BC 80B7905C 2418001E */  addiu   $t8, $zero, 0x001E         ## $t8 = 0000001E
/* 0F6C0 80B79060 A038A6D0 */  sb      $t8, %lo(D_80B7A6D0)($at)  
/* 0F6C4 80B79064 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F6C8 80B79068 0C01C180 */  jal     func_80070600              
/* 0F6CC 80B7906C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0F6D0 80B79070 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0F6D4 80B79074 00300821 */  addu    $at, $at, $s0              
/* 0F6D8 80B79078 A4200AC2 */  sh      $zero, 0x0AC2($at)         ## 00010AC2
.L80B7907C:
/* 0F6DC 80B7907C 10000137 */  beq     $zero, $zero, .L80B7955C   
/* 0F6E0 80B79080 8FA800E4 */  lw      $t0, 0x00E4($sp)           
glabel L80B79084
/* 0F6E4 80B79084 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F6E8 80B79088 0C019148 */  jal     func_80064520              
/* 0F6EC 80B7908C 26051D64 */  addiu   $a1, $s0, 0x1D64           ## $a1 = 00001D64
/* 0F6F0 80B79090 0C03008C */  jal     func_800C0230              
/* 0F6F4 80B79094 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F6F8 80B79098 3C0180B8 */  lui     $at, %hi(D_80B7FEC4)       ## $at = 80B80000
/* 0F6FC 80B7909C A422FEC4 */  sh      $v0, %lo(D_80B7FEC4)($at)  
/* 0F700 80B790A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F704 80B790A4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0F708 80B790A8 0C0300C5 */  jal     func_800C0314              
/* 0F70C 80B790AC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0F710 80B790B0 3C0580B8 */  lui     $a1, %hi(D_80B7FEC4)       ## $a1 = 80B80000
/* 0F714 80B790B4 84A5FEC4 */  lh      $a1, %lo(D_80B7FEC4)($a1)  
/* 0F718 80B790B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F71C 80B790BC 0C0300C5 */  jal     func_800C0314              
/* 0F720 80B790C0 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 0F724 80B790C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F728 80B790C8 8FA50128 */  lw      $a1, 0x0128($sp)           
/* 0F72C 80B790CC 0C00B7D5 */  jal     func_8002DF54              
/* 0F730 80B790D0 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 0F734 80B790D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F738 80B790D8 0C030129 */  jal     func_800C04A4              
/* 0F73C 80B790DC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0F740 80B790E0 C44A005C */  lwc1    $f10, 0x005C($v0)          ## 0000005C
/* 0F744 80B790E4 3C0380B8 */  lui     $v1, %hi(D_80B7FEA8)       ## $v1 = 80B80000
/* 0F748 80B790E8 2463FEA8 */  addiu   $v1, $v1, %lo(D_80B7FEA8)  ## $v1 = 80B7FEA8
/* 0F74C 80B790EC E46A0000 */  swc1    $f10, 0x0000($v1)          ## 80B7FEA8
/* 0F750 80B790F0 C4460060 */  lwc1    $f6, 0x0060($v0)           ## 00000060
/* 0F754 80B790F4 3C0780B8 */  lui     $a3, %hi(D_80B7FEB8)       ## $a3 = 80B80000
/* 0F758 80B790F8 24E7FEB8 */  addiu   $a3, $a3, %lo(D_80B7FEB8)  ## $a3 = 80B7FEB8
/* 0F75C 80B790FC E4660004 */  swc1    $f6, 0x0004($v1)           ## 80B7FEAC
/* 0F760 80B79100 C4440064 */  lwc1    $f4, 0x0064($v0)           ## 00000064
/* 0F764 80B79104 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F768 80B79108 2405409A */  addiu   $a1, $zero, 0x409A         ## $a1 = 0000409A
/* 0F76C 80B7910C E4640008 */  swc1    $f4, 0x0008($v1)           ## 80B7FEB0
/* 0F770 80B79110 C4480050 */  lwc1    $f8, 0x0050($v0)           ## 00000050
/* 0F774 80B79114 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0F778 80B79118 E4E80000 */  swc1    $f8, 0x0000($a3)           ## 80B7FEB8
/* 0F77C 80B7911C C44A0054 */  lwc1    $f10, 0x0054($v0)          ## 00000054
/* 0F780 80B79120 E4EA0004 */  swc1    $f10, 0x0004($a3)          ## 80B7FEBC
/* 0F784 80B79124 C4460058 */  lwc1    $f6, 0x0058($v0)           ## 00000058
/* 0F788 80B79128 0C042DA0 */  jal     func_8010B680              
/* 0F78C 80B7912C E4E60008 */  swc1    $f6, 0x0008($a3)           ## 80B7FEC0
/* 0F790 80B79130 24190015 */  addiu   $t9, $zero, 0x0015         ## $t9 = 00000015
/* 0F794 80B79134 3C0180B8 */  lui     $at, %hi(D_80B7A6CC)       ## $at = 80B80000
/* 0F798 80B79138 A039A6CC */  sb      $t9, %lo(D_80B7A6CC)($at)  
/* 0F79C 80B7913C 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 0F7A0 80B79140 44812000 */  mtc1    $at, $f4                   ## $f4 = 45.00
/* 0F7A4 80B79144 3C0180B8 */  lui     $at, %hi(D_80B7FEC8)       ## $at = 80B80000
/* 0F7A8 80B79148 2409000A */  addiu   $t1, $zero, 0x000A         ## $t1 = 0000000A
/* 0F7AC 80B7914C E424FEC8 */  swc1    $f4, %lo(D_80B7FEC8)($at)  
/* 0F7B0 80B79150 3C0180B8 */  lui     $at, %hi(D_80B7A6D0)       ## $at = 80B80000
/* 0F7B4 80B79154 A029A6D0 */  sb      $t1, %lo(D_80B7A6D0)($at)  
glabel L80B79158
/* 0F7B8 80B79158 3C0A80B8 */  lui     $t2, %hi(D_80B7A6D0)       ## $t2 = 80B80000
/* 0F7BC 80B7915C 914AA6D0 */  lbu     $t2, %lo(D_80B7A6D0)($t2)  
/* 0F7C0 80B79160 15400011 */  bne     $t2, $zero, .L80B791A8     
/* 0F7C4 80B79164 00000000 */  nop
/* 0F7C8 80B79168 0C041AF2 */  jal     func_80106BC8              
/* 0F7CC 80B7916C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F7D0 80B79170 1040000D */  beq     $v0, $zero, .L80B791A8     
/* 0F7D4 80B79174 240C0016 */  addiu   $t4, $zero, 0x0016         ## $t4 = 00000016
/* 0F7D8 80B79178 3C0180B8 */  lui     $at, %hi(D_80B7A6CC)       ## $at = 80B80000
/* 0F7DC 80B7917C A02CA6CC */  sb      $t4, %lo(D_80B7A6CC)($at)  
/* 0F7E0 80B79180 3C0180B8 */  lui     $at, %hi(D_80B7A6D0)       ## $at = 80B80000
/* 0F7E4 80B79184 240D0028 */  addiu   $t5, $zero, 0x0028         ## $t5 = 00000028
/* 0F7E8 80B79188 A02DA6D0 */  sb      $t5, %lo(D_80B7A6D0)($at)  
/* 0F7EC 80B7918C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F7F0 80B79190 8FA50128 */  lw      $a1, 0x0128($sp)           
/* 0F7F4 80B79194 0C00B7D5 */  jal     func_8002DF54              
/* 0F7F8 80B79198 2406001C */  addiu   $a2, $zero, 0x001C         ## $a2 = 0000001C
/* 0F7FC 80B7919C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0F800 80B791A0 3C0180B8 */  lui     $at, %hi(D_80B7FEE4)       ## $at = 80B80000
/* 0F804 80B791A4 E428FEE4 */  swc1    $f8, %lo(D_80B7FEE4)($at)  
.L80B791A8:
/* 0F808 80B791A8 100000EC */  beq     $zero, $zero, .L80B7955C   
/* 0F80C 80B791AC 8FA800E4 */  lw      $t0, 0x00E4($sp)           
glabel L80B791B0
/* 0F810 80B791B0 3C0E80B8 */  lui     $t6, %hi(D_80B7A6D0)       ## $t6 = 80B80000
/* 0F814 80B791B4 91CEA6D0 */  lbu     $t6, %lo(D_80B7A6D0)($t6)  
/* 0F818 80B791B8 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 0F81C 80B791BC 55C10004 */  bnel    $t6, $at, .L80B791D0       
/* 0F820 80B791C0 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0F824 80B791C4 0C03E803 */  jal     Audio_SetBGM
              
/* 0F828 80B791C8 24040922 */  addiu   $a0, $zero, 0x0922         ## $a0 = 00000922
/* 0F82C 80B791CC 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
.L80B791D0:
/* 0F830 80B791D0 3C0180B8 */  lui     $at, %hi(D_80B7A6D4)       ## $at = 80B80000
/* 0F834 80B791D4 3C0480B8 */  lui     $a0, %hi(D_80B7FEE4)       ## $a0 = 80B80000
/* 0F838 80B791D8 A02FA6D4 */  sb      $t7, %lo(D_80B7A6D4)($at)  
/* 0F83C 80B791DC 2484FEE4 */  addiu   $a0, $a0, %lo(D_80B7FEE4)  ## $a0 = 80B7FEE4
/* 0F840 80B791E0 3C05428E */  lui     $a1, 0x428E                ## $a1 = 428E0000
/* 0F844 80B791E4 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 0F848 80B791E8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0F84C 80B791EC 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 0F850 80B791F0 8FAB00E4 */  lw      $t3, 0x00E4($sp)           
/* 0F854 80B791F4 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 0F858 80B791F8 44812000 */  mtc1    $at, $f4                   ## $f4 = 32768.00
/* 0F85C 80B791FC 857800B6 */  lh      $t8, 0x00B6($t3)           ## 000000B6
/* 0F860 80B79200 3C0180B8 */  lui     $at, %hi(D_80B7B8B4)       ## $at = 80B80000
/* 0F864 80B79204 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0F868 80B79208 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 0F86C 80B7920C 00000000 */  nop
/* 0F870 80B79210 468051A0 */  cvt.s.w $f6, $f10                  
/* 0F874 80B79214 C42AB8B4 */  lwc1    $f10, %lo(D_80B7B8B4)($at) 
/* 0F878 80B79218 46043203 */  div.s   $f8, $f6, $f4              
/* 0F87C 80B7921C 460A4302 */  mul.s   $f12, $f8, $f10            
/* 0F880 80B79220 0C034348 */  jal     Matrix_RotateY              
/* 0F884 80B79224 00000000 */  nop
/* 0F888 80B79228 8FB90028 */  lw      $t9, 0x0028($sp)           
/* 0F88C 80B7922C 8F241DE4 */  lw      $a0, 0x1DE4($t9)           ## 00001DE4
/* 0F890 80B79230 00042300 */  sll     $a0, $a0, 12               
/* 0F894 80B79234 00042400 */  sll     $a0, $a0, 16               
/* 0F898 80B79238 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0F89C 80B7923C 00042403 */  sra     $a0, $a0, 16               
/* 0F8A0 80B79240 3C0180B8 */  lui     $at, %hi(D_80B7FEE4)       ## $at = 80B80000
/* 0F8A4 80B79244 C422FEE4 */  lwc1    $f2, %lo(D_80B7FEE4)($at)  
/* 0F8A8 80B79248 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 0F8AC 80B7924C 3C0980B8 */  lui     $t1, %hi(D_80B7E075)       ## $t1 = 80B80000
/* 0F8B0 80B79250 44813000 */  mtc1    $at, $f6                   ## $f6 = -5.00
/* 0F8B4 80B79254 9129E075 */  lbu     $t1, %lo(D_80B7E075)($t1)  
/* 0F8B8 80B79258 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0F8BC 80B7925C E7A00114 */  swc1    $f0, 0x0114($sp)           
/* 0F8C0 80B79260 E7A20118 */  swc1    $f2, 0x0118($sp)           
/* 0F8C4 80B79264 15210006 */  bne     $t1, $at, .L80B79280       
/* 0F8C8 80B79268 E7A6011C */  swc1    $f6, 0x011C($sp)           
/* 0F8CC 80B7926C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0F8D0 80B79270 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 0F8D4 80B79274 00000000 */  nop
/* 0F8D8 80B79278 46041081 */  sub.s   $f2, $f2, $f4              
/* 0F8DC 80B7927C E7A20118 */  swc1    $f2, 0x0118($sp)           
.L80B79280:
/* 0F8E0 80B79280 27A40114 */  addiu   $a0, $sp, 0x0114           ## $a0 = FFFFFFEC
/* 0F8E4 80B79284 0C0346BD */  jal     Matrix_MultVec3f              
/* 0F8E8 80B79288 27A50108 */  addiu   $a1, $sp, 0x0108           ## $a1 = FFFFFFE0
/* 0F8EC 80B7928C 8FAA00E4 */  lw      $t2, 0x00E4($sp)           
/* 0F8F0 80B79290 C7AA0108 */  lwc1    $f10, 0x0108($sp)          
/* 0F8F4 80B79294 8FAC00E4 */  lw      $t4, 0x00E4($sp)           
/* 0F8F8 80B79298 C5480024 */  lwc1    $f8, 0x0024($t2)           ## 00000024
/* 0F8FC 80B7929C 3C0280B8 */  lui     $v0, %hi(D_80B7FED8)       ## $v0 = 80B80000
/* 0F900 80B792A0 2442FED8 */  addiu   $v0, $v0, %lo(D_80B7FED8)  ## $v0 = 80B7FED8
/* 0F904 80B792A4 460A4180 */  add.s   $f6, $f8, $f10             
/* 0F908 80B792A8 C7A8010C */  lwc1    $f8, 0x010C($sp)           
/* 0F90C 80B792AC 8FAD00E4 */  lw      $t5, 0x00E4($sp)           
/* 0F910 80B792B0 3C0480B8 */  lui     $a0, %hi(D_80B7FEC8)       ## $a0 = 80B80000
/* 0F914 80B792B4 E4460000 */  swc1    $f6, 0x0000($v0)           ## 80B7FED8
/* 0F918 80B792B8 C5840028 */  lwc1    $f4, 0x0028($t4)           ## 00000028
/* 0F91C 80B792BC 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 0F920 80B792C0 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 0F924 80B792C4 46082280 */  add.s   $f10, $f4, $f8             
/* 0F928 80B792C8 C7A40110 */  lwc1    $f4, 0x0110($sp)           
/* 0F92C 80B792CC 2484FEC8 */  addiu   $a0, $a0, %lo(D_80B7FEC8)  ## $a0 = 80B7FEC8
/* 0F930 80B792D0 3C054170 */  lui     $a1, 0x4170                ## $a1 = 41700000
/* 0F934 80B792D4 E44A0004 */  swc1    $f10, 0x0004($v0)          ## 80B7FEDC
/* 0F938 80B792D8 C5A6002C */  lwc1    $f6, 0x002C($t5)           ## 0000002C
/* 0F93C 80B792DC 3C073F40 */  lui     $a3, 0x3F40                ## $a3 = 3F400000
/* 0F940 80B792E0 46043200 */  add.s   $f8, $f6, $f4              
/* 0F944 80B792E4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0F948 80B792E8 E4480008 */  swc1    $f8, 0x0008($v0)           ## 80B7FEE0
/* 0F94C 80B792EC 3C0180B8 */  lui     $at, %hi(D_80B7FEC8)       ## $at = 80B80000
/* 0F950 80B792F0 C42AFEC8 */  lwc1    $f10, %lo(D_80B7FEC8)($at) 
/* 0F954 80B792F4 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 0F958 80B792F8 44813000 */  mtc1    $at, $f6                   ## $f6 = 15.00
/* 0F95C 80B792FC 3C0E80B8 */  lui     $t6, %hi(D_80B7E075)       ## $t6 = 80B80000
/* 0F960 80B79300 91CEE075 */  lbu     $t6, %lo(D_80B7E075)($t6)  
/* 0F964 80B79304 46065101 */  sub.s   $f4, $f10, $f6             
/* 0F968 80B79308 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0F96C 80B7930C 27A40114 */  addiu   $a0, $sp, 0x0114           ## $a0 = FFFFFFEC
/* 0F970 80B79310 11C10008 */  beq     $t6, $at, .L80B79334       
/* 0F974 80B79314 E7A40114 */  swc1    $f4, 0x0114($sp)           
/* 0F978 80B79318 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 0F97C 80B7931C 44811000 */  mtc1    $at, $f2                   ## $f2 = 60.00
/* 0F980 80B79320 3C01C1F0 */  lui     $at, 0xC1F0                ## $at = C1F00000
/* 0F984 80B79324 44814000 */  mtc1    $at, $f8                   ## $f8 = -30.00
/* 0F988 80B79328 E7A20118 */  swc1    $f2, 0x0118($sp)           
/* 0F98C 80B7932C 10000007 */  beq     $zero, $zero, .L80B7934C   
/* 0F990 80B79330 E7A8011C */  swc1    $f8, 0x011C($sp)           
.L80B79334:
/* 0F994 80B79334 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 0F998 80B79338 44811000 */  mtc1    $at, $f2                   ## $f2 = 40.00
/* 0F99C 80B7933C 3C01C20C */  lui     $at, 0xC20C                ## $at = C20C0000
/* 0F9A0 80B79340 44815000 */  mtc1    $at, $f10                  ## $f10 = -35.00
/* 0F9A4 80B79344 E7A20118 */  swc1    $f2, 0x0118($sp)           
/* 0F9A8 80B79348 E7AA011C */  swc1    $f10, 0x011C($sp)          
.L80B7934C:
/* 0F9AC 80B7934C 3C0580B8 */  lui     $a1, %hi(D_80B7FEA8)       ## $a1 = 80B80000
/* 0F9B0 80B79350 0C0346BD */  jal     Matrix_MultVec3f              
/* 0F9B4 80B79354 24A5FEA8 */  addiu   $a1, $a1, %lo(D_80B7FEA8)  ## $a1 = 80B7FEA8
/* 0F9B8 80B79358 8FAF00E4 */  lw      $t7, 0x00E4($sp)           
/* 0F9BC 80B7935C 3C0280B8 */  lui     $v0, %hi(D_80B7FEA8)       ## $v0 = 80B80000
/* 0F9C0 80B79360 2442FEA8 */  addiu   $v0, $v0, %lo(D_80B7FEA8)  ## $v0 = 80B7FEA8
/* 0F9C4 80B79364 C4460000 */  lwc1    $f6, 0x0000($v0)           ## 80B7FEA8
/* 0F9C8 80B79368 C5E40024 */  lwc1    $f4, 0x0024($t7)           ## 00000024
/* 0F9CC 80B7936C 8FAB00E4 */  lw      $t3, 0x00E4($sp)           
/* 0F9D0 80B79370 C44A0004 */  lwc1    $f10, 0x0004($v0)          ## 80B7FEAC
/* 0F9D4 80B79374 46043200 */  add.s   $f8, $f6, $f4              
/* 0F9D8 80B79378 8FB800E4 */  lw      $t8, 0x00E4($sp)           
/* 0F9DC 80B7937C 8FB900E4 */  lw      $t9, 0x00E4($sp)           
/* 0F9E0 80B79380 3C0380B8 */  lui     $v1, %hi(D_80B7FEB8)       ## $v1 = 80B80000
/* 0F9E4 80B79384 E4480000 */  swc1    $f8, 0x0000($v0)           ## 80B7FEA8
/* 0F9E8 80B79388 C5660028 */  lwc1    $f6, 0x0028($t3)           ## 00000028
/* 0F9EC 80B7938C C4480008 */  lwc1    $f8, 0x0008($v0)           ## 80B7FEB0
/* 0F9F0 80B79390 2463FEB8 */  addiu   $v1, $v1, %lo(D_80B7FEB8)  ## $v1 = 80B7FEB8
/* 0F9F4 80B79394 46065100 */  add.s   $f4, $f10, $f6             
/* 0F9F8 80B79398 3C0C80B8 */  lui     $t4, %hi(D_80B7E075)       ## $t4 = 80B80000
/* 0F9FC 80B7939C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0FA00 80B793A0 3C0D80B8 */  lui     $t5, %hi(D_80B7A6D0)       ## $t5 = 80B80000
/* 0FA04 80B793A4 E4440004 */  swc1    $f4, 0x0004($v0)           ## 80B7FEAC
/* 0FA08 80B793A8 C70A002C */  lwc1    $f10, 0x002C($t8)          ## 0000002C
/* 0FA0C 80B793AC 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 0FA10 80B793B0 460A4180 */  add.s   $f6, $f8, $f10             
/* 0FA14 80B793B4 E4460008 */  swc1    $f6, 0x0008($v0)           ## 80B7FEB0
/* 0FA18 80B793B8 8F2A0024 */  lw      $t2, 0x0024($t9)           ## 00000024
/* 0FA1C 80B793BC AC6A0000 */  sw      $t2, 0x0000($v1)           ## 80B7FEB8
/* 0FA20 80B793C0 8F290028 */  lw      $t1, 0x0028($t9)           ## 00000028
/* 0FA24 80B793C4 AC690004 */  sw      $t1, 0x0004($v1)           ## 80B7FEBC
/* 0FA28 80B793C8 8F2A002C */  lw      $t2, 0x002C($t9)           ## 0000002C
/* 0FA2C 80B793CC AC6A0008 */  sw      $t2, 0x0008($v1)           ## 80B7FEC0
/* 0FA30 80B793D0 918CE075 */  lbu     $t4, %lo(D_80B7E075)($t4)  
/* 0FA34 80B793D4 11810006 */  beq     $t4, $at, .L80B793F0       
/* 0FA38 80B793D8 3C014278 */  lui     $at, 0x4278                ## $at = 42780000
/* 0FA3C 80B793DC 44814000 */  mtc1    $at, $f8                   ## $f8 = 62.00
/* 0FA40 80B793E0 C4640004 */  lwc1    $f4, 0x0004($v1)           ## 80B7FEBC
/* 0FA44 80B793E4 46082280 */  add.s   $f10, $f4, $f8             
/* 0FA48 80B793E8 10000006 */  beq     $zero, $zero, .L80B79404   
/* 0FA4C 80B793EC E46A0004 */  swc1    $f10, 0x0004($v1)          ## 80B7FEBC
.L80B793F0:
/* 0FA50 80B793F0 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 0FA54 80B793F4 44812000 */  mtc1    $at, $f4                   ## $f4 = 40.00
/* 0FA58 80B793F8 C4660004 */  lwc1    $f6, 0x0004($v1)           ## 80B7FEBC
/* 0FA5C 80B793FC 46043200 */  add.s   $f8, $f6, $f4              
/* 0FA60 80B79400 E4680004 */  swc1    $f8, 0x0004($v1)           ## 80B7FEBC
.L80B79404:
/* 0FA64 80B79404 91ADA6D0 */  lbu     $t5, %lo(D_80B7A6D0)($t5)  
/* 0FA68 80B79408 55A00054 */  bnel    $t5, $zero, .L80B7955C     
/* 0FA6C 80B7940C 8FA800E4 */  lw      $t0, 0x00E4($sp)           
/* 0FA70 80B79410 0C042F6F */  jal     func_8010BDBC              
/* 0FA74 80B79414 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 0FA78 80B79418 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0FA7C 80B7941C 10410005 */  beq     $v0, $at, .L80B79434       
/* 0FA80 80B79420 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 0FA84 80B79424 0C042F6F */  jal     func_8010BDBC              
/* 0FA88 80B79428 00000000 */  nop
/* 0FA8C 80B7942C 5440004B */  bnel    $v0, $zero, .L80B7955C     
/* 0FA90 80B79430 8FA800E4 */  lw      $t0, 0x00E4($sp)           
.L80B79434:
/* 0FA94 80B79434 0C041AF2 */  jal     func_80106BC8              
/* 0FA98 80B79438 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0FA9C 80B7943C 10400046 */  beq     $v0, $zero, .L80B79558     
/* 0FAA0 80B79440 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0FAA4 80B79444 0C030129 */  jal     func_800C04A4              
/* 0FAA8 80B79448 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0FAAC 80B7944C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0FAB0 80B79450 0C041B33 */  jal     func_80106CCC              
/* 0FAB4 80B79454 AFA200B0 */  sw      $v0, 0x00B0($sp)           
/* 0FAB8 80B79458 8FAE0028 */  lw      $t6, 0x0028($sp)           
/* 0FABC 80B7945C 3C0280B8 */  lui     $v0, %hi(D_80B7FEA8)       ## $v0 = 80B80000
/* 0FAC0 80B79460 8FA300B0 */  lw      $v1, 0x00B0($sp)           
/* 0FAC4 80B79464 91CF04BD */  lbu     $t7, 0x04BD($t6)           ## 000004BD
/* 0FAC8 80B79468 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 0FACC 80B7946C 3C0180B8 */  lui     $at, %hi(D_80B7E0B6)       ## $at = 80B80000
/* 0FAD0 80B79470 15E00004 */  bne     $t7, $zero, .L80B79484     
/* 0FAD4 80B79474 2442FEA8 */  addiu   $v0, $v0, %lo(D_80B7FEA8)  ## $v0 = 80B7FEA8
/* 0FAD8 80B79478 A02BE0B6 */  sb      $t3, %lo(D_80B7E0B6)($at)  
/* 0FADC 80B7947C 3C0180B8 */  lui     $at, %hi(D_80B7E082)       ## $at = 80B80000
/* 0FAE0 80B79480 A020E082 */  sb      $zero, %lo(D_80B7E082)($at) 
.L80B79484:
/* 0FAE4 80B79484 8C590000 */  lw      $t9, 0x0000($v0)           ## 80B7FEA8
/* 0FAE8 80B79488 3C0C80B8 */  lui     $t4, %hi(D_80B7FEB8)       ## $t4 = 80B80000
/* 0FAEC 80B7948C 258CFEB8 */  addiu   $t4, $t4, %lo(D_80B7FEB8)  ## $t4 = 80B7FEB8
/* 0FAF0 80B79490 AC79005C */  sw      $t9, 0x005C($v1)           ## 0000005C
/* 0FAF4 80B79494 8C580004 */  lw      $t8, 0x0004($v0)           ## 80B7FEAC
/* 0FAF8 80B79498 3C0580B8 */  lui     $a1, %hi(D_80B7FEC4)       ## $a1 = 80B80000
/* 0FAFC 80B7949C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0FB00 80B794A0 AC780060 */  sw      $t8, 0x0060($v1)           ## 00000060
/* 0FB04 80B794A4 8C590008 */  lw      $t9, 0x0008($v0)           ## 80B7FEB0
/* 0FB08 80B794A8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0FB0C 80B794AC AC790064 */  sw      $t9, 0x0064($v1)           ## 00000064
/* 0FB10 80B794B0 8C4A0000 */  lw      $t2, 0x0000($v0)           ## 80B7FEA8
/* 0FB14 80B794B4 AC6A0074 */  sw      $t2, 0x0074($v1)           ## 00000074
/* 0FB18 80B794B8 8C490004 */  lw      $t1, 0x0004($v0)           ## 80B7FEAC
/* 0FB1C 80B794BC AC690078 */  sw      $t1, 0x0078($v1)           ## 00000078
/* 0FB20 80B794C0 8C4A0008 */  lw      $t2, 0x0008($v0)           ## 80B7FEB0
/* 0FB24 80B794C4 AC6A007C */  sw      $t2, 0x007C($v1)           ## 0000007C
/* 0FB28 80B794C8 8D8E0000 */  lw      $t6, 0x0000($t4)           ## 80B7FEB8
/* 0FB2C 80B794CC AC6E0050 */  sw      $t6, 0x0050($v1)           ## 00000050
/* 0FB30 80B794D0 8D8D0004 */  lw      $t5, 0x0004($t4)           ## 80B7FEBC
/* 0FB34 80B794D4 AC6D0054 */  sw      $t5, 0x0054($v1)           ## 00000054
/* 0FB38 80B794D8 8D8E0008 */  lw      $t6, 0x0008($t4)           ## 80B7FEC0
/* 0FB3C 80B794DC AC6E0058 */  sw      $t6, 0x0058($v1)           ## 00000058
/* 0FB40 80B794E0 0C03022B */  jal     func_800C08AC              
/* 0FB44 80B794E4 84A5FEC4 */  lh      $a1, %lo(D_80B7FEC4)($a1)  
/* 0FB48 80B794E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0FB4C 80B794EC 0C01914D */  jal     func_80064534              
/* 0FB50 80B794F0 26051D64 */  addiu   $a1, $s0, 0x1D64           ## $a1 = 00001D64
/* 0FB54 80B794F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0FB58 80B794F8 8FA50128 */  lw      $a1, 0x0128($sp)           
/* 0FB5C 80B794FC 0C00B7D5 */  jal     func_8002DF54              
/* 0FB60 80B79500 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 0FB64 80B79504 3C0180B8 */  lui     $at, %hi(D_80B7A6CC)       ## $at = 80B80000
/* 0FB68 80B79508 A020A6CC */  sb      $zero, %lo(D_80B7A6CC)($at) 
/* 0FB6C 80B7950C 8FAB00E4 */  lw      $t3, 0x00E4($sp)           
/* 0FB70 80B79510 3C0180B8 */  lui     $at, %hi(D_80B7FEC4)       ## $at = 80B80000
/* 0FB74 80B79514 A420FEC4 */  sh      $zero, %lo(D_80B7FEC4)($at) 
/* 0FB78 80B79518 240FFFFB */  addiu   $t7, $zero, 0xFFFB         ## $t7 = FFFFFFFB
/* 0FB7C 80B7951C 3C0180B8 */  lui     $at, %hi(D_80B7E0B0)       ## $at = 80B80000
/* 0FB80 80B79520 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 0FB84 80B79524 A56F0860 */  sh      $t7, 0x0860($t3)           ## 00000860
/* 0FB88 80B79528 A438E0B0 */  sh      $t8, %lo(D_80B7E0B0)($at)  
/* 0FB8C 80B7952C 3C0180B8 */  lui     $at, %hi(D_80B7A6D4)       ## $at = 80B80000
/* 0FB90 80B79530 A020A6D4 */  sb      $zero, %lo(D_80B7A6D4)($at) 
/* 0FB94 80B79534 3C0180B8 */  lui     $at, %hi(D_80B7E0A6)       ## $at = 80B80000
/* 0FB98 80B79538 24190014 */  addiu   $t9, $zero, 0x0014         ## $t9 = 00000014
/* 0FB9C 80B7953C A439E0A6 */  sh      $t9, %lo(D_80B7E0A6)($at)  
/* 0FBA0 80B79540 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0FBA4 80B79544 0C01C180 */  jal     func_80070600              
/* 0FBA8 80B79548 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0FBAC 80B7954C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0FBB0 80B79550 00300821 */  addu    $at, $at, $s0              
/* 0FBB4 80B79554 A4200AC2 */  sh      $zero, 0x0AC2($at)         ## 00010AC2
.L80B79558:
/* 0FBB8 80B79558 8FA800E4 */  lw      $t0, 0x00E4($sp)           
glabel L80B7955C
.L80B7955C:
/* 0FBBC 80B7955C 3C0580B8 */  lui     $a1, %hi(D_80B7FEC4)       ## $a1 = 80B80000
/* 0FBC0 80B79560 84A5FEC4 */  lh      $a1, %lo(D_80B7FEC4)($a1)  
/* 0FBC4 80B79564 10A00036 */  beq     $a1, $zero, .L80B79640     
/* 0FBC8 80B79568 3C0680B8 */  lui     $a2, %hi(D_80B7FEB8)       ## $a2 = 80B80000
/* 0FBCC 80B7956C 3C0780B8 */  lui     $a3, %hi(D_80B7FEA8)       ## $a3 = 80B80000
/* 0FBD0 80B79570 24E7FEA8 */  addiu   $a3, $a3, %lo(D_80B7FEA8)  ## $a3 = 80B7FEA8
/* 0FBD4 80B79574 24C6FEB8 */  addiu   $a2, $a2, %lo(D_80B7FEB8)  ## $a2 = 80B7FEB8
/* 0FBD8 80B79578 0C030136 */  jal     func_800C04D8              
/* 0FBDC 80B7957C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0FBE0 80B79580 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0FBE4 80B79584 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 0FBE8 80B79588 3C0480B8 */  lui     $a0, %hi(D_80B7FECC)       ## $a0 = 80B80000
/* 0FBEC 80B7958C 3C073CA3 */  lui     $a3, 0x3CA3                ## $a3 = 3CA30000
/* 0FBF0 80B79590 44050000 */  mfc1    $a1, $f0                   
/* 0FBF4 80B79594 44060000 */  mfc1    $a2, $f0                   
/* 0FBF8 80B79598 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3CA3D70A
/* 0FBFC 80B7959C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0FC00 80B795A0 2484FECC */  addiu   $a0, $a0, %lo(D_80B7FECC)  ## $a0 = 80B7FECC
/* 0FC04 80B795A4 8E0907C0 */  lw      $t1, 0x07C0($s0)           ## 000007C0
/* 0FC08 80B795A8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0FC0C 80B795AC 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 0FC10 80B795B0 8D2A0028 */  lw      $t2, 0x0028($t1)           ## 00000028
/* 0FC14 80B795B4 3C0180B8 */  lui     $at, %hi(D_80B7FEAC)       ## $at = 80B80000
/* 0FC18 80B795B8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0FC1C 80B795BC 854C0002 */  lh      $t4, 0x0002($t2)           ## 00000002
/* 0FC20 80B795C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0FC24 80B795C4 448C5000 */  mtc1    $t4, $f10                  ## $f10 = 0.00
/* 0FC28 80B795C8 00000000 */  nop
/* 0FC2C 80B795CC 468051A0 */  cvt.s.w $f6, $f10                  
/* 0FC30 80B795D0 C42AFEAC */  lwc1    $f10, %lo(D_80B7FEAC)($at) 
/* 0FC34 80B795D4 46043200 */  add.s   $f8, $f6, $f4              
/* 0FC38 80B795D8 4608503E */  c.le.s  $f10, $f8                  
/* 0FC3C 80B795DC 00000000 */  nop
/* 0FC40 80B795E0 45000011 */  bc1f    .L80B79628                 
/* 0FC44 80B795E4 00000000 */  nop
/* 0FC48 80B795E8 0C01C180 */  jal     func_80070600              
/* 0FC4C 80B795EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0FC50 80B795F0 3C0D80B8 */  lui     $t5, %hi(D_80B7E076)       ## $t5 = 80B80000
/* 0FC54 80B795F4 91ADE076 */  lbu     $t5, %lo(D_80B7E076)($t5)  
/* 0FC58 80B795F8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0FC5C 80B795FC 00300821 */  addu    $at, $at, $s0              
/* 0FC60 80B79600 11A00006 */  beq     $t5, $zero, .L80B7961C     
/* 0FC64 80B79604 240FFFD2 */  addiu   $t7, $zero, 0xFFD2         ## $t7 = FFFFFFD2
/* 0FC68 80B79608 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0FC6C 80B7960C 00300821 */  addu    $at, $at, $s0              
/* 0FC70 80B79610 240EFF4E */  addiu   $t6, $zero, 0xFF4E         ## $t6 = FFFFFF4E
/* 0FC74 80B79614 10000002 */  beq     $zero, $zero, .L80B79620   
/* 0FC78 80B79618 A42E0AC2 */  sh      $t6, 0x0AC2($at)           ## 00010AC2
.L80B7961C:
/* 0FC7C 80B7961C A42F0AC2 */  sh      $t7, 0x0AC2($at)           ## 00010AC2
.L80B79620:
/* 0FC80 80B79620 10000007 */  beq     $zero, $zero, .L80B79640   
/* 0FC84 80B79624 8FA800E4 */  lw      $t0, 0x00E4($sp)           
.L80B79628:
/* 0FC88 80B79628 0C01C180 */  jal     func_80070600              
/* 0FC8C 80B7962C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0FC90 80B79630 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0FC94 80B79634 00300821 */  addu    $at, $at, $s0              
/* 0FC98 80B79638 A4200AC2 */  sh      $zero, 0x0AC2($at)         ## 00010AC2
/* 0FC9C 80B7963C 8FA800E4 */  lw      $t0, 0x00E4($sp)           
.L80B79640:
/* 0FCA0 80B79640 8E0B07C0 */  lw      $t3, 0x07C0($s0)           ## 000007C0
/* 0FCA4 80B79644 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 0FCA8 80B79648 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 0FCAC 80B7964C 8D780028 */  lw      $t8, 0x0028($t3)           ## 00000028
/* 0FCB0 80B79650 C5000080 */  lwc1    $f0, 0x0080($t0)           ## 00000080
/* 0FCB4 80B79654 87190002 */  lh      $t9, 0x0002($t8)           ## 00000002
/* 0FCB8 80B79658 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 0FCBC 80B7965C 00000000 */  nop
/* 0FCC0 80B79660 468030A0 */  cvt.s.w $f2, $f6                   
/* 0FCC4 80B79664 46041201 */  sub.s   $f8, $f2, $f4              
/* 0FCC8 80B79668 4608003C */  c.lt.s  $f0, $f8                   
/* 0FCCC 80B7966C 00000000 */  nop
/* 0FCD0 80B79670 45000036 */  bc1f    .L80B7974C                 
/* 0FCD4 80B79674 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 0FCD8 80B79678 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 0FCDC 80B7967C C50A0028 */  lwc1    $f10, 0x0028($t0)          ## 00000028
/* 0FCE0 80B79680 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0FCE4 80B79684 46060100 */  add.s   $f4, $f0, $f6              
/* 0FCE8 80B79688 4604503C */  c.lt.s  $f10, $f4                  
/* 0FCEC 80B7968C 00000000 */  nop
/* 0FCF0 80B79690 4502002F */  bc1fl   .L80B79750                 
/* 0FCF4 80B79694 4602003C */  c.lt.s  $f0, $f2                   
/* 0FCF8 80B79698 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 0FCFC 80B7969C C5060068 */  lwc1    $f6, 0x0068($t0)           ## 00000068
/* 0FD00 80B796A0 8FA90028 */  lw      $t1, 0x0028($sp)           
/* 0FD04 80B796A4 4606403C */  c.lt.s  $f8, $f6                   
/* 0FD08 80B796A8 00000000 */  nop
/* 0FD0C 80B796AC 45020028 */  bc1fl   .L80B79750                 
/* 0FD10 80B796B0 4602003C */  c.lt.s  $f0, $f2                   
/* 0FD14 80B796B4 8D2A1DE4 */  lw      $t2, 0x1DE4($t1)           ## 00001DE4
/* 0FD18 80B796B8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0FD1C 80B796BC 314C0001 */  andi    $t4, $t2, 0x0001           ## $t4 = 00000000
/* 0FD20 80B796C0 55800023 */  bnel    $t4, $zero, .L80B79750     
/* 0FD24 80B796C4 4602003C */  c.lt.s  $f0, $f2                   
/* 0FD28 80B796C8 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 0FD2C 80B796CC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 0FD30 80B796D0 00000000 */  nop
/* 0FD34 80B796D4 8FAD00E4 */  lw      $t5, 0x00E4($sp)           
/* 0FD38 80B796D8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0FD3C 80B796DC 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 0FD40 80B796E0 C5AA0024 */  lwc1    $f10, 0x0024($t5)          ## 00000024
/* 0FD44 80B796E4 460A0100 */  add.s   $f4, $f0, $f10             
/* 0FD48 80B796E8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 0FD4C 80B796EC E7A400A4 */  swc1    $f4, 0x00A4($sp)           
/* 0FD50 80B796F0 8FA200E4 */  lw      $v0, 0x00E4($sp)           
/* 0FD54 80B796F4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 0FD58 80B796F8 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 0FD5C 80B796FC C448002C */  lwc1    $f8, 0x002C($v0)           ## 0000002C
/* 0FD60 80B79700 8FAE0028 */  lw      $t6, 0x0028($sp)           
/* 0FD64 80B79704 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 0FD68 80B79708 46080180 */  add.s   $f6, $f0, $f8              
/* 0FD6C 80B7970C 27A600A4 */  addiu   $a2, $sp, 0x00A4           ## $a2 = FFFFFF7C
/* 0FD70 80B79710 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 0FD74 80B79714 E7A600AC */  swc1    $f6, 0x00AC($sp)           
/* 0FD78 80B79718 C44A0080 */  lwc1    $f10, 0x0080($v0)          ## 00000080
/* 0FD7C 80B7971C 46045200 */  add.s   $f8, $f10, $f4             
/* 0FD80 80B79720 E7A800A8 */  swc1    $f8, 0x00A8($sp)           
/* 0FD84 80B79724 0C2DA7B4 */  jal     func_80B69ED0              
/* 0FD88 80B79728 8DC51E10 */  lw      $a1, 0x1E10($t6)           ## 00001E10
/* 0FD8C 80B7972C 8E0B07C0 */  lw      $t3, 0x07C0($s0)           ## 000007C0
/* 0FD90 80B79730 8FA800E4 */  lw      $t0, 0x00E4($sp)           
/* 0FD94 80B79734 8D780028 */  lw      $t8, 0x0028($t3)           ## 00000028
/* 0FD98 80B79738 C5000080 */  lwc1    $f0, 0x0080($t0)           ## 00000080
/* 0FD9C 80B7973C 87190002 */  lh      $t9, 0x0002($t8)           ## 00000002
/* 0FDA0 80B79740 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 0FDA4 80B79744 00000000 */  nop
/* 0FDA8 80B79748 468030A0 */  cvt.s.w $f2, $f6                   
.L80B7974C:
/* 0FDAC 80B7974C 4602003C */  c.lt.s  $f0, $f2                   
.L80B79750:
/* 0FDB0 80B79750 00000000 */  nop
/* 0FDB4 80B79754 45000060 */  bc1f    .L80B798D8                 
/* 0FDB8 80B79758 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0FDBC 80B7975C 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 0FDC0 80B79760 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 0FDC4 80B79764 460A1101 */  sub.s   $f4, $f2, $f10             
/* 0FDC8 80B79768 4600203C */  c.lt.s  $f4, $f0                   
/* 0FDCC 80B7976C 00000000 */  nop
/* 0FDD0 80B79770 45000059 */  bc1f    .L80B798D8                 
/* 0FDD4 80B79774 00000000 */  nop
/* 0FDD8 80B79778 C5080068 */  lwc1    $f8, 0x0068($t0)           ## 00000068
/* 0FDDC 80B7977C 44813000 */  mtc1    $at, $f6                   ## $f6 = 4.00
/* 0FDE0 80B79780 8FA90028 */  lw      $t1, 0x0028($sp)           
/* 0FDE4 80B79784 4608303E */  c.le.s  $f6, $f8                   
/* 0FDE8 80B79788 00000000 */  nop
/* 0FDEC 80B7978C 45000052 */  bc1f    .L80B798D8                 
/* 0FDF0 80B79790 00000000 */  nop
/* 0FDF4 80B79794 8D2A1DE4 */  lw      $t2, 0x1DE4($t1)           ## 00001DE4
/* 0FDF8 80B79798 250D0024 */  addiu   $t5, $t0, 0x0024           ## $t5 = 00000024
/* 0FDFC 80B7979C 314C0003 */  andi    $t4, $t2, 0x0003           ## $t4 = 00000000
/* 0FE00 80B797A0 1580004D */  bne     $t4, $zero, .L80B798D8     
/* 0FE04 80B797A4 00000000 */  nop
/* 0FE08 80B797A8 A7A000A2 */  sh      $zero, 0x00A2($sp)         
/* 0FE0C 80B797AC AFAD0038 */  sw      $t5, 0x0038($sp)           
.L80B797B0:
/* 0FE10 80B797B0 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 0FE14 80B797B4 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.50
/* 0FE18 80B797B8 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0FE1C 80B797BC 00000000 */  nop
/* 0FE20 80B797C0 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 0FE24 80B797C4 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.50
/* 0FE28 80B797C8 3C0180B8 */  lui     $at, %hi(D_80B7B8B8)       ## $at = 80B80000
/* 0FE2C 80B797CC C42CB8B8 */  lwc1    $f12, %lo(D_80B7B8B8)($at) 
/* 0FE30 80B797D0 460A0100 */  add.s   $f4, $f0, $f10             
/* 0FE34 80B797D4 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0FE38 80B797D8 E7A40084 */  swc1    $f4, 0x0084($sp)           
/* 0FE3C 80B797DC E7A00080 */  swc1    $f0, 0x0080($sp)           
/* 0FE40 80B797E0 0C0400A4 */  jal     sinf
              
/* 0FE44 80B797E4 46000306 */  mov.s   $f12, $f0                  
/* 0FE48 80B797E8 C7A80084 */  lwc1    $f8, 0x0084($sp)           
/* 0FE4C 80B797EC C7AC0080 */  lwc1    $f12, 0x0080($sp)          
/* 0FE50 80B797F0 46080182 */  mul.s   $f6, $f0, $f8              
/* 0FE54 80B797F4 0C041184 */  jal     cosf
              
/* 0FE58 80B797F8 E7A60088 */  swc1    $f6, 0x0088($sp)           
/* 0FE5C 80B797FC C7AA0084 */  lwc1    $f10, 0x0084($sp)          
/* 0FE60 80B79800 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 0FE64 80B79804 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 0FE68 80B79808 460A0102 */  mul.s   $f4, $f0, $f10             
/* 0FE6C 80B7980C 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0FE70 80B79810 E7A40090 */  swc1    $f4, 0x0090($sp)           
/* 0FE74 80B79814 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 0FE78 80B79818 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.00
/* 0FE7C 80B7981C 8FAB0038 */  lw      $t3, 0x0038($sp)           
/* 0FE80 80B79820 27AE0094 */  addiu   $t6, $sp, 0x0094           ## $t6 = FFFFFF6C
/* 0FE84 80B79824 46080180 */  add.s   $f6, $f0, $f8              
/* 0FE88 80B79828 3C0180B8 */  lui     $at, %hi(D_80B7B8BC)       ## $at = 80B80000
/* 0FE8C 80B7982C E7A6008C */  swc1    $f6, 0x008C($sp)           
/* 0FE90 80B79830 8D790000 */  lw      $t9, 0x0000($t3)           ## 00000000
/* 0FE94 80B79834 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFF6C
/* 0FE98 80B79838 8D780004 */  lw      $t8, 0x0004($t3)           ## 00000004
/* 0FE9C 80B7983C ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFF70
/* 0FEA0 80B79840 8D790008 */  lw      $t9, 0x0008($t3)           ## 00000008
/* 0FEA4 80B79844 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFF74
/* 0FEA8 80B79848 C7AA0088 */  lwc1    $f10, 0x0088($sp)          
/* 0FEAC 80B7984C C7A80094 */  lwc1    $f8, 0x0094($sp)           
/* 0FEB0 80B79850 C42CB8BC */  lwc1    $f12, %lo(D_80B7B8BC)($at) 
/* 0FEB4 80B79854 460A5100 */  add.s   $f4, $f10, $f10            
/* 0FEB8 80B79858 46044180 */  add.s   $f6, $f8, $f4              
/* 0FEBC 80B7985C C7A40090 */  lwc1    $f4, 0x0090($sp)           
/* 0FEC0 80B79860 E7A60094 */  swc1    $f6, 0x0094($sp)           
/* 0FEC4 80B79864 8E0F07C0 */  lw      $t7, 0x07C0($s0)           ## 000007C0
/* 0FEC8 80B79868 46042180 */  add.s   $f6, $f4, $f4              
/* 0FECC 80B7986C 8DE90028 */  lw      $t1, 0x0028($t7)           ## 00000028
/* 0FED0 80B79870 852A0002 */  lh      $t2, 0x0002($t1)           ## 00000002
/* 0FED4 80B79874 448A5000 */  mtc1    $t2, $f10                  ## $f10 = 0.00
/* 0FED8 80B79878 00000000 */  nop
/* 0FEDC 80B7987C 46805220 */  cvt.s.w $f8, $f10                  
/* 0FEE0 80B79880 C7AA009C */  lwc1    $f10, 0x009C($sp)          
/* 0FEE4 80B79884 E7A80098 */  swc1    $f8, 0x0098($sp)           
/* 0FEE8 80B79888 46065200 */  add.s   $f8, $f10, $f6             
/* 0FEEC 80B7988C 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0FEF0 80B79890 E7A8009C */  swc1    $f8, 0x009C($sp)           
/* 0FEF4 80B79894 3C0180B8 */  lui     $at, %hi(D_80B7B8C0)       ## $at = 80B80000
/* 0FEF8 80B79898 C424B8C0 */  lwc1    $f4, %lo(D_80B7B8C0)($at)  
/* 0FEFC 80B7989C 8FAC0028 */  lw      $t4, 0x0028($sp)           
/* 0FF00 80B798A0 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 0FF04 80B798A4 46040280 */  add.s   $f10, $f0, $f4             
/* 0FF08 80B798A8 8D851E10 */  lw      $a1, 0x1E10($t4)           ## 00001E10
/* 0FF0C 80B798AC 27A60094 */  addiu   $a2, $sp, 0x0094           ## $a2 = FFFFFF6C
/* 0FF10 80B798B0 27A70088 */  addiu   $a3, $sp, 0x0088           ## $a3 = FFFFFF60
/* 0FF14 80B798B4 0C2DA762 */  jal     func_80B69D88              
/* 0FF18 80B798B8 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 0FF1C 80B798BC 87A200A2 */  lh      $v0, 0x00A2($sp)           
/* 0FF20 80B798C0 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 0FF24 80B798C4 00021400 */  sll     $v0, $v0, 16               
/* 0FF28 80B798C8 00021403 */  sra     $v0, $v0, 16               
/* 0FF2C 80B798CC 2841000A */  slti    $at, $v0, 0x000A           
/* 0FF30 80B798D0 1420FFB7 */  bne     $at, $zero, .L80B797B0     
/* 0FF34 80B798D4 A7A200A2 */  sh      $v0, 0x00A2($sp)           
.L80B798D8:
/* 0FF38 80B798D8 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0FF3C 80B798DC 8C42FA90 */  lw      $v0, -0x0570($v0)          ## 8015FA90
/* 0FF40 80B798E0 84440C32 */  lh      $a0, 0x0C32($v0)           ## 80160C32
/* 0FF44 80B798E4 10800019 */  beq     $a0, $zero, .L80B7994C     
/* 0FF48 80B798E8 3C0580B8 */  lui     $a1, %hi(D_80B7A654)       ## $a1 = 80B80000
/* 0FF4C 80B798EC 90A5A654 */  lbu     $a1, %lo(D_80B7A654)($a1)  
/* 0FF50 80B798F0 2483FFFF */  addiu   $v1, $a0, 0xFFFF           ## $v1 = FFFFFFFF
/* 0FF54 80B798F4 10A30013 */  beq     $a1, $v1, .L80B79944       
/* 0FF58 80B798F8 00000000 */  nop
/* 0FF5C 80B798FC 14A0000A */  bne     $a1, $zero, .L80B79928     
/* 0FF60 80B79900 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 0FF64 80B79904 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0FF68 80B79908 00300821 */  addu    $at, $at, $s0              
/* 0FF6C 80B7990C 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 0FF70 80B79910 A02D0B01 */  sb      $t5, 0x0B01($at)           ## 00010B01
/* 0FF74 80B79914 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0FF78 80B79918 8C42FA90 */  lw      $v0, -0x0570($v0)          ## 8015FA90
/* 0FF7C 80B7991C 84430C32 */  lh      $v1, 0x0C32($v0)           ## 80160C32
/* 0FF80 80B79920 10000008 */  beq     $zero, $zero, .L80B79944   
/* 0FF84 80B79924 2463FFFF */  addiu   $v1, $v1, 0xFFFF           ## $v1 = FFFFFFFE
.L80B79928:
/* 0FF88 80B79928 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0FF8C 80B7992C 00300821 */  addu    $at, $at, $s0              
/* 0FF90 80B79930 A02E0B01 */  sb      $t6, 0x0B01($at)           ## 00010B01
/* 0FF94 80B79934 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0FF98 80B79938 8C42FA90 */  lw      $v0, -0x0570($v0)          ## 8015FA90
/* 0FF9C 80B7993C 84430C32 */  lh      $v1, 0x0C32($v0)           ## 80160C32
/* 0FFA0 80B79940 2463FFFF */  addiu   $v1, $v1, 0xFFFF           ## $v1 = FFFFFFFD
.L80B79944:
/* 0FFA4 80B79944 3C0180B8 */  lui     $at, %hi(D_80B7A654)       ## $at = 80B80000
/* 0FFA8 80B79948 A023A654 */  sb      $v1, %lo(D_80B7A654)($at)  
.L80B7994C:
/* 0FFAC 80B7994C 84430C30 */  lh      $v1, 0x0C30($v0)           ## 80160C30
/* 0FFB0 80B79950 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0FFB4 80B79954 3C0480B8 */  lui     $a0, %hi(D_80B7B2B8)       ## $a0 = 80B80000
/* 0FFB8 80B79958 14610008 */  bne     $v1, $at, .L80B7997C       
/* 0FFBC 80B7995C 2484B2B8 */  addiu   $a0, $a0, %lo(D_80B7B2B8)  ## $a0 = 80B7B2B8
/* 0FFC0 80B79960 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0FFC4 80B79964 00300821 */  addu    $at, $at, $s0              
/* 0FFC8 80B79968 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 0FFCC 80B7996C A02B0B01 */  sb      $t3, 0x0B01($at)           ## 00010B01
/* 0FFD0 80B79970 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0FFD4 80B79974 8C42FA90 */  lw      $v0, -0x0570($v0)          ## 8015FA90
/* 0FFD8 80B79978 84430C30 */  lh      $v1, 0x0C30($v0)           ## 80160C30
.L80B7997C:
/* 0FFDC 80B7997C 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 0FFE0 80B79980 14610006 */  bne     $v1, $at, .L80B7999C       
/* 0FFE4 80B79984 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0FFE8 80B79988 00300821 */  addu    $at, $at, $s0              
/* 0FFEC 80B7998C 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 0FFF0 80B79990 A0380B01 */  sb      $t8, 0x0B01($at)           ## 00010B01
/* 0FFF4 80B79994 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0FFF8 80B79998 8C42FA90 */  lw      $v0, -0x0570($v0)          ## 8015FA90
.L80B7999C:
/* 0FFFC 80B7999C 0C00084C */  jal     osSyncPrintf
              
/* 10000 80B799A0 A4400C30 */  sh      $zero, 0x0C30($v0)         ## 80160C30
/* 10004 80B799A4 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 10008 80B799A8 3C0480B8 */  lui     $a0, %hi(D_80B7B2C0)       ## $a0 = 80B80000
/* 1000C 80B799AC 2484B2C0 */  addiu   $a0, $a0, %lo(D_80B7B2C0)  ## $a0 = 80B7B2C0
/* 10010 80B799B0 0C00084C */  jal     osSyncPrintf
              
/* 10014 80B799B4 9445E66C */  lhu     $a1, -0x1994($v0)          ## 8015E66C
/* 10018 80B799B8 3C0480B8 */  lui     $a0, %hi(D_80B7B2D0)       ## $a0 = 80B80000
/* 1001C 80B799BC 0C00084C */  jal     osSyncPrintf
              
/* 10020 80B799C0 2484B2D0 */  addiu   $a0, $a0, %lo(D_80B7B2D0)  ## $a0 = 80B7B2D0
/* 10024 80B799C4 3C0580B8 */  lui     $a1, %hi(D_80B7E077)       ## $a1 = 80B80000
/* 10028 80B799C8 24A5E077 */  addiu   $a1, $a1, %lo(D_80B7E077)  ## $a1 = 80B7E077
/* 1002C 80B799CC 90A30000 */  lbu     $v1, 0x0000($a1)           ## 80B7E077
/* 10030 80B799D0 28610002 */  slti    $at, $v1, 0x0002           
/* 10034 80B799D4 14200004 */  bne     $at, $zero, .L80B799E8     
/* 10038 80B799D8 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 1003C 80B799DC 2479FFFF */  addiu   $t9, $v1, 0xFFFF           ## $t9 = FFFFFFFF
/* 10040 80B799E0 A0B90000 */  sb      $t9, 0x0000($a1)           ## 80B7E077
/* 10044 80B799E4 332200FF */  andi    $v0, $t9, 0x00FF           ## $v0 = 000000FF
.L80B799E8:
/* 10048 80B799E8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 1004C 80B799EC 14410047 */  bne     $v0, $at, .L80B79B0C       
/* 10050 80B799F0 00000000 */  nop
/* 10054 80B799F4 0C042F6F */  jal     func_8010BDBC              
/* 10058 80B799F8 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 1005C 80B799FC 3C0580B8 */  lui     $a1, %hi(D_80B7E077)       ## $a1 = 80B80000
/* 10060 80B79A00 14400042 */  bne     $v0, $zero, .L80B79B0C     
/* 10064 80B79A04 24A5E077 */  addiu   $a1, $a1, %lo(D_80B7E077)  ## $a1 = 80B7E077
/* 10068 80B79A08 3C0F80B8 */  lui     $t7, %hi(D_80B7A680)       ## $t7 = 80B80000
/* 1006C 80B79A0C 8DEFA680 */  lw      $t7, %lo(D_80B7A680)($t7)  
/* 10070 80B79A10 24010FFF */  addiu   $at, $zero, 0x0FFF         ## $at = 00000FFF
/* 10074 80B79A14 240A00C8 */  addiu   $t2, $zero, 0x00C8         ## $t2 = 000000C8
/* 10078 80B79A18 31E90FFF */  andi    $t1, $t7, 0x0FFF           ## $t1 = 00000000
/* 1007C 80B79A1C 1521003B */  bne     $t1, $at, .L80B79B0C       
/* 10080 80B79A20 00000000 */  nop
/* 10084 80B79A24 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 10088 80B79A28 A0AA0000 */  sb      $t2, 0x0000($a1)           ## 80B7E077
/* 1008C 80B79A2C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 10090 80B79A30 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 10094 80B79A34 3C0180B8 */  lui     $at, %hi(D_80B7A654)       ## $at = 80B80000
/* 10098 80B79A38 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 1009C 80B79A3C 4606003C */  c.lt.s  $f0, $f6                   
/* 100A0 80B79A40 00000000 */  nop
/* 100A4 80B79A44 4500002D */  bc1f    .L80B79AFC                 
/* 100A8 80B79A48 00000000 */  nop
/* 100AC 80B79A4C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 100B0 80B79A50 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 100B4 80B79A54 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 100B8 80B79A58 00000000 */  nop
/* 100BC 80B79A5C 444CF800 */  cfc1    $t4, $31
/* 100C0 80B79A60 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 100C4 80B79A64 44CDF800 */  ctc1    $t5, $31
/* 100C8 80B79A68 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 100CC 80B79A6C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 100D0 80B79A70 46000224 */  cvt.w.s $f8, $f0                   
/* 100D4 80B79A74 444DF800 */  cfc1    $t5, $31
/* 100D8 80B79A78 00000000 */  nop
/* 100DC 80B79A7C 31AD0078 */  andi    $t5, $t5, 0x0078           ## $t5 = 00000000
/* 100E0 80B79A80 51A00013 */  beql    $t5, $zero, .L80B79AD0     
/* 100E4 80B79A84 440D4000 */  mfc1    $t5, $f8                   
/* 100E8 80B79A88 44814000 */  mtc1    $at, $f8                   ## $f8 = 2147483648.00
/* 100EC 80B79A8C 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 100F0 80B79A90 46080201 */  sub.s   $f8, $f0, $f8              
/* 100F4 80B79A94 44CDF800 */  ctc1    $t5, $31
/* 100F8 80B79A98 00000000 */  nop
/* 100FC 80B79A9C 46004224 */  cvt.w.s $f8, $f8                   
/* 10100 80B79AA0 444DF800 */  cfc1    $t5, $31
/* 10104 80B79AA4 00000000 */  nop
/* 10108 80B79AA8 31AD0078 */  andi    $t5, $t5, 0x0078           ## $t5 = 00000000
/* 1010C 80B79AAC 15A00005 */  bne     $t5, $zero, .L80B79AC4     
/* 10110 80B79AB0 00000000 */  nop
/* 10114 80B79AB4 440D4000 */  mfc1    $t5, $f8                   
/* 10118 80B79AB8 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 1011C 80B79ABC 10000007 */  beq     $zero, $zero, .L80B79ADC   
/* 10120 80B79AC0 01A16825 */  or      $t5, $t5, $at              ## $t5 = 80000000
.L80B79AC4:
/* 10124 80B79AC4 10000005 */  beq     $zero, $zero, .L80B79ADC   
/* 10128 80B79AC8 240DFFFF */  addiu   $t5, $zero, 0xFFFF         ## $t5 = FFFFFFFF
/* 1012C 80B79ACC 440D4000 */  mfc1    $t5, $f8                   
.L80B79AD0:
/* 10130 80B79AD0 00000000 */  nop
/* 10134 80B79AD4 05A0FFFB */  bltz    $t5, .L80B79AC4            
/* 10138 80B79AD8 00000000 */  nop
.L80B79ADC:
/* 1013C 80B79ADC 25AB0005 */  addiu   $t3, $t5, 0x0005           ## $t3 = 00000004
/* 10140 80B79AE0 3C0180B8 */  lui     $at, %hi(D_80B7A654)       ## $at = 80B80000
/* 10144 80B79AE4 A02BA654 */  sb      $t3, %lo(D_80B7A654)($at)  
/* 10148 80B79AE8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 1014C 80B79AEC 44CCF800 */  ctc1    $t4, $31
/* 10150 80B79AF0 00300821 */  addu    $at, $at, $s0              
/* 10154 80B79AF4 10000005 */  beq     $zero, $zero, .L80B79B0C   
/* 10158 80B79AF8 A0380B01 */  sb      $t8, 0x0B01($at)           ## 00010B01
.L80B79AFC:
/* 1015C 80B79AFC A020A654 */  sb      $zero, %lo(D_80B7A654)($at) 
/* 10160 80B79B00 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 10164 80B79B04 00300821 */  addu    $at, $at, $s0              
/* 10168 80B79B08 A0390B01 */  sb      $t9, 0x0B01($at)           ## 00010B01
.L80B79B0C:
/* 1016C 80B79B0C 3C0F80B8 */  lui     $t7, %hi(D_80B7A654)       ## $t7 = 80B80000
/* 10170 80B79B10 91EFA654 */  lbu     $t7, %lo(D_80B7A654)($t7)  
/* 10174 80B79B14 3C0480B8 */  lui     $a0, %hi(D_80B7A650)       ## $a0 = 80B80000
/* 10178 80B79B18 2484A650 */  addiu   $a0, $a0, %lo(D_80B7A650)  ## $a0 = 80B7A650
/* 1017C 80B79B1C 448F2000 */  mtc1    $t7, $f4                   ## $f4 = -0.00
/* 10180 80B79B20 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 10184 80B79B24 05E10005 */  bgez    $t7, .L80B79B3C            
/* 10188 80B79B28 46802120 */  cvt.s.w $f4, $f4                   
/* 1018C 80B79B2C 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 10190 80B79B30 44815000 */  mtc1    $at, $f10                  ## $f10 = 4294967296.00
/* 10194 80B79B34 00000000 */  nop
/* 10198 80B79B38 460A2100 */  add.s   $f4, $f4, $f10             
.L80B79B3C:
/* 1019C 80B79B3C 44052000 */  mfc1    $a1, $f4                   
/* 101A0 80B79B40 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 101A4 80B79B44 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 101A8 80B79B48 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3D4CCCCD
/* 101AC 80B79B4C 3C0180B8 */  lui     $at, %hi(D_80B7A650)       ## $at = 80B80000
/* 101B0 80B79B50 C420A650 */  lwc1    $f0, %lo(D_80B7A650)($at)  
/* 101B4 80B79B54 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 101B8 80B79B58 00000000 */  nop
/* 101BC 80B79B5C 4600303C */  c.lt.s  $f6, $f0                   
/* 101C0 80B79B60 00000000 */  nop
/* 101C4 80B79B64 45000016 */  bc1f    .L80B79BC0                 
/* 101C8 80B79B68 3C0180B8 */  lui     $at, %hi(D_80B7B8C4)       ## $at = 80B80000
/* 101CC 80B79B6C C42CB8C4 */  lwc1    $f12, %lo(D_80B7B8C4)($at) 
/* 101D0 80B79B70 3C0180B8 */  lui     $at, %hi(D_80B7B8C8)       ## $at = 80B80000
/* 101D4 80B79B74 C428B8C8 */  lwc1    $f8, %lo(D_80B7B8C8)($at)  
/* 101D8 80B79B78 3C0180B8 */  lui     $at, %hi(D_80B7B8CC)       ## $at = 80B80000
/* 101DC 80B79B7C C42AB8CC */  lwc1    $f10, %lo(D_80B7B8CC)($at) 
/* 101E0 80B79B80 46080102 */  mul.s   $f4, $f0, $f8              
/* 101E4 80B79B84 3C0480B8 */  lui     $a0, %hi(D_80B7A668)       ## $a0 = 80B80000
/* 101E8 80B79B88 2484A668 */  addiu   $a0, $a0, %lo(D_80B7A668)  ## $a0 = 80B7A668
/* 101EC 80B79B8C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 101F0 80B79B90 3C073C23 */  lui     $a3, 0x3C23                ## $a3 = 3C230000
/* 101F4 80B79B94 460A2080 */  add.s   $f2, $f4, $f10             
/* 101F8 80B79B98 4602603C */  c.lt.s  $f12, $f2                  
/* 101FC 80B79B9C 00000000 */  nop
/* 10200 80B79BA0 45020003 */  bc1fl   .L80B79BB0                 
/* 10204 80B79BA4 44051000 */  mfc1    $a1, $f2                   
/* 10208 80B79BA8 46006086 */  mov.s   $f2, $f12                  
/* 1020C 80B79BAC 44051000 */  mfc1    $a1, $f2                   
.L80B79BB0:
/* 10210 80B79BB0 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 10214 80B79BB4 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3C23D70A
/* 10218 80B79BB8 3C0180B8 */  lui     $at, %hi(D_80B7A650)       ## $at = 80B80000
/* 1021C 80B79BBC C420A650 */  lwc1    $f0, %lo(D_80B7A650)($at)  
.L80B79BC0:
/* 10220 80B79BC0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 10224 80B79BC4 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 10228 80B79BC8 3C0180B8 */  lui     $at, %hi(D_80B7B8D0)       ## $at = 80B80000
/* 1022C 80B79BCC C424B8D0 */  lwc1    $f4, %lo(D_80B7B8D0)($at)  
/* 10230 80B79BD0 46003201 */  sub.s   $f8, $f6, $f0              
/* 10234 80B79BD4 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 10238 80B79BD8 3C0480B8 */  lui     $a0, %hi(D_80B7A664)       ## $a0 = 80B80000
/* 1023C 80B79BDC 2484A664 */  addiu   $a0, $a0, %lo(D_80B7A664)  ## $a0 = 80B7A664
/* 10240 80B79BE0 46044082 */  mul.s   $f2, $f8, $f4              
/* 10244 80B79BE4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 10248 80B79BE8 460A103C */  c.lt.s  $f2, $f10                  
/* 1024C 80B79BEC 00000000 */  nop
/* 10250 80B79BF0 45020004 */  bc1fl   .L80B79C04                 
/* 10254 80B79BF4 44051000 */  mfc1    $a1, $f2                   
/* 10258 80B79BF8 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 1025C 80B79BFC 00000000 */  nop
/* 10260 80B79C00 44051000 */  mfc1    $a1, $f2                   
.L80B79C04:
/* 10264 80B79C04 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 10268 80B79C08 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 1026C 80B79C0C 3C0480B8 */  lui     $a0, %hi(D_80B7A65C)       ## $a0 = 80B80000
/* 10270 80B79C10 2484A65C */  addiu   $a0, $a0, %lo(D_80B7A65C)  ## $a0 = 80B7A65C
/* 10274 80B79C14 3C0180B8 */  lui     $at, %hi(D_80B7B8D4)       ## $at = 80B80000
/* 10278 80B79C18 C428B8D4 */  lwc1    $f8, %lo(D_80B7B8D4)($at)  
/* 1027C 80B79C1C C4860008 */  lwc1    $f6, 0x0008($a0)           ## 80B7A664
/* 10280 80B79C20 240520DA */  addiu   $a1, $zero, 0x20DA         ## $a1 = 000020DA
/* 10284 80B79C24 3C0680B8 */  lui     $a2, %hi(D_80B7A668)       ## $a2 = 80B80000
/* 10288 80B79C28 4608303C */  c.lt.s  $f6, $f8                   
/* 1028C 80B79C2C 00000000 */  nop
/* 10290 80B79C30 45000003 */  bc1f    .L80B79C40                 
/* 10294 80B79C34 00000000 */  nop
/* 10298 80B79C38 0C03D0DB */  jal     func_800F436C              
/* 1029C 80B79C3C 8CC6A668 */  lw      $a2, %lo(D_80B7A668)($a2)  
.L80B79C40:
/* 102A0 80B79C40 3C0980B8 */  lui     $t1, %hi(D_80B7A654)       ## $t1 = 80B80000
/* 102A4 80B79C44 9129A654 */  lbu     $t1, %lo(D_80B7A654)($t1)  
/* 102A8 80B79C48 3C0480B8 */  lui     $a0, %hi(D_80B7A658)       ## $a0 = 80B80000
/* 102AC 80B79C4C 2484A658 */  addiu   $a0, $a0, %lo(D_80B7A658)  ## $a0 = 80B7A658
/* 102B0 80B79C50 11200009 */  beq     $t1, $zero, .L80B79C78     
/* 102B4 80B79C54 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 102B8 80B79C58 3C0480B8 */  lui     $a0, %hi(D_80B7A658)       ## $a0 = 80B80000
/* 102BC 80B79C5C 2484A658 */  addiu   $a0, $a0, %lo(D_80B7A658)  ## $a0 = 80B7A658
/* 102C0 80B79C60 3C05C348 */  lui     $a1, 0xC348                ## $a1 = C3480000
/* 102C4 80B79C64 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 102C8 80B79C68 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 102CC 80B79C6C 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 102D0 80B79C70 10000003 */  beq     $zero, $zero, .L80B79C80   
/* 102D4 80B79C74 00000000 */  nop
.L80B79C78:
/* 102D8 80B79C78 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 102DC 80B79C7C 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
.L80B79C80:
/* 102E0 80B79C80 3C0180B8 */  lui     $at, %hi(D_80B7A658)       ## $at = 80B80000
/* 102E4 80B79C84 C424A658 */  lwc1    $f4, %lo(D_80B7A658)($at)  
/* 102E8 80B79C88 8FAC0028 */  lw      $t4, 0x0028($sp)           
/* 102EC 80B79C8C 3C0180B8 */  lui     $at, %hi(D_80B7A650)       ## $at = 80B80000
/* 102F0 80B79C90 4600228D */  trunc.w.s $f10, $f4                  
/* 102F4 80B79C94 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 102F8 80B79C98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 102FC 80B79C9C 44025000 */  mfc1    $v0, $f10                  
/* 10300 80B79CA0 444BF800 */  cfc1    $t3, $31
/* 10304 80B79CA4 44D8F800 */  ctc1    $t8, $31
/* 10308 80B79CA8 00021400 */  sll     $v0, $v0, 16               
/* 1030C 80B79CAC 00021403 */  sra     $v0, $v0, 16               
/* 10310 80B79CB0 A5820ABA */  sh      $v0, 0x0ABA($t4)           ## 00000ABA
/* 10314 80B79CB4 8FAD0028 */  lw      $t5, 0x0028($sp)           
/* 10318 80B79CB8 A5A20AB8 */  sh      $v0, 0x0AB8($t5)           ## 00000AB8
/* 1031C 80B79CBC 8FAE0028 */  lw      $t6, 0x0028($sp)           
/* 10320 80B79CC0 A5C20AB6 */  sh      $v0, 0x0AB6($t6)           ## 00000AB6
/* 10324 80B79CC4 C426A650 */  lwc1    $f6, %lo(D_80B7A650)($at)  
/* 10328 80B79CC8 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 1032C 80B79CCC 46003224 */  cvt.w.s $f8, $f6                   
/* 10330 80B79CD0 4458F800 */  cfc1    $t8, $31
/* 10334 80B79CD4 00000000 */  nop
/* 10338 80B79CD8 33180078 */  andi    $t8, $t8, 0x0078           ## $t8 = 00000000
/* 1033C 80B79CDC 53000013 */  beql    $t8, $zero, .L80B79D2C     
/* 10340 80B79CE0 44184000 */  mfc1    $t8, $f8                   
/* 10344 80B79CE4 44814000 */  mtc1    $at, $f8                   ## $f8 = 2147483648.00
/* 10348 80B79CE8 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 1034C 80B79CEC 46083201 */  sub.s   $f8, $f6, $f8              
/* 10350 80B79CF0 44D8F800 */  ctc1    $t8, $31
/* 10354 80B79CF4 00000000 */  nop
/* 10358 80B79CF8 46004224 */  cvt.w.s $f8, $f8                   
/* 1035C 80B79CFC 4458F800 */  cfc1    $t8, $31
/* 10360 80B79D00 00000000 */  nop
/* 10364 80B79D04 33180078 */  andi    $t8, $t8, 0x0078           ## $t8 = 00000000
/* 10368 80B79D08 17000005 */  bne     $t8, $zero, .L80B79D20     
/* 1036C 80B79D0C 00000000 */  nop
/* 10370 80B79D10 44184000 */  mfc1    $t8, $f8                   
/* 10374 80B79D14 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 10378 80B79D18 10000007 */  beq     $zero, $zero, .L80B79D38   
/* 1037C 80B79D1C 0301C025 */  or      $t8, $t8, $at              ## $t8 = 80000000
.L80B79D20:
/* 10380 80B79D20 10000005 */  beq     $zero, $zero, .L80B79D38   
/* 10384 80B79D24 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 10388 80B79D28 44184000 */  mfc1    $t8, $f8                   
.L80B79D2C:
/* 1038C 80B79D2C 00000000 */  nop
/* 10390 80B79D30 0700FFFB */  bltz    $t8, .L80B79D20            
/* 10394 80B79D34 00000000 */  nop
.L80B79D38:
/* 10398 80B79D38 44CBF800 */  ctc1    $t3, $31
/* 1039C 80B79D3C 331900FF */  andi    $t9, $t8, 0x00FF           ## $t9 = 000000FF
/* 103A0 80B79D40 5B20009A */  blezl   $t9, .L80B79FAC            
/* 103A4 80B79D44 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 103A8 80B79D48 0C030129 */  jal     func_800C04A4              
/* 103AC 80B79D4C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 103B0 80B79D50 3C0180B8 */  lui     $at, %hi(D_80B7B8D8)       ## $at = 80B80000
/* 103B4 80B79D54 C424B8D8 */  lwc1    $f4, %lo(D_80B7B8D8)($at)  
/* 103B8 80B79D58 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 103BC 80B79D5C 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 103C0 80B79D60 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 103C4 80B79D64 E7A40058 */  swc1    $f4, 0x0058($sp)           
/* 103C8 80B79D68 0C016A52 */  jal     func_8005A948              
/* 103CC 80B79D6C E7AA005C */  swc1    $f10, 0x005C($sp)          
/* 103D0 80B79D70 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 103D4 80B79D74 3C0180B8 */  lui     $at, %hi(D_80B7B8DC)       ## $at = 80B80000
/* 103D8 80B79D78 C424B8DC */  lwc1    $f4, %lo(D_80B7B8DC)($at)  
/* 103DC 80B79D7C 46803220 */  cvt.s.w $f8, $f6                   
/* 103E0 80B79D80 C7A6005C */  lwc1    $f6, 0x005C($sp)           
/* 103E4 80B79D84 3C0180B8 */  lui     $at, %hi(D_80B7A650)       ## $at = 80B80000
/* 103E8 80B79D88 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 103EC 80B79D8C 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 103F0 80B79D90 46044282 */  mul.s   $f10, $f8, $f4             
/* 103F4 80B79D94 C424A650 */  lwc1    $f4, %lo(D_80B7A650)($at)  
/* 103F8 80B79D98 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 103FC 80B79D9C 46065200 */  add.s   $f8, $f10, $f6             
/* 10400 80B79DA0 444FF800 */  cfc1    $t7, $31
/* 10404 80B79DA4 44C9F800 */  ctc1    $t1, $31
/* 10408 80B79DA8 E7A80060 */  swc1    $f8, 0x0060($sp)           
/* 1040C 80B79DAC 460022A4 */  cvt.w.s $f10, $f4                  
/* 10410 80B79DB0 4449F800 */  cfc1    $t1, $31
/* 10414 80B79DB4 00000000 */  nop
/* 10418 80B79DB8 31290078 */  andi    $t1, $t1, 0x0078           ## $t1 = 00000000
/* 1041C 80B79DBC 51200013 */  beql    $t1, $zero, .L80B79E0C     
/* 10420 80B79DC0 44095000 */  mfc1    $t1, $f10                  
/* 10424 80B79DC4 44815000 */  mtc1    $at, $f10                  ## $f10 = 2147483648.00
/* 10428 80B79DC8 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 1042C 80B79DCC 460A2281 */  sub.s   $f10, $f4, $f10            
/* 10430 80B79DD0 44C9F800 */  ctc1    $t1, $31
/* 10434 80B79DD4 00000000 */  nop
/* 10438 80B79DD8 460052A4 */  cvt.w.s $f10, $f10                 
/* 1043C 80B79DDC 4449F800 */  cfc1    $t1, $31
/* 10440 80B79DE0 00000000 */  nop
/* 10444 80B79DE4 31290078 */  andi    $t1, $t1, 0x0078           ## $t1 = 00000000
/* 10448 80B79DE8 15200005 */  bne     $t1, $zero, .L80B79E00     
/* 1044C 80B79DEC 00000000 */  nop
/* 10450 80B79DF0 44095000 */  mfc1    $t1, $f10                  
/* 10454 80B79DF4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 10458 80B79DF8 10000007 */  beq     $zero, $zero, .L80B79E18   
/* 1045C 80B79DFC 01214825 */  or      $t1, $t1, $at              ## $t1 = 80000000
.L80B79E00:
/* 10460 80B79E00 10000005 */  beq     $zero, $zero, .L80B79E18   
/* 10464 80B79E04 2409FFFF */  addiu   $t1, $zero, 0xFFFF         ## $t1 = FFFFFFFF
/* 10468 80B79E08 44095000 */  mfc1    $t1, $f10                  
.L80B79E0C:
/* 1046C 80B79E0C 00000000 */  nop
/* 10470 80B79E10 0520FFFB */  bltz    $t1, .L80B79E00            
/* 10474 80B79E14 00000000 */  nop
.L80B79E18:
/* 10478 80B79E18 44CFF800 */  ctc1    $t7, $31
/* 1047C 80B79E1C 312A00FF */  andi    $t2, $t1, 0x00FF           ## $t2 = 000000FF
/* 10480 80B79E20 19400061 */  blez    $t2, .L80B79FA8            
/* 10484 80B79E24 3C01442F */  lui     $at, 0x442F                ## $at = 442F0000
.L80B79E28:
/* 10488 80B79E28 44816000 */  mtc1    $at, $f12                  ## $f12 = 700.00
/* 1048C 80B79E2C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 10490 80B79E30 A7A30076 */  sh      $v1, 0x0076($sp)           
/* 10494 80B79E34 C60600E0 */  lwc1    $f6, 0x00E0($s0)           ## 000000E0
/* 10498 80B79E38 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 1049C 80B79E3C 44816000 */  mtc1    $at, $f12                  ## $f12 = 100.00
/* 104A0 80B79E40 46060200 */  add.s   $f8, $f0, $f6              
/* 104A4 80B79E44 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 104A8 80B79E48 E7A80064 */  swc1    $f8, 0x0064($sp)           
/* 104AC 80B79E4C 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 104B0 80B79E50 44812000 */  mtc1    $at, $f4                   ## $f4 = 150.00
/* 104B4 80B79E54 3C01432A */  lui     $at, 0x432A                ## $at = 432A0000
/* 104B8 80B79E58 44813000 */  mtc1    $at, $f6                   ## $f6 = 170.00
/* 104BC 80B79E5C 46040280 */  add.s   $f10, $f0, $f4             
/* 104C0 80B79E60 3C01442F */  lui     $at, 0x442F                ## $at = 442F0000
/* 104C4 80B79E64 44816000 */  mtc1    $at, $f12                  ## $f12 = 700.00
/* 104C8 80B79E68 46065201 */  sub.s   $f8, $f10, $f6             
/* 104CC 80B79E6C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 104D0 80B79E70 E7A80068 */  swc1    $f8, 0x0068($sp)           
/* 104D4 80B79E74 C60400E8 */  lwc1    $f4, 0x00E8($s0)           ## 000000E8
/* 104D8 80B79E78 3C014491 */  lui     $at, 0x4491                ## $at = 44910000
/* 104DC 80B79E7C 44814000 */  mtc1    $at, $f8                   ## $f8 = 1160.00
/* 104E0 80B79E80 46040280 */  add.s   $f10, $f0, $f4             
/* 104E4 80B79E84 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 104E8 80B79E88 34211D60 */  ori     $at, $at, 0x1D60           ## $at = 00011D60
/* 104EC 80B79E8C 3C0780B8 */  lui     $a3, %hi(D_80B7FEA4)       ## $a3 = 80B80000
/* 104F0 80B79E90 E7AA006C */  swc1    $f10, 0x006C($sp)          
/* 104F4 80B79E94 C7A6006C */  lwc1    $f6, 0x006C($sp)           
/* 104F8 80B79E98 87A30076 */  lh      $v1, 0x0076($sp)           
/* 104FC 80B79E9C 24E7FEA4 */  addiu   $a3, $a3, %lo(D_80B7FEA4)  ## $a3 = 80B7FEA4
/* 10500 80B79EA0 4608303C */  c.lt.s  $f6, $f8                   
/* 10504 80B79EA4 02012021 */  addu    $a0, $s0, $at              
/* 10508 80B79EA8 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFF3C
/* 1050C 80B79EAC 27A6004C */  addiu   $a2, $sp, 0x004C           ## $a2 = FFFFFF24
/* 10510 80B79EB0 45000014 */  bc1f    .L80B79F04                 
/* 10514 80B79EB4 00000000 */  nop
/* 10518 80B79EB8 0C029B84 */  jal     func_800A6E10              
/* 1051C 80B79EBC A7A30076 */  sh      $v1, 0x0076($sp)           
/* 10520 80B79EC0 C7A40054 */  lwc1    $f4, 0x0054($sp)           
/* 10524 80B79EC4 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 10528 80B79EC8 87A30076 */  lh      $v1, 0x0076($sp)           
/* 1052C 80B79ECC 8FAC0028 */  lw      $t4, 0x0028($sp)           
/* 10530 80B79ED0 460A203C */  c.lt.s  $f4, $f10                  
/* 10534 80B79ED4 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFF3C
/* 10538 80B79ED8 27A60058 */  addiu   $a2, $sp, 0x0058           ## $a2 = FFFFFF30
/* 1053C 80B79EDC 45020006 */  bc1fl   .L80B79EF8                 
/* 10540 80B79EE0 8D841E10 */  lw      $a0, 0x1E10($t4)           ## 00001E10
/* 10544 80B79EE4 2463FFFF */  addiu   $v1, $v1, 0xFFFF           ## $v1 = FFFFFFFF
/* 10548 80B79EE8 00031C00 */  sll     $v1, $v1, 16               
/* 1054C 80B79EEC 10000005 */  beq     $zero, $zero, .L80B79F04   
/* 10550 80B79EF0 00031C03 */  sra     $v1, $v1, 16               
/* 10554 80B79EF4 8D841E10 */  lw      $a0, 0x1E10($t4)           ## 00001E10
.L80B79EF8:
/* 10558 80B79EF8 0C2DA84E */  jal     func_80B6A138              
/* 1055C 80B79EFC A7A30076 */  sh      $v1, 0x0076($sp)           
/* 10560 80B79F00 87A30076 */  lh      $v1, 0x0076($sp)           
.L80B79F04:
/* 10564 80B79F04 3C0180B8 */  lui     $at, %hi(D_80B7A650)       ## $at = 80B80000
/* 10568 80B79F08 444DF800 */  cfc1    $t5, $31
/* 1056C 80B79F0C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 10570 80B79F10 44CEF800 */  ctc1    $t6, $31
/* 10574 80B79F14 C426A650 */  lwc1    $f6, %lo(D_80B7A650)($at)  
/* 10578 80B79F18 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000001
/* 1057C 80B79F1C 00031C00 */  sll     $v1, $v1, 16               
/* 10580 80B79F20 46003224 */  cvt.w.s $f8, $f6                   
/* 10584 80B79F24 00031C03 */  sra     $v1, $v1, 16               
/* 10588 80B79F28 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 1058C 80B79F2C 444EF800 */  cfc1    $t6, $31
/* 10590 80B79F30 00000000 */  nop
/* 10594 80B79F34 31CE0078 */  andi    $t6, $t6, 0x0078           ## $t6 = 00000000
/* 10598 80B79F38 51C00013 */  beql    $t6, $zero, .L80B79F88     
/* 1059C 80B79F3C 440E4000 */  mfc1    $t6, $f8                   
/* 105A0 80B79F40 44814000 */  mtc1    $at, $f8                   ## $f8 = 2147483648.00
/* 105A4 80B79F44 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 105A8 80B79F48 46083201 */  sub.s   $f8, $f6, $f8              
/* 105AC 80B79F4C 44CEF800 */  ctc1    $t6, $31
/* 105B0 80B79F50 00000000 */  nop
/* 105B4 80B79F54 46004224 */  cvt.w.s $f8, $f8                   
/* 105B8 80B79F58 444EF800 */  cfc1    $t6, $31
/* 105BC 80B79F5C 00000000 */  nop
/* 105C0 80B79F60 31CE0078 */  andi    $t6, $t6, 0x0078           ## $t6 = 00000000
/* 105C4 80B79F64 15C00005 */  bne     $t6, $zero, .L80B79F7C     
/* 105C8 80B79F68 00000000 */  nop
/* 105CC 80B79F6C 440E4000 */  mfc1    $t6, $f8                   
/* 105D0 80B79F70 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 105D4 80B79F74 10000007 */  beq     $zero, $zero, .L80B79F94   
/* 105D8 80B79F78 01C17025 */  or      $t6, $t6, $at              ## $t6 = 80000000
.L80B79F7C:
/* 105DC 80B79F7C 10000005 */  beq     $zero, $zero, .L80B79F94   
/* 105E0 80B79F80 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 105E4 80B79F84 440E4000 */  mfc1    $t6, $f8                   
.L80B79F88:
/* 105E8 80B79F88 00000000 */  nop
/* 105EC 80B79F8C 05C0FFFB */  bltz    $t6, .L80B79F7C            
/* 105F0 80B79F90 00000000 */  nop
.L80B79F94:
/* 105F4 80B79F94 31CB00FF */  andi    $t3, $t6, 0x00FF           ## $t3 = 000000FF
/* 105F8 80B79F98 006B082A */  slt     $at, $v1, $t3              
/* 105FC 80B79F9C 44CDF800 */  ctc1    $t5, $31
/* 10600 80B79FA0 5420FFA1 */  bnel    $at, $zero, .L80B79E28     
/* 10604 80B79FA4 3C01442F */  lui     $at, 0x442F                ## $at = 442F0000
.L80B79FA8:
/* 10608 80B79FA8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80B79FAC:
/* 1060C 80B79FAC 34211D60 */  ori     $at, $at, 0x1D60           ## $at = 00011D60
/* 10610 80B79FB0 3C0580B8 */  lui     $a1, %hi(D_80B7AFD0)       ## $a1 = 80B80000
/* 10614 80B79FB4 3C0680B8 */  lui     $a2, %hi(D_80B85138)       ## $a2 = 80B80000
/* 10618 80B79FB8 3C0780B8 */  lui     $a3, %hi(D_80B7FEA4)       ## $a3 = 80B80000
/* 1061C 80B79FBC 24E7FEA4 */  addiu   $a3, $a3, %lo(D_80B7FEA4)  ## $a3 = 80B7FEA4
/* 10620 80B79FC0 24C65138 */  addiu   $a2, $a2, %lo(D_80B85138)  ## $a2 = 80B85138
/* 10624 80B79FC4 24A5AFD0 */  addiu   $a1, $a1, %lo(D_80B7AFD0)  ## $a1 = 80B7AFD0
/* 10628 80B79FC8 0C029B84 */  jal     func_800A6E10              
/* 1062C 80B79FCC 02012021 */  addu    $a0, $s0, $at              
/* 10630 80B79FD0 3C0480B8 */  lui     $a0, %hi(D_80B85138)       ## $a0 = 80B80000
/* 10634 80B79FD4 24845138 */  addiu   $a0, $a0, %lo(D_80B85138)  ## $a0 = 80B85138
/* 10638 80B79FD8 0C01E245 */  jal     func_80078914              
/* 1063C 80B79FDC 24052028 */  addiu   $a1, $zero, 0x2028         ## $a1 = 00002028
/* 10640 80B79FE0 3C1880B8 */  lui     $t8, %hi(D_80B7A678)       ## $t8 = 80B80000
/* 10644 80B79FE4 9718A678 */  lhu     $t8, %lo(D_80B7A678)($t8)  
/* 10648 80B79FE8 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 1064C 80B79FEC 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 10650 80B79FF0 44982000 */  mtc1    $t8, $f4                   ## $f4 = -0.00
/* 10654 80B79FF4 3C0A8016 */  lui     $t2, 0x8016                ## $t2 = 80160000
/* 10658 80B79FF8 07010004 */  bgez    $t8, .L80B7A00C            
/* 1065C 80B79FFC 46802020 */  cvt.s.w $f0, $f4                   
/* 10660 80B7A000 44815000 */  mtc1    $at, $f10                  ## $f10 = 4294967296.00
/* 10664 80B7A004 00000000 */  nop
/* 10668 80B7A008 460A0000 */  add.s   $f0, $f0, $f10             
.L80B7A00C:
/* 1066C 80B7A00C 46000182 */  mul.s   $f6, $f0, $f0              
/* 10670 80B7A010 3C0180B8 */  lui     $at, %hi(D_80B7B8E0)       ## $at = 80B80000
/* 10674 80B7A014 C428B8E0 */  lwc1    $f8, %lo(D_80B7B8E0)($at)  
/* 10678 80B7A018 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 1067C 80B7A01C 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 10680 80B7A020 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 10684 80B7A024 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 10688 80B7A028 46083102 */  mul.s   $f4, $f6, $f8              
/* 1068C 80B7A02C 460A2180 */  add.s   $f6, $f4, $f10             
/* 10690 80B7A030 4459F800 */  cfc1    $t9, $31
/* 10694 80B7A034 44CFF800 */  ctc1    $t7, $31
/* 10698 80B7A038 00000000 */  nop
/* 1069C 80B7A03C 46003224 */  cvt.w.s $f8, $f6                   
/* 106A0 80B7A040 444FF800 */  cfc1    $t7, $31
/* 106A4 80B7A044 00000000 */  nop
/* 106A8 80B7A048 31EF0078 */  andi    $t7, $t7, 0x0078           ## $t7 = 00000000
/* 106AC 80B7A04C 51E00013 */  beql    $t7, $zero, .L80B7A09C     
/* 106B0 80B7A050 440F4000 */  mfc1    $t7, $f8                   
/* 106B4 80B7A054 44814000 */  mtc1    $at, $f8                   ## $f8 = 2147483648.00
/* 106B8 80B7A058 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 106BC 80B7A05C 46083201 */  sub.s   $f8, $f6, $f8              
/* 106C0 80B7A060 44CFF800 */  ctc1    $t7, $31
/* 106C4 80B7A064 00000000 */  nop
/* 106C8 80B7A068 46004224 */  cvt.w.s $f8, $f8                   
/* 106CC 80B7A06C 444FF800 */  cfc1    $t7, $31
/* 106D0 80B7A070 00000000 */  nop
/* 106D4 80B7A074 31EF0078 */  andi    $t7, $t7, 0x0078           ## $t7 = 00000000
/* 106D8 80B7A078 15E00005 */  bne     $t7, $zero, .L80B7A090     
/* 106DC 80B7A07C 00000000 */  nop
/* 106E0 80B7A080 440F4000 */  mfc1    $t7, $f8                   
/* 106E4 80B7A084 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 106E8 80B7A088 10000007 */  beq     $zero, $zero, .L80B7A0A8   
/* 106EC 80B7A08C 01E17825 */  or      $t7, $t7, $at              ## $t7 = 80000000
.L80B7A090:
/* 106F0 80B7A090 10000005 */  beq     $zero, $zero, .L80B7A0A8   
/* 106F4 80B7A094 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 106F8 80B7A098 440F4000 */  mfc1    $t7, $f8                   
.L80B7A09C:
/* 106FC 80B7A09C 00000000 */  nop
/* 10700 80B7A0A0 05E0FFFB */  bltz    $t7, .L80B7A090            
/* 10704 80B7A0A4 00000000 */  nop
.L80B7A0A8:
/* 10708 80B7A0A8 8C42FA90 */  lw      $v0, -0x0570($v0)          ## 8015FA90
/* 1070C 80B7A0AC 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 10710 80B7A0B0 A42FFA66 */  sh      $t7, -0x059A($at)          ## 8015FA66
/* 10714 80B7A0B4 84491308 */  lh      $t1, 0x1308($v0)           ## 80161308
/* 10718 80B7A0B8 44D9F800 */  ctc1    $t9, $31
/* 1071C 80B7A0BC 11200009 */  beq     $t1, $zero, .L80B7A0E4     
/* 10720 80B7A0C0 00000000 */  nop
/* 10724 80B7A0C4 A4401308 */  sh      $zero, 0x1308($v0)         ## 80161308
/* 10728 80B7A0C8 8D4AFA90 */  lw      $t2, -0x0570($t2)          ## 8015FA90
/* 1072C 80B7A0CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 10730 80B7A0D0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 10734 80B7A0D4 8545130A */  lh      $a1, 0x130A($t2)           ## 8016130A
/* 10738 80B7A0D8 24A5407B */  addiu   $a1, $a1, 0x407B           ## $a1 = 0000407B
/* 1073C 80B7A0DC 0C042DA0 */  jal     func_8010B680              
/* 10740 80B7A0E0 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 0000407B
.L80B7A0E4:
/* 10744 80B7A0E4 3C0480B8 */  lui     $a0, %hi(D_80B7B2D4)       ## $a0 = 80B80000
/* 10748 80B7A0E8 3C058016 */  lui     $a1, 0x8016                ## $a1 = 80160000
/* 1074C 80B7A0EC 8CA5F520 */  lw      $a1, -0x0AE0($a1)          ## 8015F520
/* 10750 80B7A0F0 0C00084C */  jal     osSyncPrintf
              
/* 10754 80B7A0F4 2484B2D4 */  addiu   $a0, $a0, %lo(D_80B7B2D4)  ## $a0 = 80B7B2D4
/* 10758 80B7A0F8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 1075C 80B7A0FC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 10760 80B7A100 27BD0128 */  addiu   $sp, $sp, 0x0128           ## $sp = 00000000
/* 10764 80B7A104 03E00008 */  jr      $ra                        
/* 10768 80B7A108 00000000 */  nop


