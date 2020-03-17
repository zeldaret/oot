glabel func_80B53614
/* 00264 80B53614 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00268 80B53618 3C0180B6 */  lui     $at, %hi(D_80B5AAC4)       ## $at = 80B60000
/* 0026C 80B5361C C424AAC4 */  lwc1    $f4, %lo(D_80B5AAC4)($at)  
/* 00270 80B53620 3C0180B6 */  lui     $at, %hi(D_80B5AAC8)       ## $at = 80B60000
/* 00274 80B53624 C426AAC8 */  lwc1    $f6, %lo(D_80B5AAC8)($at)  
/* 00278 80B53628 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0027C 80B5362C AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00280 80B53630 240E0012 */  addiu   $t6, $zero, 0x0012         ## $t6 = 00000012
/* 00284 80B53634 AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 00288 80B53638 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 0028C 80B5363C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00290 80B53640 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00294 80B53644 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00298 80B53648 2406003B */  addiu   $a2, $zero, 0x003B         ## $a2 = 0000003B
/* 0029C 80B5364C 3C07C3DD */  lui     $a3, 0xC3DD                ## $a3 = C3DD0000
/* 002A0 80B53650 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 002A4 80B53654 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 002A8 80B53658 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 002AC 80B5365C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 002B0 80B53660 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 002B4 80B53664 03E00008 */  jr      $ra                        
/* 002B8 80B53668 00000000 */  nop


