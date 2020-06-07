glabel func_80B27098
/* 009E8 80B27098 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 009EC 80B2709C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 009F0 80B270A0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 009F4 80B270A4 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 009F8 80B270A8 44813000 */  mtc1    $at, $f6                   ## $f6 = 150.00
/* 009FC 80B270AC C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00A00 80B270B0 4606203C */  c.lt.s  $f4, $f6                   
/* 00A04 80B270B4 00000000 */  nop
/* 00A08 80B270B8 45020004 */  bc1fl   .L80B270CC                 
/* 00A0C 80B270BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A10 80B270C0 0C2C9A32 */  jal     func_80B268C8              
/* 00A14 80B270C4 00000000 */  nop
/* 00A18 80B270C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B270CC:
/* 00A1C 80B270CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A20 80B270D0 03E00008 */  jr      $ra                        
/* 00A24 80B270D4 00000000 */  nop
