glabel func_80AB3260
/* 024D0 80AB3260 3C0E8016 */  lui     $t6, %hi(gGameInfo)
/* 024D4 80AB3264 8DCEFA90 */  lw      $t6, %lo(gGameInfo)($t6)
/* 024D8 80AB3268 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 024DC 80AB326C 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 024E0 80AB3270 85CF1476 */  lh      $t7, 0x1476($t6)           ## 80161476
/* 024E4 80AB3274 C4840280 */  lwc1    $f4, 0x0280($a0)           ## 00000280
/* 024E8 80AB3278 24180016 */  addiu   $t8, $zero, 0x0016         ## $t8 = 00000016
/* 024EC 80AB327C 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 024F0 80AB3280 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 024F4 80AB3284 46803220 */  cvt.s.w $f8, $f6                   
/* 024F8 80AB3288 460A4400 */  add.s   $f16, $f8, $f10            
/* 024FC 80AB328C 4604803E */  c.le.s  $f16, $f4                  
/* 02500 80AB3290 00000000 */  nop
/* 02504 80AB3294 45000003 */  bc1f    .L80AB32A4                 
/* 02508 80AB3298 00000000 */  nop
/* 0250C 80AB329C AC980278 */  sw      $t8, 0x0278($a0)           ## 00000278
/* 02510 80AB32A0 AC99027C */  sw      $t9, 0x027C($a0)           ## 0000027C
.L80AB32A4:
/* 02514 80AB32A4 03E00008 */  jr      $ra                        
/* 02518 80AB32A8 00000000 */  nop
