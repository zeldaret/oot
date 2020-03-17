glabel func_80ADBD8C
/* 02DFC 80ADBD8C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02E00 80ADBD90 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02E04 80ADBD94 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02E08 80ADBD98 848E019A */  lh      $t6, 0x019A($a0)           ## 0000019A
/* 02E0C 80ADBD9C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 02E10 80ADBDA0 24053873 */  addiu   $a1, $zero, 0x3873         ## $a1 = 00003873
/* 02E14 80ADBDA4 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 02E18 80ADBDA8 A48F019A */  sh      $t7, 0x019A($a0)           ## 0000019A
/* 02E1C 80ADBDAC 8482019A */  lh      $v0, 0x019A($a0)           ## 0000019A
/* 02E20 80ADBDB0 14400008 */  bne     $v0, $zero, .L80ADBDD4     
/* 02E24 80ADBDB4 00000000 */  nop
/* 02E28 80ADBDB8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02E2C 80ADBDBC AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02E30 80ADBDC0 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 02E34 80ADBDC4 90D80199 */  lbu     $t8, 0x0199($a2)           ## 00000199
/* 02E38 80ADBDC8 84C2019A */  lh      $v0, 0x019A($a2)           ## 0000019A
/* 02E3C 80ADBDCC 3319FF7F */  andi    $t9, $t8, 0xFF7F           ## $t9 = 00000000
/* 02E40 80ADBDD0 A0D90199 */  sb      $t9, 0x0199($a2)           ## 00000199
.L80ADBDD4:
/* 02E44 80ADBDD4 1C400038 */  bgtz    $v0, .L80ADBEB8            
/* 02E48 80ADBDD8 24C4014C */  addiu   $a0, $a2, 0x014C           ## $a0 = 0000014C
/* 02E4C 80ADBDDC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02E50 80ADBDE0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02E54 80ADBDE4 1040000C */  beq     $v0, $zero, .L80ADBE18     
/* 02E58 80ADBDE8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 02E5C 80ADBDEC 3C0280AE */  lui     $v0, %hi(D_80ADD784)       ## $v0 = 80AE0000
/* 02E60 80ADBDF0 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 02E64 80ADBDF4 90CA0194 */  lbu     $t2, 0x0194($a2)           ## 00000194
/* 02E68 80ADBDF8 2442D784 */  addiu   $v0, $v0, %lo(D_80ADD784)  ## $v0 = 80ADD784
/* 02E6C 80ADBDFC A0C80231 */  sb      $t0, 0x0231($a2)           ## 00000231
/* 02E70 80ADBE00 8C490000 */  lw      $t1, 0x0000($v0)           ## 80ADD784
/* 02E74 80ADBE04 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 02E78 80ADBE08 014B6004 */  sllv    $t4, $t3, $t2              
/* 02E7C 80ADBE0C 012C6825 */  or      $t5, $t1, $t4              ## $t5 = 00000000
/* 02E80 80ADBE10 10000029 */  beq     $zero, $zero, .L80ADBEB8   
/* 02E84 80ADBE14 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 80ADD784
.L80ADBE18:
/* 02E88 80ADBE18 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 02E8C 80ADBE1C 44813000 */  mtc1    $at, $f6                   ## $f6 = 255.00
/* 02E90 80ADBE20 C4C40164 */  lwc1    $f4, 0x0164($a2)           ## 00000164
/* 02E94 80ADBE24 C4CA015C */  lwc1    $f10, 0x015C($a2)          ## 0000015C
/* 02E98 80ADBE28 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 02E9C 80ADBE2C 46062202 */  mul.s   $f8, $f4, $f6              
/* 02EA0 80ADBE30 460A4403 */  div.s   $f16, $f8, $f10            
/* 02EA4 80ADBE34 444EF800 */  cfc1    $t6, $31
/* 02EA8 80ADBE38 44CFF800 */  ctc1    $t7, $31
/* 02EAC 80ADBE3C 00000000 */  nop
/* 02EB0 80ADBE40 460084A4 */  cvt.w.s $f18, $f16                 
/* 02EB4 80ADBE44 444FF800 */  cfc1    $t7, $31
/* 02EB8 80ADBE48 00000000 */  nop
/* 02EBC 80ADBE4C 31EF0078 */  andi    $t7, $t7, 0x0078           ## $t7 = 00000000
/* 02EC0 80ADBE50 11E00012 */  beq     $t7, $zero, .L80ADBE9C     
/* 02EC4 80ADBE54 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 02EC8 80ADBE58 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 02ECC 80ADBE5C 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 02ED0 80ADBE60 46128481 */  sub.s   $f18, $f16, $f18           
/* 02ED4 80ADBE64 44CFF800 */  ctc1    $t7, $31
/* 02ED8 80ADBE68 00000000 */  nop
/* 02EDC 80ADBE6C 460094A4 */  cvt.w.s $f18, $f18                 
/* 02EE0 80ADBE70 444FF800 */  cfc1    $t7, $31
/* 02EE4 80ADBE74 00000000 */  nop
/* 02EE8 80ADBE78 31EF0078 */  andi    $t7, $t7, 0x0078           ## $t7 = 00000000
/* 02EEC 80ADBE7C 15E00005 */  bne     $t7, $zero, .L80ADBE94     
/* 02EF0 80ADBE80 00000000 */  nop
/* 02EF4 80ADBE84 440F9000 */  mfc1    $t7, $f18                  
/* 02EF8 80ADBE88 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02EFC 80ADBE8C 10000007 */  beq     $zero, $zero, .L80ADBEAC   
/* 02F00 80ADBE90 01E17825 */  or      $t7, $t7, $at              ## $t7 = 80000000
.L80ADBE94:
/* 02F04 80ADBE94 10000005 */  beq     $zero, $zero, .L80ADBEAC   
/* 02F08 80ADBE98 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
.L80ADBE9C:
/* 02F0C 80ADBE9C 440F9000 */  mfc1    $t7, $f18                  
/* 02F10 80ADBEA0 00000000 */  nop
/* 02F14 80ADBEA4 05E0FFFB */  bltz    $t7, .L80ADBE94            
/* 02F18 80ADBEA8 00000000 */  nop
.L80ADBEAC:
/* 02F1C 80ADBEAC 44CEF800 */  ctc1    $t6, $31
/* 02F20 80ADBEB0 A0CF0231 */  sb      $t7, 0x0231($a2)           ## 00000231
/* 02F24 80ADBEB4 00000000 */  nop
.L80ADBEB8:
/* 02F28 80ADBEB8 3C0280AE */  lui     $v0, %hi(D_80ADD784)       ## $v0 = 80AE0000
/* 02F2C 80ADBEBC 2442D784 */  addiu   $v0, $v0, %lo(D_80ADD784)  ## $v0 = 80ADD784
/* 02F30 80ADBEC0 8C580000 */  lw      $t8, 0x0000($v0)           ## 80ADD784
/* 02F34 80ADBEC4 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 02F38 80ADBEC8 57010004 */  bnel    $t8, $at, .L80ADBEDC       
/* 02F3C 80ADBECC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02F40 80ADBED0 0C2B6897 */  jal     func_80ADA25C              
/* 02F44 80ADBED4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 02F48 80ADBED8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADBEDC:
/* 02F4C 80ADBEDC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02F50 80ADBEE0 03E00008 */  jr      $ra                        
/* 02F54 80ADBEE4 00000000 */  nop


