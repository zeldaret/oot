glabel func_80B278A0
/* 011F0 80B278A0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 011F4 80B278A4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 011F8 80B278A8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 011FC 80B278AC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01200 80B278B0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01204 80B278B4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01208 80B278B8 8FA20020 */  lw      $v0, 0x0020($sp)           
/* 0120C 80B278BC 3C0180B3 */  lui     $at, %hi(D_80B28A6C)       ## $at = 80B30000
/* 01210 80B278C0 C4248A6C */  lwc1    $f4, %lo(D_80B28A6C)($at)  
/* 01214 80B278C4 8C45000C */  lw      $a1, 0x000C($v0)           ## 0000000C
/* 01218 80B278C8 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 0121C 80B278CC 3C074170 */  lui     $a3, 0x4170                ## $a3 = 41700000
/* 01220 80B278D0 24440028 */  addiu   $a0, $v0, 0x0028           ## $a0 = 00000028
/* 01224 80B278D4 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01228 80B278D8 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 0122C 80B278DC 3C0180B3 */  lui     $at, %hi(D_80B28A70)       ## $at = 80B30000
/* 01230 80B278E0 C4268A70 */  lwc1    $f6, %lo(D_80B28A70)($at)  
/* 01234 80B278E4 4606003C */  c.lt.s  $f0, $f6                   
/* 01238 80B278E8 00000000 */  nop
/* 0123C 80B278EC 45020004 */  bc1fl   .L80B27900                 
/* 01240 80B278F0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01244 80B278F4 0C2C9A1E */  jal     func_80B26878              
/* 01248 80B278F8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0124C 80B278FC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B27900:
/* 01250 80B27900 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01254 80B27904 03E00008 */  jr      $ra                        
/* 01258 80B27908 00000000 */  nop


