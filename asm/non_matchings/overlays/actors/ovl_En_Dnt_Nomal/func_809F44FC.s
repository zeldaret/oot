.late_rodata
glabel D_809F604C
 .word 0x4622F983

.text
glabel func_809F44FC
/* 0123C 809F44FC 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01240 809F4500 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01244 809F4504 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01248 809F4508 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 0124C 809F450C C4840164 */  lwc1    $f4, 0x0164($a0)           ## 00000164
/* 01250 809F4510 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01254 809F4514 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01258 809F4518 0C02927F */  jal     Animation_Update
              
/* 0125C 809F451C E7A40030 */  swc1    $f4, 0x0030($sp)           
/* 01260 809F4520 860E026E */  lh      $t6, 0x026E($s0)           ## 0000026E
/* 01264 809F4524 C7A60030 */  lwc1    $f6, 0x0030($sp)           
/* 01268 809F4528 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 0126C 809F452C 00000000 */  nop
/* 01270 809F4530 468042A0 */  cvt.s.w $f10, $f8                  
/* 01274 809F4534 4606503E */  c.le.s  $f10, $f6                  
/* 01278 809F4538 00000000 */  nop
/* 0127C 809F453C 45020009 */  bc1fl   .L809F4564                 
/* 01280 809F4540 8619025C */  lh      $t9, 0x025C($s0)           ## 0000025C
/* 01284 809F4544 860F0274 */  lh      $t7, 0x0274($s0)           ## 00000274
/* 01288 809F4548 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0128C 809F454C 3C18809F */  lui     $t8, %hi(func_809F50EC)    ## $t8 = 809F0000
/* 01290 809F4550 15E10003 */  bne     $t7, $at, .L809F4560       
/* 01294 809F4554 271850EC */  addiu   $t8, $t8, %lo(func_809F50EC) ## $t8 = 809F50EC
/* 01298 809F4558 10000070 */  beq     $zero, $zero, .L809F471C   
/* 0129C 809F455C AE180214 */  sw      $t8, 0x0214($s0)           ## 00000214
.L809F4560:
/* 012A0 809F4560 8619025C */  lh      $t9, 0x025C($s0)           ## 0000025C
.L809F4564:
/* 012A4 809F4564 5720003D */  bnel    $t9, $zero, .L809F465C     
/* 012A8 809F4568 8618025A */  lh      $t8, 0x025A($s0)           ## 0000025A
/* 012AC 809F456C 92080278 */  lbu     $t0, 0x0278($s0)           ## 00000278
/* 012B0 809F4570 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 012B4 809F4574 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 012B8 809F4578 15000008 */  bne     $t0, $zero, .L809F459C     
/* 012BC 809F457C 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 012C0 809F4580 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 012C4 809F4584 E7A0002C */  swc1    $f0, 0x002C($sp)           
/* 012C8 809F4588 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 012CC 809F458C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 012D0 809F4590 24071388 */  addiu   $a3, $zero, 0x1388         ## $a3 = 00001388
/* 012D4 809F4594 10000018 */  beq     $zero, $zero, .L809F45F8   
/* 012D8 809F4598 C7A0002C */  lwc1    $f0, 0x002C($sp)           
.L809F459C:
/* 012DC 809F459C C6100288 */  lwc1    $f16, 0x0288($s0)          ## 00000288
/* 012E0 809F45A0 C6120024 */  lwc1    $f18, 0x0024($s0)          ## 00000024
/* 012E4 809F45A4 C6040290 */  lwc1    $f4, 0x0290($s0)           ## 00000290
/* 012E8 809F45A8 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 012EC 809F45AC 46128301 */  sub.s   $f12, $f16, $f18           
/* 012F0 809F45B0 0C03F494 */  jal     Math_atan2f              
/* 012F4 809F45B4 46082381 */  sub.s   $f14, $f4, $f8             
/* 012F8 809F45B8 3C01809F */  lui     $at, %hi(D_809F604C)       ## $at = 809F0000
/* 012FC 809F45BC C426604C */  lwc1    $f6, %lo(D_809F604C)($at)  
/* 01300 809F45C0 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 01304 809F45C4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01308 809F45C8 46060282 */  mul.s   $f10, $f0, $f6             
/* 0130C 809F45CC 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 01310 809F45D0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01314 809F45D4 4600540D */  trunc.w.s $f16, $f10                 
/* 01318 809F45D8 44058000 */  mfc1    $a1, $f16                  
/* 0131C 809F45DC 00000000 */  nop
/* 01320 809F45E0 00052C00 */  sll     $a1, $a1, 16               
/* 01324 809F45E4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01328 809F45E8 00052C03 */  sra     $a1, $a1, 16               
/* 0132C 809F45EC 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 01330 809F45F0 44810000 */  mtc1    $at, $f0                   ## $f0 = 90.00
/* 01334 809F45F4 00000000 */  nop
.L809F45F8:
/* 01338 809F45F8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0133C 809F45FC 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 01340 809F4600 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 01344 809F4604 46009300 */  add.s   $f12, $f18, $f0            
/* 01348 809F4608 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0134C 809F460C 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 01350 809F4610 00000000 */  nop
/* 01354 809F4614 4604003C */  c.lt.s  $f0, $f4                   
/* 01358 809F4618 00000000 */  nop
/* 0135C 809F461C 45020036 */  bc1fl   .L809F46F8                 
/* 01360 809F4620 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 01364 809F4624 860A0274 */  lh      $t2, 0x0274($s0)           ## 00000274
/* 01368 809F4628 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0136C 809F462C 11410031 */  beq     $t2, $at, .L809F46F4       
/* 01370 809F4630 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01374 809F4634 44816000 */  mtc1    $at, $f12                  ## $f12 = 30.00
/* 01378 809F4638 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0137C 809F463C 00000000 */  nop
/* 01380 809F4640 4600020D */  trunc.w.s $f8, $f0                   
/* 01384 809F4644 440E4000 */  mfc1    $t6, $f8                   
/* 01388 809F4648 00000000 */  nop
/* 0138C 809F464C 25CF001E */  addiu   $t7, $t6, 0x001E           ## $t7 = 0000001E
/* 01390 809F4650 10000028 */  beq     $zero, $zero, .L809F46F4   
/* 01394 809F4654 A60F025C */  sh      $t7, 0x025C($s0)           ## 0000025C
/* 01398 809F4658 8618025A */  lh      $t8, 0x025A($s0)           ## 0000025A
.L809F465C:
/* 0139C 809F465C 57000014 */  bnel    $t8, $zero, .L809F46B0     
/* 013A0 809F4660 86020272 */  lh      $v0, 0x0272($s0)           ## 00000272
/* 013A4 809F4664 86190272 */  lh      $t9, 0x0272($s0)           ## 00000272
/* 013A8 809F4668 240AFFFF */  addiu   $t2, $zero, 0xFFFF         ## $t2 = FFFFFFFF
/* 013AC 809F466C 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 013B0 809F4670 A6080272 */  sh      $t0, 0x0272($s0)           ## 00000272
/* 013B4 809F4674 86090272 */  lh      $t1, 0x0272($s0)           ## 00000272
/* 013B8 809F4678 29210002 */  slti    $at, $t1, 0x0002           
/* 013BC 809F467C 54200003 */  bnel    $at, $zero, .L809F468C     
/* 013C0 809F4680 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 013C4 809F4684 A60A0272 */  sh      $t2, 0x0272($s0)           ## 00000272
/* 013C8 809F4688 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
.L809F468C:
/* 013CC 809F468C 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 013D0 809F4690 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 013D4 809F4694 00000000 */  nop
/* 013D8 809F4698 4600018D */  trunc.w.s $f6, $f0                   
/* 013DC 809F469C 440E3000 */  mfc1    $t6, $f6                   
/* 013E0 809F46A0 00000000 */  nop
/* 013E4 809F46A4 25CF000A */  addiu   $t7, $t6, 0x000A           ## $t7 = 0000000A
/* 013E8 809F46A8 A60F025A */  sh      $t7, 0x025A($s0)           ## 0000025A
/* 013EC 809F46AC 86020272 */  lh      $v0, 0x0272($s0)           ## 00000272
.L809F46B0:
/* 013F0 809F46B0 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 013F4 809F46B4 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 013F8 809F46B8 1040000B */  beq     $v0, $zero, .L809F46E8     
/* 013FC 809F46BC 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 01400 809F46C0 0002C080 */  sll     $t8, $v0,  2               
/* 01404 809F46C4 0302C021 */  addu    $t8, $t8, $v0              
/* 01408 809F46C8 0018C0C0 */  sll     $t8, $t8,  3               
/* 0140C 809F46CC 0302C023 */  subu    $t8, $t8, $v0              
/* 01410 809F46D0 0018C100 */  sll     $t8, $t8,  4               
/* 01414 809F46D4 0302C021 */  addu    $t8, $t8, $v0              
/* 01418 809F46D8 0018C0C0 */  sll     $t8, $t8,  3               
/* 0141C 809F46DC 00B82821 */  addu    $a1, $a1, $t8              
/* 01420 809F46E0 00052C00 */  sll     $a1, $a1, 16               
/* 01424 809F46E4 00052C03 */  sra     $a1, $a1, 16               
.L809F46E8:
/* 01428 809F46E8 24071388 */  addiu   $a3, $zero, 0x1388         ## $a3 = 00001388
/* 0142C 809F46EC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01430 809F46F0 AFA00010 */  sw      $zero, 0x0010($sp)         
.L809F46F4:
/* 01434 809F46F4 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
.L809F46F8:
/* 01438 809F46F8 44818000 */  mtc1    $at, $f16                  ## $f16 = 70.00
/* 0143C 809F46FC C60A0090 */  lwc1    $f10, 0x0090($s0)          ## 00000090
/* 01440 809F4700 3C19809F */  lui     $t9, %hi(func_809F4E18)    ## $t9 = 809F0000
/* 01444 809F4704 27394E18 */  addiu   $t9, $t9, %lo(func_809F4E18) ## $t9 = 809F4E18
/* 01448 809F4708 4610503C */  c.lt.s  $f10, $f16                 
/* 0144C 809F470C 00000000 */  nop
/* 01450 809F4710 45020003 */  bc1fl   .L809F4720                 
/* 01454 809F4714 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01458 809F4718 AE190214 */  sw      $t9, 0x0214($s0)           ## 00000214
.L809F471C:
/* 0145C 809F471C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809F4720:
/* 01460 809F4720 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01464 809F4724 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01468 809F4728 03E00008 */  jr      $ra                        
/* 0146C 809F472C 00000000 */  nop
