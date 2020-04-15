.late_rodata
glabel D_80A4B934
 .word 0x38000100
glabel D_80A4B938
 .word 0x4622F983
glabel D_80A4B93C
 .word 0x4622F983

.text
glabel func_80A4A964
/* 01AA4 80A4A964 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01AA8 80A4A968 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01AAC 80A4A96C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01AB0 80A4A970 8C820078 */  lw      $v0, 0x0078($a0)           ## 00000078
/* 01AB4 80A4A974 5040003C */  beql    $v0, $zero, .L80A4AA68     
/* 01AB8 80A4A978 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01ABC 80A4A97C 844F0008 */  lh      $t7, 0x0008($v0)           ## 00000008
/* 01AC0 80A4A980 3C0180A5 */  lui     $at, %hi(D_80A4B934)       ## $at = 80A50000
/* 01AC4 80A4A984 C422B934 */  lwc1    $f2, %lo(D_80A4B934)($at)  
/* 01AC8 80A4A988 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 01ACC 80A4A98C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01AD0 80A4A990 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 01AD4 80A4A994 468021A0 */  cvt.s.w $f6, $f4                   
/* 01AD8 80A4A998 46023202 */  mul.s   $f8, $f6, $f2              
/* 01ADC 80A4A99C E7A8001C */  swc1    $f8, 0x001C($sp)           
/* 01AE0 80A4A9A0 8458000A */  lh      $t8, 0x000A($v0)           ## 0000000A
/* 01AE4 80A4A9A4 8459000C */  lh      $t9, 0x000C($v0)           ## 0000000C
/* 01AE8 80A4A9A8 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 01AEC 80A4A9AC 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 01AF0 80A4A9B0 468054A0 */  cvt.s.w $f18, $f10                 
/* 01AF4 80A4A9B4 468021A0 */  cvt.s.w $f6, $f4                   
/* 01AF8 80A4A9B8 46029402 */  mul.s   $f16, $f18, $f2            
/* 01AFC 80A4A9BC 00000000 */  nop
/* 01B00 80A4A9C0 46023002 */  mul.s   $f0, $f6, $f2              
/* 01B04 80A4A9C4 E7B00018 */  swc1    $f16, 0x0018($sp)          
/* 01B08 80A4A9C8 46000207 */  neg.s   $f8, $f0                   
/* 01B0C 80A4A9CC 46104302 */  mul.s   $f12, $f8, $f16            
/* 01B10 80A4A9D0 0C03F494 */  jal     Math_atan2f              
/* 01B14 80A4A9D4 00000000 */  nop
/* 01B18 80A4A9D8 3C0180A5 */  lui     $at, %hi(D_80A4B938)       ## $at = 80A50000
/* 01B1C 80A4A9DC C432B938 */  lwc1    $f18, %lo(D_80A4B938)($at) 
/* 01B20 80A4A9E0 46000287 */  neg.s   $f10, $f0                  
/* 01B24 80A4A9E4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01B28 80A4A9E8 46125102 */  mul.s   $f4, $f10, $f18            
/* 01B2C 80A4A9EC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01B30 80A4A9F0 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 01B34 80A4A9F4 248402B4 */  addiu   $a0, $a0, 0x02B4           ## $a0 = 000002B4
/* 01B38 80A4A9F8 4600218D */  trunc.w.s $f6, $f4                   
/* 01B3C 80A4A9FC 44053000 */  mfc1    $a1, $f6                   
/* 01B40 80A4AA00 00000000 */  nop
/* 01B44 80A4AA04 00052C00 */  sll     $a1, $a1, 16               
/* 01B48 80A4AA08 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 01B4C 80A4AA0C 00052C03 */  sra     $a1, $a1, 16               
/* 01B50 80A4AA10 C7A8001C */  lwc1    $f8, 0x001C($sp)           
/* 01B54 80A4AA14 C7B20018 */  lwc1    $f18, 0x0018($sp)          
/* 01B58 80A4AA18 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01B5C 80A4AA1C 46004287 */  neg.s   $f10, $f8                  
/* 01B60 80A4AA20 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 01B64 80A4AA24 46125302 */  mul.s   $f12, $f10, $f18           
/* 01B68 80A4AA28 0C03F494 */  jal     Math_atan2f              
/* 01B6C 80A4AA2C 00000000 */  nop
/* 01B70 80A4AA30 3C0180A5 */  lui     $at, %hi(D_80A4B93C)       ## $at = 80A50000
/* 01B74 80A4AA34 C424B93C */  lwc1    $f4, %lo(D_80A4B93C)($at)  
/* 01B78 80A4AA38 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01B7C 80A4AA3C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01B80 80A4AA40 46040182 */  mul.s   $f6, $f0, $f4              
/* 01B84 80A4AA44 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 01B88 80A4AA48 248402B6 */  addiu   $a0, $a0, 0x02B6           ## $a0 = 000002B6
/* 01B8C 80A4AA4C 4600320D */  trunc.w.s $f8, $f6                   
/* 01B90 80A4AA50 44054000 */  mfc1    $a1, $f8                   
/* 01B94 80A4AA54 00000000 */  nop
/* 01B98 80A4AA58 00052C00 */  sll     $a1, $a1, 16               
/* 01B9C 80A4AA5C 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 01BA0 80A4AA60 00052C03 */  sra     $a1, $a1, 16               
/* 01BA4 80A4AA64 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A4AA68:
/* 01BA8 80A4AA68 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01BAC 80A4AA6C 03E00008 */  jr      $ra                        
/* 01BB0 80A4AA70 00000000 */  nop
