glabel func_80A47024
/* 042F4 80A47024 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 042F8 80A47028 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 042FC 80A4702C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 04300 80A47030 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04304 80A47034 0C291845 */  jal     func_80A46114              
/* 04308 80A47038 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0430C 80A4703C 14400025 */  bne     $v0, $zero, .L80A470D4     
/* 04310 80A47040 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 04314 80A47044 3C063F19 */  lui     $a2, 0x3F19                ## $a2 = 3F190000
/* 04318 80A47048 3C073F4C */  lui     $a3, 0x3F4C                ## $a3 = 3F4C0000
/* 0431C 80A4704C 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3F4CCCCD
/* 04320 80A47050 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3F19999A
/* 04324 80A47054 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 04328 80A47058 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0432C 80A4705C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 04330 80A47060 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 04334 80A47064 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 04338 80A47068 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0433C 80A4706C 4600203E */  c.le.s  $f4, $f0                   
/* 04340 80A47070 00000000 */  nop
/* 04344 80A47074 45020005 */  bc1fl   .L80A4708C                 
/* 04348 80A47078 4600018D */  trunc.w.s $f6, $f0                   
/* 0434C 80A4707C 0C2916C5 */  jal     func_80A45B14              
/* 04350 80A47080 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 04354 80A47084 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 04358 80A47088 4600018D */  trunc.w.s $f6, $f0                   
.L80A4708C:
/* 0435C 80A4708C 440F3000 */  mfc1    $t7, $f6                   
/* 04360 80A47090 00000000 */  nop
/* 04364 80A47094 55E00010 */  bnel    $t7, $zero, .L80A470D8     
/* 04368 80A47098 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0436C 80A4709C 86180032 */  lh      $t8, 0x0032($s0)           ## 00000032
/* 04370 80A470A0 9209020E */  lbu     $t1, 0x020E($s0)           ## 0000020E
/* 04374 80A470A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04378 80A470A8 3B198000 */  xori    $t9, $t8, 0x8000           ## $t9 = FFFF8000
/* 0437C 80A470AC A6190032 */  sh      $t9, 0x0032($s0)           ## 00000032
/* 04380 80A470B0 86080032 */  lh      $t0, 0x0032($s0)           ## 00000032
/* 04384 80A470B4 392A0001 */  xori    $t2, $t1, 0x0001           ## $t2 = 00000001
/* 04388 80A470B8 A20A020E */  sb      $t2, 0x020E($s0)           ## 0000020E
/* 0438C 80A470BC A60800B6 */  sh      $t0, 0x00B6($s0)           ## 000000B6
/* 04390 80A470C0 0C29131A */  jal     EnGo2_UpdateWaypoint              
/* 04394 80A470C4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04398 80A470C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0439C 80A470CC 0C291769 */  jal     func_80A45DA4              
/* 043A0 80A470D0 8FA50024 */  lw      $a1, 0x0024($sp)           
.L80A470D4:
/* 043A4 80A470D4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A470D8:
/* 043A8 80A470D8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 043AC 80A470DC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 043B0 80A470E0 03E00008 */  jr      $ra                        
/* 043B4 80A470E4 00000000 */  nop
