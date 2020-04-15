.late_rodata
glabel D_80AAC584
 .word 0x4622F983

.text
glabel func_80AAB370
/* 01120 80AAB370 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01124 80AAB374 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01128 80AAB378 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0112C 80AAB37C 8486001C */  lh      $a2, 0x001C($a0)           ## 0000001C
/* 01130 80AAB380 3401FF00 */  ori     $at, $zero, 0xFF00         ## $at = 0000FF00
/* 01134 80AAB384 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01138 80AAB388 30C6FF00 */  andi    $a2, $a2, 0xFF00           ## $a2 = 00000000
/* 0113C 80AAB38C 14C10003 */  bne     $a2, $at, .L80AAB39C       
/* 01140 80AAB390 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 01144 80AAB394 1000004C */  beq     $zero, $zero, .L80AAB4C8   
/* 01148 80AAB398 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AAB39C:
/* 0114C 80AAB39C 01C57021 */  addu    $t6, $t6, $a1              
/* 01150 80AAB3A0 8DCE1E08 */  lw      $t6, 0x1E08($t6)           ## 00011E08
/* 01154 80AAB3A4 00067A03 */  sra     $t7, $a2,  8               
/* 01158 80AAB3A8 000FC0C0 */  sll     $t8, $t7,  3               
/* 0115C 80AAB3AC 01D82021 */  addu    $a0, $t6, $t8              
/* 01160 80AAB3B0 8C830004 */  lw      $v1, 0x0004($a0)           ## 00000004
/* 01164 80AAB3B4 3C0A8016 */  lui     $t2, 0x8016                ## $t2 = 80160000
/* 01168 80AAB3B8 860C0212 */  lh      $t4, 0x0212($s0)           ## 00000212
/* 0116C 80AAB3BC 0003C900 */  sll     $t9, $v1,  4               
/* 01170 80AAB3C0 00194702 */  srl     $t0, $t9, 28               
/* 01174 80AAB3C4 00084880 */  sll     $t1, $t0,  2               
/* 01178 80AAB3C8 01495021 */  addu    $t2, $t2, $t1              
/* 0117C 80AAB3CC 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 01180 80AAB3D0 8D4A6FA8 */  lw      $t2, 0x6FA8($t2)           ## 80166FA8
/* 01184 80AAB3D4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 01188 80AAB3D8 00615824 */  and     $t3, $v1, $at              
/* 0118C 80AAB3DC 000C6880 */  sll     $t5, $t4,  2               
/* 01190 80AAB3E0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01194 80AAB3E4 01AC6823 */  subu    $t5, $t5, $t4              
/* 01198 80AAB3E8 014B1021 */  addu    $v0, $t2, $t3              
/* 0119C 80AAB3EC 00411021 */  addu    $v0, $v0, $at              
/* 011A0 80AAB3F0 000D6840 */  sll     $t5, $t5,  1               
/* 011A4 80AAB3F4 004D1021 */  addu    $v0, $v0, $t5              
/* 011A8 80AAB3F8 844F0000 */  lh      $t7, 0x0000($v0)           ## 00000000
/* 011AC 80AAB3FC 844E0004 */  lh      $t6, 0x0004($v0)           ## 00000004
/* 011B0 80AAB400 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 011B4 80AAB404 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 011B8 80AAB408 448E5000 */  mtc1    $t6, $f10                  ## $f10 = 0.00
/* 011BC 80AAB40C C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 011C0 80AAB410 468021A0 */  cvt.s.w $f6, $f4                   
/* 011C4 80AAB414 AFA40034 */  sw      $a0, 0x0034($sp)           
/* 011C8 80AAB418 46805420 */  cvt.s.w $f16, $f10                 
/* 011CC 80AAB41C 46083301 */  sub.s   $f12, $f6, $f8             
/* 011D0 80AAB420 46128381 */  sub.s   $f14, $f16, $f18           
/* 011D4 80AAB424 E7AC002C */  swc1    $f12, 0x002C($sp)          
/* 011D8 80AAB428 0C03F494 */  jal     Math_atan2f              
/* 011DC 80AAB42C E7AE0028 */  swc1    $f14, 0x0028($sp)          
/* 011E0 80AAB430 3C0180AB */  lui     $at, %hi(D_80AAC584)       ## $at = 80AB0000
/* 011E4 80AAB434 C424C584 */  lwc1    $f4, %lo(D_80AAC584)($at)  
/* 011E8 80AAB438 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 011EC 80AAB43C AFB90010 */  sw      $t9, 0x0010($sp)           
/* 011F0 80AAB440 46040182 */  mul.s   $f6, $f0, $f4              
/* 011F4 80AAB444 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 011F8 80AAB448 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 011FC 80AAB44C 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 01200 80AAB450 4600320D */  trunc.w.s $f8, $f6                   
/* 01204 80AAB454 44054000 */  mfc1    $a1, $f8                   
/* 01208 80AAB458 00000000 */  nop
/* 0120C 80AAB45C 00052C00 */  sll     $a1, $a1, 16               
/* 01210 80AAB460 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01214 80AAB464 00052C03 */  sra     $a1, $a1, 16               
/* 01218 80AAB468 C7AC002C */  lwc1    $f12, 0x002C($sp)          
/* 0121C 80AAB46C C7AE0028 */  lwc1    $f14, 0x0028($sp)          
/* 01220 80AAB470 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01224 80AAB474 460C6282 */  mul.s   $f10, $f12, $f12           
/* 01228 80AAB478 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 0122C 80AAB47C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 01230 80AAB480 460E7402 */  mul.s   $f16, $f14, $f14           
/* 01234 80AAB484 46105480 */  add.s   $f18, $f10, $f16           
/* 01238 80AAB488 4604903C */  c.lt.s  $f18, $f4                  
/* 0123C 80AAB48C 00000000 */  nop
/* 01240 80AAB490 4500000D */  bc1f    .L80AAB4C8                 
/* 01244 80AAB494 00000000 */  nop
/* 01248 80AAB498 86080212 */  lh      $t0, 0x0212($s0)           ## 00000212
/* 0124C 80AAB49C 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 01250 80AAB4A0 A6090212 */  sh      $t1, 0x0212($s0)           ## 00000212
/* 01254 80AAB4A4 8FAB0034 */  lw      $t3, 0x0034($sp)           
/* 01258 80AAB4A8 860A0212 */  lh      $t2, 0x0212($s0)           ## 00000212
/* 0125C 80AAB4AC 916C0000 */  lbu     $t4, 0x0000($t3)           ## 00000000
/* 01260 80AAB4B0 014C082A */  slt     $at, $t2, $t4              
/* 01264 80AAB4B4 14200002 */  bne     $at, $zero, .L80AAB4C0     
/* 01268 80AAB4B8 00000000 */  nop
/* 0126C 80AAB4BC A6000212 */  sh      $zero, 0x0212($s0)         ## 00000212
.L80AAB4C0:
/* 01270 80AAB4C0 10000001 */  beq     $zero, $zero, .L80AAB4C8   
/* 01274 80AAB4C4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AAB4C8:
/* 01278 80AAB4C8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0127C 80AAB4CC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01280 80AAB4D0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01284 80AAB4D4 03E00008 */  jr      $ra                        
/* 01288 80AAB4D8 00000000 */  nop
