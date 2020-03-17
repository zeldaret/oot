glabel func_80029618
/* AA07B8 80029618 27BDFFB0 */  addiu $sp, $sp, -0x50
/* AA07BC 8002961C AFBF0014 */  sw    $ra, 0x14($sp)
/* AA07C0 80029620 AFA40050 */  sw    $a0, 0x50($sp)
/* AA07C4 80029624 AFA60058 */  sw    $a2, 0x58($sp)
/* AA07C8 80029628 AFA7005C */  sw    $a3, 0x5c($sp)
/* AA07CC 8002962C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA07D0 80029630 27A40018 */   addiu $a0, $sp, 0x18
/* AA07D4 80029634 27A40024 */  addiu $a0, $sp, 0x24
/* AA07D8 80029638 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA07DC 8002963C 8FA50058 */   lw    $a1, 0x58($sp)
/* AA07E0 80029640 27A40030 */  addiu $a0, $sp, 0x30
/* AA07E4 80029644 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA07E8 80029648 8FA5005C */   lw    $a1, 0x5c($sp)
/* AA07EC 8002964C 87AE006A */  lh    $t6, 0x6a($sp)
/* AA07F0 80029650 87AF0062 */  lh    $t7, 0x62($sp)
/* AA07F4 80029654 87B80066 */  lh    $t8, 0x66($sp)
/* AA07F8 80029658 87B9006E */  lh    $t9, 0x6e($sp)
/* AA07FC 8002965C A3A0004C */  sb    $zero, 0x4c($sp)
/* AA0800 80029660 8FA40050 */  lw    $a0, 0x50($sp)
/* AA0804 80029664 2405000E */  li    $a1, 14
/* AA0808 80029668 24060080 */  li    $a2, 128
/* AA080C 8002966C 27A70018 */  addiu $a3, $sp, 0x18
/* AA0810 80029670 A7AE0048 */  sh    $t6, 0x48($sp)
/* AA0814 80029674 A7AF0044 */  sh    $t7, 0x44($sp)
/* AA0818 80029678 A7B80046 */  sh    $t8, 0x46($sp)
/* AA081C 8002967C 0C009DE6 */  jal   func_80027798
/* AA0820 80029680 A7B9004A */   sh    $t9, 0x4a($sp)
/* AA0824 80029684 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0828 80029688 27BD0050 */  addiu $sp, $sp, 0x50
/* AA082C 8002968C 03E00008 */  jr    $ra
/* AA0830 80029690 00000000 */   nop   

