glabel func_80A4CED8
/* 01238 80A4CED8 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 0123C 80A4CEDC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01240 80A4CEE0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01244 80A4CEE4 AFA5009C */  sw      $a1, 0x009C($sp)           
/* 01248 80A4CEE8 908201D3 */  lbu     $v0, 0x01D3($a0)           ## 000001D3
/* 0124C 80A4CEEC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01250 80A4CEF0 26050100 */  addiu   $a1, $s0, 0x0100           ## $a1 = 00000100
/* 01254 80A4CEF4 30420008 */  andi    $v0, $v0, 0x0008           ## $v0 = 00000000
/* 01258 80A4CEF8 10400003 */  beq     $v0, $zero, .L80A4CF08     
/* 0125C 80A4CEFC 00000000 */  nop
/* 01260 80A4CF00 10000009 */  beq     $zero, $zero, .L80A4CF28   
/* 01264 80A4CF04 C48C01BC */  lwc1    $f12, 0x01BC($a0)          ## 000001BC
.L80A4CF08:
/* 01268 80A4CF08 0C032D9E */  jal     func_800CB678              
/* 0126C 80A4CF0C 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 01270 80A4CF10 3C0180A5 */  lui     $at, %hi(D_80A4E080)       ## $at = 80A50000
/* 01274 80A4CF14 C424E080 */  lwc1    $f4, %lo(D_80A4E080)($at)  
/* 01278 80A4CF18 920201D3 */  lbu     $v0, 0x01D3($s0)           ## 000001D3
/* 0127C 80A4CF1C 46040302 */  mul.s   $f12, $f0, $f4             
/* 01280 80A4CF20 30420008 */  andi    $v0, $v0, 0x0008           ## $v0 = 00000000
/* 01284 80A4CF24 E60C01BC */  swc1    $f12, 0x01BC($s0)          ## 000001BC
.L80A4CF28:
/* 01288 80A4CF28 C60601C0 */  lwc1    $f6, 0x01C0($s0)           ## 000001C0
/* 0128C 80A4CF2C 3C0480A5 */  lui     $a0, %hi(D_80A4DEE4)       ## $a0 = 80A50000
/* 01290 80A4CF30 2484DEE4 */  addiu   $a0, $a0, %lo(D_80A4DEE4)  ## $a0 = 80A4DEE4
/* 01294 80A4CF34 46066302 */  mul.s   $f12, $f12, $f6            
/* 01298 80A4CF38 1040000D */  beq     $v0, $zero, .L80A4CF70     
/* 0129C 80A4CF3C 2605005C */  addiu   $a1, $s0, 0x005C           ## $a1 = 0000005C
/* 012A0 80A4CF40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012A4 80A4CF44 8FA5009C */  lw      $a1, 0x009C($sp)           
/* 012A8 80A4CF48 27A60028 */  addiu   $a2, $sp, 0x0028           ## $a2 = FFFFFF90
/* 012AC 80A4CF4C 0C292FCA */  jal     func_80A4BF28              
/* 012B0 80A4CF50 E7AC008C */  swc1    $f12, 0x008C($sp)          
/* 012B4 80A4CF54 3C0480A5 */  lui     $a0, %hi(D_80A4DEE4)       ## $a0 = 80A50000
/* 012B8 80A4CF58 2484DEE4 */  addiu   $a0, $a0, %lo(D_80A4DEE4)  ## $a0 = 80A4DEE4
/* 012BC 80A4CF5C 2605005C */  addiu   $a1, $s0, 0x005C           ## $a1 = 0000005C
/* 012C0 80A4CF60 0C032DED */  jal     func_800CB7B4              
/* 012C4 80A4CF64 27A60080 */  addiu   $a2, $sp, 0x0080           ## $a2 = FFFFFFE8
/* 012C8 80A4CF68 10000005 */  beq     $zero, $zero, .L80A4CF80   
/* 012CC 80A4CF6C C7AC008C */  lwc1    $f12, 0x008C($sp)          
.L80A4CF70:
/* 012D0 80A4CF70 27A60080 */  addiu   $a2, $sp, 0x0080           ## $a2 = FFFFFFE8
/* 012D4 80A4CF74 0C032DED */  jal     func_800CB7B4              
/* 012D8 80A4CF78 E7AC008C */  swc1    $f12, 0x008C($sp)          
/* 012DC 80A4CF7C C7AC008C */  lwc1    $f12, 0x008C($sp)          
.L80A4CF80:
/* 012E0 80A4CF80 27A40074 */  addiu   $a0, $sp, 0x0074           ## $a0 = FFFFFFDC
/* 012E4 80A4CF84 27A50080 */  addiu   $a1, $sp, 0x0080           ## $a1 = FFFFFFE8
/* 012E8 80A4CF88 0C292F63 */  jal     func_80A4BD8C              
/* 012EC 80A4CF8C E7AC008C */  swc1    $f12, 0x008C($sp)          
/* 012F0 80A4CF90 27A40074 */  addiu   $a0, $sp, 0x0074           ## $a0 = FFFFFFDC
/* 012F4 80A4CF94 10400008 */  beq     $v0, $zero, .L80A4CFB8     
/* 012F8 80A4CF98 C7AC008C */  lwc1    $f12, 0x008C($sp)          
/* 012FC 80A4CF9C 8C8F0000 */  lw      $t7, 0x0000($a0)           ## FFFFFFDC
/* 01300 80A4CFA0 AE0F01B0 */  sw      $t7, 0x01B0($s0)           ## 000001B0
/* 01304 80A4CFA4 8C8E0004 */  lw      $t6, 0x0004($a0)           ## FFFFFFE0
/* 01308 80A4CFA8 AE0E01B4 */  sw      $t6, 0x01B4($s0)           ## 000001B4
/* 0130C 80A4CFAC 8C8F0008 */  lw      $t7, 0x0008($a0)           ## FFFFFFE4
/* 01310 80A4CFB0 10000007 */  beq     $zero, $zero, .L80A4CFD0   
/* 01314 80A4CFB4 AE0F01B8 */  sw      $t7, 0x01B8($s0)           ## 000001B8
.L80A4CFB8:
/* 01318 80A4CFB8 8E1901B0 */  lw      $t9, 0x01B0($s0)           ## 000001B0
/* 0131C 80A4CFBC AC990000 */  sw      $t9, 0x0000($a0)           ## FFFFFFDC
/* 01320 80A4CFC0 8E1801B4 */  lw      $t8, 0x01B4($s0)           ## 000001B4
/* 01324 80A4CFC4 AC980004 */  sw      $t8, 0x0004($a0)           ## FFFFFFE0
/* 01328 80A4CFC8 8E1901B8 */  lw      $t9, 0x01B8($s0)           ## 000001B8
/* 0132C 80A4CFCC AC990008 */  sw      $t9, 0x0008($a0)           ## FFFFFFE4
.L80A4CFD0:
/* 01330 80A4CFD0 00802825 */  or      $a1, $a0, $zero            ## $a1 = FFFFFFDC
/* 01334 80A4CFD4 0C0348FF */  jal     func_800D23FC              
/* 01338 80A4CFD8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0133C 80A4CFDC 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 01340 80A4CFE0 3C0180A5 */  lui     $at, %hi(D_80A4E084)       ## $at = 80A50000
/* 01344 80A4CFE4 C430E084 */  lwc1    $f16, %lo(D_80A4E084)($at) 
/* 01348 80A4CFE8 44884000 */  mtc1    $t0, $f8                   ## $f8 = 0.00
/* 0134C 80A4CFEC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01350 80A4CFF0 468042A0 */  cvt.s.w $f10, $f8                  
/* 01354 80A4CFF4 46105302 */  mul.s   $f12, $f10, $f16           
/* 01358 80A4CFF8 0C034348 */  jal     Matrix_RotateY              
/* 0135C 80A4CFFC 00000000 */  nop
/* 01360 80A4D000 860900B4 */  lh      $t1, 0x00B4($s0)           ## 000000B4
/* 01364 80A4D004 3C0180A5 */  lui     $at, %hi(D_80A4E088)       ## $at = 80A50000
/* 01368 80A4D008 C426E088 */  lwc1    $f6, %lo(D_80A4E088)($at)  
/* 0136C 80A4D00C 44899000 */  mtc1    $t1, $f18                  ## $f18 = 0.00
/* 01370 80A4D010 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01374 80A4D014 46809120 */  cvt.s.w $f4, $f18                  
/* 01378 80A4D018 46062302 */  mul.s   $f12, $f4, $f6             
/* 0137C 80A4D01C 0C0342DC */  jal     Matrix_RotateX              
/* 01380 80A4D020 00000000 */  nop
/* 01384 80A4D024 860A00B8 */  lh      $t2, 0x00B8($s0)           ## 000000B8
/* 01388 80A4D028 3C0180A5 */  lui     $at, %hi(D_80A4E08C)       ## $at = 80A50000
/* 0138C 80A4D02C C430E08C */  lwc1    $f16, %lo(D_80A4E08C)($at) 
/* 01390 80A4D030 448A4000 */  mtc1    $t2, $f8                   ## $f8 = 0.00
/* 01394 80A4D034 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01398 80A4D038 468042A0 */  cvt.s.w $f10, $f8                  
/* 0139C 80A4D03C 46105302 */  mul.s   $f12, $f10, $f16           
/* 013A0 80A4D040 0C0343B5 */  jal     Matrix_RotateZ              
/* 013A4 80A4D044 00000000 */  nop
/* 013A8 80A4D048 0C034236 */  jal     Matrix_Get              
/* 013AC 80A4D04C 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFF9C
/* 013B0 80A4D050 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFF9C
/* 013B4 80A4D054 260500B4 */  addiu   $a1, $s0, 0x00B4           ## $a1 = 000000B4
/* 013B8 80A4D058 0C034833 */  jal     func_800D20CC              
/* 013BC 80A4D05C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 013C0 80A4D060 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 013C4 80A4D064 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 013C8 80A4D068 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000
/* 013CC 80A4D06C 03E00008 */  jr      $ra                        
/* 013D0 80A4D070 00000000 */  nop


