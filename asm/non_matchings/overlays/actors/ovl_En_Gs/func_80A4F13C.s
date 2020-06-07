.late_rodata
glabel D_80A4FED8
    .float 0.1

glabel D_80A4FEDC
    .float 0.001

glabel D_80A4FEE0
    .float 0.001

glabel D_80A4FEE4
 .word 0x43360B61
glabel D_80A4FEE8
 .word 0x43360B61
glabel D_80A4FEEC
 .word 0xBE99999A
glabel D_80A4FEF0
    .float 0.001

glabel D_80A4FEF4
    .float 0.001

glabel D_80A4FEF8
 .word 0x3F32B8C2
glabel D_80A4FEFC
 .word 0x3EB2B8C2
glabel D_80A4FF00
 .word 0x45638000
glabel D_80A4FF04
    .float 0.001

glabel D_80A4FF08
    .float 0.001

glabel D_80A4FF0C
    .float 0.001

glabel D_80A4FF10
    .float 0.001

glabel D_80A4FF14
    .float 0.1

glabel D_80A4FF18
 .word 0x3C8EFA35
glabel D_80A4FF1C
    .float 0.1

glabel D_80A4FF20
 .word 0x3C8EFA35

.text
glabel func_80A4F13C
/* 00E1C 80A4F13C 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00E20 80A4F140 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00E24 80A4F144 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00E28 80A4F148 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00E2C 80A4F14C 848E01A2 */  lh      $t6, 0x01A2($a0)           ## 000001A2
/* 00E30 80A4F150 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E34 80A4F154 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 00E38 80A4F158 A7AE0036 */  sh      $t6, 0x0036($sp)           
/* 00E3C 80A4F15C 9082019F */  lbu     $v0, 0x019F($a0)           ## 0000019F
/* 00E40 80A4F160 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00E44 80A4F164 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00E48 80A4F168 1440000F */  bne     $v0, $zero, .L80A4F1A8     
/* 00E4C 80A4F16C 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 00E50 80A4F170 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00E54 80A4F174 44813000 */  mtc1    $at, $f6                   ## $f6 = 90.00
/* 00E58 80A4F178 3C0180A5 */  lui     $at, %hi(D_80A4FED8)       ## $at = 80A50000
/* 00E5C 80A4F17C E48401E8 */  swc1    $f4, 0x01E8($a0)           ## 000001E8
/* 00E60 80A4F180 E48601EC */  swc1    $f6, 0x01EC($a0)           ## 000001EC
/* 00E64 80A4F184 C428FED8 */  lwc1    $f8, %lo(D_80A4FED8)($at)  
/* 00E68 80A4F188 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00E6C 80A4F18C 44815000 */  mtc1    $at, $f10                  ## $f10 = 2.00
/* 00E70 80A4F190 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 00E74 80A4F194 A08F019F */  sb      $t7, 0x019F($a0)           ## 0000019F
/* 00E78 80A4F198 31E200FF */  andi    $v0, $t7, 0x00FF           ## $v0 = 00000001
/* 00E7C 80A4F19C E48801F0 */  swc1    $f8, 0x01F0($a0)           ## 000001F0
/* 00E80 80A4F1A0 E48A01F4 */  swc1    $f10, 0x01F4($a0)          ## 000001F4
/* 00E84 80A4F1A4 E49001F8 */  swc1    $f16, 0x01F8($a0)          ## 000001F8
.L80A4F1A8:
/* 00E88 80A4F1A8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00E8C 80A4F1AC 1441001F */  bne     $v0, $at, .L80A4F22C       
/* 00E90 80A4F1B0 260401F0 */  addiu   $a0, $s0, 0x01F0           ## $a0 = 000001F0
/* 00E94 80A4F1B4 3C0180A5 */  lui     $at, %hi(D_80A4FEDC)       ## $at = 80A50000
/* 00E98 80A4F1B8 C432FEDC */  lwc1    $f18, %lo(D_80A4FEDC)($at) 
/* 00E9C 80A4F1BC 8E0501F4 */  lw      $a1, 0x01F4($s0)           ## 000001F4
/* 00EA0 80A4F1C0 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 00EA4 80A4F1C4 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00EA8 80A4F1C8 E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 00EAC 80A4F1CC 3C0180A5 */  lui     $at, %hi(D_80A4FEE0)       ## $at = 80A50000
/* 00EB0 80A4F1D0 C424FEE0 */  lwc1    $f4, %lo(D_80A4FEE0)($at)  
/* 00EB4 80A4F1D4 8E0501EC */  lw      $a1, 0x01EC($s0)           ## 000001EC
/* 00EB8 80A4F1D8 8E0701F0 */  lw      $a3, 0x01F0($s0)           ## 000001F0
/* 00EBC 80A4F1DC 260401E8 */  addiu   $a0, $s0, 0x01E8           ## $a0 = 000001E8
/* 00EC0 80A4F1E0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00EC4 80A4F1E4 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00EC8 80A4F1E8 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00ECC 80A4F1EC 3C0180A5 */  lui     $at, %hi(D_80A4FEE4)       ## $at = 80A50000
/* 00ED0 80A4F1F0 C428FEE4 */  lwc1    $f8, %lo(D_80A4FEE4)($at)  
/* 00ED4 80A4F1F4 C60601E8 */  lwc1    $f6, 0x01E8($s0)           ## 000001E8
/* 00ED8 80A4F1F8 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 00EDC 80A4F1FC 860801A2 */  lh      $t0, 0x01A2($s0)           ## 000001A2
/* 00EE0 80A4F200 46083282 */  mul.s   $f10, $f6, $f8             
/* 00EE4 80A4F204 46120032 */  c.eq.s  $f0, $f18                  
/* 00EE8 80A4F208 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 00EEC 80A4F20C 4600540D */  trunc.w.s $f16, $f10                 
/* 00EF0 80A4F210 44198000 */  mfc1    $t9, $f16                  
/* 00EF4 80A4F214 00000000 */  nop
/* 00EF8 80A4F218 01194821 */  addu    $t1, $t0, $t9              
/* 00EFC 80A4F21C 45000003 */  bc1f    .L80A4F22C                 
/* 00F00 80A4F220 A60901A2 */  sh      $t1, 0x01A2($s0)           ## 000001A2
/* 00F04 80A4F224 A6000200 */  sh      $zero, 0x0200($s0)         ## 00000200
/* 00F08 80A4F228 A20A019F */  sb      $t2, 0x019F($s0)           ## 0000019F
.L80A4F22C:
/* 00F0C 80A4F22C 920B019F */  lbu     $t3, 0x019F($s0)           ## 0000019F
/* 00F10 80A4F230 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00F14 80A4F234 15610023 */  bne     $t3, $at, .L80A4F2C4       
/* 00F18 80A4F238 3C0180A5 */  lui     $at, %hi(D_80A4FEE8)       ## $at = 80A50000
/* 00F1C 80A4F23C C426FEE8 */  lwc1    $f6, %lo(D_80A4FEE8)($at)  
/* 00F20 80A4F240 C60401E8 */  lwc1    $f4, 0x01E8($s0)           ## 000001E8
/* 00F24 80A4F244 96020200 */  lhu     $v0, 0x0200($s0)           ## 00000200
/* 00F28 80A4F248 860E01A2 */  lh      $t6, 0x01A2($s0)           ## 000001A2
/* 00F2C 80A4F24C 46062202 */  mul.s   $f8, $f4, $f6              
/* 00F30 80A4F250 28430029 */  slti    $v1, $v0, 0x0029           
/* 00F34 80A4F254 38630001 */  xori    $v1, $v1, 0x0001           ## $v1 = 00000001
/* 00F38 80A4F258 24580001 */  addiu   $t8, $v0, 0x0001           ## $t8 = 00000001
/* 00F3C 80A4F25C A6180200 */  sh      $t8, 0x0200($s0)           ## 00000200
/* 00F40 80A4F260 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00F44 80A4F264 4600428D */  trunc.w.s $f10, $f8                  
/* 00F48 80A4F268 440D5000 */  mfc1    $t5, $f10                  
/* 00F4C 80A4F26C 00000000 */  nop
/* 00F50 80A4F270 01CD7821 */  addu    $t7, $t6, $t5              
/* 00F54 80A4F274 10600013 */  beq     $v1, $zero, .L80A4F2C4     
/* 00F58 80A4F278 A60F01A2 */  sh      $t7, 0x01A2($s0)           ## 000001A2
/* 00F5C 80A4F27C 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00F60 80A4F280 C61001B8 */  lwc1    $f16, 0x01B8($s0)          ## 000001B8
/* 00F64 80A4F284 C60601C4 */  lwc1    $f6, 0x01C4($s0)           ## 000001C4
/* 00F68 80A4F288 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 00F6C 80A4F28C 46008481 */  sub.s   $f18, $f16, $f0            
/* 00F70 80A4F290 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.50
/* 00F74 80A4F294 3C0180A5 */  lui     $at, %hi(D_80A4FEEC)       ## $at = 80A50000
/* 00F78 80A4F298 46003201 */  sub.s   $f8, $f6, $f0              
/* 00F7C 80A4F29C E61201E8 */  swc1    $f18, 0x01E8($s0)          ## 000001E8
/* 00F80 80A4F2A0 E60401EC */  swc1    $f4, 0x01EC($s0)           ## 000001EC
/* 00F84 80A4F2A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F88 80A4F2A8 E60801F0 */  swc1    $f8, 0x01F0($s0)           ## 000001F0
/* 00F8C 80A4F2AC C42AFEEC */  lwc1    $f10, %lo(D_80A4FEEC)($at) 
/* 00F90 80A4F2B0 240528E9 */  addiu   $a1, $zero, 0x28E9         ## $a1 = 000028E9
/* 00F94 80A4F2B4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00F98 80A4F2B8 E60A01F4 */  swc1    $f10, 0x01F4($s0)          ## 000001F4
/* 00F9C 80A4F2BC 24080003 */  addiu   $t0, $zero, 0x0003         ## $t0 = 00000003
/* 00FA0 80A4F2C0 A208019F */  sb      $t0, 0x019F($s0)           ## 0000019F
.L80A4F2C4:
/* 00FA4 80A4F2C4 9219019F */  lbu     $t9, 0x019F($s0)           ## 0000019F
/* 00FA8 80A4F2C8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00FAC 80A4F2CC 260401E8 */  addiu   $a0, $s0, 0x01E8           ## $a0 = 000001E8
/* 00FB0 80A4F2D0 17210030 */  bne     $t9, $at, .L80A4F394       
/* 00FB4 80A4F2D4 3C063F4C */  lui     $a2, 0x3F4C                ## $a2 = 3F4C0000
/* 00FB8 80A4F2D8 860901A2 */  lh      $t1, 0x01A2($s0)           ## 000001A2
/* 00FBC 80A4F2DC 3C0180A5 */  lui     $at, %hi(D_80A4FEF0)       ## $at = 80A50000
/* 00FC0 80A4F2E0 8E0501EC */  lw      $a1, 0x01EC($s0)           ## 000001EC
/* 00FC4 80A4F2E4 252A4000 */  addiu   $t2, $t1, 0x4000           ## $t2 = 00004000
/* 00FC8 80A4F2E8 A60A01A2 */  sh      $t2, 0x01A2($s0)           ## 000001A2
/* 00FCC 80A4F2EC C430FEF0 */  lwc1    $f16, %lo(D_80A4FEF0)($at) 
/* 00FD0 80A4F2F0 3C073E4C */  lui     $a3, 0x3E4C                ## $a3 = 3E4C0000
/* 00FD4 80A4F2F4 260B01F0 */  addiu   $t3, $s0, 0x01F0           ## $t3 = 000001F0
/* 00FD8 80A4F2F8 AFAB0028 */  sw      $t3, 0x0028($sp)           
/* 00FDC 80A4F2FC 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3E4CCCCD
/* 00FE0 80A4F300 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3F4CCCCD
/* 00FE4 80A4F304 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00FE8 80A4F308 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 00FEC 80A4F30C 3C0180A5 */  lui     $at, %hi(D_80A4FEF4)       ## $at = 80A50000
/* 00FF0 80A4F310 C432FEF4 */  lwc1    $f18, %lo(D_80A4FEF4)($at) 
/* 00FF4 80A4F314 E7A00044 */  swc1    $f0, 0x0044($sp)           
/* 00FF8 80A4F318 8E0501F4 */  lw      $a1, 0x01F4($s0)           ## 000001F4
/* 00FFC 80A4F31C 3C063F4C */  lui     $a2, 0x3F4C                ## $a2 = 3F4C0000
/* 01000 80A4F320 3C073E4C */  lui     $a3, 0x3E4C                ## $a3 = 3E4C0000
/* 01004 80A4F324 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3E4CCCCD
/* 01008 80A4F328 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3F4CCCCD
/* 0100C 80A4F32C 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01010 80A4F330 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01014 80A4F334 E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 01018 80A4F338 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0101C 80A4F33C 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 01020 80A4F340 C60401F0 */  lwc1    $f4, 0x01F0($s0)           ## 000001F0
/* 01024 80A4F344 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 01028 80A4F348 C60A01E8 */  lwc1    $f10, 0x01E8($s0)          ## 000001E8
/* 0102C 80A4F34C 46062200 */  add.s   $f8, $f4, $f6              
/* 01030 80A4F350 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01034 80A4F354 3C0180A5 */  lui     $at, %hi(D_80A4FEF8)       ## $at = 80A50000
/* 01038 80A4F358 46105480 */  add.s   $f18, $f10, $f16           
/* 0103C 80A4F35C E60801B4 */  swc1    $f8, 0x01B4($s0)           ## 000001B4
/* 01040 80A4F360 E61201B8 */  swc1    $f18, 0x01B8($s0)          ## 000001B8
/* 01044 80A4F364 C7A40044 */  lwc1    $f4, 0x0044($sp)           
/* 01048 80A4F368 46062032 */  c.eq.s  $f4, $f6                   
/* 0104C 80A4F36C 00000000 */  nop
/* 01050 80A4F370 45020009 */  bc1fl   .L80A4F398                 
/* 01054 80A4F374 920E019F */  lbu     $t6, 0x019F($s0)           ## 0000019F
/* 01058 80A4F378 C428FEF8 */  lwc1    $f8, %lo(D_80A4FEF8)($at)  
/* 0105C 80A4F37C 3C0180A5 */  lui     $at, %hi(D_80A4FEFC)       ## $at = 80A50000
/* 01060 80A4F380 240C0004 */  addiu   $t4, $zero, 0x0004         ## $t4 = 00000004
/* 01064 80A4F384 E60801E8 */  swc1    $f8, 0x01E8($s0)           ## 000001E8
/* 01068 80A4F388 C42AFEFC */  lwc1    $f10, %lo(D_80A4FEFC)($at) 
/* 0106C 80A4F38C A20C019F */  sb      $t4, 0x019F($s0)           ## 0000019F
/* 01070 80A4F390 E60A01EC */  swc1    $f10, 0x01EC($s0)          ## 000001EC
.L80A4F394:
/* 01074 80A4F394 920E019F */  lbu     $t6, 0x019F($s0)           ## 0000019F
.L80A4F398:
/* 01078 80A4F398 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0107C 80A4F39C 260401E8 */  addiu   $a0, $s0, 0x01E8           ## $a0 = 000001E8
/* 01080 80A4F3A0 15C1001E */  bne     $t6, $at, .L80A4F41C       
/* 01084 80A4F3A4 3C063F4C */  lui     $a2, 0x3F4C                ## $a2 = 3F4C0000
/* 01088 80A4F3A8 3C0180A5 */  lui     $at, %hi(D_80A4FF00)       ## $at = 80A50000
/* 0108C 80A4F3AC C430FF00 */  lwc1    $f16, %lo(D_80A4FF00)($at) 
/* 01090 80A4F3B0 8E0501EC */  lw      $a1, 0x01EC($s0)           ## 000001EC
/* 01094 80A4F3B4 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3F4CCCCD
/* 01098 80A4F3B8 3C074680 */  lui     $a3, 0x4680                ## $a3 = 46800000
/* 0109C 80A4F3BC 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 010A0 80A4F3C0 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 010A4 80A4F3C4 C61201E8 */  lwc1    $f18, 0x01E8($s0)          ## 000001E8
/* 010A8 80A4F3C8 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 010AC 80A4F3CC 860D01A2 */  lh      $t5, 0x01A2($s0)           ## 000001A2
/* 010B0 80A4F3D0 4600910D */  trunc.w.s $f4, $f18                  
/* 010B4 80A4F3D4 46060032 */  c.eq.s  $f0, $f6                   
/* 010B8 80A4F3D8 44192000 */  mfc1    $t9, $f4                   
/* 010BC 80A4F3DC 00000000 */  nop
/* 010C0 80A4F3E0 01B94821 */  addu    $t1, $t5, $t9              
/* 010C4 80A4F3E4 4500000D */  bc1f    .L80A4F41C                 
/* 010C8 80A4F3E8 A60901A2 */  sh      $t1, 0x01A2($s0)           ## 000001A2
/* 010CC 80A4F3EC 860201A2 */  lh      $v0, 0x01A2($s0)           ## 000001A2
/* 010D0 80A4F3F0 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 010D4 80A4F3F4 58400003 */  blezl   $v0, .L80A4F404            
/* 010D8 80A4F3F8 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 010DC 80A4F3FC 00411021 */  addu    $v0, $v0, $at              
/* 010E0 80A4F400 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
.L80A4F404:
/* 010E4 80A4F404 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 010E8 80A4F408 240A0005 */  addiu   $t2, $zero, 0x0005         ## $t2 = 00000005
/* 010EC 80A4F40C 468042A0 */  cvt.s.w $f10, $f8                  
/* 010F0 80A4F410 A20A019F */  sb      $t2, 0x019F($s0)           ## 0000019F
/* 010F4 80A4F414 E61001EC */  swc1    $f16, 0x01EC($s0)          ## 000001EC
/* 010F8 80A4F418 E60A01E8 */  swc1    $f10, 0x01E8($s0)          ## 000001E8
.L80A4F41C:
/* 010FC 80A4F41C 920B019F */  lbu     $t3, 0x019F($s0)           ## 0000019F
/* 01100 80A4F420 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01104 80A4F424 55610034 */  bnel    $t3, $at, .L80A4F4F8       
/* 01108 80A4F428 9218019F */  lbu     $t8, 0x019F($s0)           ## 0000019F
/* 0110C 80A4F42C 860201A2 */  lh      $v0, 0x01A2($s0)           ## 000001A2
/* 01110 80A4F430 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 01114 80A4F434 260401E8 */  addiu   $a0, $s0, 0x01E8           ## $a0 = 000001E8
/* 01118 80A4F438 18400002 */  blez    $v0, .L80A4F444            
/* 0111C 80A4F43C 34210001 */  ori     $at, $at, 0x0001           ## $at = FFFF0001
/* 01120 80A4F440 00411021 */  addu    $v0, $v0, $at              
.L80A4F444:
/* 01124 80A4F444 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 01128 80A4F448 3C0180A5 */  lui     $at, %hi(D_80A4FF04)       ## $at = 80A50000
/* 0112C 80A4F44C 8E0501EC */  lw      $a1, 0x01EC($s0)           ## 000001EC
/* 01130 80A4F450 46809120 */  cvt.s.w $f4, $f18                  
/* 01134 80A4F454 3C063F4C */  lui     $a2, 0x3F4C                ## $a2 = 3F4C0000
/* 01138 80A4F458 3C074563 */  lui     $a3, 0x4563                ## $a3 = 45630000
/* 0113C 80A4F45C 34E78000 */  ori     $a3, $a3, 0x8000           ## $a3 = 45638000
/* 01140 80A4F460 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3F4CCCCD
/* 01144 80A4F464 E60401E8 */  swc1    $f4, 0x01E8($s0)           ## 000001E8
/* 01148 80A4F468 C426FF04 */  lwc1    $f6, %lo(D_80A4FF04)($at)  
/* 0114C 80A4F46C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01150 80A4F470 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 01154 80A4F474 C60801E8 */  lwc1    $f8, 0x01E8($s0)           ## 000001E8
/* 01158 80A4F478 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 0115C 80A4F47C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01160 80A4F480 4600428D */  trunc.w.s $f10, $f8                  
/* 01164 80A4F484 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01168 80A4F488 24053831 */  addiu   $a1, $zero, 0x3831         ## $a1 = 00003831
/* 0116C 80A4F48C 46100032 */  c.eq.s  $f0, $f16                  
/* 01170 80A4F490 440E5000 */  mfc1    $t6, $f10                  
/* 01174 80A4F494 45000017 */  bc1f    .L80A4F4F4                 
/* 01178 80A4F498 A60E01A2 */  sh      $t6, 0x01A2($s0)           ## 000001A2
/* 0117C 80A4F49C C61201B8 */  lwc1    $f18, 0x01B8($s0)          ## 000001B8
/* 01180 80A4F4A0 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 01184 80A4F4A4 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 01188 80A4F4A8 C60A01B4 */  lwc1    $f10, 0x01B4($s0)          ## 000001B4
/* 0118C 80A4F4AC 46049181 */  sub.s   $f6, $f18, $f4             
/* 01190 80A4F4B0 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 01194 80A4F4B4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01198 80A4F4B8 E60801EC */  swc1    $f8, 0x01EC($s0)           ## 000001EC
/* 0119C 80A4F4BC 46105481 */  sub.s   $f18, $f10, $f16           
/* 011A0 80A4F4C0 E60601E8 */  swc1    $f6, 0x01E8($s0)           ## 000001E8
/* 011A4 80A4F4C4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 011A8 80A4F4C8 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 011AC 80A4F4CC 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 011B0 80A4F4D0 A60001A2 */  sh      $zero, 0x01A2($s0)         ## 000001A2
/* 011B4 80A4F4D4 A6000200 */  sh      $zero, 0x0200($s0)         ## 00000200
/* 011B8 80A4F4D8 E61201F0 */  swc1    $f18, 0x01F0($s0)          ## 000001F0
/* 011BC 80A4F4DC E60401F4 */  swc1    $f4, 0x01F4($s0)           ## 000001F4
/* 011C0 80A4F4E0 E60601F8 */  swc1    $f6, 0x01F8($s0)           ## 000001F8
/* 011C4 80A4F4E4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 011C8 80A4F4E8 E60801FC */  swc1    $f8, 0x01FC($s0)           ## 000001FC
/* 011CC 80A4F4EC 240F0006 */  addiu   $t7, $zero, 0x0006         ## $t7 = 00000006
/* 011D0 80A4F4F0 A20F019F */  sb      $t7, 0x019F($s0)           ## 0000019F
.L80A4F4F4:
/* 011D4 80A4F4F4 9218019F */  lbu     $t8, 0x019F($s0)           ## 0000019F
.L80A4F4F8:
/* 011D8 80A4F4F8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 011DC 80A4F4FC 260401E8 */  addiu   $a0, $s0, 0x01E8           ## $a0 = 000001E8
/* 011E0 80A4F500 17010072 */  bne     $t8, $at, .L80A4F6CC       
/* 011E4 80A4F504 3C063F4C */  lui     $a2, 0x3F4C                ## $a2 = 3F4C0000
/* 011E8 80A4F508 3C0180A5 */  lui     $at, %hi(D_80A4FF08)       ## $at = 80A50000
/* 011EC 80A4F50C C42AFF08 */  lwc1    $f10, %lo(D_80A4FF08)($at) 
/* 011F0 80A4F510 8E0501EC */  lw      $a1, 0x01EC($s0)           ## 000001EC
/* 011F4 80A4F514 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 011F8 80A4F518 260801F0 */  addiu   $t0, $s0, 0x01F0           ## $t0 = 000001F0
/* 011FC 80A4F51C AFA80028 */  sw      $t0, 0x0028($sp)           
/* 01200 80A4F520 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 01204 80A4F524 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3F4CCCCD
/* 01208 80A4F528 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 0120C 80A4F52C E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 01210 80A4F530 3C0180A5 */  lui     $at, %hi(D_80A4FF0C)       ## $at = 80A50000
/* 01214 80A4F534 C430FF0C */  lwc1    $f16, %lo(D_80A4FF0C)($at) 
/* 01218 80A4F538 E7A00044 */  swc1    $f0, 0x0044($sp)           
/* 0121C 80A4F53C 8E0501F4 */  lw      $a1, 0x01F4($s0)           ## 000001F4
/* 01220 80A4F540 3C063F4C */  lui     $a2, 0x3F4C                ## $a2 = 3F4C0000
/* 01224 80A4F544 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 01228 80A4F548 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 0122C 80A4F54C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3F4CCCCD
/* 01230 80A4F550 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01234 80A4F554 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01238 80A4F558 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 0123C 80A4F55C 3C0180A5 */  lui     $at, %hi(D_80A4FF10)       ## $at = 80A50000
/* 01240 80A4F560 C432FF10 */  lwc1    $f18, %lo(D_80A4FF10)($at) 
/* 01244 80A4F564 E7A00040 */  swc1    $f0, 0x0040($sp)           
/* 01248 80A4F568 8E0501FC */  lw      $a1, 0x01FC($s0)           ## 000001FC
/* 0124C 80A4F56C 3C063F4C */  lui     $a2, 0x3F4C                ## $a2 = 3F4C0000
/* 01250 80A4F570 3C073CA3 */  lui     $a3, 0x3CA3                ## $a3 = 3CA30000
/* 01254 80A4F574 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3CA3D70A
/* 01258 80A4F578 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3F4CCCCD
/* 0125C 80A4F57C 260401F8 */  addiu   $a0, $s0, 0x01F8           ## $a0 = 000001F8
/* 01260 80A4F580 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01264 80A4F584 E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 01268 80A4F588 E7A0003C */  swc1    $f0, 0x003C($sp)           
/* 0126C 80A4F58C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01270 80A4F590 960D0200 */  lhu     $t5, 0x0200($s0)           ## 00000200
/* 01274 80A4F594 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 01278 80A4F598 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 0127C 80A4F59C 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 01280 80A4F5A0 01A1001A */  div     $zero, $t5, $at            
/* 01284 80A4F5A4 C60401F0 */  lwc1    $f4, 0x01F0($s0)           ## 000001F0
/* 01288 80A4F5A8 C60A01E8 */  lwc1    $f10, 0x01E8($s0)          ## 000001E8
/* 0128C 80A4F5AC 0000C810 */  mfhi    $t9                        
/* 01290 80A4F5B0 46062200 */  add.s   $f8, $f4, $f6              
/* 01294 80A4F5B4 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 01298 80A4F5B8 3C0180A5 */  lui     $at, %hi(D_80A4FF14)       ## $at = 80A50000
/* 0129C 80A4F5BC 46105480 */  add.s   $f18, $f10, $f16           
/* 012A0 80A4F5C0 E60801B4 */  swc1    $f8, 0x01B4($s0)           ## 000001B4
/* 012A4 80A4F5C4 468021A0 */  cvt.s.w $f6, $f4                   
/* 012A8 80A4F5C8 E61201B8 */  swc1    $f18, 0x01B8($s0)          ## 000001B8
/* 012AC 80A4F5CC C428FF14 */  lwc1    $f8, %lo(D_80A4FF14)($at)  
/* 012B0 80A4F5D0 3C0143B4 */  lui     $at, 0x43B4                ## $at = 43B40000
/* 012B4 80A4F5D4 44818000 */  mtc1    $at, $f16                  ## $f16 = 360.00
/* 012B8 80A4F5D8 3C0180A5 */  lui     $at, %hi(D_80A4FF18)       ## $at = 80A50000
/* 012BC 80A4F5DC 46083282 */  mul.s   $f10, $f6, $f8             
/* 012C0 80A4F5E0 C424FF18 */  lwc1    $f4, %lo(D_80A4FF18)($at)  
/* 012C4 80A4F5E4 46105482 */  mul.s   $f18, $f10, $f16           
/* 012C8 80A4F5E8 00000000 */  nop
/* 012CC 80A4F5EC 46049302 */  mul.s   $f12, $f18, $f4            
/* 012D0 80A4F5F0 0C0400A4 */  jal     sinf
              
