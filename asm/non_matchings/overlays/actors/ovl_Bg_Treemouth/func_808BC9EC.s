.late_rodata
glabel D_808BDA40
    .float 3827.0
glabel D_808BDA44
    .float -1142.0

.text
glabel func_808BC9EC
/* 004EC 808BC9EC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 004F0 808BC9F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004F4 808BC9F4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 004F8 808BC9F8 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 004FC 808BC9FC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00500 808BCA00 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00504 808BCA04 15C10036 */  bne     $t6, $at, .L808BCAE0       
/* 00508 808BCA08 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 0050C 808BCA0C 3C0543AF */  lui     $a1, 0x43AF                ## $a1 = 43AF0000
/* 00510 808BCA10 24067530 */  addiu   $a2, $zero, 0x7530         ## $a2 = 00007530
/* 00514 808BCA14 AFA3001C */  sw      $v1, 0x001C($sp)           
/* 00518 808BCA18 0C00B84B */  jal     func_8002E12C              
/* 0051C 808BCA1C AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00520 808BCA20 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 00524 808BCA24 1040000A */  beq     $v0, $zero, .L808BCA50     
/* 00528 808BCA28 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 0052C 808BCA2C 3C01808C */  lui     $at, %hi(D_808BDA40)       ## $at = 808C0000
/* 00530 808BCA30 C424DA40 */  lwc1    $f4, %lo(D_808BDA40)($at)  
/* 00534 808BCA34 3C01C321 */  lui     $at, 0xC321                ## $at = C3210000
/* 00538 808BCA38 44813000 */  mtc1    $at, $f6                   ## $f6 = -161.00
/* 0053C 808BCA3C 3C01808C */  lui     $at, %hi(D_808BDA44)       ## $at = 808C0000
/* 00540 808BCA40 E4640024 */  swc1    $f4, 0x0024($v1)           ## 00000024
/* 00544 808BCA44 E4660028 */  swc1    $f6, 0x0028($v1)           ## 00000028
/* 00548 808BCA48 C428DA44 */  lwc1    $f8, %lo(D_808BDA44)($at)  
/* 0054C 808BCA4C E468002C */  swc1    $f8, 0x002C($v1)           ## 0000002C
.L808BCA50:
/* 00550 808BCA50 3402FFFF */  ori     $v0, $zero, 0xFFFF         ## $v0 = 0000FFFF
/* 00554 808BCA54 A4E01D74 */  sh      $zero, 0x1D74($a3)         ## 00001D74
/* 00558 808BCA58 A4E21D7C */  sh      $v0, 0x1D7C($a3)           ## 00001D7C
/* 0055C 808BCA5C 3C018016 */  lui     $at, %hi(D_8015FCC0)
/* 00560 808BCA60 A422FCC0 */  sh      $v0, %lo(D_8015FCC0)($at)
/* 00564 808BCA64 3C018016 */  lui     $at, %hi(D_8015FCC2)
/* 00568 808BCA68 A422FCC2 */  sh      $v0, %lo(D_8015FCC2)($at)
/* 0056C 808BCA6C 3C018016 */  lui     $at, %hi(D_8015FCC4)
/* 00570 808BCA70 A422FCC4 */  sh      $v0, %lo(D_8015FCC4)($at)
/* 00574 808BCA74 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 00578 808BCA78 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 0057C 808BCA7C A0E01D7E */  sb      $zero, 0x1D7E($a3)         ## 00001D7E
/* 00580 808BCA80 A0E01D7F */  sb      $zero, 0x1D7F($a3)         ## 00001D7F
/* 00584 808BCA84 A0EF1D6C */  sb      $t7, 0x1D6C($a3)           ## 00001D6C
/* 00588 808BCA88 0307C021 */  addu    $t8, $t8, $a3              
/* 0058C 808BCA8C 931804BD */  lbu     $t8, 0x04BD($t8)           ## 000104BD
/* 00590 808BCA90 3C08808C */  lui     $t0, %hi(D_808BD790)       ## $t0 = 808C0000
/* 00594 808BCA94 2508D790 */  addiu   $t0, $t0, %lo(D_808BD790)  ## $t0 = 808BD790
/* 00598 808BCA98 1700000C */  bne     $t8, $zero, .L808BCACC     
/* 0059C 808BCA9C 3C05808C */  lui     $a1, %hi(func_808BC8B8)    ## $a1 = 808C0000
/* 005A0 808BCAA0 3C19808C */  lui     $t9, %hi(D_808BD520)       ## $t9 = 808C0000
/* 005A4 808BCAA4 2739D520 */  addiu   $t9, $t9, %lo(D_808BD520)  ## $t9 = 808BD520
/* 005A8 808BCAA8 ACF91D68 */  sw      $t9, 0x1D68($a3)           ## 00001D68
/* 005AC 808BCAAC 0C00D6DD */  jal     Flags_SetEventChkInf
              
/* 005B0 808BCAB0 24040005 */  addiu   $a0, $zero, 0x0005         ## $a0 = 00000005
/* 005B4 808BCAB4 3C05808C */  lui     $a1, %hi(func_808BCAF0)    ## $a1 = 808C0000
/* 005B8 808BCAB8 24A5CAF0 */  addiu   $a1, $a1, %lo(func_808BCAF0) ## $a1 = 808BCAF0
/* 005BC 808BCABC 0C22F140 */  jal     func_808BC500              
/* 005C0 808BCAC0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 005C4 808BCAC4 10000007 */  beq     $zero, $zero, .L808BCAE4   
/* 005C8 808BCAC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808BCACC:
/* 005CC 808BCACC ACE81D68 */  sw      $t0, 0x1D68($a3)           ## 00001D68
/* 005D0 808BCAD0 A4E01D74 */  sh      $zero, 0x1D74($a3)         ## 00001D74
/* 005D4 808BCAD4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 005D8 808BCAD8 0C22F140 */  jal     func_808BC500              
/* 005DC 808BCADC 24A5C8B8 */  addiu   $a1, $a1, %lo(func_808BC8B8) ## $a1 = FFFFC8B8
.L808BCAE0:
/* 005E0 808BCAE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808BCAE4:
/* 005E4 808BCAE4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 005E8 808BCAE8 03E00008 */  jr      $ra                        
/* 005EC 808BCAEC 00000000 */  nop
