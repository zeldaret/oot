glabel func_808DCB7C
/* 0630C 808DCB7C 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 06310 808DCB80 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 06314 808DCB84 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 06318 808DCB88 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 0631C 808DCB8C F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 06320 808DCB90 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 06324 808DCB94 848E01BC */  lh      $t6, 0x01BC($a0)           ## 000001BC
/* 06328 808DCB98 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 0632C 808DCB9C 55C00005 */  bnel    $t6, $zero, .L808DCBB4     
/* 06330 808DCBA0 26240150 */  addiu   $a0, $s1, 0x0150           ## $a0 = 00000150
/* 06334 808DCBA4 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000154
/* 06338 808DCBA8 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 0633C 808DCBAC AC980004 */  sw      $t8, 0x0004($a0)           ## 00000154
/* 06340 808DCBB0 26240150 */  addiu   $a0, $s1, 0x0150           ## $a0 = 00000150
.L808DCBB4:
/* 06344 808DCBB4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 06348 808DCBB8 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 0634C 808DCBBC C6240028 */  lwc1    $f4, 0x0028($s1)           ## 00000028
/* 06350 808DCBC0 C6260060 */  lwc1    $f6, 0x0060($s1)           ## 00000060
/* 06354 808DCBC4 862301A4 */  lh      $v1, 0x01A4($s1)           ## 000001A4
/* 06358 808DCBC8 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 0635C 808DCBCC 46062200 */  add.s   $f8, $f4, $f6              
/* 06360 808DCBD0 28610028 */  slti    $at, $v1, 0x0028           
/* 06364 808DCBD4 A23901A0 */  sb      $t9, 0x01A0($s1)           ## 000001A0
/* 06368 808DCBD8 1020000A */  beq     $at, $zero, .L808DCC04     
/* 0636C 808DCBDC E6280028 */  swc1    $f8, 0x0028($s1)           ## 00000028
/* 06370 808DCBE0 3C018090 */  lui     $at, %hi(D_808F8004)       ## $at = 80900000
/* 06374 808DCBE4 C4208004 */  lwc1    $f0, %lo(D_808F8004)($at)  
/* 06378 808DCBE8 26240508 */  addiu   $a0, $s1, 0x0508           ## $a0 = 00000508
/* 0637C 808DCBEC 3C054080 */  lui     $a1, 0x4080                ## $a1 = 40800000
/* 06380 808DCBF0 44060000 */  mfc1    $a2, $f0                   
/* 06384 808DCBF4 44070000 */  mfc1    $a3, $f0                   
/* 06388 808DCBF8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0638C 808DCBFC 00000000 */  nop
/* 06390 808DCC00 862301A4 */  lh      $v1, 0x01A4($s1)           ## 000001A4
.L808DCC04:
/* 06394 808DCC04 28610028 */  slti    $at, $v1, 0x0028           
/* 06398 808DCC08 1420000A */  bne     $at, $zero, .L808DCC34     
/* 0639C 808DCC0C 28610037 */  slti    $at, $v1, 0x0037           
/* 063A0 808DCC10 50200009 */  beql    $at, $zero, .L808DCC38     
/* 063A4 808DCC14 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 063A8 808DCC18 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 063AC 808DCC1C 26240508 */  addiu   $a0, $s1, 0x0508           ## $a0 = 00000508
/* 063B0 808DCC20 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 063B4 808DCC24 4405A000 */  mfc1    $a1, $f20                  
/* 063B8 808DCC28 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 063BC 808DCC2C 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 063C0 808DCC30 862301A4 */  lh      $v1, 0x01A4($s1)           ## 000001A4
.L808DCC34:
/* 063C4 808DCC34 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
.L808DCC38:
/* 063C8 808DCC38 28610037 */  slti    $at, $v1, 0x0037           
/* 063CC 808DCC3C 14200009 */  bne     $at, $zero, .L808DCC64     
/* 063D0 808DCC40 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 063D4 808DCC44 3C073E19 */  lui     $a3, 0x3E19                ## $a3 = 3E190000
/* 063D8 808DCC48 34E7999A */  ori     $a3, $a3, 0x999A           ## $a3 = 3E19999A
/* 063DC 808DCC4C 26240508 */  addiu   $a0, $s1, 0x0508           ## $a0 = 00000508
/* 063E0 808DCC50 3C0540A0 */  lui     $a1, 0x40A0                ## $a1 = 40A00000
/* 063E4 808DCC54 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 063E8 808DCC58 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 063EC 808DCC5C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 063F0 808DCC60 A22802E4 */  sb      $t0, 0x02E4($s1)           ## 000002E4
.L808DCC64:
/* 063F4 808DCC64 962901C2 */  lhu     $t1, 0x01C2($s1)           ## 000001C2
/* 063F8 808DCC68 2D210009 */  sltiu   $at, $t1, 0x0009           
/* 063FC 808DCC6C 10200118 */  beq     $at, $zero, .L808DD0D0     
/* 06400 808DCC70 00094880 */  sll     $t1, $t1,  2               
/* 06404 808DCC74 3C018090 */  lui     $at, %hi(jtbl_808F8008)       ## $at = 80900000
/* 06408 808DCC78 00290821 */  addu    $at, $at, $t1              
/* 0640C 808DCC7C 8C298008 */  lw      $t1, %lo(jtbl_808F8008)($at)  
/* 06410 808DCC80 01200008 */  jr      $t1                        
/* 06414 808DCC84 00000000 */  nop
glabel L808DCC88
/* 06418 808DCC88 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 0641C 808DCC8C 0C0295B2 */  jal     func_800A56C8              
/* 06420 808DCC90 8E2501CC */  lw      $a1, 0x01CC($s1)           ## 000001CC
/* 06424 808DCC94 1040010E */  beq     $v0, $zero, .L808DD0D0     
/* 06428 808DCC98 3C100600 */  lui     $s0, 0x0600                ## $s0 = 06000000
/* 0642C 808DCC9C 26104DA8 */  addiu   $s0, $s0, 0x4DA8           ## $s0 = 06004DA8
/* 06430 808DCCA0 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 06434 808DCCA4 A62A01C2 */  sh      $t2, 0x01C2($s1)           ## 000001C2
/* 06438 808DCCA8 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 0643C 808DCCAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 06004DA8
/* 06440 808DCCB0 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 06444 808DCCB4 4406A000 */  mfc1    $a2, $f20                  
/* 06448 808DCCB8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 06004DA8
/* 0644C 808DCCBC 46805420 */  cvt.s.w $f16, $f10                 
/* 06450 808DCCC0 E63001CC */  swc1    $f16, 0x01CC($s1)          ## 000001CC
/* 06454 808DCCC4 0C029490 */  jal     func_800A5240              
/* 06458 808DCCC8 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 0645C 808DCCCC 10000101 */  beq     $zero, $zero, .L808DD0D4   
/* 06460 808DCCD0 8FBF002C */  lw      $ra, 0x002C($sp)           
glabel L808DCCD4
/* 06464 808DCCD4 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 06468 808DCCD8 0C0295B2 */  jal     func_800A56C8              
/* 0646C 808DCCDC 8E2501CC */  lw      $a1, 0x01CC($s1)           ## 000001CC
/* 06470 808DCCE0 104000FB */  beq     $v0, $zero, .L808DD0D0     
/* 06474 808DCCE4 3C100600 */  lui     $s0, 0x0600                ## $s0 = 06000000
/* 06478 808DCCE8 26103D40 */  addiu   $s0, $s0, 0x3D40           ## $s0 = 06003D40
/* 0647C 808DCCEC 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 06480 808DCCF0 A62B01C2 */  sh      $t3, 0x01C2($s1)           ## 000001C2
/* 06484 808DCCF4 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 06488 808DCCF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 06003D40
/* 0648C 808DCCFC 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 06490 808DCD00 4406A000 */  mfc1    $a2, $f20                  
/* 06494 808DCD04 02002825 */  or      $a1, $s0, $zero            ## $a1 = 06003D40
/* 06498 808DCD08 46809120 */  cvt.s.w $f4, $f18                  
/* 0649C 808DCD0C E62401CC */  swc1    $f4, 0x01CC($s1)           ## 000001CC
/* 064A0 808DCD10 0C029490 */  jal     func_800A5240              
/* 064A4 808DCD14 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 064A8 808DCD18 100000EE */  beq     $zero, $zero, .L808DD0D4   
/* 064AC 808DCD1C 8FBF002C */  lw      $ra, 0x002C($sp)           
glabel L808DCD20
/* 064B0 808DCD20 3C0C8090 */  lui     $t4, %hi(D_808F93C0)       ## $t4 = 80900000
/* 064B4 808DCD24 8D8C93C0 */  lw      $t4, %lo(D_808F93C0)($t4)  
/* 064B8 808DCD28 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 064BC 808DCD2C 44810000 */  mtc1    $at, $f0                   ## $f0 = 40.00
/* 064C0 808DCD30 E59416D0 */  swc1    $f20, 0x16D0($t4)          ## 809016D0
/* 064C4 808DCD34 C6300028 */  lwc1    $f16, 0x0028($s1)          ## 00000028
/* 064C8 808DCD38 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 064CC 808DCD3C 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 064D0 808DCD40 C6260060 */  lwc1    $f6, 0x0060($s1)           ## 00000060
/* 064D4 808DCD44 4600803C */  c.lt.s  $f16, $f0                  
/* 064D8 808DCD48 3C100600 */  lui     $s0, 0x0600                ## $s0 = 06000000
/* 064DC 808DCD4C 46083281 */  sub.s   $f10, $f6, $f8             
/* 064E0 808DCD50 261063CC */  addiu   $s0, $s0, 0x63CC           ## $s0 = 060063CC
/* 064E4 808DCD54 240D0003 */  addiu   $t5, $zero, 0x0003         ## $t5 = 00000003
/* 064E8 808DCD58 450000DD */  bc1f    .L808DD0D0                 
/* 064EC 808DCD5C E62A0060 */  swc1    $f10, 0x0060($s1)          ## 00000060
/* 064F0 808DCD60 E6200028 */  swc1    $f0, 0x0028($s1)           ## 00000028
/* 064F4 808DCD64 E6340060 */  swc1    $f20, 0x0060($s1)          ## 00000060
/* 064F8 808DCD68 A62D01C2 */  sh      $t5, 0x01C2($s1)           ## 000001C2
/* 064FC 808DCD6C 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 06500 808DCD70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 060063CC
/* 06504 808DCD74 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 06508 808DCD78 4406A000 */  mfc1    $a2, $f20                  
/* 0650C 808DCD7C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 060063CC
/* 06510 808DCD80 46809120 */  cvt.s.w $f4, $f18                  
/* 06514 808DCD84 E62401CC */  swc1    $f4, 0x01CC($s1)           ## 000001CC
/* 06518 808DCD88 0C029490 */  jal     func_800A5240              
/* 0651C 808DCD8C 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 06520 808DCD90 8E2F0004 */  lw      $t7, 0x0004($s1)           ## 00000004
/* 06524 808DCD94 240E0046 */  addiu   $t6, $zero, 0x0046         ## $t6 = 00000046
/* 06528 808DCD98 A62E01B6 */  sh      $t6, 0x01B6($s1)           ## 000001B6
/* 0652C 808DCD9C 35F80400 */  ori     $t8, $t7, 0x0400           ## $t8 = 00000400
/* 06530 808DCDA0 100000CB */  beq     $zero, $zero, .L808DD0D0   
/* 06534 808DCDA4 AE380004 */  sw      $t8, 0x0004($s1)           ## 00000004
glabel L808DCDA8
/* 06538 808DCDA8 863901B6 */  lh      $t9, 0x01B6($s1)           ## 000001B6
/* 0653C 808DCDAC 24010044 */  addiu   $at, $zero, 0x0044         ## $at = 00000044
/* 06540 808DCDB0 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 06544 808DCDB4 57210003 */  bnel    $t9, $at, .L808DCDC4       
/* 06548 808DCDB8 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 0654C 808DCDBC A228019F */  sb      $t0, 0x019F($s1)           ## 0000019F
/* 06550 808DCDC0 8FA40038 */  lw      $a0, 0x0038($sp)           
.L808DCDC4:
/* 06554 808DCDC4 0C0295B2 */  jal     func_800A56C8              
/* 06558 808DCDC8 8E2501CC */  lw      $a1, 0x01CC($s1)           ## 000001CC
/* 0655C 808DCDCC 104000C0 */  beq     $v0, $zero, .L808DD0D0     
/* 06560 808DCDD0 3C100600 */  lui     $s0, 0x0600                ## $s0 = 06000000
/* 06564 808DCDD4 261069A0 */  addiu   $s0, $s0, 0x69A0           ## $s0 = 060069A0
/* 06568 808DCDD8 24090004 */  addiu   $t1, $zero, 0x0004         ## $t1 = 00000004
/* 0656C 808DCDDC A62901C2 */  sh      $t1, 0x01C2($s1)           ## 000001C2
/* 06570 808DCDE0 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 06574 808DCDE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 060069A0
/* 06578 808DCDE8 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 0657C 808DCDEC 4406A000 */  mfc1    $a2, $f20                  
/* 06580 808DCDF0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 060069A0
/* 06584 808DCDF4 46803220 */  cvt.s.w $f8, $f6                   
/* 06588 808DCDF8 E62801CC */  swc1    $f8, 0x01CC($s1)           ## 000001CC
/* 0658C 808DCDFC 0C0294D3 */  jal     func_800A534C              
/* 06590 808DCE00 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 06594 808DCE04 100000B3 */  beq     $zero, $zero, .L808DD0D4   
/* 06598 808DCE08 8FBF002C */  lw      $ra, 0x002C($sp)           
glabel L808DCE0C
/* 0659C 808DCE0C 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 065A0 808DCE10 0C0295B2 */  jal     func_800A56C8              
/* 065A4 808DCE14 3C0540A0 */  lui     $a1, 0x40A0                ## $a1 = 40A00000
/* 065A8 808DCE18 10400003 */  beq     $v0, $zero, .L808DCE28     
/* 065AC 808DCE1C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 065B0 808DCE20 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 065B4 808DCE24 240539CE */  addiu   $a1, $zero, 0x39CE         ## $a1 = 000039CE
.L808DCE28:
/* 065B8 808DCE28 862A01B6 */  lh      $t2, 0x01B6($s1)           ## 000001B6
/* 065BC 808DCE2C 3C100600 */  lui     $s0, 0x0600                ## $s0 = 06000000
/* 065C0 808DCE30 261058C4 */  addiu   $s0, $s0, 0x58C4           ## $s0 = 060058C4
/* 065C4 808DCE34 154000A6 */  bne     $t2, $zero, .L808DD0D0     
/* 065C8 808DCE38 240B0005 */  addiu   $t3, $zero, 0x0005         ## $t3 = 00000005
/* 065CC 808DCE3C A62B01C2 */  sh      $t3, 0x01C2($s1)           ## 000001C2
/* 065D0 808DCE40 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 065D4 808DCE44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 060058C4
/* 065D8 808DCE48 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 065DC 808DCE4C 4406A000 */  mfc1    $a2, $f20                  
/* 065E0 808DCE50 02002825 */  or      $a1, $s0, $zero            ## $a1 = 060058C4
/* 065E4 808DCE54 46805420 */  cvt.s.w $f16, $f10                 
/* 065E8 808DCE58 E63001CC */  swc1    $f16, 0x01CC($s1)          ## 000001CC
/* 065EC 808DCE5C 0C029490 */  jal     func_800A5240              
/* 065F0 808DCE60 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 065F4 808DCE64 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 065F8 808DCE68 240C0050 */  addiu   $t4, $zero, 0x0050         ## $t4 = 00000050
/* 065FC 808DCE6C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 10.00
/* 06600 808DCE70 A62C02D4 */  sh      $t4, 0x02D4($s1)           ## 000002D4
/* 06604 808DCE74 24100001 */  addiu   $s0, $zero, 0x0001         ## $s0 = 00000001
.L808DCE78:
/* 06608 808DCE78 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0660C 808DCE7C 4600A306 */  mov.s   $f12, $f20                 
/* 06610 808DCE80 4600048D */  trunc.w.s $f18, $f0                  
/* 06614 808DCE84 00107840 */  sll     $t7, $s0,  1               
/* 06618 808DCE88 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000002
/* 0661C 808DCE8C 00108400 */  sll     $s0, $s0, 16               
/* 06620 808DCE90 440E9000 */  mfc1    $t6, $f18                  
/* 06624 808DCE94 00108403 */  sra     $s0, $s0, 16               
/* 06628 808DCE98 2A01000F */  slti    $at, $s0, 0x000F           
/* 0662C 808DCE9C 022FC021 */  addu    $t8, $s1, $t7              
/* 06630 808DCEA0 1420FFF5 */  bne     $at, $zero, .L808DCE78     
/* 06634 808DCEA4 A70E04E4 */  sh      $t6, 0x04E4($t8)           ## 000004E4
/* 06638 808DCEA8 8E280004 */  lw      $t0, 0x0004($s1)           ## 00000004
/* 0663C 808DCEAC 2401FBFF */  addiu   $at, $zero, 0xFBFF         ## $at = FFFFFBFF
/* 06640 808DCEB0 24190050 */  addiu   $t9, $zero, 0x0050         ## $t9 = 00000050
/* 06644 808DCEB4 01014824 */  and     $t1, $t0, $at              
/* 06648 808DCEB8 A63902E6 */  sh      $t9, 0x02E6($s1)           ## 000002E6
/* 0664C 808DCEBC A62002E8 */  sh      $zero, 0x02E8($s1)         ## 000002E8
/* 06650 808DCEC0 10000083 */  beq     $zero, $zero, .L808DD0D0   
/* 06654 808DCEC4 AE290004 */  sw      $t1, 0x0004($s1)           ## 00000004
glabel L808DCEC8
/* 06658 808DCEC8 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 0665C 808DCECC 3C05447A */  lui     $a1, 0x447A                ## $a1 = 447A0000
/* 06660 808DCED0 0C235AFC */  jal     func_808D6BF0              
/* 06664 808DCED4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 06668 808DCED8 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 0666C 808DCEDC 0C0295B2 */  jal     func_800A56C8              
/* 06670 808DCEE0 8E2501CC */  lw      $a1, 0x01CC($s1)           ## 000001CC
/* 06674 808DCEE4 1040007A */  beq     $v0, $zero, .L808DD0D0     
/* 06678 808DCEE8 3C100600 */  lui     $s0, 0x0600                ## $s0 = 06000000
/* 0667C 808DCEEC 26106028 */  addiu   $s0, $s0, 0x6028           ## $s0 = 06006028
/* 06680 808DCEF0 240A0006 */  addiu   $t2, $zero, 0x0006         ## $t2 = 00000006
/* 06684 808DCEF4 A62A01C2 */  sh      $t2, 0x01C2($s1)           ## 000001C2
/* 06688 808DCEF8 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 0668C 808DCEFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 06006028
/* 06690 808DCF00 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 06694 808DCF04 4406A000 */  mfc1    $a2, $f20                  
/* 06698 808DCF08 02002825 */  or      $a1, $s0, $zero            ## $a1 = 06006028
/* 0669C 808DCF0C 468021A0 */  cvt.s.w $f6, $f4                   
/* 066A0 808DCF10 E62601CC */  swc1    $f6, 0x01CC($s1)           ## 000001CC
/* 066A4 808DCF14 0C029490 */  jal     func_800A5240              
/* 066A8 808DCF18 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 066AC 808DCF1C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 066B0 808DCF20 3C0B8090 */  lui     $t3, %hi(D_808F93C0)       ## $t3 = 80900000
/* 066B4 808DCF24 8D6B93C0 */  lw      $t3, %lo(D_808F93C0)($t3)  
/* 066B8 808DCF28 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 066BC 808DCF2C 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 066C0 808DCF30 E56816D0 */  swc1    $f8, 0x16D0($t3)           ## 809016D0
/* 066C4 808DCF34 10000066 */  beq     $zero, $zero, .L808DD0D0   
/* 066C8 808DCF38 A22C019F */  sb      $t4, 0x019F($s1)           ## 0000019F
glabel L808DCF3C
/* 066CC 808DCF3C 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 066D0 808DCF40 A22001A0 */  sb      $zero, 0x01A0($s1)         ## 000001A0
/* 066D4 808DCF44 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 066D8 808DCF48 26240028 */  addiu   $a0, $s1, 0x0028           ## $a0 = 00000028
/* 066DC 808DCF4C 3C054348 */  lui     $a1, 0x4348                ## $a1 = 43480000
/* 066E0 808DCF50 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 066E4 808DCF54 3C07447A */  lui     $a3, 0x447A                ## $a3 = 447A0000
/* 066E8 808DCF58 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 066EC 808DCF5C 0C0295B2 */  jal     func_800A56C8              
/* 066F0 808DCF60 8E2501CC */  lw      $a1, 0x01CC($s1)           ## 000001CC
/* 066F4 808DCF64 1040005A */  beq     $v0, $zero, .L808DD0D0     
/* 066F8 808DCF68 240D0007 */  addiu   $t5, $zero, 0x0007         ## $t5 = 00000007
/* 066FC 808DCF6C 10000058 */  beq     $zero, $zero, .L808DD0D0   
/* 06700 808DCF70 A62D01C2 */  sh      $t5, 0x01C2($s1)           ## 000001C2
glabel L808DCF74
/* 06704 808DCF74 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 06708 808DCF78 A22001A0 */  sb      $zero, 0x01A0($s1)         ## 000001A0
/* 0670C 808DCF7C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 06710 808DCF80 26240028 */  addiu   $a0, $s1, 0x0028           ## $a0 = 00000028
/* 06714 808DCF84 3C054316 */  lui     $a1, 0x4316                ## $a1 = 43160000
/* 06718 808DCF88 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0671C 808DCF8C 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 06720 808DCF90 3C100601 */  lui     $s0, 0x0601                ## $s0 = 06010000
/* 06724 808DCF94 26108A88 */  addiu   $s0, $s0, 0x8A88           ## $s0 = 06008A88
/* 06728 808DCF98 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 0672C 808DCF9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 06008A88
/* 06730 808DCFA0 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 06734 808DCFA4 4406A000 */  mfc1    $a2, $f20                  
/* 06738 808DCFA8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 06008A88
/* 0673C 808DCFAC 46805420 */  cvt.s.w $f16, $f10                 
/* 06740 808DCFB0 E63001CC */  swc1    $f16, 0x01CC($s1)          ## 000001CC
/* 06744 808DCFB4 0C029490 */  jal     func_800A5240              
/* 06748 808DCFB8 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 0674C 808DCFBC 240F0008 */  addiu   $t7, $zero, 0x0008         ## $t7 = 00000008
/* 06750 808DCFC0 A62F01C2 */  sh      $t7, 0x01C2($s1)           ## 000001C2
/* 06754 808DCFC4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 06758 808DCFC8 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 0675C 808DCFCC 3C014190 */  lui     $at, 0x4190                ## $at = 41900000
/* 06760 808DCFD0 3C0E8090 */  lui     $t6, %hi(D_808F93C0)       ## $t6 = 80900000
/* 06764 808DCFD4 8DCE93C0 */  lw      $t6, %lo(D_808F93C0)($t6)  
/* 06768 808DCFD8 44819000 */  mtc1    $at, $f18                  ## $f18 = 18.00
/* 0676C 808DCFDC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 06770 808DCFE0 240528C7 */  addiu   $a1, $zero, 0x28C7         ## $a1 = 000028C7
/* 06774 808DCFE4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 06778 808DCFE8 E5D216C4 */  swc1    $f18, 0x16C4($t6)          ## 809016C4
/* 0677C 808DCFEC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 06780 808DCFF0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 06784 808DCFF4 240539CF */  addiu   $a1, $zero, 0x39CF         ## $a1 = 000039CF
/* 06788 808DCFF8 10000036 */  beq     $zero, $zero, .L808DD0D4   
/* 0678C 808DCFFC 8FBF002C */  lw      $ra, 0x002C($sp)           
glabel L808DD000
/* 06790 808DD000 A22001A0 */  sb      $zero, 0x01A0($s1)         ## 000001A0
/* 06794 808DD004 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 06798 808DD008 0C0295B2 */  jal     func_800A56C8              
/* 0679C 808DD00C 3C0540E0 */  lui     $a1, 0x40E0                ## $a1 = 40E00000
/* 067A0 808DD010 10400028 */  beq     $v0, $zero, .L808DD0B4     
/* 067A4 808DD014 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 067A8 808DD018 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 067AC 808DD01C 263801FC */  addiu   $t8, $s1, 0x01FC           ## $t8 = 000001FC
/* 067B0 808DD020 4481A000 */  mtc1    $at, $f20                  ## $f20 = 25.00
/* 067B4 808DD024 AFB80034 */  sw      $t8, 0x0034($sp)           
.L808DD028:
/* 067B8 808DD028 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 067BC 808DD02C 4600A306 */  mov.s   $f12, $f20                 
/* 067C0 808DD030 E7A00040 */  swc1    $f0, 0x0040($sp)           
/* 067C4 808DD034 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 067C8 808DD038 4600A306 */  mov.s   $f12, $f20                 
/* 067CC 808DD03C E7A00044 */  swc1    $f0, 0x0044($sp)           
/* 067D0 808DD040 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 067D4 808DD044 4600A306 */  mov.s   $f12, $f20                 
/* 067D8 808DD048 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 067DC 808DD04C 44816000 */  mtc1    $at, $f12                  ## $f12 = 200.00
/* 067E0 808DD050 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 067E4 808DD054 E7A00048 */  swc1    $f0, 0x0048($sp)           
/* 067E8 808DD058 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 067EC 808DD05C 44812000 */  mtc1    $at, $f4                   ## $f4 = 500.00
/* 067F0 808DD060 3C07808E */  lui     $a3, %hi(D_808E4C6C)       ## $a3 = 808E0000
/* 067F4 808DD064 24190014 */  addiu   $t9, $zero, 0x0014         ## $t9 = 00000014
/* 067F8 808DD068 46040180 */  add.s   $f6, $f0, $f4              
/* 067FC 808DD06C AFB90014 */  sw      $t9, 0x0014($sp)           
/* 06800 808DD070 24E74C6C */  addiu   $a3, $a3, %lo(D_808E4C6C)  ## $a3 = 808E4C6C
/* 06804 808DD074 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 06808 808DD078 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 0680C 808DD07C 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 06810 808DD080 0C235A6C */  jal     func_808D69B0              
/* 06814 808DD084 27A60040 */  addiu   $a2, $sp, 0x0040           ## $a2 = FFFFFFF0
/* 06818 808DD088 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 0681C 808DD08C 00108400 */  sll     $s0, $s0, 16               
/* 06820 808DD090 00108403 */  sra     $s0, $s0, 16               
/* 06824 808DD094 2A010064 */  slti    $at, $s0, 0x0064           
/* 06828 808DD098 1420FFE3 */  bne     $at, $zero, .L808DD028     
/* 0682C 808DD09C 00000000 */  nop
/* 06830 808DD0A0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 06834 808DD0A4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 06838 808DD0A8 24050806 */  addiu   $a1, $zero, 0x0806         ## $a1 = 00000806
/* 0683C 808DD0AC 24080032 */  addiu   $t0, $zero, 0x0032         ## $t0 = 00000032
/* 06840 808DD0B0 A62801BC */  sh      $t0, 0x01BC($s1)           ## 000001BC
.L808DD0B4:
/* 06844 808DD0B4 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 06848 808DD0B8 0C0295B2 */  jal     func_800A56C8              
/* 0684C 808DD0BC 8E2501CC */  lw      $a1, 0x01CC($s1)           ## 000001CC
/* 06850 808DD0C0 10400003 */  beq     $v0, $zero, .L808DD0D0     
/* 06854 808DD0C4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 06858 808DD0C8 0C236EBC */  jal     func_808DBAF0              
/* 0685C 808DD0CC 8FA50054 */  lw      $a1, 0x0054($sp)           
.L808DD0D0:
/* 06860 808DD0D0 8FBF002C */  lw      $ra, 0x002C($sp)           
.L808DD0D4:
/* 06864 808DD0D4 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 06868 808DD0D8 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 0686C 808DD0DC 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 06870 808DD0E0 03E00008 */  jr      $ra                        
/* 06874 808DD0E4 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000


