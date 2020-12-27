glabel func_80AFF424
/* 01174 80AFF424 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 01178 80AFF428 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0117C 80AFF42C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01180 80AFF430 848E02CC */  lh      $t6, 0x02CC($a0)           ## 000002CC
/* 01184 80AFF434 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01188 80AFF438 55C00006 */  bnel    $t6, $zero, .L80AFF454     
/* 0118C 80AFF43C 860F02CA */  lh      $t7, 0x02CA($s0)           ## 000002CA
/* 01190 80AFF440 0C2BFBD7 */  jal     func_80AFEF5C              
/* 01194 80AFF444 00000000 */  nop
/* 01198 80AFF448 10000065 */  beq     $zero, $zero, .L80AFF5E0   
/* 0119C 80AFF44C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 011A0 80AFF450 860F02CA */  lh      $t7, 0x02CA($s0)           ## 000002CA
.L80AFF454:
/* 011A4 80AFF454 11E00056 */  beq     $t7, $zero, .L80AFF5B0     
/* 011A8 80AFF458 00000000 */  nop
/* 011AC 80AFF45C C60402F0 */  lwc1    $f4, 0x02F0($s0)           ## 000002F0
/* 011B0 80AFF460 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 011B4 80AFF464 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 011B8 80AFF468 4600218D */  trunc.w.s $f6, $f4                   
/* 011BC 80AFF46C 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 011C0 80AFF470 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 011C4 80AFF474 44073000 */  mfc1    $a3, $f6                   
/* 011C8 80AFF478 00000000 */  nop
/* 011CC 80AFF47C 00073C00 */  sll     $a3, $a3, 16               
/* 011D0 80AFF480 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 011D4 80AFF484 00073C03 */  sra     $a3, $a3, 16               
/* 011D8 80AFF488 A7A2002E */  sh      $v0, 0x002E($sp)           
/* 011DC 80AFF48C 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 011E0 80AFF490 260402F0 */  addiu   $a0, $s0, 0x02F0           ## $a0 = 000002F0
/* 011E4 80AFF494 3C0544FA */  lui     $a1, 0x44FA                ## $a1 = 44FA0000
/* 011E8 80AFF498 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 011EC 80AFF49C 3C074348 */  lui     $a3, 0x4348                ## $a3 = 43480000
/* 011F0 80AFF4A0 0C01E107 */  jal     Math_ApproachF
              
