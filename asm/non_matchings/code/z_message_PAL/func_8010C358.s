glabel func_8010C358
/* B834F8 8010C358 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B834FC 8010C35C AFBF0014 */  sw    $ra, 0x14($sp)
/* B83500 8010C360 240E00F0 */  li    $t6, 240
/* B83504 8010C364 240F0140 */  li    $t7, 320
/* B83508 8010C368 AFA40028 */  sw    $a0, 0x28($sp)
/* B8350C 8010C36C AFAF0024 */  sw    $t7, 0x24($sp)
/* B83510 8010C370 AFAE001C */  sw    $t6, 0x1c($sp)
/* B83514 8010C374 AFA00018 */  sw    $zero, 0x18($sp)
/* B83518 8010C378 AFA00020 */  sw    $zero, 0x20($sp)
/* B8351C 8010C37C 0C02A93F */  jal   View_SetViewport
/* B83520 8010C380 27A50018 */   addiu $a1, $sp, 0x18
/* B83524 8010C384 0C02ACB1 */  jal   func_800AB2C4
/* B83528 8010C388 8FA40028 */   lw    $a0, 0x28($sp)
/* B8352C 8010C38C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B83530 8010C390 27BD0028 */  addiu $sp, $sp, 0x28
/* B83534 8010C394 03E00008 */  jr    $ra
/* B83538 8010C398 00000000 */   nop   

