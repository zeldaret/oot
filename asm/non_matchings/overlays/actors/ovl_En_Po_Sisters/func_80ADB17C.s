glabel func_80ADB17C
/* 021EC 80ADB17C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 021F0 80ADB180 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 021F4 80ADB184 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 021F8 80ADB188 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 021FC 80ADB18C 848E019A */  lh      $t6, 0x019A($a0)           ## 0000019A
/* 02200 80ADB190 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02204 80ADB194 24020040 */  addiu   $v0, $zero, 0x0040         ## $v0 = 00000040
/* 02208 80ADB198 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 0220C 80ADB19C A48F019A */  sh      $t7, 0x019A($a0)           ## 0000019A
/* 02210 80ADB1A0 8487019A */  lh      $a3, 0x019A($a0)           ## 0000019A
/* 02214 80ADB1A4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 02218 80ADB1A8 14470019 */  bne     $v0, $a3, .L80ADB210       
/* 0221C 80ADB1AC 28E10020 */  slti    $at, $a3, 0x0020           
/* 02220 80ADB1B0 0C00B2DD */  jal     Flags_SetSwitch
              
/* 02224 80ADB1B4 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 02228 80ADB1B8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0222C 80ADB1BC 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 02230 80ADB1C0 2406001E */  addiu   $a2, $zero, 0x001E         ## $a2 = 0000001E
/* 02234 80ADB1C4 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 02238 80ADB1C8 24072822 */  addiu   $a3, $zero, 0x2822         ## $a3 = 00002822
/* 0223C 80ADB1CC 92180194 */  lbu     $t8, 0x0194($s0)           ## 00000194
/* 02240 80ADB1D0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 02244 80ADB1D4 57000004 */  bnel    $t8, $zero, .L80ADB1E8     
/* 02248 80ADB1D8 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 0224C 80ADB1DC 0C00B2ED */  jal     Flags_UnsetSwitch
              
/* 02250 80ADB1E0 2405001B */  addiu   $a1, $zero, 0x001B         ## $a1 = 0000001B
/* 02254 80ADB1E4 8FA80024 */  lw      $t0, 0x0024($sp)           
.L80ADB1E8:
/* 02258 80ADB1E8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0225C 80ADB1EC 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 02260 80ADB1F0 00280821 */  addu    $at, $at, $t0              
/* 02264 80ADB1F4 A0390AE3 */  sb      $t9, 0x0AE3($at)           ## 00010AE3
/* 02268 80ADB1F8 0C01E221 */  jal     func_80078884              
/* 0226C 80ADB1FC 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 02270 80ADB200 0C00B55C */  jal     Actor_Kill
              
/* 02274 80ADB204 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02278 80ADB208 1000000D */  beq     $zero, $zero, .L80ADB240   
/* 0227C 80ADB20C 8609019A */  lh      $t1, 0x019A($s0)           ## 0000019A
.L80ADB210:
/* 02280 80ADB210 10200007 */  beq     $at, $zero, .L80ADB230     
/* 02284 80ADB214 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02288 80ADB218 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0228C 80ADB21C 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 02290 80ADB220 0C2B6490 */  jal     func_80AD9240              
/* 02294 80ADB224 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 02298 80ADB228 10000005 */  beq     $zero, $zero, .L80ADB240   
/* 0229C 80ADB22C 8609019A */  lh      $t1, 0x019A($s0)           ## 0000019A
.L80ADB230:
/* 022A0 80ADB230 00472823 */  subu    $a1, $v0, $a3              
/* 022A4 80ADB234 0C2B6490 */  jal     func_80AD9240              
/* 022A8 80ADB238 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 022AC 80ADB23C 8609019A */  lh      $t1, 0x019A($s0)           ## 0000019A
.L80ADB240:
/* 022B0 80ADB240 24010020 */  addiu   $at, $zero, 0x0020         ## $at = 00000020
/* 022B4 80ADB244 55210018 */  bnel    $t1, $at, .L80ADB2A8       
/* 022B8 80ADB248 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 022BC 80ADB24C 920A0194 */  lbu     $t2, 0x0194($s0)           ## 00000194
/* 022C0 80ADB250 3C0C80AE */  lui     $t4, %hi(D_80ADD7A4)       ## $t4 = 80AE0000
/* 022C4 80ADB254 258CD7A4 */  addiu   $t4, $t4, %lo(D_80ADD7A4)  ## $t4 = 80ADD7A4
/* 022C8 80ADB258 000A5880 */  sll     $t3, $t2,  2               
/* 022CC 80ADB25C 016A5823 */  subu    $t3, $t3, $t2              
/* 022D0 80ADB260 000B5840 */  sll     $t3, $t3,  1               
/* 022D4 80ADB264 016C1021 */  addu    $v0, $t3, $t4              
/* 022D8 80ADB268 844D0000 */  lh      $t5, 0x0000($v0)           ## 00000000
/* 022DC 80ADB26C 448D2000 */  mtc1    $t5, $f4                   ## $f4 = 0.00
/* 022E0 80ADB270 00000000 */  nop
/* 022E4 80ADB274 468021A0 */  cvt.s.w $f6, $f4                   
/* 022E8 80ADB278 E6060024 */  swc1    $f6, 0x0024($s0)           ## 00000024
/* 022EC 80ADB27C 844E0002 */  lh      $t6, 0x0002($v0)           ## 00000002
/* 022F0 80ADB280 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 022F4 80ADB284 00000000 */  nop
/* 022F8 80ADB288 468042A0 */  cvt.s.w $f10, $f8                  
/* 022FC 80ADB28C E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 02300 80ADB290 844F0004 */  lh      $t7, 0x0004($v0)           ## 00000004
/* 02304 80ADB294 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 02308 80ADB298 00000000 */  nop
/* 0230C 80ADB29C 468084A0 */  cvt.s.w $f18, $f16                 
/* 02310 80ADB2A0 E612002C */  swc1    $f18, 0x002C($s0)          ## 0000002C
/* 02314 80ADB2A4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ADB2A8:
/* 02318 80ADB2A8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0231C 80ADB2AC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02320 80ADB2B0 03E00008 */  jr      $ra                        
/* 02324 80ADB2B4 00000000 */  nop
