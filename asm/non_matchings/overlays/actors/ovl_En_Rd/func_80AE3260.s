.late_rodata
glabel D_80AE49A0
    .float 0.4

.text
glabel func_80AE3260
/* 00E60 80AE3260 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00E64 80AE3264 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00E68 80AE3268 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00E6C 80AE326C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00E70 80AE3270 8C820118 */  lw      $v0, 0x0118($a0)           ## 00000118
/* 00E74 80AE3274 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E78 80AE3278 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 00E7C 80AE327C 10400036 */  beq     $v0, $zero, .L80AE3358     
/* 00E80 80AE3280 00000000 */  nop
/* 00E84 80AE3284 8C4F0024 */  lw      $t7, 0x0024($v0)           ## 00000024
/* 00E88 80AE3288 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFEC
/* 00E8C 80AE328C ACAF0000 */  sw      $t7, 0x0000($a1)           ## FFFFFFEC
/* 00E90 80AE3290 8C4E0028 */  lw      $t6, 0x0028($v0)           ## 00000028
/* 00E94 80AE3294 ACAE0004 */  sw      $t6, 0x0004($a1)           ## FFFFFFF0
/* 00E98 80AE3298 8C4F002C */  lw      $t7, 0x002C($v0)           ## 0000002C
/* 00E9C 80AE329C 0C00B6B0 */  jal     func_8002DAC0              
/* 00EA0 80AE32A0 ACAF0008 */  sw      $t7, 0x0008($a1)           ## FFFFFFF4
/* 00EA4 80AE32A4 00022C00 */  sll     $a1, $v0, 16               
/* 00EA8 80AE32A8 00052C03 */  sra     $a1, $a1, 16               
/* 00EAC 80AE32AC 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00EB0 80AE32B0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00EB4 80AE32B4 240700FA */  addiu   $a3, $zero, 0x00FA         ## $a3 = 000000FA
/* 00EB8 80AE32B8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00EBC 80AE32BC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00EC0 80AE32C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EC4 80AE32C4 0C00B6DB */  jal     func_8002DB6C              
/* 00EC8 80AE32C8 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFEC
/* 00ECC 80AE32CC 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 00ED0 80AE32D0 44812000 */  mtc1    $at, $f4                   ## $f4 = 45.00
/* 00ED4 80AE32D4 3C0180AE */  lui     $at, %hi(D_80AE49A0)       ## $at = 80AE0000
/* 00ED8 80AE32D8 4600203E */  c.le.s  $f4, $f0                   
/* 00EDC 80AE32DC 00000000 */  nop
/* 00EE0 80AE32E0 45020005 */  bc1fl   .L80AE32F8                 
/* 00EE4 80AE32E4 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 00EE8 80AE32E8 C42649A0 */  lwc1    $f6, %lo(D_80AE49A0)($at)  
/* 00EEC 80AE32EC 1000000C */  beq     $zero, $zero, .L80AE3320   
/* 00EF0 80AE32F0 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 00EF4 80AE32F4 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
.L80AE32F8:
/* 00EF8 80AE32F8 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00EFC 80AE32FC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00F00 80AE3300 13010005 */  beq     $t8, $at, .L80AE3318       
/* 00F04 80AE3304 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 00F08 80AE3308 0C2B89A7 */  jal     func_80AE269C              
/* 00F0C 80AE330C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F10 80AE3310 10000004 */  beq     $zero, $zero, .L80AE3324   
/* 00F14 80AE3314 2604030E */  addiu   $a0, $s0, 0x030E           ## $a0 = 0000030E
.L80AE3318:
/* 00F18 80AE3318 0C2B8E75 */  jal     func_80AE39D4              
/* 00F1C 80AE331C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AE3320:
/* 00F20 80AE3320 2604030E */  addiu   $a0, $s0, 0x030E           ## $a0 = 0000030E
.L80AE3324:
/* 00F24 80AE3324 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00F28 80AE3328 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00F2C 80AE332C 24070064 */  addiu   $a3, $zero, 0x0064         ## $a3 = 00000064
/* 00F30 80AE3330 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00F34 80AE3334 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00F38 80AE3338 26040310 */  addiu   $a0, $s0, 0x0310           ## $a0 = 00000310
/* 00F3C 80AE333C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00F40 80AE3340 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00F44 80AE3344 24070064 */  addiu   $a3, $zero, 0x0064         ## $a3 = 00000064
/* 00F48 80AE3348 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00F4C 80AE334C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00F50 80AE3350 10000004 */  beq     $zero, $zero, .L80AE3364   
/* 00F54 80AE3354 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
.L80AE3358:
/* 00F58 80AE3358 0C2B8AE4 */  jal     func_80AE2B90              
/* 00F5C 80AE335C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F60 80AE3360 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
.L80AE3364:
/* 00F64 80AE3364 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 00F68 80AE3368 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00F6C 80AE336C A6190032 */  sh      $t9, 0x0032($s0)           ## 00000032
/* 00F70 80AE3370 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00F74 80AE3374 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 00F78 80AE3378 C60001A0 */  lwc1    $f0, 0x01A0($s0)           ## 000001A0
/* 00F7C 80AE337C 3C0141B0 */  lui     $at, 0x41B0                ## $at = 41B00000
/* 00F80 80AE3380 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F84 80AE3384 46005032 */  c.eq.s  $f10, $f0                  
/* 00F88 80AE3388 00000000 */  nop
/* 00F8C 80AE338C 45010008 */  bc1t    .L80AE33B0                 
/* 00F90 80AE3390 00000000 */  nop
/* 00F94 80AE3394 44818000 */  mtc1    $at, $f16                  ## $f16 = 22.00
/* 00F98 80AE3398 8FA80044 */  lw      $t0, 0x0044($sp)           
/* 00F9C 80AE339C 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 00FA0 80AE33A0 46008032 */  c.eq.s  $f16, $f0                  
/* 00FA4 80AE33A4 01284821 */  addu    $t1, $t1, $t0              
/* 00FA8 80AE33A8 45020006 */  bc1fl   .L80AE33C4                 
/* 00FAC 80AE33AC 8D291DE4 */  lw      $t1, 0x1DE4($t1)           ## 00011DE4
.L80AE33B0:
/* 00FB0 80AE33B0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00FB4 80AE33B4 2405382E */  addiu   $a1, $zero, 0x382E         ## $a1 = 0000382E
/* 00FB8 80AE33B8 10000009 */  beq     $zero, $zero, .L80AE33E0   
/* 00FBC 80AE33BC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00FC0 80AE33C0 8D291DE4 */  lw      $t1, 0x1DE4($t1)           ## 00001DE4
.L80AE33C4:
/* 00FC4 80AE33C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FC8 80AE33C8 312A005F */  andi    $t2, $t1, 0x005F           ## $t2 = 00000000
/* 00FCC 80AE33CC 55400004 */  bnel    $t2, $zero, .L80AE33E0     
/* 00FD0 80AE33D0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00FD4 80AE33D4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00FD8 80AE33D8 240538E4 */  addiu   $a1, $zero, 0x38E4         ## $a1 = 000038E4
/* 00FDC 80AE33DC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE33E0:
/* 00FE0 80AE33E0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00FE4 80AE33E4 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00FE8 80AE33E8 03E00008 */  jr      $ra                        
/* 00FEC 80AE33EC 00000000 */  nop
