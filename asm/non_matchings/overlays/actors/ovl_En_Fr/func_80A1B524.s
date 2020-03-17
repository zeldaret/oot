glabel func_80A1B524
/* 00B84 80A1B524 3C0E80A2 */  lui     $t6, %hi(D_80A1CFF0)       ## $t6 = 80A20000
/* 00B88 80A1B528 91CECFF0 */  lbu     $t6, %lo(D_80A1CFF0)($t6)  
/* 00B8C 80A1B52C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00B90 80A1B530 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00B94 80A1B534 2402000C */  addiu   $v0, $zero, 0x000C         ## $v0 = 0000000C
/* 00B98 80A1B538 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B9C 80A1B53C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00BA0 80A1B540 144E0022 */  bne     $v0, $t6, .L80A1B5CC       
/* 00BA4 80A1B544 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00BA8 80A1B548 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 00BAC 80A1B54C 3C0180A2 */  lui     $at, %hi(D_80A1D06C)       ## $at = 80A20000
/* 00BB0 80A1B550 01E20019 */  multu   $t7, $v0                   
/* 00BB4 80A1B554 0000C012 */  mflo    $t8                        
/* 00BB8 80A1B558 00380821 */  addu    $at, $at, $t8              
/* 00BBC 80A1B55C C424D06C */  lwc1    $f4, %lo(D_80A1D06C)($at)  
/* 00BC0 80A1B560 3C0180A2 */  lui     $at, %hi(D_80A1D298)       ## $at = 80A20000
/* 00BC4 80A1B564 C426D298 */  lwc1    $f6, %lo(D_80A1D298)($at)  
/* 00BC8 80A1B568 46062202 */  mul.s   $f8, $f4, $f6              
/* 00BCC 80A1B56C 4600428D */  trunc.w.s $f10, $f8                  
/* 00BD0 80A1B570 44085000 */  mfc1    $t0, $f10                  
/* 00BD4 80A1B574 00000000 */  nop
/* 00BD8 80A1B578 A4880032 */  sh      $t0, 0x0032($a0)           ## 00000032
/* 00BDC 80A1B57C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00BE0 80A1B580 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00BE4 80A1B584 248407BC */  addiu   $a0, $a0, 0x07BC           ## $a0 = 060007BC
/* 00BE8 80A1B588 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 00BEC 80A1B58C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00BF0 80A1B590 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00BF4 80A1B594 468084A0 */  cvt.s.w $f18, $f16                 
/* 00BF8 80A1B598 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 00BFC 80A1B59C 44070000 */  mfc1    $a3, $f0                   
/* 00C00 80A1B5A0 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00C04 80A1B5A4 24A507BC */  addiu   $a1, $a1, 0x07BC           ## $a1 = 060007BC
/* 00C08 80A1B5A8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00C0C 80A1B5AC E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 00C10 80A1B5B0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00C14 80A1B5B4 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00C18 80A1B5B8 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 00C1C 80A1B5BC 3C0A80A2 */  lui     $t2, %hi(func_80A1B778)    ## $t2 = 80A20000
/* 00C20 80A1B5C0 254AB778 */  addiu   $t2, $t2, %lo(func_80A1B778) ## $t2 = 80A1B778
/* 00C24 80A1B5C4 10000017 */  beq     $zero, $zero, .L80A1B624   
/* 00C28 80A1B5C8 AE0A0354 */  sw      $t2, 0x0354($s0)           ## 00000354
.L80A1B5CC:
/* 00C2C 80A1B5CC 920B0379 */  lbu     $t3, 0x0379($s0)           ## 00000379
/* 00C30 80A1B5D0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00C34 80A1B5D4 51600014 */  beql    $t3, $zero, .L80A1B628     
/* 00C38 80A1B5D8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00C3C 80A1B5DC 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00C40 80A1B5E0 248407BC */  addiu   $a0, $a0, 0x07BC           ## $a0 = 060007BC
/* 00C44 80A1B5E4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00C48 80A1B5E8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00C4C 80A1B5EC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00C50 80A1B5F0 468021A0 */  cvt.s.w $f6, $f4                   
/* 00C54 80A1B5F4 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 00C58 80A1B5F8 44070000 */  mfc1    $a3, $f0                   
/* 00C5C 80A1B5FC AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 00C60 80A1B600 24A507BC */  addiu   $a1, $a1, 0x07BC           ## $a1 = 060007BC
/* 00C64 80A1B604 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00C68 80A1B608 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00C6C 80A1B60C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00C70 80A1B610 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00C74 80A1B614 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 00C78 80A1B618 3C0D80A2 */  lui     $t5, %hi(func_80A1B638)    ## $t5 = 80A20000
/* 00C7C 80A1B61C 25ADB638 */  addiu   $t5, $t5, %lo(func_80A1B638) ## $t5 = 80A1B638
/* 00C80 80A1B620 AE0D0354 */  sw      $t5, 0x0354($s0)           ## 00000354
.L80A1B624:
/* 00C84 80A1B624 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A1B628:
/* 00C88 80A1B628 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00C8C 80A1B62C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00C90 80A1B630 03E00008 */  jr      $ra                        
/* 00C94 80A1B634 00000000 */  nop


