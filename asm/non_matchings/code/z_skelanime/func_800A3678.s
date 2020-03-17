glabel func_800A3678
/* B1A818 800A3678 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1A81C 800A367C AFA40018 */  sw    $a0, 0x18($sp)
/* B1A820 800A3680 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1A824 800A3684 24A40020 */  addiu $a0, $a1, 0x20
/* B1A828 800A3688 00002825 */  move  $a1, $zero
/* B1A82C 800A368C 0C000CA0 */  jal   osRecvMesg
/* B1A830 800A3690 24060001 */   li    $a2, 1
/* B1A834 800A3694 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1A838 800A3698 27BD0018 */  addiu $sp, $sp, 0x18
/* B1A83C 800A369C 03E00008 */  jr    $ra
/* B1A840 800A36A0 00000000 */   nop   

