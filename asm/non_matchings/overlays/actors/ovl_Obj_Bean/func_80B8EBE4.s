.late_rodata
glabel D_80B90FFC
    .float 0.01

glabel D_80B91000
    .float 0.06

glabel D_80B91004
    .float 1.07

glabel D_80B91008
    .float 0.1

glabel D_80B9100C
    .float 0.2

glabel D_80B91010
    .float 0.1

glabel D_80B91014
    .float 2100.0

.text
glabel func_80B8EBE4
/* 00164 80B8EBE4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00168 80B8EBE8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0016C 80B8EBEC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00170 80B8EBF0 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 00174 80B8EBF4 848E01B6 */  lh      $t6, 0x01B6($a0)           ## 000001B6
/* 00178 80B8EBF8 849801B8 */  lh      $t8, 0x01B8($a0)           ## 000001B8
/* 0017C 80B8EBFC 848801BA */  lh      $t0, 0x01BA($a0)           ## 000001BA
/* 00180 80B8EC00 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00184 80B8EC04 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00188 80B8EC08 25CF00B6 */  addiu   $t7, $t6, 0x00B6           ## $t7 = 000000B6
/* 0018C 80B8EC0C 271900FB */  addiu   $t9, $t8, 0x00FB           ## $t9 = 000000FB
/* 00190 80B8EC10 25090064 */  addiu   $t1, $t0, 0x0064           ## $t1 = 00000064
/* 00194 80B8EC14 A48F01B6 */  sh      $t7, 0x01B6($a0)           ## 000001B6
/* 00198 80B8EC18 A49901B8 */  sh      $t9, 0x01B8($a0)           ## 000001B8
/* 0019C 80B8EC1C A48901BA */  sh      $t1, 0x01BA($a0)           ## 000001BA
/* 001A0 80B8EC20 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 001A4 80B8EC24 248401E4 */  addiu   $a0, $a0, 0x01E4           ## $a0 = 000001E4
/* 001A8 80B8EC28 0C01DE80 */  jal     Math_StepToF
              