/* 012D4 80A4F5F4 00000000 */  nop
/* 012D8 80A4F5F8 96090200 */  lhu     $t1, 0x0200($s0)           ## 00000200
/* 012DC 80A4F5FC 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 012E0 80A4F600 C60801F8 */  lwc1    $f8, 0x01F8($s0)           ## 000001F8
/* 012E4 80A4F604 0121001A */  div     $zero, $t1, $at            
/* 012E8 80A4F608 46080282 */  mul.s   $f10, $f0, $f8             
/* 012EC 80A4F60C C60601B4 */  lwc1    $f6, 0x01B4($s0)           ## 000001B4
/* 012F0 80A4F610 00005010 */  mfhi    $t2                        
/* 012F4 80A4F614 448A9000 */  mtc1    $t2, $f18                  ## $f18 = 0.00
/* 012F8 80A4F618 3C0180A5 */  lui     $at, %hi(D_80A4FF1C)       ## $at = 80A50000
/* 012FC 80A4F61C 46809120 */  cvt.s.w $f4, $f18                  
/* 01300 80A4F620 460A3400 */  add.s   $f16, $f6, $f10            
/* 01304 80A4F624 E61001B4 */  swc1    $f16, 0x01B4($s0)          ## 000001B4
/* 01308 80A4F628 C428FF1C */  lwc1    $f8, %lo(D_80A4FF1C)($at)  
/* 0130C 80A4F62C 3C0143B4 */  lui     $at, 0x43B4                ## $at = 43B40000
/* 01310 80A4F630 44815000 */  mtc1    $at, $f10                  ## $f10 = 360.00
/* 01314 80A4F634 46082182 */  mul.s   $f6, $f4, $f8              
/* 01318 80A4F638 3C0180A5 */  lui     $at, %hi(D_80A4FF20)       ## $at = 80A50000
/* 0131C 80A4F63C C432FF20 */  lwc1    $f18, %lo(D_80A4FF20)($at) 
/* 01320 80A4F640 460A3402 */  mul.s   $f16, $f6, $f10            
/* 01324 80A4F644 00000000 */  nop
/* 01328 80A4F648 46128302 */  mul.s   $f12, $f16, $f18           
/* 0132C 80A4F64C 0C0400A4 */  jal     sinf
              
