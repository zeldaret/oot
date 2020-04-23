glabel EnNiwLady_Update
/* 01200 80ABAE40 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01204 80ABAE44 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01208 80ABAE48 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0120C 80ABAE4C AFA5003C */  sw      $a1, 0x003C($sp)           
/* 01210 80ABAE50 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 01214 80ABAE54 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01218 80ABAE58 3C054270 */  lui     $a1, 0x4270                ## $a1 = 42700000
/* 0121C 80ABAE5C 0C00B56E */  jal     Actor_SetHeight
              
/* 01220 80ABAE60 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 01224 80ABAE64 8FA2002C */  lw      $v0, 0x002C($sp)           
/* 01228 80ABAE68 3C198016 */  lui     $t9, %hi(gSaveContext+4)
/* 0122C 80ABAE6C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01230 80ABAE70 8C580024 */  lw      $t8, 0x0024($v0)           ## 00000024
/* 01234 80ABAE74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01238 80ABAE78 26050288 */  addiu   $a1, $s0, 0x0288           ## $a1 = 00000288
/* 0123C 80ABAE7C AE1802A0 */  sw      $t8, 0x02A0($s0)           ## 000002A0
/* 01240 80ABAE80 8C4F0028 */  lw      $t7, 0x0028($v0)           ## 00000028
/* 01244 80ABAE84 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01248 80ABAE88 AE0F02A4 */  sw      $t7, 0x02A4($s0)           ## 000002A4
/* 0124C 80ABAE8C 8C58002C */  lw      $t8, 0x002C($v0)           ## 0000002C
/* 01250 80ABAE90 AE1802A8 */  sw      $t8, 0x02A8($s0)           ## 000002A8
/* 01254 80ABAE94 8F39E664 */  lw      $t9, %lo(gSaveContext+4)($t9)
/* 01258 80ABAE98 13200006 */  beq     $t9, $zero, .L80ABAEB4     
/* 0125C 80ABAE9C 00000000 */  nop
/* 01260 80ABAEA0 C4440028 */  lwc1    $f4, 0x0028($v0)           ## 00000028
/* 01264 80ABAEA4 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 01268 80ABAEA8 00000000 */  nop
/* 0126C 80ABAEAC 46062201 */  sub.s   $f8, $f4, $f6              
/* 01270 80ABAEB0 E60802A4 */  swc1    $f8, 0x02A4($s0)           ## 000002A4
.L80ABAEB4:
/* 01274 80ABAEB4 0C00D285 */  jal     func_80034A14              
/* 01278 80ABAEB8 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 0127C 80ABAEBC 8A090290 */  lwl     $t1, 0x0290($s0)           ## 00000290
/* 01280 80ABAEC0 8A0B0296 */  lwl     $t3, 0x0296($s0)           ## 00000296
/* 01284 80ABAEC4 9A090293 */  lwr     $t1, 0x0293($s0)           ## 00000293
/* 01288 80ABAEC8 9A0B0299 */  lwr     $t3, 0x0299($s0)           ## 00000299
/* 0128C 80ABAECC 920C0276 */  lbu     $t4, 0x0276($s0)           ## 00000276
/* 01290 80ABAED0 AA090254 */  swl     $t1, 0x0254($s0)           ## 00000254
/* 01294 80ABAED4 AA0B025A */  swl     $t3, 0x025A($s0)           ## 0000025A
/* 01298 80ABAED8 BA090257 */  swr     $t1, 0x0257($s0)           ## 00000257
/* 0129C 80ABAEDC BA0B025D */  swr     $t3, 0x025D($s0)           ## 0000025D
/* 012A0 80ABAEE0 96090294 */  lhu     $t1, 0x0294($s0)           ## 00000294
/* 012A4 80ABAEE4 960B029A */  lhu     $t3, 0x029A($s0)           ## 0000029A
/* 012A8 80ABAEE8 26040256 */  addiu   $a0, $s0, 0x0256           ## $a0 = 00000256
/* 012AC 80ABAEEC A6090258 */  sh      $t1, 0x0258($s0)           ## 00000258
/* 012B0 80ABAEF0 15800006 */  bne     $t4, $zero, .L80ABAF0C     
/* 012B4 80ABAEF4 A60B025E */  sh      $t3, 0x025E($s0)           ## 0000025E
/* 012B8 80ABAEF8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 012BC 80ABAEFC 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 012C0 80ABAF00 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 012C4 80ABAF04 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 012C8 80ABAF08 AFA00010 */  sw      $zero, 0x0010($sp)         
.L80ABAF0C:
/* 012CC 80ABAF0C 820E0281 */  lb      $t6, 0x0281($s0)           ## 00000281
/* 012D0 80ABAF10 8FAD003C */  lw      $t5, 0x003C($sp)           
/* 012D4 80ABAF14 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 012D8 80ABAF18 000E7900 */  sll     $t7, $t6,  4               
/* 012DC 80ABAF1C 01EE7821 */  addu    $t7, $t7, $t6              
/* 012E0 80ABAF20 000F7880 */  sll     $t7, $t7,  2               
/* 012E4 80ABAF24 01AFC021 */  addu    $t8, $t5, $t7              
/* 012E8 80ABAF28 0338C821 */  addu    $t9, $t9, $t8              
/* 012EC 80ABAF2C 8F3917B4 */  lw      $t9, 0x17B4($t9)           ## 000117B4
/* 012F0 80ABAF30 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 012F4 80ABAF34 03214021 */  addu    $t0, $t9, $at              
/* 012F8 80ABAF38 3C018016 */  lui     $at, %hi(gSegments+0x18)
/* 012FC 80ABAF3C AC286FC0 */  sw      $t0, %lo(gSegments+0x18)($at)
/* 01300 80ABAF40 82090281 */  lb      $t1, 0x0281($s0)           ## 00000281
/* 01304 80ABAF44 05220052 */  bltzl   $t1, .L80ABB090            
/* 01308 80ABAF48 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0130C 80ABAF4C 860A027E */  lh      $t2, 0x027E($s0)           ## 0000027E
/* 01310 80ABAF50 5140000D */  beql    $t2, $zero, .L80ABAF88     
/* 01314 80ABAF54 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 01318 80ABAF58 8602026E */  lh      $v0, 0x026E($s0)           ## 0000026E
/* 0131C 80ABAF5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01320 80ABAF60 10400006 */  beq     $v0, $zero, .L80ABAF7C     
/* 01324 80ABAF64 244BFFFF */  addiu   $t3, $v0, 0xFFFF           ## $t3 = FFFFFFFF
/* 01328 80ABAF68 A60B026E */  sh      $t3, 0x026E($s0)           ## 0000026E
/* 0132C 80ABAF6C 8606026E */  lh      $a2, 0x026E($s0)           ## 0000026E
/* 01330 80ABAF70 0C2AE758 */  jal     func_80AB9D60              
/* 01334 80ABAF74 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 01338 80ABAF78 A600026E */  sh      $zero, 0x026E($s0)         ## 0000026E
.L80ABAF7C:
/* 0133C 80ABAF7C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01340 80ABAF80 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01344 80ABAF84 8FA4003C */  lw      $a0, 0x003C($sp)           
.L80ABAF88:
/* 01348 80ABAF88 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0134C 80ABAF8C 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 01350 80ABAF90 24050110 */  addiu   $a1, $zero, 0x0110         ## $a1 = 00000110
/* 01354 80ABAF94 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 01358 80ABAF98 00812021 */  addu    $a0, $a0, $at              
/* 0135C 80ABAF9C A2020280 */  sb      $v0, 0x0280($s0)           ## 00000280
/* 01360 80ABAFA0 820C0280 */  lb      $t4, 0x0280($s0)           ## 00000280
/* 01364 80ABAFA4 0582003A */  bltzl   $t4, .L80ABB090            
/* 01368 80ABAFA8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0136C 80ABAFAC 8E190250 */  lw      $t9, 0x0250($s0)           ## 00000250
/* 01370 80ABAFB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01374 80ABAFB4 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 01378 80ABAFB8 0320F809 */  jalr    $ra, $t9                   
/* 0137C 80ABAFBC 00000000 */  nop
/* 01380 80ABAFC0 86020264 */  lh      $v0, 0x0264($s0)           ## 00000264
/* 01384 80ABAFC4 10400002 */  beq     $v0, $zero, .L80ABAFD0     
/* 01388 80ABAFC8 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 0138C 80ABAFCC A60E0264 */  sh      $t6, 0x0264($s0)           ## 00000264
.L80ABAFD0:
/* 01390 80ABAFD0 86020266 */  lh      $v0, 0x0266($s0)           ## 00000266
/* 01394 80ABAFD4 10400003 */  beq     $v0, $zero, .L80ABAFE4     
/* 01398 80ABAFD8 244DFFFF */  addiu   $t5, $v0, 0xFFFF           ## $t5 = FFFFFFFF
/* 0139C 80ABAFDC A60D0266 */  sh      $t5, 0x0266($s0)           ## 00000266
/* 013A0 80ABAFE0 86020266 */  lh      $v0, 0x0266($s0)           ## 00000266
.L80ABAFE4:
/* 013A4 80ABAFE4 860F0260 */  lh      $t7, 0x0260($s0)           ## 00000260
/* 013A8 80ABAFE8 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 013AC 80ABAFEC 14400010 */  bne     $v0, $zero, .L80ABB030     
/* 013B0 80ABAFF0 A6180260 */  sh      $t8, 0x0260($s0)           ## 00000260
/* 013B4 80ABAFF4 8608027C */  lh      $t0, 0x027C($s0)           ## 0000027C
/* 013B8 80ABAFF8 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 013BC 80ABAFFC A609027C */  sh      $t1, 0x027C($s0)           ## 0000027C
/* 013C0 80ABB000 860A027C */  lh      $t2, 0x027C($s0)           ## 0000027C
/* 013C4 80ABB004 29410003 */  slti    $at, $t2, 0x0003           
/* 013C8 80ABB008 14200009 */  bne     $at, $zero, .L80ABB030     
/* 013CC 80ABB00C 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 013D0 80ABB010 44816000 */  mtc1    $at, $f12                  ## $f12 = 60.00
/* 013D4 80ABB014 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 013D8 80ABB018 A600027C */  sh      $zero, 0x027C($s0)         ## 0000027C
/* 013DC 80ABB01C 4600028D */  trunc.w.s $f10, $f0                  
/* 013E0 80ABB020 440E5000 */  mfc1    $t6, $f10                  
/* 013E4 80ABB024 00000000 */  nop
/* 013E8 80ABB028 25CD0014 */  addiu   $t5, $t6, 0x0014           ## $t5 = 00000014
/* 013EC 80ABB02C A60D0266 */  sh      $t5, 0x0266($s0)           ## 00000266
.L80ABB030:
/* 013F0 80ABB030 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 013F4 80ABB034 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 013F8 80ABB038 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 013FC 80ABB03C 44818000 */  mtc1    $at, $f16                  ## $f16 = 60.00
/* 01400 80ABB040 240F001D */  addiu   $t7, $zero, 0x001D         ## $t7 = 0000001D
/* 01404 80ABB044 44060000 */  mfc1    $a2, $f0                   
/* 01408 80ABB048 44070000 */  mfc1    $a3, $f0                   
/* 0140C 80ABB04C AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 01410 80ABB050 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 01414 80ABB054 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01418 80ABB058 0C00B92D */  jal     func_8002E4B4              
/* 0141C 80ABB05C E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 01420 80ABB060 260602B0 */  addiu   $a2, $s0, 0x02B0           ## $a2 = 000002B0
/* 01424 80ABB064 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000002B0
/* 01428 80ABB068 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 0142C 80ABB06C 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 01430 80ABB070 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01434 80ABB074 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 01438 80ABB078 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0143C 80ABB07C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01440 80ABB080 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 01444 80ABB084 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 01448 80ABB088 00812821 */  addu    $a1, $a0, $at              
/* 0144C 80ABB08C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80ABB090:
/* 01450 80ABB090 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01454 80ABB094 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01458 80ABB098 03E00008 */  jr      $ra                        
/* 0145C 80ABB09C 00000000 */  nop
