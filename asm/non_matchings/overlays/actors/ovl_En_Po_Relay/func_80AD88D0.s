.rdata
glabel D_80AD8D60
    .asciz "../z_en_po_relay.c"
    .balign 4

glabel D_80AD8D74
    .asciz "../z_en_po_relay.c"
    .balign 4

glabel D_80AD8D88
    .asciz "../z_en_po_relay.c"
    .balign 4

glabel D_80AD8D9C
    .asciz "../z_en_po_relay.c"
    .balign 4

glabel D_80AD8DB0
    .asciz "../z_en_po_relay.c"
    .balign 4

.text
glabel func_80AD88D0
/* 01190 80AD88D0 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 01194 80AD88D4 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 01198 80AD88D8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0119C 80AD88DC AFA40080 */  sw      $a0, 0x0080($sp)           
/* 011A0 80AD88E0 AFA60088 */  sw      $a2, 0x0088($sp)           
/* 011A4 80AD88E4 14A10065 */  bne     $a1, $at, .L80AD8A7C       
/* 011A8 80AD88E8 AFA7008C */  sw      $a3, 0x008C($sp)           
/* 011AC 80AD88EC 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 011B0 80AD88F0 3C0680AE */  lui     $a2, %hi(D_80AD8D60)       ## $a2 = 80AE0000
/* 011B4 80AD88F4 24C68D60 */  addiu   $a2, $a2, %lo(D_80AD8D60)  ## $a2 = 80AD8D60
/* 011B8 80AD88F8 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFD8
/* 011BC 80AD88FC 24070375 */  addiu   $a3, $zero, 0x0375         ## $a3 = 00000375
/* 011C0 80AD8900 0C031AB1 */  jal     Graph_OpenDisps              
/* 011C4 80AD8904 AFA50068 */  sw      $a1, 0x0068($sp)           
/* 011C8 80AD8908 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 011CC 80AD890C 00000000 */  nop
/* 011D0 80AD8910 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 011D4 80AD8914 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 011D8 80AD8918 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 011DC 80AD891C 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 011E0 80AD8920 46040182 */  mul.s   $f6, $f0, $f4              
/* 011E4 80AD8924 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 011E8 80AD8928 44812000 */  mtc1    $at, $f4                   ## $f4 = 160.00
/* 011EC 80AD892C 460A0402 */  mul.s   $f16, $f0, $f10            
/* 011F0 80AD8930 8FA90090 */  lw      $t1, 0x0090($sp)           
/* 011F4 80AD8934 8FA80068 */  lw      $t0, 0x0068($sp)           
/* 011F8 80AD8938 3C19FB00 */  lui     $t9, 0xFB00                ## $t9 = FB000000
/* 011FC 80AD893C 3C0680AE */  lui     $a2, %hi(D_80AD8D74)       ## $a2 = 80AE0000
/* 01200 80AD8940 24C68D74 */  addiu   $a2, $a2, %lo(D_80AD8D74)  ## $a2 = 80AD8D74
/* 01204 80AD8944 4600320D */  trunc.w.s $f8, $f6                   
/* 01208 80AD8948 46040182 */  mul.s   $f6, $f0, $f4              
/* 0120C 80AD894C 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFD8
/* 01210 80AD8950 24070385 */  addiu   $a3, $zero, 0x0385         ## $a3 = 00000385
/* 01214 80AD8954 440A4000 */  mfc1    $t2, $f8                   
/* 01218 80AD8958 4600848D */  trunc.w.s $f18, $f16                 
/* 0121C 80AD895C 254B00E1 */  addiu   $t3, $t2, 0x00E1           ## $t3 = 000000E1
/* 01220 80AD8960 A12B0278 */  sb      $t3, 0x0278($t1)           ## 00000278
/* 01224 80AD8964 4600320D */  trunc.w.s $f8, $f6                   
/* 01228 80AD8968 440F9000 */  mfc1    $t7, $f18                  
/* 0122C 80AD896C 440C4000 */  mfc1    $t4, $f8                   
/* 01230 80AD8970 25F8009B */  addiu   $t8, $t7, 0x009B           ## $t8 = 0000009B
/* 01234 80AD8974 A1380279 */  sb      $t8, 0x0279($t1)           ## 00000279
/* 01238 80AD8978 258D005F */  addiu   $t5, $t4, 0x005F           ## $t5 = 0000005F
/* 0123C 80AD897C A12D027A */  sb      $t5, 0x027A($t1)           ## 0000027A
/* 01240 80AD8980 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01244 80AD8984 3C0FE700 */  lui     $t7, 0xE700                ## $t7 = E7000000
/* 01248 80AD8988 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 0124C 80AD898C AD0E02C0 */  sw      $t6, 0x02C0($t0)           ## 000002C0
/* 01250 80AD8990 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 01254 80AD8994 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 01258 80AD8998 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 0125C 80AD899C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01260 80AD89A0 AD1802C0 */  sw      $t8, 0x02C0($t0)           ## 000002C0
/* 01264 80AD89A4 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 01268 80AD89A8 912B0278 */  lbu     $t3, 0x0278($t1)           ## 00000278
/* 0126C 80AD89AC 912E0279 */  lbu     $t6, 0x0279($t1)           ## 00000279
/* 01270 80AD89B0 912A027A */  lbu     $t2, 0x027A($t1)           ## 0000027A
/* 01274 80AD89B4 000B6600 */  sll     $t4, $t3, 24               
/* 01278 80AD89B8 000E7C00 */  sll     $t7, $t6, 16               
/* 0127C 80AD89BC 018FC025 */  or      $t8, $t4, $t7              ## $t8 = E7000000
/* 01280 80AD89C0 000A5A00 */  sll     $t3, $t2,  8               
/* 01284 80AD89C4 030B6825 */  or      $t5, $t8, $t3              ## $t5 = E70000E1
/* 01288 80AD89C8 35AE0080 */  ori     $t6, $t5, 0x0080           ## $t6 = E70000E1
/* 0128C 80AD89CC AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 01290 80AD89D0 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01294 80AD89D4 3C190601 */  lui     $t9, 0x0601                ## $t9 = 06010000
/* 01298 80AD89D8 2739B838 */  addiu   $t9, $t9, 0xB838           ## $t9 = 0600B838
/* 0129C 80AD89DC 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 012A0 80AD89E0 AD0C02C0 */  sw      $t4, 0x02C0($t0)           ## 000002C0
/* 012A4 80AD89E4 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 012A8 80AD89E8 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 012AC 80AD89EC AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 012B0 80AD89F0 8FAA0080 */  lw      $t2, 0x0080($sp)           
/* 012B4 80AD89F4 0C031AD5 */  jal     Graph_CloseDisps              
/* 012B8 80AD89F8 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000000
/* 012BC 80AD89FC 3C0480AE */  lui     $a0, %hi(D_80AD8D48)       ## $a0 = 80AE0000
/* 012C0 80AD8A00 24848D48 */  addiu   $a0, $a0, %lo(D_80AD8D48)  ## $a0 = 80AD8D48
/* 012C4 80AD8A04 0C0346BD */  jal     Matrix_MultVec3f              
/* 012C8 80AD8A08 27A5006C */  addiu   $a1, $sp, 0x006C           ## $a1 = FFFFFFEC
/* 012CC 80AD8A0C 8FA90090 */  lw      $t1, 0x0090($sp)           
/* 012D0 80AD8A10 C7AA006C */  lwc1    $f10, 0x006C($sp)          
/* 012D4 80AD8A14 C7B20070 */  lwc1    $f18, 0x0070($sp)          
/* 012D8 80AD8A18 C7A60074 */  lwc1    $f6, 0x0074($sp)           
/* 012DC 80AD8A1C 912E0278 */  lbu     $t6, 0x0278($t1)           ## 00000278
/* 012E0 80AD8A20 4600540D */  trunc.w.s $f16, $f10                 
/* 012E4 80AD8A24 241900C8 */  addiu   $t9, $zero, 0x00C8         ## $t9 = 000000C8
/* 012E8 80AD8A28 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 012EC 80AD8A2C 4600910D */  trunc.w.s $f4, $f18                  
/* 012F0 80AD8A30 912C0279 */  lbu     $t4, 0x0279($t1)           ## 00000279
/* 012F4 80AD8A34 44058000 */  mfc1    $a1, $f16                  
/* 012F8 80AD8A38 4600320D */  trunc.w.s $f8, $f6                   
/* 012FC 80AD8A3C 44062000 */  mfc1    $a2, $f4                   
/* 01300 80AD8A40 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 01304 80AD8A44 912F027A */  lbu     $t7, 0x027A($t1)           ## 0000027A
/* 01308 80AD8A48 44074000 */  mfc1    $a3, $f8                   
/* 0130C 80AD8A4C 00052C00 */  sll     $a1, $a1, 16               
/* 01310 80AD8A50 00063400 */  sll     $a2, $a2, 16               
/* 01314 80AD8A54 00073C00 */  sll     $a3, $a3, 16               
/* 01318 80AD8A58 00073C03 */  sra     $a3, $a3, 16               
/* 0131C 80AD8A5C 00063403 */  sra     $a2, $a2, 16               
/* 01320 80AD8A60 00052C03 */  sra     $a1, $a1, 16               
/* 01324 80AD8A64 AFB9001C */  sw      $t9, 0x001C($sp)           
/* 01328 80AD8A68 25240280 */  addiu   $a0, $t1, 0x0280           ## $a0 = 00000280
/* 0132C 80AD8A6C 0C01E763 */  jal     Lights_PointNoGlowSetInfo
              
