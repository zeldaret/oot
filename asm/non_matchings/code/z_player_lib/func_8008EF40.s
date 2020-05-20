glabel func_8008EF40
/* B060D0 8008EF30 8C831C44 */  lw    $v1, 0x1c44($a0)
/* B060D4 8008EF34 3C010080 */  lui   $at, 0x80
/* B060D8 8008EF38 8C62067C */  lw    $v0, 0x67c($v1)
/* B060DC 8008EF3C 03E00008 */  jr    $ra
/* B060E0 8008EF40 00411024 */   and   $v0, $v0, $at
