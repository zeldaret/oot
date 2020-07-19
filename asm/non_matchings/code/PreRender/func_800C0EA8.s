glabel func_800C0EA8
/* B38048 800C0EA8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3804C 800C0EAC AFBF0014 */  sw    $ra, 0x14($sp)
/* B38050 800C0EB0 AFA40018 */  sw    $a0, 0x18($sp)
/* B38054 800C0EB4 0C001114 */  jal   bzero
/* B38058 800C0EB8 24050050 */   li    $a1, 80
/* B3805C 800C0EBC 8FA40018 */  lw    $a0, 0x18($sp)
/* B38060 800C0EC0 0C031B1C */  jal   ListAlloc_Init
/* B38064 800C0EC4 24840044 */   addiu $a0, $a0, 0x44
/* B38068 800C0EC8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3806C 800C0ECC 27BD0018 */  addiu $sp, $sp, 0x18
/* B38070 800C0ED0 03E00008 */  jr    $ra
/* B38074 800C0ED4 00000000 */   nop   

