glabel func_80B00098
/* 01DE8 80B00098 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01DEC 80B0009C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01DF0 80B000A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01DF4 80B000A4 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01DF8 80B000A8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01DFC 80B000AC 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 01E00 80B000B0 24847128 */  addiu   $a0, $a0, 0x7128           ## $a0 = 06007128
/* 01E04 80B000B4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01E08 80B000B8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01E0C 80B000BC 468021A0 */  cvt.s.w $f6, $f4                   
/* 01E10 80B000C0 C4880164 */  lwc1    $f8, 0x0164($a0)           ## 00000164
/* 01E14 80B000C4 46083032 */  c.eq.s  $f6, $f8                   
/* 01E18 80B000C8 00000000 */  nop
/* 01E1C 80B000CC 45020004 */  bc1fl   .L80B000E0                 
/* 01E20 80B000D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01E24 80B000D4 0C2C003B */  jal     func_80B000EC              
/* 01E28 80B000D8 00000000 */  nop
/* 01E2C 80B000DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B000E0:
/* 01E30 80B000E0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01E34 80B000E4 03E00008 */  jr      $ra                        
/* 01E38 80B000E8 00000000 */  nop


