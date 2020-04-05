glabel func_800CB594
/* B42734 800CB594 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B42738 800CB598 E7AC0018 */  swc1  $f12, 0x18($sp)
/* B4273C 800CB59C C7B20018 */  lwc1  $f18, 0x18($sp)
/* B42740 800CB5A0 E7AE001C */  swc1  $f14, 0x1c($sp)
/* B42744 800CB5A4 C7B0001C */  lwc1  $f16, 0x1c($sp)
/* B42748 800CB5A8 AFA60020 */  sw    $a2, 0x20($sp)
/* B4274C 800CB5AC C7AA0020 */  lwc1  $f10, 0x20($sp)
/* B42750 800CB5B0 AFA70024 */  sw    $a3, 0x24($sp)
/* B42754 800CB5B4 C7A80024 */  lwc1  $f8, 0x24($sp)
/* B42758 800CB5B8 460A9301 */  sub.s $f12, $f18, $f10
/* B4275C 800CB5BC AFBF0014 */  sw    $ra, 0x14($sp)
/* B42760 800CB5C0 0C032D57 */  jal   func_800CB55C
/* B42764 800CB5C4 46088381 */   sub.s $f14, $f16, $f8
/* B42768 800CB5C8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4276C 800CB5CC 27BD0018 */  addiu $sp, $sp, 0x18
/* B42770 800CB5D0 03E00008 */  jr    $ra
/* B42774 800CB5D4 00000000 */   nop   

