.late_rodata
glabel D_808553EC
 .word 0x38000100

.text
glabel func_8083F0C8
/* 0CEB8 8083F0C8 3C0E8016 */  lui     $t6, %hi(gSaveContext+4)
/* 0CEBC 8083F0CC 8DCEE664 */  lw      $t6, %lo(gSaveContext+4)($t6)
/* 0CEC0 8083F0D0 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 0CEC4 8083F0D4 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 0CEC8 8083F0D8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0CECC 8083F0DC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0CED0 8083F0E0 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 0CED4 8083F0E4 11C00098 */  beq     $t6, $zero, .L8083F348     
/* 0CED8 8083F0E8 AFA5007C */  sw      $a1, 0x007C($sp)           
/* 0CEDC 8083F0EC 8C8F067C */  lw      $t7, 0x067C($a0)           ## 0000067C
/* 0CEE0 8083F0F0 30D90030 */  andi    $t9, $a2, 0x0030           ## $t9 = 00000000
/* 0CEE4 8083F0F4 000FC100 */  sll     $t8, $t7,  4               
/* 0CEE8 8083F0F8 07020094 */  bltzl   $t8, .L8083F34C            
/* 0CEEC 8083F0FC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0CEF0 8083F100 13200091 */  beq     $t9, $zero, .L8083F348     
/* 0CEF4 8083F104 8FA6007C */  lw      $a2, 0x007C($sp)           
/* 0CEF8 8083F108 8C910074 */  lw      $s1, 0x0074($a0)           ## 00000074
/* 0CEFC 8083F10C 9205007C */  lbu     $a1, 0x007C($s0)           ## 0000007C
/* 0CF00 8083F110 24C607C0 */  addiu   $a2, $a2, 0x07C0           ## $a2 = 000007C0
/* 0CF04 8083F114 27A70050 */  addiu   $a3, $sp, 0x0050           ## $a3 = FFFFFFD8
/* 0CF08 8083F118 0C00E31E */  jal     func_80038C78              
/* 0CF0C 8083F11C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0CF10 8083F120 C7A20050 */  lwc1    $f2, 0x0050($sp)           
/* 0CF14 8083F124 C7AC0058 */  lwc1    $f12, 0x0058($sp)          
/* 0CF18 8083F128 27A2005C */  addiu   $v0, $sp, 0x005C           ## $v0 = FFFFFFE4
/* 0CF1C 8083F12C 27A30074 */  addiu   $v1, $sp, 0x0074           ## $v1 = FFFFFFFC
/* 0CF20 8083F130 46001386 */  mov.s   $f14, $f2                  
/* 0CF24 8083F134 46006406 */  mov.s   $f16, $f12                 
/* 0CF28 8083F138 C4400000 */  lwc1    $f0, 0x0000($v0)           ## FFFFFFE4
.L8083F13C:
/* 0CF2C 8083F13C 460E003C */  c.lt.s  $f0, $f14                  
/* 0CF30 8083F140 00000000 */  nop
/* 0CF34 8083F144 45020004 */  bc1fl   .L8083F158                 
/* 0CF38 8083F148 4600103C */  c.lt.s  $f2, $f0                   
/* 0CF3C 8083F14C 10000006 */  beq     $zero, $zero, .L8083F168   
/* 0CF40 8083F150 46000386 */  mov.s   $f14, $f0                  
/* 0CF44 8083F154 4600103C */  c.lt.s  $f2, $f0                   
.L8083F158:
/* 0CF48 8083F158 00000000 */  nop
/* 0CF4C 8083F15C 45020003 */  bc1fl   .L8083F16C                 
/* 0CF50 8083F160 C4400008 */  lwc1    $f0, 0x0008($v0)           ## FFFFFFEC
/* 0CF54 8083F164 46000086 */  mov.s   $f2, $f0                   
.L8083F168:
/* 0CF58 8083F168 C4400008 */  lwc1    $f0, 0x0008($v0)           ## FFFFFFEC
.L8083F16C:
/* 0CF5C 8083F16C 2442000C */  addiu   $v0, $v0, 0x000C           ## $v0 = FFFFFFF0
/* 0CF60 8083F170 4610003C */  c.lt.s  $f0, $f16                  
/* 0CF64 8083F174 00000000 */  nop
/* 0CF68 8083F178 45020004 */  bc1fl   .L8083F18C                 
/* 0CF6C 8083F17C 4600603C */  c.lt.s  $f12, $f0                  
/* 0CF70 8083F180 10000006 */  beq     $zero, $zero, .L8083F19C   
/* 0CF74 8083F184 46000406 */  mov.s   $f16, $f0                  
/* 0CF78 8083F188 4600603C */  c.lt.s  $f12, $f0                  
.L8083F18C:
/* 0CF7C 8083F18C 00000000 */  nop
/* 0CF80 8083F190 45000002 */  bc1f    .L8083F19C                 
/* 0CF84 8083F194 00000000 */  nop
/* 0CF88 8083F198 46000306 */  mov.s   $f12, $f0                  
.L8083F19C:
/* 0CF8C 8083F19C 5443FFE7 */  bnel    $v0, $v1, .L8083F13C       
/* 0CF90 8083F1A0 C4400000 */  lwc1    $f0, 0x0000($v0)           ## FFFFFFF0
/* 0CF94 8083F1A4 3C018085 */  lui     $at, %hi(D_808553EC)       ## $at = 80850000
/* 0CF98 8083F1A8 C43253EC */  lwc1    $f18, %lo(D_808553EC)($at) 
/* 0CF9C 8083F1AC 46027100 */  add.s   $f4, $f14, $f2             
/* 0CFA0 8083F1B0 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0CFA4 8083F1B4 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 0CFA8 8083F1B8 460C8200 */  add.s   $f8, $f16, $f12            
/* 0CFAC 8083F1BC 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 0CFB0 8083F1C0 46062382 */  mul.s   $f14, $f4, $f6             
/* 0CFB4 8083F1C4 8628000C */  lh      $t0, 0x000C($s1)           ## 0000000C
/* 0CFB8 8083F1C8 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 0CFBC 8083F1CC 460A4402 */  mul.s   $f16, $f8, $f10            
/* 0CFC0 8083F1D0 44884000 */  mtc1    $t0, $f8                   ## $f8 = 0.00
/* 0CFC4 8083F1D4 86290008 */  lh      $t1, 0x0008($s1)           ## 00000008
/* 0CFC8 8083F1D8 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 0CFCC 8083F1DC 460E2181 */  sub.s   $f6, $f4, $f14             
/* 0CFD0 8083F1E0 468042A0 */  cvt.s.w $f10, $f8                  
/* 0CFD4 8083F1E4 46125102 */  mul.s   $f4, $f10, $f18            
/* 0CFD8 8083F1E8 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 0CFDC 8083F1EC 46043202 */  mul.s   $f8, $f6, $f4              
/* 0CFE0 8083F1F0 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 0CFE4 8083F1F4 46105181 */  sub.s   $f6, $f10, $f16            
/* 0CFE8 8083F1F8 468022A0 */  cvt.s.w $f10, $f4                  
/* 0CFEC 8083F1FC 46125102 */  mul.s   $f4, $f10, $f18            
/* 0CFF0 8083F200 00000000 */  nop
/* 0CFF4 8083F204 46043282 */  mul.s   $f10, $f6, $f4             
/* 0CFF8 8083F208 44813000 */  mtc1    $at, $f6                   ## $f6 = 8.00
/* 0CFFC 8083F20C 460A4081 */  sub.s   $f2, $f8, $f10             
/* 0D000 8083F210 46001005 */  abs.s   $f0, $f2                   
/* 0D004 8083F214 4606003C */  c.lt.s  $f0, $f6                   
/* 0D008 8083F218 00000000 */  nop
/* 0D00C 8083F21C 4500004A */  bc1f    .L8083F348                 
/* 0D010 8083F220 00000000 */  nop
/* 0D014 8083F224 8E0A0680 */  lw      $t2, 0x0680($s0)           ## 00000680
/* 0D018 8083F228 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0D01C 8083F22C 3C0C8086 */  lui     $t4, %hi(D_80858AB4)       ## $t4 = 80860000
/* 0D020 8083F230 01415825 */  or      $t3, $t2, $at              ## $t3 = 00010000
/* 0D024 8083F234 AE0B0680 */  sw      $t3, 0x0680($s0)           ## 00000680
/* 0D028 8083F238 8D8C8AB4 */  lw      $t4, %lo(D_80858AB4)($t4)  
/* 0D02C 8083F23C 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 0D030 8083F240 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 0D034 8083F244 958D000C */  lhu     $t5, 0x000C($t4)           ## 8086000C
/* 0D038 8083F248 01A17027 */  nor     $t6, $t5, $at              
/* 0D03C 8083F24C 55C0003F */  bnel    $t6, $zero, .L8083F34C     
/* 0D040 8083F250 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0D044 8083F254 862F0008 */  lh      $t7, 0x0008($s1)           ## 00000008
/* 0D048 8083F258 3C068084 */  lui     $a2, %hi(func_8083A40C)    ## $a2 = 80840000
/* 0D04C 8083F25C 24C6A40C */  addiu   $a2, $a2, %lo(func_8083A40C) ## $a2 = 8083A40C
/* 0D050 8083F260 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 0D054 8083F264 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 0D058 8083F268 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0D05C 8083F26C 46802220 */  cvt.s.w $f8, $f4                   
/* 0D060 8083F270 46124282 */  mul.s   $f10, $f8, $f18            
/* 0D064 8083F274 E7AA0038 */  swc1    $f10, 0x0038($sp)          
/* 0D068 8083F278 8638000C */  lh      $t8, 0x000C($s1)           ## 0000000C
/* 0D06C 8083F27C 44983000 */  mtc1    $t8, $f6                   ## $f6 = 0.00
/* 0D070 8083F280 00000000 */  nop
/* 0D074 8083F284 46803120 */  cvt.s.w $f4, $f6                   
/* 0D078 8083F288 46122202 */  mul.s   $f8, $f4, $f18             
/* 0D07C 8083F28C E7A80034 */  swc1    $f8, 0x0034($sp)           
/* 0D080 8083F290 C6000888 */  lwc1    $f0, 0x0888($s0)           ## 00000888
/* 0D084 8083F294 E7B00044 */  swc1    $f16, 0x0044($sp)          
/* 0D088 8083F298 E7AE004C */  swc1    $f14, 0x004C($sp)          
/* 0D08C 8083F29C 0C20DA26 */  jal     func_80836898              
/* 0D090 8083F2A0 E7A00030 */  swc1    $f0, 0x0030($sp)           
/* 0D094 8083F2A4 8E190680 */  lw      $t9, 0x0680($s0)           ## 00000680
/* 0D098 8083F2A8 8602007E */  lh      $v0, 0x007E($s0)           ## 0000007E
/* 0D09C 8083F2AC 3C010004 */  lui     $at, 0x0004                ## $at = 00040000
/* 0D0A0 8083F2B0 03214025 */  or      $t0, $t9, $at              ## $t0 = 00040000
/* 0D0A4 8083F2B4 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 0D0A8 8083F2B8 00411021 */  addu    $v0, $v0, $at              
/* 0D0AC 8083F2BC C7A00030 */  lwc1    $f0, 0x0030($sp)           
/* 0D0B0 8083F2C0 C7AE004C */  lwc1    $f14, 0x004C($sp)          
/* 0D0B4 8083F2C4 C7B00044 */  lwc1    $f16, 0x0044($sp)          
/* 0D0B8 8083F2C8 00021400 */  sll     $v0, $v0, 16               
/* 0D0BC 8083F2CC 00021403 */  sra     $v0, $v0, 16               
/* 0D0C0 8083F2D0 AE080680 */  sw      $t0, 0x0680($s0)           ## 00000680
/* 0D0C4 8083F2D4 A602083C */  sh      $v0, 0x083C($s0)           ## 0000083C
/* 0D0C8 8083F2D8 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 0D0CC 8083F2DC C7AA0038 */  lwc1    $f10, 0x0038($sp)          
/* 0D0D0 8083F2E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0D0D4 8083F2E4 460A0182 */  mul.s   $f6, $f0, $f10             
/* 0D0D8 8083F2E8 460E3100 */  add.s   $f4, $f6, $f14             
/* 0D0DC 8083F2EC E6040024 */  swc1    $f4, 0x0024($s0)           ## 00000024
/* 0D0E0 8083F2F0 C7A80034 */  lwc1    $f8, 0x0034($sp)           
/* 0D0E4 8083F2F4 46080282 */  mul.s   $f10, $f0, $f8             
/* 0D0E8 8083F2F8 46105180 */  add.s   $f6, $f10, $f16            
/* 0D0EC 8083F2FC 0C20C889 */  jal     func_80832224              
/* 0D0F0 8083F300 E606002C */  swc1    $f6, 0x002C($s0)           ## 0000002C
/* 0D0F4 8083F304 8E0A0024 */  lw      $t2, 0x0024($s0)           ## 00000024
/* 0D0F8 8083F308 8E090028 */  lw      $t1, 0x0028($s0)           ## 00000028
/* 0D0FC 8083F30C 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 0D100 8083F310 AE0A0100 */  sw      $t2, 0x0100($s0)           ## 00000100
/* 0D104 8083F314 8E0A002C */  lw      $t2, 0x002C($s0)           ## 0000002C
/* 0D108 8083F318 AE090104 */  sw      $t1, 0x0104($s0)           ## 00000104
/* 0D10C 8083F31C 24C62708 */  addiu   $a2, $a2, 0x2708           ## $a2 = 04002708
/* 0D110 8083F320 AE0A0108 */  sw      $t2, 0x0108($s0)           ## 00000108
/* 0D114 8083F324 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 0D118 8083F328 0C20C899 */  jal     func_80832264              
/* 0D11C 8083F32C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0D120 8083F330 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 0D124 8083F334 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0D128 8083F338 0C20CBD5 */  jal     func_80832F54              
/* 0D12C 8083F33C 2406009D */  addiu   $a2, $zero, 0x009D         ## $a2 = 0000009D
/* 0D130 8083F340 10000002 */  beq     $zero, $zero, .L8083F34C   
/* 0D134 8083F344 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8083F348:
/* 0D138 8083F348 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8083F34C:
/* 0D13C 8083F34C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0D140 8083F350 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 0D144 8083F354 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 0D148 8083F358 03E00008 */  jr      $ra                        
/* 0D14C 8083F35C 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
