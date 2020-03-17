glabel func_808ADAE0
/* 00000 808ADAE0 14A00010 */  bne     $a1, $zero, .L808ADB24     
/* 00004 808ADAE4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00008 808ADAE8 3C030600 */  lui     $v1, 0x0600                ## $v1 = 06000000
/* 0000C 808ADAEC 24630800 */  addiu   $v1, $v1, 0x0800           ## $v1 = 06000800
/* 00010 808ADAF0 00037100 */  sll     $t6, $v1,  4               
/* 00014 808ADAF4 000E7F02 */  srl     $t7, $t6, 28               
/* 00018 808ADAF8 000FC080 */  sll     $t8, $t7,  2               
/* 0001C 808ADAFC 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 00020 808ADB00 0338C821 */  addu    $t9, $t9, $t8              
/* 00024 808ADB04 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00028 808ADB08 8F396FA8 */  lw      $t9, 0x6FA8($t9)           ## 80166FA8
/* 0002C 808ADB0C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00030 808ADB10 00614024 */  and     $t0, $v1, $at              
/* 00034 808ADB14 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00038 808ADB18 03281021 */  addu    $v0, $t9, $t0              
/* 0003C 808ADB1C 1000000F */  beq     $zero, $zero, .L808ADB5C   
/* 00040 808ADB20 00411021 */  addu    $v0, $v0, $at              
.L808ADB24:
/* 00044 808ADB24 3C030600 */  lui     $v1, 0x0600                ## $v1 = 06000000
/* 00048 808ADB28 24630990 */  addiu   $v1, $v1, 0x0990           ## $v1 = 06000990
/* 0004C 808ADB2C 00034900 */  sll     $t1, $v1,  4               
/* 00050 808ADB30 00095702 */  srl     $t2, $t1, 28               
/* 00054 808ADB34 000A5880 */  sll     $t3, $t2,  2               
/* 00058 808ADB38 3C0C8016 */  lui     $t4, 0x8016                ## $t4 = 80160000
/* 0005C 808ADB3C 018B6021 */  addu    $t4, $t4, $t3              
/* 00060 808ADB40 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00064 808ADB44 8D8C6FA8 */  lw      $t4, 0x6FA8($t4)           ## 80166FA8
/* 00068 808ADB48 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 0006C 808ADB4C 00616824 */  and     $t5, $v1, $at              
/* 00070 808ADB50 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00074 808ADB54 018D1021 */  addu    $v0, $t4, $t5              
/* 00078 808ADB58 00411021 */  addu    $v0, $v0, $at              
.L808ADB5C:
/* 0007C 808ADB5C 444EF800 */  cfc1    $t6, $31
/* 00080 808ADB60 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00084 808ADB64 44CFF800 */  ctc1    $t7, $31
/* 00088 808ADB68 C4C40170 */  lwc1    $f4, 0x0170($a2)           ## 00000170
/* 0008C 808ADB6C 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 00090 808ADB70 460021A4 */  cvt.w.s $f6, $f4                   
/* 00094 808ADB74 444FF800 */  cfc1    $t7, $31
/* 00098 808ADB78 00000000 */  nop
/* 0009C 808ADB7C 31EF0078 */  andi    $t7, $t7, 0x0078           ## $t7 = 00000000
/* 000A0 808ADB80 51E00013 */  beql    $t7, $zero, .L808ADBD0     
/* 000A4 808ADB84 440F3000 */  mfc1    $t7, $f6                   
/* 000A8 808ADB88 44813000 */  mtc1    $at, $f6                   ## $f6 = 2147483648.00
/* 000AC 808ADB8C 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 000B0 808ADB90 46062181 */  sub.s   $f6, $f4, $f6              
/* 000B4 808ADB94 44CFF800 */  ctc1    $t7, $31
/* 000B8 808ADB98 00000000 */  nop
/* 000BC 808ADB9C 460031A4 */  cvt.w.s $f6, $f6                   
/* 000C0 808ADBA0 444FF800 */  cfc1    $t7, $31
/* 000C4 808ADBA4 00000000 */  nop
/* 000C8 808ADBA8 31EF0078 */  andi    $t7, $t7, 0x0078           ## $t7 = 00000000
/* 000CC 808ADBAC 15E00005 */  bne     $t7, $zero, .L808ADBC4     
/* 000D0 808ADBB0 00000000 */  nop
/* 000D4 808ADBB4 440F3000 */  mfc1    $t7, $f6                   
/* 000D8 808ADBB8 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 000DC 808ADBBC 10000007 */  beq     $zero, $zero, .L808ADBDC   
/* 000E0 808ADBC0 01E17825 */  or      $t7, $t7, $at              ## $t7 = 80000000
.L808ADBC4:
/* 000E4 808ADBC4 10000005 */  beq     $zero, $zero, .L808ADBDC   
/* 000E8 808ADBC8 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 000EC 808ADBCC 440F3000 */  mfc1    $t7, $f6                   
.L808ADBD0:
/* 000F0 808ADBD0 00000000 */  nop
/* 000F4 808ADBD4 05E0FFFB */  bltz    $t7, .L808ADBC4            
/* 000F8 808ADBD8 00000000 */  nop
.L808ADBDC:
/* 000FC 808ADBDC 44CEF800 */  ctc1    $t6, $31
/* 00100 808ADBE0 A04F00AF */  sb      $t7, 0x00AF($v0)           ## 000000AF
/* 00104 808ADBE4 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00108 808ADBE8 C4C80170 */  lwc1    $f8, 0x0170($a2)           ## 00000170
/* 0010C 808ADBEC 4459F800 */  cfc1    $t9, $31
/* 00110 808ADBF0 44C8F800 */  ctc1    $t0, $31
/* 00114 808ADBF4 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 00118 808ADBF8 0003C100 */  sll     $t8, $v1,  4               
/* 0011C 808ADBFC 460042A4 */  cvt.w.s $f10, $f8                  
/* 00120 808ADC00 00582021 */  addu    $a0, $v0, $t8              
/* 00124 808ADC04 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 00128 808ADC08 4448F800 */  cfc1    $t0, $31
/* 0012C 808ADC0C 00000000 */  nop
/* 00130 808ADC10 31080078 */  andi    $t0, $t0, 0x0078           ## $t0 = 00000000
/* 00134 808ADC14 51000013 */  beql    $t0, $zero, .L808ADC64     
/* 00138 808ADC18 44085000 */  mfc1    $t0, $f10                  
/* 0013C 808ADC1C 44815000 */  mtc1    $at, $f10                  ## $f10 = 2147483648.00
/* 00140 808ADC20 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00144 808ADC24 460A4281 */  sub.s   $f10, $f8, $f10            
/* 00148 808ADC28 44C8F800 */  ctc1    $t0, $31
/* 0014C 808ADC2C 00000000 */  nop
/* 00150 808ADC30 460052A4 */  cvt.w.s $f10, $f10                 
/* 00154 808ADC34 4448F800 */  cfc1    $t0, $31
/* 00158 808ADC38 00000000 */  nop
/* 0015C 808ADC3C 31080078 */  andi    $t0, $t0, 0x0078           ## $t0 = 00000000
/* 00160 808ADC40 15000005 */  bne     $t0, $zero, .L808ADC58     
/* 00164 808ADC44 00000000 */  nop
/* 00168 808ADC48 44085000 */  mfc1    $t0, $f10                  
/* 0016C 808ADC4C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00170 808ADC50 10000007 */  beq     $zero, $zero, .L808ADC70   
/* 00174 808ADC54 01014025 */  or      $t0, $t0, $at              ## $t0 = 80000000
.L808ADC58:
/* 00178 808ADC58 10000005 */  beq     $zero, $zero, .L808ADC70   
/* 0017C 808ADC5C 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 00180 808ADC60 44085000 */  mfc1    $t0, $f10                  
.L808ADC64:
/* 00184 808ADC64 00000000 */  nop
/* 00188 808ADC68 0500FFFB */  bltz    $t0, .L808ADC58            
/* 0018C 808ADC6C 00000000 */  nop
.L808ADC70:
/* 00190 808ADC70 44D9F800 */  ctc1    $t9, $31
/* 00194 808ADC74 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00198 808ADC78 A08800AF */  sb      $t0, 0x00AF($a0)           ## 000000AF
/* 0019C 808ADC7C C4D00170 */  lwc1    $f16, 0x0170($a2)          ## 00000170
/* 001A0 808ADC80 4449F800 */  cfc1    $t1, $31
/* 001A4 808ADC84 44CAF800 */  ctc1    $t2, $31
/* 001A8 808ADC88 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 001AC 808ADC8C 460084A4 */  cvt.w.s $f18, $f16                 
/* 001B0 808ADC90 444AF800 */  cfc1    $t2, $31
/* 001B4 808ADC94 00000000 */  nop
/* 001B8 808ADC98 314A0078 */  andi    $t2, $t2, 0x0078           ## $t2 = 00000000
/* 001BC 808ADC9C 51400013 */  beql    $t2, $zero, .L808ADCEC     
/* 001C0 808ADCA0 440A9000 */  mfc1    $t2, $f18                  
/* 001C4 808ADCA4 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 001C8 808ADCA8 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 001CC 808ADCAC 46128481 */  sub.s   $f18, $f16, $f18           
/* 001D0 808ADCB0 44CAF800 */  ctc1    $t2, $31
/* 001D4 808ADCB4 00000000 */  nop
/* 001D8 808ADCB8 460094A4 */  cvt.w.s $f18, $f18                 
/* 001DC 808ADCBC 444AF800 */  cfc1    $t2, $31
/* 001E0 808ADCC0 00000000 */  nop
/* 001E4 808ADCC4 314A0078 */  andi    $t2, $t2, 0x0078           ## $t2 = 00000000
/* 001E8 808ADCC8 15400005 */  bne     $t2, $zero, .L808ADCE0     
/* 001EC 808ADCCC 00000000 */  nop
/* 001F0 808ADCD0 440A9000 */  mfc1    $t2, $f18                  
/* 001F4 808ADCD4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 001F8 808ADCD8 10000007 */  beq     $zero, $zero, .L808ADCF8   
/* 001FC 808ADCDC 01415025 */  or      $t2, $t2, $at              ## $t2 = 80000000
.L808ADCE0:
/* 00200 808ADCE0 10000005 */  beq     $zero, $zero, .L808ADCF8   
/* 00204 808ADCE4 240AFFFF */  addiu   $t2, $zero, 0xFFFF         ## $t2 = FFFFFFFF
/* 00208 808ADCE8 440A9000 */  mfc1    $t2, $f18                  
.L808ADCEC:
/* 0020C 808ADCEC 00000000 */  nop
/* 00210 808ADCF0 0540FFFB */  bltz    $t2, .L808ADCE0            
/* 00214 808ADCF4 00000000 */  nop
.L808ADCF8:
/* 00218 808ADCF8 44C9F800 */  ctc1    $t1, $31
/* 0021C 808ADCFC A08A00BF */  sb      $t2, 0x00BF($a0)           ## 000000BF
/* 00220 808ADD00 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00224 808ADD04 C4C40170 */  lwc1    $f4, 0x0170($a2)           ## 00000170
/* 00228 808ADD08 444BF800 */  cfc1    $t3, $31
/* 0022C 808ADD0C 44CCF800 */  ctc1    $t4, $31
/* 00230 808ADD10 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 00234 808ADD14 460021A4 */  cvt.w.s $f6, $f4                   
/* 00238 808ADD18 444CF800 */  cfc1    $t4, $31
/* 0023C 808ADD1C 00000000 */  nop
/* 00240 808ADD20 318C0078 */  andi    $t4, $t4, 0x0078           ## $t4 = 00000000
/* 00244 808ADD24 51800013 */  beql    $t4, $zero, .L808ADD74     
/* 00248 808ADD28 440C3000 */  mfc1    $t4, $f6                   
/* 0024C 808ADD2C 44813000 */  mtc1    $at, $f6                   ## $f6 = 2147483648.00
/* 00250 808ADD30 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00254 808ADD34 46062181 */  sub.s   $f6, $f4, $f6              
/* 00258 808ADD38 44CCF800 */  ctc1    $t4, $31
/* 0025C 808ADD3C 00000000 */  nop
/* 00260 808ADD40 460031A4 */  cvt.w.s $f6, $f6                   
/* 00264 808ADD44 444CF800 */  cfc1    $t4, $31
/* 00268 808ADD48 00000000 */  nop
/* 0026C 808ADD4C 318C0078 */  andi    $t4, $t4, 0x0078           ## $t4 = 00000000
/* 00270 808ADD50 15800005 */  bne     $t4, $zero, .L808ADD68     
/* 00274 808ADD54 00000000 */  nop
/* 00278 808ADD58 440C3000 */  mfc1    $t4, $f6                   
/* 0027C 808ADD5C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00280 808ADD60 10000007 */  beq     $zero, $zero, .L808ADD80   
/* 00284 808ADD64 01816025 */  or      $t4, $t4, $at              ## $t4 = 80000000
.L808ADD68:
/* 00288 808ADD68 10000005 */  beq     $zero, $zero, .L808ADD80   
/* 0028C 808ADD6C 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 00290 808ADD70 440C3000 */  mfc1    $t4, $f6                   
.L808ADD74:
/* 00294 808ADD74 00000000 */  nop
/* 00298 808ADD78 0580FFFB */  bltz    $t4, .L808ADD68            
/* 0029C 808ADD7C 00000000 */  nop
.L808ADD80:
/* 002A0 808ADD80 44CBF800 */  ctc1    $t3, $31
/* 002A4 808ADD84 A08C00CF */  sb      $t4, 0x00CF($a0)           ## 000000CF
/* 002A8 808ADD88 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 002AC 808ADD8C C4C80170 */  lwc1    $f8, 0x0170($a2)           ## 00000170
/* 002B0 808ADD90 444DF800 */  cfc1    $t5, $31
/* 002B4 808ADD94 44CEF800 */  ctc1    $t6, $31
/* 002B8 808ADD98 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 002BC 808ADD9C 460042A4 */  cvt.w.s $f10, $f8                  
/* 002C0 808ADDA0 444EF800 */  cfc1    $t6, $31
/* 002C4 808ADDA4 00000000 */  nop
/* 002C8 808ADDA8 31CE0078 */  andi    $t6, $t6, 0x0078           ## $t6 = 00000000
/* 002CC 808ADDAC 51C00013 */  beql    $t6, $zero, .L808ADDFC     
/* 002D0 808ADDB0 440E5000 */  mfc1    $t6, $f10                  
/* 002D4 808ADDB4 44815000 */  mtc1    $at, $f10                  ## $f10 = 2147483648.00
/* 002D8 808ADDB8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 002DC 808ADDBC 460A4281 */  sub.s   $f10, $f8, $f10            
/* 002E0 808ADDC0 44CEF800 */  ctc1    $t6, $31
/* 002E4 808ADDC4 00000000 */  nop
/* 002E8 808ADDC8 460052A4 */  cvt.w.s $f10, $f10                 
/* 002EC 808ADDCC 444EF800 */  cfc1    $t6, $31
/* 002F0 808ADDD0 00000000 */  nop
/* 002F4 808ADDD4 31CE0078 */  andi    $t6, $t6, 0x0078           ## $t6 = 00000000
/* 002F8 808ADDD8 15C00005 */  bne     $t6, $zero, .L808ADDF0     
/* 002FC 808ADDDC 00000000 */  nop
/* 00300 808ADDE0 440E5000 */  mfc1    $t6, $f10                  
/* 00304 808ADDE4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00308 808ADDE8 10000007 */  beq     $zero, $zero, .L808ADE08   
/* 0030C 808ADDEC 01C17025 */  or      $t6, $t6, $at              ## $t6 = 80000000
.L808ADDF0:
/* 00310 808ADDF0 10000005 */  beq     $zero, $zero, .L808ADE08   
/* 00314 808ADDF4 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 00318 808ADDF8 440E5000 */  mfc1    $t6, $f10                  
.L808ADDFC:
/* 0031C 808ADDFC 00000000 */  nop
/* 00320 808ADE00 05C0FFFB */  bltz    $t6, .L808ADDF0            
/* 00324 808ADE04 00000000 */  nop
.L808ADE08:
/* 00328 808ADE08 44CDF800 */  ctc1    $t5, $31
/* 0032C 808ADE0C 03E00008 */  jr      $ra                        
/* 00330 808ADE10 A08E00DF */  sb      $t6, 0x00DF($a0)           ## 000000DF