/* 011F4 80AFF4A4 A6190032 */  sh      $t9, 0x0032($s0)           ## 00000032
/* 011F8 80AFF4A8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 011FC 80AFF4AC 3C01C2F0 */  lui     $at, 0xC2F0                ## $at = C2F00000
/* 01200 80AFF4B0 44814000 */  mtc1    $at, $f8                   ## $f8 = -120.00
/* 01204 80AFF4B4 E7A00054 */  swc1    $f0, 0x0054($sp)           
/* 01208 80AFF4B8 E7A00058 */  swc1    $f0, 0x0058($sp)           
/* 0120C 80AFF4BC E7A8005C */  swc1    $f8, 0x005C($sp)           
/* 01210 80AFF4C0 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 01214 80AFF4C4 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 01218 80AFF4C8 44813000 */  mtc1    $at, $f6                   ## $f6 = 32768.00
/* 0121C 80AFF4CC 44885000 */  mtc1    $t0, $f10                  ## $f10 = 0.00
/* 01220 80AFF4D0 3C0180B0 */  lui     $at, %hi(D_80B01900)       ## $at = 80B00000
/* 01224 80AFF4D4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01228 80AFF4D8 46805120 */  cvt.s.w $f4, $f10                  
/* 0122C 80AFF4DC C42A1900 */  lwc1    $f10, %lo(D_80B01900)($at) 
/* 01230 80AFF4E0 46062203 */  div.s   $f8, $f4, $f6              
/* 01234 80AFF4E4 460A4302 */  mul.s   $f12, $f8, $f10            
/* 01238 80AFF4E8 0C034348 */  jal     Matrix_RotateY              
/* 0123C 80AFF4EC 00000000 */  nop
/* 01240 80AFF4F0 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFFF4
/* 01244 80AFF4F4 0C0346BD */  jal     Matrix_MultVec3f              
/* 01248 80AFF4F8 27A50048 */  addiu   $a1, $sp, 0x0048           ## $a1 = FFFFFFE8
/* 0124C 80AFF4FC C60402E0 */  lwc1    $f4, 0x02E0($s0)           ## 000002E0
/* 01250 80AFF500 C7A60048 */  lwc1    $f6, 0x0048($sp)           
/* 01254 80AFF504 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 01258 80AFF508 C60A02E8 */  lwc1    $f10, 0x02E8($s0)          ## 000002E8
/* 0125C 80AFF50C 46062200 */  add.s   $f8, $f4, $f6              
/* 01260 80AFF510 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 01264 80AFF514 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01268 80AFF518 E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000024
/* 0126C 80AFF51C C7A40050 */  lwc1    $f4, 0x0050($sp)           
/* 01270 80AFF520 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 01274 80AFF524 46045180 */  add.s   $f6, $f10, $f4             
/* 01278 80AFF528 46104081 */  sub.s   $f2, $f8, $f16             
/* 0127C 80AFF52C E606002C */  swc1    $f6, 0x002C($s0)           ## 0000002C
/* 01280 80AFF530 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 01284 80AFF534 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 01288 80AFF538 46021102 */  mul.s   $f4, $f2, $f2              
/* 0128C 80AFF53C 46125301 */  sub.s   $f12, $f10, $f18           
/* 01290 80AFF540 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01294 80AFF544 87A9002E */  lh      $t1, 0x002E($sp)           
/* 01298 80AFF548 460C6182 */  mul.s   $f6, $f12, $f12            
/* 0129C 80AFF54C 46062000 */  add.s   $f0, $f4, $f6              
/* 012A0 80AFF550 46000384 */  sqrt.s  $f14, $f0                  
/* 012A4 80AFF554 460E403C */  c.lt.s  $f8, $f14                  
/* 012A8 80AFF558 00000000 */  nop
/* 012AC 80AFF55C 45020004 */  bc1fl   .L80AFF570                 
/* 012B0 80AFF560 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 012B4 80AFF564 44817000 */  mtc1    $at, $f14                  ## $f14 = 10.00
/* 012B8 80AFF568 00000000 */  nop
/* 012BC 80AFF56C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
.L80AFF570:
/* 012C0 80AFF570 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 012C4 80AFF574 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 012C8 80AFF578 05210008 */  bgez    $t1, .L80AFF59C            
/* 012CC 80AFF57C 460A7383 */  div.s   $f14, $f14, $f10           
/* 012D0 80AFF580 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 012D4 80AFF584 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 012D8 80AFF588 00000000 */  nop
/* 012DC 80AFF58C 460E2180 */  add.s   $f6, $f4, $f14             
/* 012E0 80AFF590 46003207 */  neg.s   $f8, $f6                   
/* 012E4 80AFF594 10000011 */  beq     $zero, $zero, .L80AFF5DC   
/* 012E8 80AFF598 E6080168 */  swc1    $f8, 0x0168($s0)           ## 00000168
.L80AFF59C:
/* 012EC 80AFF59C 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 012F0 80AFF5A0 00000000 */  nop
/* 012F4 80AFF5A4 460E5100 */  add.s   $f4, $f10, $f14            
/* 012F8 80AFF5A8 1000000C */  beq     $zero, $zero, .L80AFF5DC   
/* 012FC 80AFF5AC E6040168 */  swc1    $f4, 0x0168($s0)           ## 00000168
.L80AFF5B0:
/* 01300 80AFF5B0 0C2BFB7E */  jal     func_80AFEDF8              
/* 01304 80AFF5B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01308 80AFF5B8 10400006 */  beq     $v0, $zero, .L80AFF5D4     
/* 0130C 80AFF5BC 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 01310 80AFF5C0 A20A02D2 */  sb      $t2, 0x02D2($s0)           ## 000002D2
/* 01314 80AFF5C4 0C2BFBA1 */  jal     func_80AFEE84              
/* 01318 80AFF5C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0131C 80AFF5CC 10000004 */  beq     $zero, $zero, .L80AFF5E0   
/* 01320 80AFF5D0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AFF5D4:
/* 01324 80AFF5D4 0C2BFC0E */  jal     func_80AFF038              
/* 01328 80AFF5D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AFF5DC:
/* 0132C 80AFF5DC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AFF5E0:
/* 01330 80AFF5E0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01334 80AFF5E4 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 01338 80AFF5E8 03E00008 */  jr      $ra                        
/* 0133C 80AFF5EC 00000000 */  nop
