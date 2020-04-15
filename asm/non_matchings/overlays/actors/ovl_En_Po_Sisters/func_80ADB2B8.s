glabel func_80ADB2B8
/* 02328 80ADB2B8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0232C 80ADB2BC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02330 80ADB2C0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02334 80ADB2C4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02338 80ADB2C8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0233C 80ADB2CC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02340 80ADB2D0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02344 80ADB2D4 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 02348 80ADB2D8 3C014302 */  lui     $at, 0x4302                ## $at = 43020000
/* 0234C 80ADB2DC 44813000 */  mtc1    $at, $f6                   ## $f6 = 130.00
/* 02350 80ADB2E0 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 02354 80ADB2E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02358 80ADB2E8 4606203C */  c.lt.s  $f4, $f6                   
/* 0235C 80ADB2EC 00000000 */  nop
/* 02360 80ADB2F0 45020004 */  bc1fl   .L80ADB304                 
/* 02364 80ADB2F4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 02368 80ADB2F8 0C2B677C */  jal     func_80AD9DF0              
/* 0236C 80ADB2FC 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02370 80ADB300 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80ADB304:
/* 02374 80ADB304 0C0295B2 */  jal     func_800A56C8              
/* 02378 80ADB308 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0237C 80ADB30C 10400003 */  beq     $v0, $zero, .L80ADB31C     
/* 02380 80ADB310 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02384 80ADB314 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02388 80ADB318 240538ED */  addiu   $a1, $zero, 0x38ED         ## $a1 = 000038ED
.L80ADB31C:
/* 0238C 80ADB31C 860E008A */  lh      $t6, 0x008A($s0)           ## 0000008A
/* 02390 80ADB320 A60E00B6 */  sh      $t6, 0x00B6($s0)           ## 000000B6
/* 02394 80ADB324 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02398 80ADB328 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0239C 80ADB32C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 023A0 80ADB330 03E00008 */  jr      $ra                        
/* 023A4 80ADB334 00000000 */  nop
