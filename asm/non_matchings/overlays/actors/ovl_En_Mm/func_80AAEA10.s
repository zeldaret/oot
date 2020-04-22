.late_rodata
glabel D_80AAEC90
 .word 0x4020D97C, 0x00000000, 0x00000000, 0x00000000

.text
glabel func_80AAEA10
/* 012A0 80AAEA10 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 012A4 80AAEA14 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 012A8 80AAEA18 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 012AC 80AAEA1C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 012B0 80AAEA20 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 012B4 80AAEA24 14A10021 */  bne     $a1, $at, .L80AAEAAC       
/* 012B8 80AAEA28 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 012BC 80AAEA2C 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 012C0 80AAEA30 3C0480AB */  lui     $a0, %hi(D_80AAEBF4)       ## $a0 = 80AB0000
/* 012C4 80AAEA34 2484EBF4 */  addiu   $a0, $a0, %lo(D_80AAEBF4)  ## $a0 = 80AAEBF4
/* 012C8 80AAEA38 0C0346BD */  jal     Matrix_MultVec3f              
/* 012CC 80AAEA3C 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
/* 012D0 80AAEA40 3C014382 */  lui     $at, 0x4382                ## $at = 43820000
/* 012D4 80AAEA44 44816000 */  mtc1    $at, $f12                  ## $f12 = 260.00
/* 012D8 80AAEA48 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 012DC 80AAEA4C 44817000 */  mtc1    $at, $f14                  ## $f14 = 20.00
/* 012E0 80AAEA50 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 012E4 80AAEA54 0C034261 */  jal     Matrix_Translate              
/* 012E8 80AAEA58 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 012EC 80AAEA5C 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 012F0 80AAEA60 0C034348 */  jal     Matrix_RotateY              
/* 012F4 80AAEA64 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 012F8 80AAEA68 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 012FC 80AAEA6C 0C0342DC */  jal     Matrix_RotateX              
/* 01300 80AAEA70 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01304 80AAEA74 3C0180AB */  lui     $at, %hi(D_80AAEC90)       ## $at = 80AB0000
/* 01308 80AAEA78 C42CEC90 */  lwc1    $f12, %lo(D_80AAEC90)($at) 
/* 0130C 80AAEA7C 0C0343B5 */  jal     Matrix_RotateZ              
/* 01310 80AAEA80 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01314 80AAEA84 3C01C382 */  lui     $at, 0xC382                ## $at = C3820000
/* 01318 80AAEA88 44816000 */  mtc1    $at, $f12                  ## $f12 = -260.00
/* 0131C 80AAEA8C 3C014268 */  lui     $at, 0x4268                ## $at = 42680000
/* 01320 80AAEA90 44817000 */  mtc1    $at, $f14                  ## $f14 = 58.00
/* 01324 80AAEA94 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 01328 80AAEA98 0C034261 */  jal     Matrix_Translate              
/* 0132C 80AAEA9C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01330 80AAEAA0 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01334 80AAEAA4 0C034236 */  jal     Matrix_Get              
/* 01338 80AAEAA8 24840208 */  addiu   $a0, $a0, 0x0208           ## $a0 = 00000208
.L80AAEAAC:
/* 0133C 80AAEAAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01340 80AAEAB0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01344 80AAEAB4 03E00008 */  jr      $ra                        
/* 01348 80AAEAB8 00000000 */  nop
/* 0134C 80AAEABC 00000000 */  nop