/* 001AC 80B8EC2C 3C054000 */  lui     $a1, 0x4000                ## $a1 = 40000000
/* 001B0 80B8EC30 860401B6 */  lh      $a0, 0x01B6($s0)           ## 000001B6
/* 001B4 80B8EC34 00800821 */  addu    $at, $a0, $zero            
/* 001B8 80B8EC38 00042080 */  sll     $a0, $a0,  2               
/* 001BC 80B8EC3C 00812023 */  subu    $a0, $a0, $at              
/* 001C0 80B8EC40 00042400 */  sll     $a0, $a0, 16               
/* 001C4 80B8EC44 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 001C8 80B8EC48 00042403 */  sra     $a0, $a0, 16               
/* 001CC 80B8EC4C 860401B8 */  lh      $a0, 0x01B8($s0)           ## 000001B8
/* 001D0 80B8EC50 46000506 */  mov.s   $f20, $f0                  
/* 001D4 80B8EC54 00800821 */  addu    $at, $a0, $zero            
/* 001D8 80B8EC58 00042080 */  sll     $a0, $a0,  2               
/* 001DC 80B8EC5C 00812023 */  subu    $a0, $a0, $at              
/* 001E0 80B8EC60 00042400 */  sll     $a0, $a0, 16               
/* 001E4 80B8EC64 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 001E8 80B8EC68 00042403 */  sra     $a0, $a0, 16               
/* 001EC 80B8EC6C 46140100 */  add.s   $f4, $f0, $f20             
/* 001F0 80B8EC70 C60601E4 */  lwc1    $f6, 0x01E4($s0)           ## 000001E4
/* 001F4 80B8EC74 860401B6 */  lh      $a0, 0x01B6($s0)           ## 000001B6
/* 001F8 80B8EC78 46062202 */  mul.s   $f8, $f4, $f6              
/* 001FC 80B8EC7C 00042080 */  sll     $a0, $a0,  2               
/* 00200 80B8EC80 00042400 */  sll     $a0, $a0, 16               
/* 00204 80B8EC84 00042403 */  sra     $a0, $a0, 16               
/* 00208 80B8EC88 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 0020C 80B8EC8C E60801E8 */  swc1    $f8, 0x01E8($s0)           ## 000001E8
/* 00210 80B8EC90 860401B8 */  lh      $a0, 0x01B8($s0)           ## 000001B8
/* 00214 80B8EC94 46000506 */  mov.s   $f20, $f0                  
/* 00218 80B8EC98 00042080 */  sll     $a0, $a0,  2               
/* 0021C 80B8EC9C 00042400 */  sll     $a0, $a0, 16               
/* 00220 80B8ECA0 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 00224 80B8ECA4 00042403 */  sra     $a0, $a0, 16               
/* 00228 80B8ECA8 46140280 */  add.s   $f10, $f0, $f20            
/* 0022C 80B8ECAC C61001E4 */  lwc1    $f16, 0x01E4($s0)          ## 000001E4
/* 00230 80B8ECB0 860401BA */  lh      $a0, 0x01BA($s0)           ## 000001BA
/* 00234 80B8ECB4 46105482 */  mul.s   $f18, $f10, $f16           
/* 00238 80B8ECB8 00800821 */  addu    $at, $a0, $zero            
/* 0023C 80B8ECBC 00042080 */  sll     $a0, $a0,  2               
/* 00240 80B8ECC0 00812021 */  addu    $a0, $a0, $at              
/* 00244 80B8ECC4 00042400 */  sll     $a0, $a0, 16               
/* 00248 80B8ECC8 00042403 */  sra     $a0, $a0, 16               
/* 0024C 80B8ECCC 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00250 80B8ECD0 E61201EC */  swc1    $f18, 0x01EC($s0)          ## 000001EC
/* 00254 80B8ECD4 860401B8 */  lh      $a0, 0x01B8($s0)           ## 000001B8
/* 00258 80B8ECD8 46000506 */  mov.s   $f20, $f0                  
/* 0025C 80B8ECDC 000420C0 */  sll     $a0, $a0,  3               
/* 00260 80B8ECE0 00042400 */  sll     $a0, $a0, 16               
/* 00264 80B8ECE4 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00268 80B8ECE8 00042403 */  sra     $a0, $a0, 16               
/* 0026C 80B8ECEC 3C0180B9 */  lui     $at, %hi(D_80B90FFC)       ## $at = 80B90000
/* 00270 80B8ECF0 C4240FFC */  lwc1    $f4, %lo(D_80B90FFC)($at)  
/* 00274 80B8ECF4 3C0180B9 */  lui     $at, %hi(D_80B91000)       ## $at = 80B90000
/* 00278 80B8ECF8 C4281000 */  lwc1    $f8, %lo(D_80B91000)($at)  
/* 0027C 80B8ECFC 46040182 */  mul.s   $f6, $f0, $f4              
/* 00280 80B8ED00 3C0180B9 */  lui     $at, %hi(D_80B91004)       ## $at = 80B90000
/* 00284 80B8ED04 C4321004 */  lwc1    $f18, %lo(D_80B91004)($at) 
/* 00288 80B8ED08 4608A282 */  mul.s   $f10, $f20, $f8            
/* 0028C 80B8ED0C 3C0180B9 */  lui     $at, %hi(D_80B91008)       ## $at = 80B90000
/* 00290 80B8ED10 C4281008 */  lwc1    $f8, %lo(D_80B91008)($at)  
/* 00294 80B8ED14 860401BA */  lh      $a0, 0x01BA($s0)           ## 000001BA
/* 00298 80B8ED18 00800821 */  addu    $at, $a0, $zero            
/* 0029C 80B8ED1C 460A3400 */  add.s   $f16, $f6, $f10            
/* 002A0 80B8ED20 00042080 */  sll     $a0, $a0,  2               
/* 002A4 80B8ED24 00812021 */  addu    $a0, $a0, $at              
/* 002A8 80B8ED28 00042040 */  sll     $a0, $a0,  1               
/* 002AC 80B8ED2C 46128100 */  add.s   $f4, $f16, $f18            
/* 002B0 80B8ED30 00042400 */  sll     $a0, $a0, 16               
/* 002B4 80B8ED34 00042403 */  sra     $a0, $a0, 16               
/* 002B8 80B8ED38 46082082 */  mul.s   $f2, $f4, $f8              
/* 002BC 80B8ED3C E6020058 */  swc1    $f2, 0x0058($s0)           ## 00000058
/* 002C0 80B8ED40 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 002C4 80B8ED44 E6020050 */  swc1    $f2, 0x0050($s0)           ## 00000050
/* 002C8 80B8ED48 3C0180B9 */  lui     $at, %hi(D_80B9100C)       ## $at = 80B90000
/* 002CC 80B8ED4C C426100C */  lwc1    $f6, %lo(D_80B9100C)($at)  
/* 002D0 80B8ED50 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 002D4 80B8ED54 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 002D8 80B8ED58 46060282 */  mul.s   $f10, $f0, $f6             
/* 002DC 80B8ED5C 3C0180B9 */  lui     $at, %hi(D_80B91010)       ## $at = 80B90000
/* 002E0 80B8ED60 C4241010 */  lwc1    $f4, %lo(D_80B91010)($at)  
/* 002E4 80B8ED64 860401B6 */  lh      $a0, 0x01B6($s0)           ## 000001B6
/* 002E8 80B8ED68 00800821 */  addu    $at, $a0, $zero            
/* 002EC 80B8ED6C 46105480 */  add.s   $f18, $f10, $f16           
/* 002F0 80B8ED70 00042080 */  sll     $a0, $a0,  2               
/* 002F4 80B8ED74 00812023 */  subu    $a0, $a0, $at              
/* 002F8 80B8ED78 00042400 */  sll     $a0, $a0, 16               
/* 002FC 80B8ED7C 46049202 */  mul.s   $f8, $f18, $f4             
/* 00300 80B8ED80 00042403 */  sra     $a0, $a0, 16               
/* 00304 80B8ED84 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00308 80B8ED88 E6080054 */  swc1    $f8, 0x0054($s0)           ## 00000054
/* 0030C 80B8ED8C 860401BA */  lh      $a0, 0x01BA($s0)           ## 000001BA
/* 00310 80B8ED90 46000506 */  mov.s   $f20, $f0                  
/* 00314 80B8ED94 00042040 */  sll     $a0, $a0,  1               
/* 00318 80B8ED98 00042400 */  sll     $a0, $a0, 16               
/* 0031C 80B8ED9C 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00320 80B8EDA0 00042403 */  sra     $a0, $a0, 16               
/* 00324 80B8EDA4 860A0016 */  lh      $t2, 0x0016($s0)           ## 00000016
/* 00328 80B8EDA8 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 0032C 80B8EDAC 44818000 */  mtc1    $at, $f16                  ## $f16 = 1000.00
/* 00330 80B8EDB0 448A3000 */  mtc1    $t2, $f6                   ## $f6 = 0.00
/* 00334 80B8EDB4 3C0180B9 */  lui     $at, %hi(D_80B91014)       ## $at = 80B90000
/* 00338 80B8EDB8 4610A482 */  mul.s   $f18, $f20, $f16           
/* 0033C 80B8EDBC C4281014 */  lwc1    $f8, %lo(D_80B91014)($at)  
/* 00340 80B8EDC0 468032A0 */  cvt.s.w $f10, $f6                  
/* 00344 80B8EDC4 46080182 */  mul.s   $f6, $f0, $f8              
/* 00348 80B8EDC8 46125100 */  add.s   $f4, $f10, $f18            
/* 0034C 80B8EDCC 46043400 */  add.s   $f16, $f6, $f4             
/* 00350 80B8EDD0 4600828D */  trunc.w.s $f10, $f16                 
/* 00354 80B8EDD4 440C5000 */  mfc1    $t4, $f10                  
/* 00358 80B8EDD8 00000000 */  nop
/* 0035C 80B8EDDC A60C00B6 */  sh      $t4, 0x00B6($s0)           ## 000000B6
/* 00360 80B8EDE0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00364 80B8EDE4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00368 80B8EDE8 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 0036C 80B8EDEC 03E00008 */  jr      $ra                        
/* 00370 80B8EDF0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
