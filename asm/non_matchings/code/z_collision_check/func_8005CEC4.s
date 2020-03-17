.late_rodata
glabel D_8013ACF4
    .float 1.0E38

.text
glabel func_8005CEC4
/* AD4064 8005CEC4 3C018014 */  lui   $at, %hi(D_8013ACF4)
/* AD4068 8005CEC8 C424ACF4 */  lwc1  $f4, %lo(D_8013ACF4)($at)
/* AD406C 8005CECC AFA40000 */  sw    $a0, ($sp)
/* AD4070 8005CED0 24020001 */  li    $v0, 1
/* AD4074 8005CED4 03E00008 */  jr    $ra
/* AD4078 8005CED8 E4A4003C */   swc1  $f4, 0x3c($a1)

