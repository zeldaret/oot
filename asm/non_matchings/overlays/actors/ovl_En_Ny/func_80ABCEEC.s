glabel func_80ABCEEC
/* 0033C 80ABCEEC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00340 80ABCEF0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00344 80ABCEF4 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 00348 80ABCEF8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0034C 80ABCEFC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00350 80ABCF00 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00354 80ABCF04 C48001E0 */  lwc1    $f0, 0x01E0($a0)           ## 000001E0
/* 00358 80ABCF08 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 0035C 80ABCF0C 00000000 */  nop
/* 00360 80ABCF10 46040000 */  add.s   $f0, $f0, $f4              
/* 00364 80ABCF14 4600103E */  c.le.s  $f2, $f0                   
/* 00368 80ABCF18 00000000 */  nop
/* 0036C 80ABCF1C 45020007 */  bc1fl   .L80ABCF3C                 
/* 00370 80ABCF20 E48001E0 */  swc1    $f0, 0x01E0($a0)           ## 000001E0
/* 00374 80ABCF24 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00378 80ABCF28 0C2AF36F */  jal     func_80ABCDBC              
/* 0037C 80ABCF2C E7A2001C */  swc1    $f2, 0x001C($sp)           
/* 00380 80ABCF30 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00384 80ABCF34 C7A0001C */  lwc1    $f0, 0x001C($sp)           
/* 00388 80ABCF38 E48001E0 */  swc1    $f0, 0x01E0($a0)           ## 000001E0
.L80ABCF3C:
/* 0038C 80ABCF3C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00390 80ABCF40 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00394 80ABCF44 03E00008 */  jr      $ra                        
/* 00398 80ABCF48 00000000 */  nop


