glabel func_80ADBB6C
/* 02BDC 80ADBB6C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02BE0 80ADBB70 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02BE4 80ADBB74 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02BE8 80ADBB78 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02BEC 80ADBB7C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02BF0 80ADBB80 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02BF4 80ADBB84 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02BF8 80ADBB88 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 02BFC 80ADBB8C AFA50020 */  sw      $a1, 0x0020($sp)           
/* 02C00 80ADBB90 0C00B6EC */  jal     func_8002DBB0              
/* 02C04 80ADBB94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C08 80ADBB98 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 02C0C 80ADBB9C 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 02C10 80ADBBA0 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 02C14 80ADBBA4 4604003C */  c.lt.s  $f0, $f4                   
/* 02C18 80ADBBA8 00000000 */  nop
/* 02C1C 80ADBBAC 45000005 */  bc1f    .L80ADBBC4                 
/* 02C20 80ADBBB0 00000000 */  nop
/* 02C24 80ADBBB4 0C2B680A */  jal     func_80ADA028              
/* 02C28 80ADBBB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C2C 80ADBBBC 10000009 */  beq     $zero, $zero, .L80ADBBE4   
/* 02C30 80ADBBC0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ADBBC4:
/* 02C34 80ADBBC4 0C00B6B0 */  jal     func_8002DAC0              
/* 02C38 80ADBBC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C3C 80ADBBCC 00022C00 */  sll     $a1, $v0, 16               
/* 02C40 80ADBBD0 00052C03 */  sra     $a1, $a1, 16               
/* 02C44 80ADBBD4 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 02C48 80ADBBD8 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 02C4C 80ADBBDC 2406071C */  addiu   $a2, $zero, 0x071C         ## $a2 = 0000071C
/* 02C50 80ADBBE0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ADBBE4:
/* 02C54 80ADBBE4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02C58 80ADBBE8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02C5C 80ADBBEC 03E00008 */  jr      $ra                        
/* 02C60 80ADBBF0 00000000 */  nop