/* 01330 80A4F650 00000000 */  nop
/* 01334 80A4F654 C60801F8 */  lwc1    $f8, 0x01F8($s0)           ## 000001F8
/* 01338 80A4F658 C60401B8 */  lwc1    $f4, 0x01B8($s0)           ## 000001B8
/* 0133C 80A4F65C 960B0200 */  lhu     $t3, 0x0200($s0)           ## 00000200
/* 01340 80A4F660 46080182 */  mul.s   $f6, $f0, $f8              
/* 01344 80A4F664 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 01348 80A4F668 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 0134C 80A4F66C A60C0200 */  sh      $t4, 0x0200($s0)           ## 00000200
/* 01350 80A4F670 46062280 */  add.s   $f10, $f4, $f6             
/* 01354 80A4F674 E60A01B8 */  swc1    $f10, 0x01B8($s0)          ## 000001B8
/* 01358 80A4F678 C7B00044 */  lwc1    $f16, 0x0044($sp)          
/* 0135C 80A4F67C C7A80040 */  lwc1    $f8, 0x0040($sp)           
/* 01360 80A4F680 46128032 */  c.eq.s  $f16, $f18                 
/* 01364 80A4F684 00000000 */  nop
/* 01368 80A4F688 45020011 */  bc1fl   .L80A4F6D0                 
/* 0136C 80A4F68C 960F01A2 */  lhu     $t7, 0x01A2($s0)           ## 000001A2
/* 01370 80A4F690 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01374 80A4F694 C7A6003C */  lwc1    $f6, 0x003C($sp)           
/* 01378 80A4F698 46044032 */  c.eq.s  $f8, $f4                   
/* 0137C 80A4F69C 00000000 */  nop
/* 01380 80A4F6A0 4502000B */  bc1fl   .L80A4F6D0                 
/* 01384 80A4F6A4 960F01A2 */  lhu     $t7, 0x01A2($s0)           ## 000001A2
/* 01388 80A4F6A8 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 0138C 80A4F6AC 3C0E80A5 */  lui     $t6, %hi(func_80A4F734)    ## $t6 = 80A50000
/* 01390 80A4F6B0 25CEF734 */  addiu   $t6, $t6, %lo(func_80A4F734) ## $t6 = 80A4F734
/* 01394 80A4F6B4 460A3032 */  c.eq.s  $f6, $f10                  
/* 01398 80A4F6B8 00000000 */  nop
/* 0139C 80A4F6BC 45020004 */  bc1fl   .L80A4F6D0                 
/* 013A0 80A4F6C0 960F01A2 */  lhu     $t7, 0x01A2($s0)           ## 000001A2
/* 013A4 80A4F6C4 A200019C */  sb      $zero, 0x019C($s0)         ## 0000019C
/* 013A8 80A4F6C8 AE0E0198 */  sw      $t6, 0x0198($s0)           ## 00000198
.L80A4F6CC:
/* 013AC 80A4F6CC 960F01A2 */  lhu     $t7, 0x01A2($s0)           ## 000001A2
.L80A4F6D0:
/* 013B0 80A4F6D0 97B80036 */  lhu     $t8, 0x0036($sp)           
/* 013B4 80A4F6D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013B8 80A4F6D8 01F8082A */  slt     $at, $t7, $t8              
/* 013BC 80A4F6DC 50200004 */  beql    $at, $zero, .L80A4F6F0     
/* 013C0 80A4F6E0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 013C4 80A4F6E4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 013C8 80A4F6E8 240528EB */  addiu   $a1, $zero, 0x28EB         ## $a1 = 000028EB
/* 013CC 80A4F6EC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A4F6F0:
/* 013D0 80A4F6F0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 013D4 80A4F6F4 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 013D8 80A4F6F8 03E00008 */  jr      $ra                        
/* 013DC 80A4F6FC 00000000 */  nop
