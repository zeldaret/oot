glabel func_80AD05A8
/* 01108 80AD05A8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0110C 80AD05AC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01110 80AD05B0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01114 80AD05B4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01118 80AD05B8 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 0111C 80AD05BC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01120 80AD05C0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01124 80AD05C4 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 01128 80AD05C8 3C054040 */  lui     $a1, 0x4040                ## $a1 = 40400000
/* 0112C 80AD05CC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01130 80AD05D0 3C073E80 */  lui     $a3, 0x3E80                ## $a3 = 3E800000
/* 01134 80AD05D4 AFAF002C */  sw      $t7, 0x002C($sp)           
/* 01138 80AD05D8 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 0113C 80AD05DC E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 01140 80AD05E0 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 01144 80AD05E4 44814000 */  mtc1    $at, $f8                   ## $f8 = 80.00
/* 01148 80AD05E8 C6060080 */  lwc1    $f6, 0x0080($s0)           ## 00000080
/* 0114C 80AD05EC 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 01150 80AD05F0 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 01154 80AD05F4 46083280 */  add.s   $f10, $f6, $f8             
/* 01158 80AD05F8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0115C 80AD05FC 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 01160 80AD0600 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 01164 80AD0604 44055000 */  mfc1    $a1, $f10                  
/* 01168 80AD0608 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 0116C 80AD060C 00000000 */  nop
/* 01170 80AD0610 860202F8 */  lh      $v0, 0x02F8($s0)           ## 000002F8
/* 01174 80AD0614 1C400006 */  bgtz    $v0, .L80AD0630            
/* 01178 80AD0618 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 0117C 80AD061C 0C2B42CF */  jal     func_80AD0B3C              
/* 01180 80AD0620 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01184 80AD0624 24180028 */  addiu   $t8, $zero, 0x0028         ## $t8 = 00000028
/* 01188 80AD0628 10000002 */  beq     $zero, $zero, .L80AD0634   
/* 0118C 80AD062C A61802F6 */  sh      $t8, 0x02F6($s0)           ## 000002F6
.L80AD0630:
/* 01190 80AD0630 A61902F8 */  sh      $t9, 0x02F8($s0)           ## 000002F8
.L80AD0634:
/* 01194 80AD0634 3C088016 */  lui     $t0, 0x8016                ## $t0 = 80160000
/* 01198 80AD0638 8D08E670 */  lw      $t0, -0x1990($t0)          ## 8015E670
/* 0119C 80AD063C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 011A0 80AD0640 15000018 */  bne     $t0, $zero, .L80AD06A4     
/* 011A4 80AD0644 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 011A8 80AD0648 0C01E00A */  jal     Math_Vec3f_DistXZ
              
/* 011AC 80AD064C 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
/* 011B0 80AD0650 C61202D8 */  lwc1    $f18, 0x02D8($s0)          ## 000002D8
/* 011B4 80AD0654 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 011B8 80AD0658 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 011BC 80AD065C 4612003C */  c.lt.s  $f0, $f18                  
/* 011C0 80AD0660 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 011C4 80AD0664 4500000F */  bc1f    .L80AD06A4                 
/* 011C8 80AD0668 00000000 */  nop
/* 011CC 80AD066C 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 011D0 80AD0670 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 011D4 80AD0674 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 011D8 80AD0678 860902FA */  lh      $t1, 0x02FA($s0)           ## 000002FA
/* 011DC 80AD067C 51200006 */  beql    $t1, $zero, .L80AD0698     
/* 011E0 80AD0680 860C00B6 */  lh      $t4, 0x00B6($s0)           ## 000000B6
/* 011E4 80AD0684 860A00B6 */  lh      $t2, 0x00B6($s0)           ## 000000B6
/* 011E8 80AD0688 254B01C2 */  addiu   $t3, $t2, 0x01C2           ## $t3 = 000001C2
/* 011EC 80AD068C 10000007 */  beq     $zero, $zero, .L80AD06AC   
/* 011F0 80AD0690 A60B00B6 */  sh      $t3, 0x00B6($s0)           ## 000000B6
/* 011F4 80AD0694 860C00B6 */  lh      $t4, 0x00B6($s0)           ## 000000B6
.L80AD0698:
/* 011F8 80AD0698 258DFE3E */  addiu   $t5, $t4, 0xFE3E           ## $t5 = FFFFFE3E
/* 011FC 80AD069C 10000003 */  beq     $zero, $zero, .L80AD06AC   
/* 01200 80AD06A0 A60D00B6 */  sh      $t5, 0x00B6($s0)           ## 000000B6
.L80AD06A4:
/* 01204 80AD06A4 0C2B4488 */  jal     func_80AD1220              
/* 01208 80AD06A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AD06AC:
/* 0120C 80AD06AC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01210 80AD06B0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01214 80AD06B4 260402F0 */  addiu   $a0, $s0, 0x02F0           ## $a0 = 000002F0
/* 01218 80AD06B8 24050FA0 */  addiu   $a1, $zero, 0x0FA0         ## $a1 = 00000FA0
/* 0121C 80AD06BC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01220 80AD06C0 240701F4 */  addiu   $a3, $zero, 0x01F4         ## $a3 = 000001F4
/* 01224 80AD06C4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01228 80AD06C8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0122C 80AD06CC 860E02F2 */  lh      $t6, 0x02F2($s0)           ## 000002F2
/* 01230 80AD06D0 860F02F0 */  lh      $t7, 0x02F0($s0)           ## 000002F0
/* 01234 80AD06D4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01238 80AD06D8 3C053D99 */  lui     $a1, 0x3D99                ## $a1 = 3D990000
/* 0123C 80AD06DC 01CFC021 */  addu    $t8, $t6, $t7              
/* 01240 80AD06E0 A61802F2 */  sh      $t8, 0x02F2($s0)           ## 000002F2
/* 01244 80AD06E4 3C073BA3 */  lui     $a3, 0x3BA3                ## $a3 = 3BA30000
/* 01248 80AD06E8 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3BA3D70A
/* 0124C 80AD06EC 34A5999A */  ori     $a1, $a1, 0x999A           ## $a1 = 3D99999A
/* 01250 80AD06F0 260402EC */  addiu   $a0, $s0, 0x02EC           ## $a0 = 000002EC
/* 01254 80AD06F4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01258 80AD06F8 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 0125C 80AD06FC E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 01260 80AD0700 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01264 80AD0704 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01268 80AD0708 24053155 */  addiu   $a1, $zero, 0x3155         ## $a1 = 00003155
/* 0126C 80AD070C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01270 80AD0710 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01274 80AD0714 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01278 80AD0718 03E00008 */  jr      $ra                        
/* 0127C 80AD071C 00000000 */  nop
