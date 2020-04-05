glabel func_80B6D354
/* 039B4 80B6D354 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 039B8 80B6D358 AFBF0044 */  sw      $ra, 0x0044($sp)           
/* 039BC 80B6D35C AFBE0040 */  sw      $s8, 0x0040($sp)           
/* 039C0 80B6D360 AFB7003C */  sw      $s7, 0x003C($sp)           
/* 039C4 80B6D364 AFB60038 */  sw      $s6, 0x0038($sp)           
/* 039C8 80B6D368 AFB50034 */  sw      $s5, 0x0034($sp)           
/* 039CC 80B6D36C AFB40030 */  sw      $s4, 0x0030($sp)           
/* 039D0 80B6D370 AFB3002C */  sw      $s3, 0x002C($sp)           
/* 039D4 80B6D374 AFB20028 */  sw      $s2, 0x0028($sp)           
/* 039D8 80B6D378 AFB10024 */  sw      $s1, 0x0024($sp)           
/* 039DC 80B6D37C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 039E0 80B6D380 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 039E4 80B6D384 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 039E8 80B6D388 0080A825 */  or      $s5, $a0, $zero            ## $s5 = 00000000
/* 039EC 80B6D38C 3C0680B8 */  lui     $a2, %hi(D_80B7B120)       ## $a2 = 80B80000
/* 039F0 80B6D390 24C6B120 */  addiu   $a2, $a2, %lo(D_80B7B120)  ## $a2 = 80B7B120
/* 039F4 80B6D394 27A4006C */  addiu   $a0, $sp, 0x006C           ## $a0 = FFFFFFE4
/* 039F8 80B6D398 24070C89 */  addiu   $a3, $zero, 0x0C89         ## $a3 = 00000C89
/* 039FC 80B6D39C 0C031AB1 */  jal     Graph_OpenDisps              
/* 03A00 80B6D3A0 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 03A04 80B6D3A4 0C2DB415 */  jal     func_80B6D054              
/* 03A08 80B6D3A8 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 03A0C 80B6D3AC 8EAE07C0 */  lw      $t6, 0x07C0($s5)           ## 000007C0
/* 03A10 80B6D3B0 3C0180B8 */  lui     $at, %hi(D_80B7E0BC)       ## $at = 80B80000
/* 03A14 80B6D3B4 C424E0BC */  lwc1    $f4, %lo(D_80B7E0BC)($at)  
/* 03A18 80B6D3B8 8DCF0028 */  lw      $t7, 0x0028($t6)           ## 00000028
/* 03A1C 80B6D3BC 85F80002 */  lh      $t8, 0x0002($t7)           ## 00000002
/* 03A20 80B6D3C0 44983000 */  mtc1    $t8, $f6                   ## $f6 = 0.00
/* 03A24 80B6D3C4 00000000 */  nop
/* 03A28 80B6D3C8 46803220 */  cvt.s.w $f8, $f6                   
/* 03A2C 80B6D3CC 4608203C */  c.lt.s  $f4, $f8                   
/* 03A30 80B6D3D0 00000000 */  nop
/* 03A34 80B6D3D4 4500004E */  bc1f    .L80B6D510                 
/* 03A38 80B6D3D8 00000000 */  nop
/* 03A3C 80B6D3DC 0C024F46 */  jal     func_80093D18              
/* 03A40 80B6D3E0 8EA40000 */  lw      $a0, 0x0000($s5)           ## 00000000
/* 03A44 80B6D3E4 8E4202C0 */  lw      $v0, 0x02C0($s2)           ## 000002C0
/* 03A48 80B6D3E8 3C090601 */  lui     $t1, 0x0601                ## $t1 = 06010000
/* 03A4C 80B6D3EC 2529B950 */  addiu   $t1, $t1, 0xB950           ## $t1 = 0600B950
/* 03A50 80B6D3F0 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 03A54 80B6D3F4 AE5902C0 */  sw      $t9, 0x02C0($s2)           ## 000002C0
/* 03A58 80B6D3F8 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 03A5C 80B6D3FC 3C0180B8 */  lui     $at, %hi(D_80B7B418)       ## $at = 80B80000
/* 03A60 80B6D400 3C1E80B8 */  lui     $s8, %hi(D_80B7AE88)       ## $s8 = 80B80000
/* 03A64 80B6D404 3C1680B8 */  lui     $s6, %hi(D_80B7FDB0)       ## $s6 = 80B80000
/* 03A68 80B6D408 3C1480B8 */  lui     $s4, %hi(D_80B7FEA0)       ## $s4 = 80B80000
/* 03A6C 80B6D40C AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 03A70 80B6D410 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 03A74 80B6D414 C434B418 */  lwc1    $f20, %lo(D_80B7B418)($at) 
/* 03A78 80B6D418 2694FEA0 */  addiu   $s4, $s4, %lo(D_80B7FEA0)  ## $s4 = 80B7FEA0
/* 03A7C 80B6D41C 26D6FDB0 */  addiu   $s6, $s6, %lo(D_80B7FDB0)  ## $s6 = 80B7FDB0
/* 03A80 80B6D420 27DEAE88 */  addiu   $s8, $s8, %lo(D_80B7AE88)  ## $s8 = 80B7AE88
/* 03A84 80B6D424 24100013 */  addiu   $s0, $zero, 0x0013         ## $s0 = 00000013
/* 03A88 80B6D428 2417000C */  addiu   $s7, $zero, 0x000C         ## $s7 = 0000000C
/* 03A8C 80B6D42C 868A0000 */  lh      $t2, 0x0000($s4)           ## 80B7FEA0
.L80B6D430:
/* 03A90 80B6D430 020A5821 */  addu    $t3, $s0, $t2              
/* 03A94 80B6D434 29610014 */  slti    $at, $t3, 0x0014           
/* 03A98 80B6D438 5020002F */  beql    $at, $zero, .L80B6D4F8     
/* 03A9C 80B6D43C 2610FFFF */  addiu   $s0, $s0, 0xFFFF           ## $s0 = 00000012
/* 03AA0 80B6D440 02170019 */  multu   $s0, $s7                   
/* 03AA4 80B6D444 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 03AA8 80B6D448 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 03AAC 80B6D44C 3C130601 */  lui     $s3, 0x0601                ## $s3 = 06010000
/* 03AB0 80B6D450 2673B9C0 */  addiu   $s3, $s3, 0xB9C0           ## $s3 = 0600B9C0
/* 03AB4 80B6D454 02A18821 */  addu    $s1, $s5, $at              
/* 03AB8 80B6D458 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 03ABC 80B6D45C 00006012 */  mflo    $t4                        
/* 03AC0 80B6D460 02CC1021 */  addu    $v0, $s6, $t4              
/* 03AC4 80B6D464 C44C0000 */  lwc1    $f12, 0x0000($v0)          ## 00000000
/* 03AC8 80B6D468 C44E0004 */  lwc1    $f14, 0x0004($v0)          ## 00000004
/* 03ACC 80B6D46C 0C034261 */  jal     Matrix_Translate              
/* 03AD0 80B6D470 8C460008 */  lw      $a2, 0x0008($v0)           ## 00000008
/* 03AD4 80B6D474 868F0000 */  lh      $t7, 0x0000($s4)           ## 80B7FEA0
/* 03AD8 80B6D478 00106880 */  sll     $t5, $s0,  2               
/* 03ADC 80B6D47C 03CD7021 */  addu    $t6, $s8, $t5              
/* 03AE0 80B6D480 000FC080 */  sll     $t8, $t7,  2               
/* 03AE4 80B6D484 01D8C821 */  addu    $t9, $t6, $t8              
/* 03AE8 80B6D488 C72A0000 */  lwc1    $f10, 0x0000($t9)          ## 00000000
/* 03AEC 80B6D48C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 03AF0 80B6D490 46145302 */  mul.s   $f12, $f10, $f20           
/* 03AF4 80B6D494 44066000 */  mfc1    $a2, $f12                  
/* 03AF8 80B6D498 0C0342A3 */  jal     Matrix_Scale              
/* 03AFC 80B6D49C 46006386 */  mov.s   $f14, $f12                 
/* 03B00 80B6D4A0 0C0347F5 */  jal     func_800D1FD4              
/* 03B04 80B6D4A4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 03B08 80B6D4A8 8E4202C0 */  lw      $v0, 0x02C0($s2)           ## 000002C0
/* 03B0C 80B6D4AC 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 03B10 80B6D4B0 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 03B14 80B6D4B4 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 03B18 80B6D4B8 AE4802C0 */  sw      $t0, 0x02C0($s2)           ## 000002C0
/* 03B1C 80B6D4BC 3C0580B8 */  lui     $a1, %hi(D_80B7B130)       ## $a1 = 80B80000
/* 03B20 80B6D4C0 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 03B24 80B6D4C4 8EA40000 */  lw      $a0, 0x0000($s5)           ## 00000000
/* 03B28 80B6D4C8 24A5B130 */  addiu   $a1, $a1, %lo(D_80B7B130)  ## $a1 = 80B7B130
/* 03B2C 80B6D4CC 24060CA7 */  addiu   $a2, $zero, 0x0CA7         ## $a2 = 00000CA7
/* 03B30 80B6D4D0 0C0346A2 */  jal     Matrix_NewMtx              
/* 03B34 80B6D4D4 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 03B38 80B6D4D8 AE220004 */  sw      $v0, 0x0004($s1)           ## 00000004
/* 03B3C 80B6D4DC 8E4202C0 */  lw      $v0, 0x02C0($s2)           ## 000002C0
/* 03B40 80B6D4E0 3C0BDE00 */  lui     $t3, 0xDE00                ## $t3 = DE000000
/* 03B44 80B6D4E4 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 03B48 80B6D4E8 AE4A02C0 */  sw      $t2, 0x02C0($s2)           ## 000002C0
/* 03B4C 80B6D4EC AC530004 */  sw      $s3, 0x0004($v0)           ## 00000004
/* 03B50 80B6D4F0 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 03B54 80B6D4F4 2610FFFF */  addiu   $s0, $s0, 0xFFFF           ## $s0 = 00000011
.L80B6D4F8:
/* 03B58 80B6D4F8 00108400 */  sll     $s0, $s0, 16               
/* 03B5C 80B6D4FC 00108403 */  sra     $s0, $s0, 16               
/* 03B60 80B6D500 0603FFCB */  bgezl   $s0, .L80B6D430            
/* 03B64 80B6D504 868A0000 */  lh      $t2, 0x0000($s4)           ## 80B7FEA0
/* 03B68 80B6D508 1000004C */  beq     $zero, $zero, .L80B6D63C   
/* 03B6C 80B6D50C 00000000 */  nop
.L80B6D510:
/* 03B70 80B6D510 0C024F61 */  jal     func_80093D84              
/* 03B74 80B6D514 8EA40000 */  lw      $a0, 0x0000($s5)           ## 00000000
/* 03B78 80B6D518 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 03B7C 80B6D51C 3C0F0601 */  lui     $t7, 0x0601                ## $t7 = 06010000
/* 03B80 80B6D520 25EFB950 */  addiu   $t7, $t7, 0xB950           ## $t7 = 0600B950
/* 03B84 80B6D524 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 03B88 80B6D528 AE4C02D0 */  sw      $t4, 0x02D0($s2)           ## 000002D0
/* 03B8C 80B6D52C 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 03B90 80B6D530 3C0180B8 */  lui     $at, %hi(D_80B7B41C)       ## $at = 80B80000
/* 03B94 80B6D534 3C1E80B8 */  lui     $s8, %hi(D_80B7AE88)       ## $s8 = 80B80000
/* 03B98 80B6D538 3C1680B8 */  lui     $s6, %hi(D_80B7FDB0)       ## $s6 = 80B80000
/* 03B9C 80B6D53C 3C1480B8 */  lui     $s4, %hi(D_80B7FEA0)       ## $s4 = 80B80000
/* 03BA0 80B6D540 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 03BA4 80B6D544 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 03BA8 80B6D548 C434B41C */  lwc1    $f20, %lo(D_80B7B41C)($at) 
/* 03BAC 80B6D54C 2694FEA0 */  addiu   $s4, $s4, %lo(D_80B7FEA0)  ## $s4 = 80B7FEA0
/* 03BB0 80B6D550 26D6FDB0 */  addiu   $s6, $s6, %lo(D_80B7FDB0)  ## $s6 = 80B7FDB0
/* 03BB4 80B6D554 27DEAE88 */  addiu   $s8, $s8, %lo(D_80B7AE88)  ## $s8 = 80B7AE88
/* 03BB8 80B6D558 24100013 */  addiu   $s0, $zero, 0x0013         ## $s0 = 00000013
/* 03BBC 80B6D55C 2417000C */  addiu   $s7, $zero, 0x000C         ## $s7 = 0000000C
/* 03BC0 80B6D560 868E0000 */  lh      $t6, 0x0000($s4)           ## 80B7FEA0
.L80B6D564:
/* 03BC4 80B6D564 020EC021 */  addu    $t8, $s0, $t6              
/* 03BC8 80B6D568 2B010014 */  slti    $at, $t8, 0x0014           
/* 03BCC 80B6D56C 5020002F */  beql    $at, $zero, .L80B6D62C     
/* 03BD0 80B6D570 2610FFFF */  addiu   $s0, $s0, 0xFFFF           ## $s0 = 00000012
/* 03BD4 80B6D574 02170019 */  multu   $s0, $s7                   
/* 03BD8 80B6D578 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 03BDC 80B6D57C 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 03BE0 80B6D580 3C130601 */  lui     $s3, 0x0601                ## $s3 = 06010000
/* 03BE4 80B6D584 2673B9C0 */  addiu   $s3, $s3, 0xB9C0           ## $s3 = 0600B9C0
/* 03BE8 80B6D588 02A18821 */  addu    $s1, $s5, $at              
/* 03BEC 80B6D58C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 03BF0 80B6D590 0000C812 */  mflo    $t9                        
/* 03BF4 80B6D594 02D91021 */  addu    $v0, $s6, $t9              
/* 03BF8 80B6D598 C44C0000 */  lwc1    $f12, 0x0000($v0)          ## 00000000
/* 03BFC 80B6D59C C44E0004 */  lwc1    $f14, 0x0004($v0)          ## 00000004
/* 03C00 80B6D5A0 0C034261 */  jal     Matrix_Translate              
/* 03C04 80B6D5A4 8C460008 */  lw      $a2, 0x0008($v0)           ## 00000008
/* 03C08 80B6D5A8 868A0000 */  lh      $t2, 0x0000($s4)           ## 80B7FEA0
/* 03C0C 80B6D5AC 00104080 */  sll     $t0, $s0,  2               
/* 03C10 80B6D5B0 03C84821 */  addu    $t1, $s8, $t0              
/* 03C14 80B6D5B4 000A5880 */  sll     $t3, $t2,  2               
/* 03C18 80B6D5B8 012B6021 */  addu    $t4, $t1, $t3              
/* 03C1C 80B6D5BC C5900000 */  lwc1    $f16, 0x0000($t4)          ## 00000000
/* 03C20 80B6D5C0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 03C24 80B6D5C4 46148302 */  mul.s   $f12, $f16, $f20           
/* 03C28 80B6D5C8 44066000 */  mfc1    $a2, $f12                  
/* 03C2C 80B6D5CC 0C0342A3 */  jal     Matrix_Scale              
/* 03C30 80B6D5D0 46006386 */  mov.s   $f14, $f12                 
/* 03C34 80B6D5D4 0C0347F5 */  jal     func_800D1FD4              
/* 03C38 80B6D5D8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 03C3C 80B6D5DC 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 03C40 80B6D5E0 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 03C44 80B6D5E4 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 03C48 80B6D5E8 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 03C4C 80B6D5EC AE4D02D0 */  sw      $t5, 0x02D0($s2)           ## 000002D0
/* 03C50 80B6D5F0 3C0580B8 */  lui     $a1, %hi(D_80B7B140)       ## $a1 = 80B80000
/* 03C54 80B6D5F4 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 03C58 80B6D5F8 8EA40000 */  lw      $a0, 0x0000($s5)           ## 00000000
/* 03C5C 80B6D5FC 24A5B140 */  addiu   $a1, $a1, %lo(D_80B7B140)  ## $a1 = 80B7B140
/* 03C60 80B6D600 24060CC1 */  addiu   $a2, $zero, 0x0CC1         ## $a2 = 00000CC1
/* 03C64 80B6D604 0C0346A2 */  jal     Matrix_NewMtx              
/* 03C68 80B6D608 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 03C6C 80B6D60C AE220004 */  sw      $v0, 0x0004($s1)           ## 00000004
/* 03C70 80B6D610 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 03C74 80B6D614 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 03C78 80B6D618 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 03C7C 80B6D61C AE4E02D0 */  sw      $t6, 0x02D0($s2)           ## 000002D0
/* 03C80 80B6D620 AC530004 */  sw      $s3, 0x0004($v0)           ## 00000004
/* 03C84 80B6D624 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 03C88 80B6D628 2610FFFF */  addiu   $s0, $s0, 0xFFFF           ## $s0 = 00000011
.L80B6D62C:
/* 03C8C 80B6D62C 00108400 */  sll     $s0, $s0, 16               
/* 03C90 80B6D630 00108403 */  sra     $s0, $s0, 16               
/* 03C94 80B6D634 0603FFCB */  bgezl   $s0, .L80B6D564            
/* 03C98 80B6D638 868E0000 */  lh      $t6, 0x0000($s4)           ## 80B7FEA0
.L80B6D63C:
/* 03C9C 80B6D63C 3C0680B8 */  lui     $a2, %hi(D_80B7B150)       ## $a2 = 80B80000
/* 03CA0 80B6D640 24C6B150 */  addiu   $a2, $a2, %lo(D_80B7B150)  ## $a2 = 80B7B150
/* 03CA4 80B6D644 27A4006C */  addiu   $a0, $sp, 0x006C           ## $a0 = FFFFFFE4
/* 03CA8 80B6D648 8EA50000 */  lw      $a1, 0x0000($s5)           ## 00000000
/* 03CAC 80B6D64C 0C031AD5 */  jal     Graph_CloseDisps              
/* 03CB0 80B6D650 24070CC7 */  addiu   $a3, $zero, 0x0CC7         ## $a3 = 00000CC7
/* 03CB4 80B6D654 8FBF0044 */  lw      $ra, 0x0044($sp)           
/* 03CB8 80B6D658 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 03CBC 80B6D65C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 03CC0 80B6D660 8FB10024 */  lw      $s1, 0x0024($sp)           
/* 03CC4 80B6D664 8FB20028 */  lw      $s2, 0x0028($sp)           
/* 03CC8 80B6D668 8FB3002C */  lw      $s3, 0x002C($sp)           
/* 03CCC 80B6D66C 8FB40030 */  lw      $s4, 0x0030($sp)           
/* 03CD0 80B6D670 8FB50034 */  lw      $s5, 0x0034($sp)           
/* 03CD4 80B6D674 8FB60038 */  lw      $s6, 0x0038($sp)           
/* 03CD8 80B6D678 8FB7003C */  lw      $s7, 0x003C($sp)           
/* 03CDC 80B6D67C 8FBE0040 */  lw      $s8, 0x0040($sp)           
/* 03CE0 80B6D680 03E00008 */  jr      $ra                        
/* 03CE4 80B6D684 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000


