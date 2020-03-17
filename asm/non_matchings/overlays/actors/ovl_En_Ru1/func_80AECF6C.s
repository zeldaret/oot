glabel func_80AECF6C
/* 0235C 80AECF6C 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 02360 80AECF70 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02364 80AECF74 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02368 80AECF78 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 0236C 80AECF7C C484026C */  lwc1    $f4, 0x026C($a0)           ## 0000026C
/* 02370 80AECF80 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 02374 80AECF84 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 02378 80AECF88 46062200 */  add.s   $f8, $f4, $f6              
/* 0237C 80AECF8C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 02380 80AECF90 E488026C */  swc1    $f8, 0x026C($a0)           ## 0000026C
/* 02384 80AECF94 C4700068 */  lwc1    $f16, 0x0068($v1)          ## 00000068
/* 02388 80AECF98 46105032 */  c.eq.s  $f10, $f16                 
/* 0238C 80AECF9C 00000000 */  nop
/* 02390 80AECFA0 45020034 */  bc1fl   .L80AED074                 
/* 02394 80AECFA4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 02398 80AECFA8 C492026C */  lwc1    $f18, 0x026C($a0)          ## 0000026C
/* 0239C 80AECFAC 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 023A0 80AECFB0 00000000 */  nop
/* 023A4 80AECFB4 4612203E */  c.le.s  $f4, $f18                  
/* 023A8 80AECFB8 00000000 */  nop
/* 023AC 80AECFBC 4502002D */  bc1fl   .L80AED074                 
/* 023B0 80AECFC0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 023B4 80AECFC4 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 023B8 80AECFC8 C4460450 */  lwc1    $f6, 0x0450($v0)           ## 00000450
/* 023BC 80AECFCC E4660024 */  swc1    $f6, 0x0024($v1)           ## 00000024
/* 023C0 80AECFD0 C4480454 */  lwc1    $f8, 0x0454($v0)           ## 00000454
/* 023C4 80AECFD4 C4720024 */  lwc1    $f18, 0x0024($v1)          ## 00000024
/* 023C8 80AECFD8 E4680028 */  swc1    $f8, 0x0028($v1)           ## 00000028
/* 023CC 80AECFDC C44A0458 */  lwc1    $f10, 0x0458($v0)          ## 00000458
/* 023D0 80AECFE0 E46A002C */  swc1    $f10, 0x002C($v1)          ## 0000002C
/* 023D4 80AECFE4 C4900024 */  lwc1    $f16, 0x0024($a0)          ## 00000024
/* 023D8 80AECFE8 C466002C */  lwc1    $f6, 0x002C($v1)           ## 0000002C
/* 023DC 80AECFEC C484002C */  lwc1    $f4, 0x002C($a0)           ## 0000002C
/* 023E0 80AECFF0 AFA30048 */  sw      $v1, 0x0048($sp)           
/* 023E4 80AECFF4 46128301 */  sub.s   $f12, $f16, $f18           
/* 023E8 80AECFF8 0C03F494 */  jal     func_800FD250              
/* 023EC 80AECFFC 46062381 */  sub.s   $f14, $f4, $f6             
/* 023F0 80AED000 3C0180AF */  lui     $at, %hi(D_80AF1BF0)       ## $at = 80AF0000
/* 023F4 80AED004 C4281BF0 */  lwc1    $f8, %lo(D_80AF1BF0)($at)  
/* 023F8 80AED008 8FA30048 */  lw      $v1, 0x0048($sp)           
/* 023FC 80AED00C 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 02400 80AED010 46080282 */  mul.s   $f10, $f0, $f8             
/* 02404 80AED014 246400B6 */  addiu   $a0, $v1, 0x00B6           ## $a0 = 000000B6
/* 02408 80AED018 84990000 */  lh      $t9, 0x0000($a0)           ## 000000B6
/* 0240C 80AED01C 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 02410 80AED020 24080064 */  addiu   $t0, $zero, 0x0064         ## $t0 = 00000064
/* 02414 80AED024 4600540D */  trunc.w.s $f16, $f10                 
/* 02418 80AED028 44028000 */  mfc1    $v0, $f16                  
/* 0241C 80AED02C 00000000 */  nop
/* 02420 80AED030 00027C00 */  sll     $t7, $v0, 16               
/* 02424 80AED034 000FC403 */  sra     $t8, $t7, 16               
/* 02428 80AED038 00022C00 */  sll     $a1, $v0, 16               
/* 0242C 80AED03C 1319000A */  beq     $t8, $t9, .L80AED068       
/* 02430 80AED040 00052C03 */  sra     $a1, $a1, 16               
/* 02434 80AED044 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 02438 80AED048 AFA30048 */  sw      $v1, 0x0048($sp)           
/* 0243C 80AED04C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02440 80AED050 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02444 80AED054 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02448 80AED058 8FA30048 */  lw      $v1, 0x0048($sp)           
/* 0244C 80AED05C 84890000 */  lh      $t1, 0x0000($a0)           ## 00000000
/* 02450 80AED060 10000003 */  beq     $zero, $zero, .L80AED070   
/* 02454 80AED064 A4690032 */  sh      $t1, 0x0032($v1)           ## 00000032
.L80AED068:
/* 02458 80AED068 10000002 */  beq     $zero, $zero, .L80AED074   
/* 0245C 80AED06C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AED070:
/* 02460 80AED070 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AED074:
/* 02464 80AED074 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02468 80AED078 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 0246C 80AED07C 03E00008 */  jr      $ra                        
/* 02470 80AED080 00000000 */  nop


