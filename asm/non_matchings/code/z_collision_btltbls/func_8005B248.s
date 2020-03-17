glabel func_8005B248
/* AD23E8 8005B248 00801825 */  move  $v1, $a0
/* AD23EC 8005B24C 24040020 */  li    $a0, 32
/* AD23F0 8005B250 00001025 */  move  $v0, $zero
.L8005B254:
/* AD23F4 8005B254 24420004 */  addiu $v0, $v0, 4
/* AD23F8 8005B258 A0600001 */  sb    $zero, 1($v1)
/* AD23FC 8005B25C A0600002 */  sb    $zero, 2($v1)
/* AD2400 8005B260 A0600003 */  sb    $zero, 3($v1)
/* AD2404 8005B264 24630004 */  addiu $v1, $v1, 4
/* AD2408 8005B268 1444FFFA */  bne   $v0, $a0, .L8005B254
/* AD240C 8005B26C A060FFFC */   sb    $zero, -4($v1)
/* AD2410 8005B270 03E00008 */  jr    $ra
/* AD2414 8005B274 00000000 */   nop   
