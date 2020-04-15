glabel func_808AAD3C
/* 0005C 808AAD3C 27BDFB18 */  addiu   $sp, $sp, 0xFB18           ## $sp = FFFFFB18
/* 00060 808AAD40 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00064 808AAD44 AFA504EC */  sw      $a1, 0x04EC($sp)           
/* 00068 808AAD48 AFA604F0 */  sw      $a2, 0x04F0($sp)           
/* 0006C 808AAD4C C4A40000 */  lwc1    $f4, 0x0000($a1)           ## 00000000
/* 00070 808AAD50 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00074 808AAD54 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 00078 808AAD58 4600218D */  trunc.w.s $f6, $f4                   
/* 0007C 808AAD5C 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 00080 808AAD60 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00084 808AAD64 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 00088 808AAD68 44183000 */  mfc1    $t8, $f6                   
/* 0008C 808AAD6C 44813000 */  mtc1    $at, $f6                   ## $f6 = -1.00
/* 00090 808AAD70 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 00094 808AAD74 A7B80024 */  sh      $t8, 0x0024($sp)           
/* 00098 808AAD78 C4A80004 */  lwc1    $f8, 0x0004($a1)           ## 00000004
/* 0009C 808AAD7C 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 000A0 808AAD80 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 000A4 808AAD84 4600428D */  trunc.w.s $f10, $f8                  
/* 000A8 808AAD88 27AE0024 */  addiu   $t6, $sp, 0x0024           ## $t6 = FFFFFB3C
/* 000AC 808AAD8C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 000B0 808AAD90 44085000 */  mfc1    $t0, $f10                  
/* 000B4 808AAD94 00000000 */  nop
/* 000B8 808AAD98 A7A80026 */  sh      $t0, 0x0026($sp)           
/* 000BC 808AAD9C C4B00008 */  lwc1    $f16, 0x0008($a1)          ## 00000008
/* 000C0 808AADA0 AFA604B8 */  sw      $a2, 0x04B8($sp)           
/* 000C4 808AADA4 AFA604BC */  sw      $a2, 0x04BC($sp)           
/* 000C8 808AADA8 4600848D */  trunc.w.s $f18, $f16                 
/* 000CC 808AADAC 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 000D0 808AADB0 A3A004C0 */  sb      $zero, 0x04C0($sp)         
/* 000D4 808AADB4 A3A004C1 */  sb      $zero, 0x04C1($sp)         
/* 000D8 808AADB8 440A9000 */  mfc1    $t2, $f18                  
/* 000DC 808AADBC A3A004C2 */  sb      $zero, 0x04C2($sp)         
/* 000E0 808AADC0 A3AC04C3 */  sb      $t4, 0x04C3($sp)           
/* 000E4 808AADC4 A3A004C4 */  sb      $zero, 0x04C4($sp)         
/* 000E8 808AADC8 A3A004C5 */  sb      $zero, 0x04C5($sp)         
/* 000EC 808AADCC A3A004C6 */  sb      $zero, 0x04C6($sp)         
/* 000F0 808AADD0 A3AD04C7 */  sb      $t5, 0x04C7($sp)           
/* 000F4 808AADD4 A3A004C8 */  sb      $zero, 0x04C8($sp)         
/* 000F8 808AADD8 A3A004C9 */  sb      $zero, 0x04C9($sp)         
/* 000FC 808AADDC A3A004CA */  sb      $zero, 0x04CA($sp)         
/* 00100 808AADE0 A3AF04CB */  sb      $t7, 0x04CB($sp)           
/* 00104 808AADE4 A3A004CC */  sb      $zero, 0x04CC($sp)         
/* 00108 808AADE8 A3A004CD */  sb      $zero, 0x04CD($sp)         
/* 0010C 808AADEC A3A004CE */  sb      $zero, 0x04CE($sp)         
/* 00110 808AADF0 A3B804CF */  sb      $t8, 0x04CF($sp)           
/* 00114 808AADF4 A3A004D0 */  sb      $zero, 0x04D0($sp)         
/* 00118 808AADF8 A3A004D1 */  sb      $zero, 0x04D1($sp)         
/* 0011C 808AADFC A3A004D2 */  sb      $zero, 0x04D2($sp)         
/* 00120 808AAE00 A3A004D3 */  sb      $zero, 0x04D3($sp)         
/* 00124 808AAE04 A3A004D4 */  sb      $zero, 0x04D4($sp)         
/* 00128 808AAE08 A3A004D5 */  sb      $zero, 0x04D5($sp)         
/* 0012C 808AAE0C A3A004D6 */  sb      $zero, 0x04D6($sp)         
/* 00130 808AAE10 A3A004D7 */  sb      $zero, 0x04D7($sp)         
/* 00134 808AAE14 A3A004D8 */  sb      $zero, 0x04D8($sp)         
/* 00138 808AAE18 A3A004D9 */  sb      $zero, 0x04D9($sp)         
/* 0013C 808AAE1C A3A004DA */  sb      $zero, 0x04DA($sp)         
/* 00140 808AAE20 A3A004DB */  sb      $zero, 0x04DB($sp)         
/* 00144 808AAE24 A3A004DC */  sb      $zero, 0x04DC($sp)         
/* 00148 808AAE28 A3A004DD */  sb      $zero, 0x04DD($sp)         
/* 0014C 808AAE2C A3A004DE */  sb      $zero, 0x04DE($sp)         
/* 00150 808AAE30 A3A004DF */  sb      $zero, 0x04DF($sp)         
/* 00154 808AAE34 AFA004E0 */  sw      $zero, 0x04E0($sp)         
/* 00158 808AAE38 AFB904E4 */  sw      $t9, 0x04E4($sp)           
/* 0015C 808AAE3C AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00160 808AAE40 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00164 808AAE44 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00168 808AAE48 27A50020 */  addiu   $a1, $sp, 0x0020           ## $a1 = FFFFFB38
/* 0016C 808AAE4C E7A404B0 */  swc1    $f4, 0x04B0($sp)           
/* 00170 808AAE50 E7A604B4 */  swc1    $f6, 0x04B4($sp)           
/* 00174 808AAE54 0C009B35 */  jal     Effect_Add              ## Effect_Add
/* 00178 808AAE58 A7AA0028 */  sh      $t2, 0x0028($sp)           
/* 0017C 808AAE5C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00180 808AAE60 27BD04E8 */  addiu   $sp, $sp, 0x04E8           ## $sp = 00000000
/* 00184 808AAE64 03E00008 */  jr      $ra                        
/* 00188 808AAE68 00000000 */  nop
