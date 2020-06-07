.late_rodata
glabel D_80B42244
 .word 0xC49B6000
glabel D_80B42248
 .word 0x45E91000

.text
glabel func_80B3F534
/* 03354 80B3F534 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 03358 80B3F538 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0335C 80B3F53C 94821D74 */  lhu     $v0, 0x1D74($a0)           ## 00001D74
/* 03360 80B3F540 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 03364 80B3F544 24010136 */  addiu   $at, $zero, 0x0136         ## $at = 00000136
/* 03368 80B3F548 14410010 */  bne     $v0, $at, .L80B3F58C       
/* 0336C 80B3F54C 24841C24 */  addiu   $a0, $a0, 0x1C24           ## $a0 = 00001C24
/* 03370 80B3F550 3C0180B4 */  lui     $at, %hi(D_80B42244)       ## $at = 80B40000
/* 03374 80B3F554 C4242244 */  lwc1    $f4, %lo(D_80B42244)($at)  
/* 03378 80B3F558 3C0180B4 */  lui     $at, %hi(D_80B42248)       ## $at = 80B40000
/* 0337C 80B3F55C C4262248 */  lwc1    $f6, %lo(D_80B42248)($at)  
/* 03380 80B3F560 3C07C482 */  lui     $a3, 0xC482                ## $a3 = C4820000
/* 03384 80B3F564 240E0006 */  addiu   $t6, $zero, 0x0006         ## $t6 = 00000006
/* 03388 80B3F568 AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 0338C 80B3F56C 34E78000 */  ori     $a3, $a3, 0x8000           ## $a3 = C4828000
/* 03390 80B3F570 2406005D */  addiu   $a2, $zero, 0x005D         ## $a2 = 0000005D
/* 03394 80B3F574 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 03398 80B3F578 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 0339C 80B3F57C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 033A0 80B3F580 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 033A4 80B3F584 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 033A8 80B3F588 E7A60014 */  swc1    $f6, 0x0014($sp)           
.L80B3F58C:
/* 033AC 80B3F58C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 033B0 80B3F590 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 033B4 80B3F594 03E00008 */  jr      $ra                        
/* 033B8 80B3F598 00000000 */  nop
