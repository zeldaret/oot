.late_rodata
glabel D_80AFC868
    .float 3.14159274101

glabel D_80AFC86C
 .word 0xC5BD5000

.text
glabel func_80AFBDC8
/* 00248 80AFBDC8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0024C 80AFBDCC 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 00250 80AFBDD0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00254 80AFBDD4 01C57021 */  addu    $t6, $t6, $a1              
/* 00258 80AFBDD8 8DCE1DE4 */  lw      $t6, 0x1DE4($t6)           ## 00011DE4
/* 0025C 80AFBDDC 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 00260 80AFBDE0 31CF001F */  andi    $t7, $t6, 0x001F           ## $t7 = 00000000
/* 00264 80AFBDE4 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 00268 80AFBDE8 05E10004 */  bgez    $t7, .L80AFBDFC            
/* 0026C 80AFBDEC 468021A0 */  cvt.s.w $f6, $f4                   
/* 00270 80AFBDF0 44814000 */  mtc1    $at, $f8                   ## $f8 = 4294967296.00
/* 00274 80AFBDF4 00000000 */  nop
/* 00278 80AFBDF8 46083180 */  add.s   $f6, $f6, $f8              
.L80AFBDFC:
/* 0027C 80AFBDFC 3C013D00 */  lui     $at, 0x3D00                ## $at = 3D000000
/* 00280 80AFBE00 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.03
/* 00284 80AFBE04 3C0180B0 */  lui     $at, %hi(D_80AFC868)       ## $at = 80B00000
/* 00288 80AFBE08 C432C868 */  lwc1    $f18, %lo(D_80AFC868)($at) 
/* 0028C 80AFBE0C 460A3402 */  mul.s   $f16, $f6, $f10            
/* 00290 80AFBE10 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00294 80AFBE14 46128002 */  mul.s   $f0, $f16, $f18            
/* 00298 80AFBE18 0C0400A4 */  jal     sinf
              
/* 0029C 80AFBE1C 46000300 */  add.s   $f12, $f0, $f0             
/* 002A0 80AFBE20 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 002A4 80AFBE24 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 002A8 80AFBE28 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 002AC 80AFBE2C 44812000 */  mtc1    $at, $f4                   ## $f4 = 4.00
/* 002B0 80AFBE30 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 002B4 80AFBE34 3C0180B0 */  lui     $at, %hi(D_80AFC86C)       ## $at = 80B00000
/* 002B8 80AFBE38 46040082 */  mul.s   $f2, $f0, $f4              
/* 002BC 80AFBE3C C4880174 */  lwc1    $f8, 0x0174($a0)           ## 00000174
/* 002C0 80AFBE40 460C4182 */  mul.s   $f6, $f8, $f12             
/* 002C4 80AFBE44 E4820178 */  swc1    $f2, 0x0178($a0)           ## 00000178
/* 002C8 80AFBE48 C42AC86C */  lwc1    $f10, %lo(D_80AFC86C)($at) 
/* 002CC 80AFBE4C 460C1482 */  mul.s   $f18, $f2, $f12            
/* 002D0 80AFBE50 3C01420C */  lui     $at, 0x420C                ## $at = 420C0000
/* 002D4 80AFBE54 460A3400 */  add.s   $f16, $f6, $f10            
/* 002D8 80AFBE58 C48A0180 */  lwc1    $f10, 0x0180($a0)          ## 00000180
/* 002DC 80AFBE5C C486016C */  lwc1    $f6, 0x016C($a0)           ## 0000016C
/* 002E0 80AFBE60 44814000 */  mtc1    $at, $f8                   ## $f8 = 35.00
/* 002E4 80AFBE64 46128101 */  sub.s   $f4, $f16, $f18            
/* 002E8 80AFBE68 E4880174 */  swc1    $f8, 0x0174($a0)           ## 00000174
/* 002EC 80AFBE6C 460A3400 */  add.s   $f16, $f6, $f10            
/* 002F0 80AFBE70 E4840170 */  swc1    $f4, 0x0170($a0)           ## 00000170
/* 002F4 80AFBE74 46028480 */  add.s   $f18, $f16, $f2            
/* 002F8 80AFBE78 E4920028 */  swc1    $f18, 0x0028($a0)          ## 00000028
/* 002FC 80AFBE7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00300 80AFBE80 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00304 80AFBE84 03E00008 */  jr      $ra                        
/* 00308 80AFBE88 00000000 */  nop
