glabel func_80A3E090
/* 009B0 80A3E090 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 009B4 80A3E094 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 009B8 80A3E098 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 009BC 80A3E09C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009C0 80A3E0A0 0C034213 */  jal     Matrix_Push              
/* 009C4 80A3E0A4 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 009C8 80A3E0A8 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 009CC 80A3E0AC 3C064522 */  lui     $a2, 0x4522                ## $a2 = 45220000
/* 009D0 80A3E0B0 34C68000 */  ori     $a2, $a2, 0x8000           ## $a2 = 45228000
/* 009D4 80A3E0B4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 009D8 80A3E0B8 4600A306 */  mov.s   $f12, $f20                 
/* 009DC 80A3E0BC 0C034261 */  jal     Matrix_Translate              
/* 009E0 80A3E0C0 4600A386 */  mov.s   $f14, $f20                 
/* 009E4 80A3E0C4 86040030 */  lh      $a0, 0x0030($s0)           ## 00000030
/* 009E8 80A3E0C8 86050032 */  lh      $a1, 0x0032($s0)           ## 00000032
/* 009EC 80A3E0CC 86060034 */  lh      $a2, 0x0034($s0)           ## 00000034
/* 009F0 80A3E0D0 0C034421 */  jal     Matrix_RotateXYZ              
/* 009F4 80A3E0D4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 009F8 80A3E0D8 E7B4003C */  swc1    $f20, 0x003C($sp)          
/* 009FC 80A3E0DC E7B40038 */  swc1    $f20, 0x0038($sp)          
/* 00A00 80A3E0E0 E7B40034 */  swc1    $f20, 0x0034($sp)          
/* 00A04 80A3E0E4 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFF4
/* 00A08 80A3E0E8 0C0346BD */  jal     Matrix_MultVec3f              
/* 00A0C 80A3E0EC 27A50028 */  addiu   $a1, $sp, 0x0028           ## $a1 = FFFFFFE8
/* 00A10 80A3E0F0 C7A40028 */  lwc1    $f4, 0x0028($sp)           
/* 00A14 80A3E0F4 4600218D */  trunc.w.s $f6, $f4                   
/* 00A18 80A3E0F8 440F3000 */  mfc1    $t7, $f6                   
/* 00A1C 80A3E0FC 00000000 */  nop
/* 00A20 80A3E100 A60F02B6 */  sh      $t7, 0x02B6($s0)           ## 000002B6
/* 00A24 80A3E104 C7A8002C */  lwc1    $f8, 0x002C($sp)           
/* 00A28 80A3E108 4600428D */  trunc.w.s $f10, $f8                  
/* 00A2C 80A3E10C 44195000 */  mfc1    $t9, $f10                  
/* 00A30 80A3E110 00000000 */  nop
/* 00A34 80A3E114 A61902B8 */  sh      $t9, 0x02B8($s0)           ## 000002B8
/* 00A38 80A3E118 C7B00030 */  lwc1    $f16, 0x0030($sp)          
/* 00A3C 80A3E11C 4600848D */  trunc.w.s $f18, $f16                 
/* 00A40 80A3E120 44099000 */  mfc1    $t1, $f18                  
/* 00A44 80A3E124 0C034221 */  jal     Matrix_Pull              
/* 00A48 80A3E128 A60902BA */  sh      $t1, 0x02BA($s0)           ## 000002BA
/* 00A4C 80A3E12C 0C034213 */  jal     Matrix_Push              
/* 00A50 80A3E130 00000000 */  nop
/* 00A54 80A3E134 3C064586 */  lui     $a2, 0x4586                ## $a2 = 45860000
/* 00A58 80A3E138 34C66000 */  ori     $a2, $a2, 0x6000           ## $a2 = 45866000
/* 00A5C 80A3E13C 4600A306 */  mov.s   $f12, $f20                 
/* 00A60 80A3E140 4600A386 */  mov.s   $f14, $f20                 
/* 00A64 80A3E144 0C034261 */  jal     Matrix_Translate              
/* 00A68 80A3E148 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00A6C 80A3E14C 86040030 */  lh      $a0, 0x0030($s0)           ## 00000030
/* 00A70 80A3E150 86050032 */  lh      $a1, 0x0032($s0)           ## 00000032
/* 00A74 80A3E154 86060034 */  lh      $a2, 0x0034($s0)           ## 00000034
/* 00A78 80A3E158 0C034421 */  jal     Matrix_RotateXYZ              
/* 00A7C 80A3E15C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00A80 80A3E160 E7B4003C */  swc1    $f20, 0x003C($sp)          
/* 00A84 80A3E164 E7B40038 */  swc1    $f20, 0x0038($sp)          
/* 00A88 80A3E168 E7B40034 */  swc1    $f20, 0x0034($sp)          
/* 00A8C 80A3E16C 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFF4
/* 00A90 80A3E170 0C0346BD */  jal     Matrix_MultVec3f              
/* 00A94 80A3E174 260502C4 */  addiu   $a1, $s0, 0x02C4           ## $a1 = 000002C4
/* 00A98 80A3E178 0C034221 */  jal     Matrix_Pull              
/* 00A9C 80A3E17C 00000000 */  nop
/* 00AA0 80A3E180 3C06456D */  lui     $a2, 0x456D                ## $a2 = 456D0000
/* 00AA4 80A3E184 34C68000 */  ori     $a2, $a2, 0x8000           ## $a2 = 456D8000
/* 00AA8 80A3E188 4600A306 */  mov.s   $f12, $f20                 
/* 00AAC 80A3E18C 4600A386 */  mov.s   $f14, $f20                 
/* 00AB0 80A3E190 0C034261 */  jal     Matrix_Translate              
/* 00AB4 80A3E194 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00AB8 80A3E198 86040030 */  lh      $a0, 0x0030($s0)           ## 00000030
/* 00ABC 80A3E19C 86050032 */  lh      $a1, 0x0032($s0)           ## 00000032
/* 00AC0 80A3E1A0 86060034 */  lh      $a2, 0x0034($s0)           ## 00000034
/* 00AC4 80A3E1A4 0C034421 */  jal     Matrix_RotateXYZ              
/* 00AC8 80A3E1A8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00ACC 80A3E1AC E7B4003C */  swc1    $f20, 0x003C($sp)          
/* 00AD0 80A3E1B0 E7B40038 */  swc1    $f20, 0x0038($sp)          
/* 00AD4 80A3E1B4 E7B40034 */  swc1    $f20, 0x0034($sp)          
/* 00AD8 80A3E1B8 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFF4
/* 00ADC 80A3E1BC 0C0346BD */  jal     Matrix_MultVec3f              
/* 00AE0 80A3E1C0 26050038 */  addiu   $a1, $s0, 0x0038           ## $a1 = 00000038
/* 00AE4 80A3E1C4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00AE8 80A3E1C8 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 00AEC 80A3E1CC C604003C */  lwc1    $f4, 0x003C($s0)           ## 0000003C
/* 00AF0 80A3E1D0 46062200 */  add.s   $f8, $f4, $f6              
/* 00AF4 80A3E1D4 E608003C */  swc1    $f8, 0x003C($s0)           ## 0000003C
/* 00AF8 80A3E1D8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00AFC 80A3E1DC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00B00 80A3E1E0 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 00B04 80A3E1E4 03E00008 */  jr      $ra                        
/* 00B08 80A3E1E8 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000


