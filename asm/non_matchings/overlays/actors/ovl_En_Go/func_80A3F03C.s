glabel func_80A3F03C
/* 00ACC 80A3F03C 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00AD0 80A3F040 44810000 */  mtc1    $at, $f0                   ## $f0 = 60.00
/* 00AD4 80A3F044 03E00008 */  jr      $ra                        
/* 00AD8 80A3F048 00000000 */  nop
glabel L80A3F04C
.L80A3F04C:
/* 00ADC 80A3F04C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00AE0 80A3F050 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 00AE4 80A3F054 00000000 */  nop
/* 00AE8 80A3F058 03E00008 */  jr      $ra                        
/* 00AEC 80A3F05C 00000000 */  nop