/* 01330 80AD8A70 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 01334 80AD8A74 1000002D */  beq     $zero, $zero, .L80AD8B2C   
/* 01338 80AD8A78 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AD8A7C:
/* 0133C 80AD8A7C 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 01340 80AD8A80 14A10029 */  bne     $a1, $at, .L80AD8B28       
/* 01344 80AD8A84 8FAA0080 */  lw      $t2, 0x0080($sp)           
/* 01348 80AD8A88 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000000
/* 0134C 80AD8A8C 3C0680AE */  lui     $a2, %hi(D_80AD8D88)       ## $a2 = 80AE0000
/* 01350 80AD8A90 24C68D88 */  addiu   $a2, $a2, %lo(D_80AD8D88)  ## $a2 = 80AD8D88
/* 01354 80AD8A94 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFB8
/* 01358 80AD8A98 24070394 */  addiu   $a3, $zero, 0x0394         ## $a3 = 00000394
/* 0135C 80AD8A9C 0C031AB1 */  jal     Graph_OpenDisps              
/* 01360 80AD8AA0 AFA50048 */  sw      $a1, 0x0048($sp)           
/* 01364 80AD8AA4 8FA80048 */  lw      $t0, 0x0048($sp)           
/* 01368 80AD8AA8 3C0BDA38 */  lui     $t3, 0xDA38                ## $t3 = DA380000
/* 0136C 80AD8AAC 356B0003 */  ori     $t3, $t3, 0x0003           ## $t3 = DA380003
/* 01370 80AD8AB0 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01374 80AD8AB4 3C0580AE */  lui     $a1, %hi(D_80AD8D9C)       ## $a1 = 80AE0000
/* 01378 80AD8AB8 24A58D9C */  addiu   $a1, $a1, %lo(D_80AD8D9C)  ## $a1 = 80AD8D9C
/* 0137C 80AD8ABC 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01380 80AD8AC0 AD1802C0 */  sw      $t8, 0x02C0($t0)           ## 000002C0
/* 01384 80AD8AC4 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 01388 80AD8AC8 8FAD0080 */  lw      $t5, 0x0080($sp)           
/* 0138C 80AD8ACC 24060396 */  addiu   $a2, $zero, 0x0396         ## $a2 = 00000396
/* 01390 80AD8AD0 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 01394 80AD8AD4 AFA80048 */  sw      $t0, 0x0048($sp)           
/* 01398 80AD8AD8 0C0346A2 */  jal     Matrix_NewMtx              
/* 0139C 80AD8ADC AFA20034 */  sw      $v0, 0x0034($sp)           
/* 013A0 80AD8AE0 8FA30034 */  lw      $v1, 0x0034($sp)           
/* 013A4 80AD8AE4 8FA80048 */  lw      $t0, 0x0048($sp)           
/* 013A8 80AD8AE8 3C0F0601 */  lui     $t7, 0x0601                ## $t7 = 06010000
/* 013AC 80AD8AEC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 013B0 80AD8AF0 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 013B4 80AD8AF4 25EFBBA0 */  addiu   $t7, $t7, 0xBBA0           ## $t7 = 0600BBA0
/* 013B8 80AD8AF8 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 013BC 80AD8AFC 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 013C0 80AD8B00 AD0E02C0 */  sw      $t6, 0x02C0($t0)           ## 000002C0
/* 013C4 80AD8B04 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 013C8 80AD8B08 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 013CC 80AD8B0C 8FB90080 */  lw      $t9, 0x0080($sp)           
/* 013D0 80AD8B10 3C0680AE */  lui     $a2, %hi(D_80AD8DB0)       ## $a2 = 80AE0000
/* 013D4 80AD8B14 24C68DB0 */  addiu   $a2, $a2, %lo(D_80AD8DB0)  ## $a2 = 80AD8DB0
/* 013D8 80AD8B18 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFB8
/* 013DC 80AD8B1C 2407039A */  addiu   $a3, $zero, 0x039A         ## $a3 = 0000039A
/* 013E0 80AD8B20 0C031AD5 */  jal     Graph_CloseDisps              
/* 013E4 80AD8B24 8F250000 */  lw      $a1, 0x0000($t9)           ## 00000000
.L80AD8B28:
/* 013E8 80AD8B28 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AD8B2C:
/* 013EC 80AD8B2C 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
/* 013F0 80AD8B30 03E00008 */  jr      $ra                        
/* 013F4 80AD8B34 00000000 */  nop
