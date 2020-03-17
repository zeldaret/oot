glabel func_80B05AF8
/* 01268 80B05AF8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0126C 80B05AFC AFB0001C */  sw      $s0, 0x001C($sp)           
/* 01270 80B05B00 87B00042 */  lh      $s0, 0x0042($sp)           
/* 01274 80B05B04 3C0180B0 */  lui     $at, %hi(D_80B0722C)       ## $at = 80B00000
/* 01278 80B05B08 C428722C */  lwc1    $f8, %lo(D_80B0722C)($at)  
/* 0127C 80B05B0C 44902000 */  mtc1    $s0, $f4                   ## $f4 = 0.00
/* 01280 80B05B10 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 01284 80B05B14 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01288 80B05B18 468021A0 */  cvt.s.w $f6, $f4                   
/* 0128C 80B05B1C AFB10020 */  sw      $s1, 0x0020($sp)           
/* 01290 80B05B20 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01294 80B05B24 AFA60038 */  sw      $a2, 0x0038($sp)           
/* 01298 80B05B28 AFA7003C */  sw      $a3, 0x003C($sp)           
/* 0129C 80B05B2C 908E03DD */  lbu     $t6, 0x03DD($a0)           ## 000003DD
/* 012A0 80B05B30 46083282 */  mul.s   $f10, $f6, $f8             
/* 012A4 80B05B34 00052C00 */  sll     $a1, $a1, 16               
/* 012A8 80B05B38 A7AE002E */  sh      $t6, 0x002E($sp)           
/* 012AC 80B05B3C 908F03DE */  lbu     $t7, 0x03DE($a0)           ## 000003DE
/* 012B0 80B05B40 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 012B4 80B05B44 00052C03 */  sra     $a1, $a1, 16               
/* 012B8 80B05B48 A7AF002C */  sh      $t7, 0x002C($sp)           
/* 012BC 80B05B4C 4600540D */  trunc.w.s $f16, $f10                 
/* 012C0 80B05B50 909803DF */  lbu     $t8, 0x03DF($a0)           ## 000003DF
/* 012C4 80B05B54 27A4002E */  addiu   $a0, $sp, 0x002E           ## $a0 = FFFFFFFE
/* 012C8 80B05B58 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 012CC 80B05B5C 44088000 */  mfc1    $t0, $f16                  
/* 012D0 80B05B60 A7B8002A */  sh      $t8, 0x002A($sp)           
/* 012D4 80B05B64 00084C00 */  sll     $t1, $t0, 16               
/* 012D8 80B05B68 00095403 */  sra     $t2, $t1, 16               
/* 012DC 80B05B6C 016A001A */  div     $zero, $t3, $t2            
/* 012E0 80B05B70 00008012 */  mflo    $s0                        
/* 012E4 80B05B74 00108400 */  sll     $s0, $s0, 16               
/* 012E8 80B05B78 00108403 */  sra     $s0, $s0, 16               
/* 012EC 80B05B7C 15400002 */  bne     $t2, $zero, .L80B05B88     
/* 012F0 80B05B80 00000000 */  nop
/* 012F4 80B05B84 0007000D */  break 7
.L80B05B88:
/* 012F8 80B05B88 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 012FC 80B05B8C 15410004 */  bne     $t2, $at, .L80B05BA0       
/* 01300 80B05B90 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01304 80B05B94 15610002 */  bne     $t3, $at, .L80B05BA0       
/* 01308 80B05B98 00000000 */  nop
/* 0130C 80B05B9C 0006000D */  break 6
.L80B05BA0:
/* 01310 80B05BA0 5E000003 */  bgtzl   $s0, .L80B05BB0            
/* 01314 80B05BA4 00103C00 */  sll     $a3, $s0, 16               
/* 01318 80B05BA8 24100001 */  addiu   $s0, $zero, 0x0001         ## $s0 = 00000001
/* 0131C 80B05BAC 00103C00 */  sll     $a3, $s0, 16               
.L80B05BB0:
/* 01320 80B05BB0 00073C03 */  sra     $a3, $a3, 16               
/* 01324 80B05BB4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01328 80B05BB8 AFB00010 */  sw      $s0, 0x0010($sp)           
/* 0132C 80B05BBC 00103C00 */  sll     $a3, $s0, 16               
/* 01330 80B05BC0 00073C03 */  sra     $a3, $a3, 16               
/* 01334 80B05BC4 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFFC
/* 01338 80B05BC8 87A5003A */  lh      $a1, 0x003A($sp)           
/* 0133C 80B05BCC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01340 80B05BD0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01344 80B05BD4 AFB00010 */  sw      $s0, 0x0010($sp)           
/* 01348 80B05BD8 00103C00 */  sll     $a3, $s0, 16               
/* 0134C 80B05BDC 00073C03 */  sra     $a3, $a3, 16               
/* 01350 80B05BE0 27A4002A */  addiu   $a0, $sp, 0x002A           ## $a0 = FFFFFFFA
/* 01354 80B05BE4 87A5003E */  lh      $a1, 0x003E($sp)           
/* 01358 80B05BE8 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0135C 80B05BEC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01360 80B05BF0 AFB00010 */  sw      $s0, 0x0010($sp)           
/* 01364 80B05BF4 87AC002E */  lh      $t4, 0x002E($sp)           
/* 01368 80B05BF8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 0136C 80B05BFC A22C03DD */  sb      $t4, 0x03DD($s1)           ## 000003DD
/* 01370 80B05C00 87AD002C */  lh      $t5, 0x002C($sp)           
/* 01374 80B05C04 A22D03DE */  sb      $t5, 0x03DE($s1)           ## 000003DE
/* 01378 80B05C08 87AE002A */  lh      $t6, 0x002A($sp)           
/* 0137C 80B05C0C A22E03DF */  sb      $t6, 0x03DF($s1)           ## 000003DF
/* 01380 80B05C10 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01384 80B05C14 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 01388 80B05C18 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 0138C 80B05C1C 03E00008 */  jr      $ra                        
/* 01390 80B05C20 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000


