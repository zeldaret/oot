glabel func_80098508
/* B0F6A8 80098508 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B0F6AC 8009850C AFBF0014 */  sw    $ra, 0x14($sp)
/* B0F6B0 80098510 AFA5001C */  sw    $a1, 0x1c($sp)
/* B0F6B4 80098514 3C010001 */  lui   $at, 1
/* B0F6B8 80098518 00811821 */  addu  $v1, $a0, $at
/* B0F6BC 8009851C 90781DEA */  lbu   $t8, 0x1dea($v1)
/* B0F6C0 80098520 8CA70004 */  lw    $a3, 4($a1)
/* B0F6C4 80098524 8C6F1E00 */  lw    $t7, 0x1e00($v1)
/* B0F6C8 80098528 0018C840 */  sll   $t9, $t8, 1
/* B0F6CC 8009852C 00076900 */  sll   $t5, $a3, 4
/* B0F6D0 80098530 000D7702 */  srl   $t6, $t5, 0x1c
/* B0F6D4 80098534 01F95021 */  addu  $t2, $t7, $t9
/* B0F6D8 80098538 3C0F8016 */  lui   $t7, %hi(gSegments)
/* B0F6DC 8009853C 000EC080 */  sll   $t8, $t6, 2
/* B0F6E0 80098540 01F87821 */  addu  $t7, $t7, $t8
/* B0F6E4 80098544 8DEF6FA8 */  lw    $t7, %lo(gSegments)($t7)
/* B0F6E8 80098548 914B0000 */  lbu   $t3, ($t2)
/* B0F6EC 8009854C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0F6F0 80098550 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0F6F4 80098554 00E1C824 */  and   $t9, $a3, $at
/* B0F6F8 80098558 01F95021 */  addu  $t2, $t7, $t9
/* B0F6FC 8009855C 000B6100 */  sll   $t4, $t3, 4
/* B0F700 80098560 018A1021 */  addu  $v0, $t4, $t2
/* B0F704 80098564 3C018000 */  lui   $at, 0x8000
/* B0F708 80098568 00414021 */  addu  $t0, $v0, $at
/* B0F70C 8009856C 3C010001 */  lui   $at, 1
/* B0F710 80098570 3C098016 */  lui   $t1, %hi(gSaveContext) # $t1, 0x8016
/* B0F714 80098574 00240821 */  addu  $at, $at, $a0
/* B0F718 80098578 2529E660 */  addiu $t1, %lo(gSaveContext) # addiu $t1, $t1, -0x19a0
/* B0F71C 8009857C AC281DF4 */  sw    $t0, 0x1df4($at)
/* B0F720 80098580 8D2B0004 */  lw    $t3, 4($t1)
/* B0F724 80098584 3C010001 */  lui   $at, 1
/* B0F728 80098588 00240821 */  addu  $at, $at, $a0
/* B0F72C 8009858C A02B1DE8 */  sb    $t3, 0x1de8($at)
/* B0F730 80098590 8D220004 */  lw    $v0, 4($t1)
/* B0F734 80098594 850E0000 */  lh    $t6, ($t0)
/* B0F738 80098598 3C058012 */  lui   $a1, %hi(gLinkObjectIds)
/* B0F73C 8009859C 3C0F8011 */  lui   $t7, %hi(gActorOverlayTable+0x14)
/* B0F740 800985A0 00026840 */  sll   $t5, $v0, 1
/* B0F744 800985A4 000EC140 */  sll   $t8, $t6, 5
/* B0F748 800985A8 00AD2821 */  addu  $a1, $a1, $t5
/* B0F74C 800985AC 01F87821 */  addu  $t7, $t7, $t8
/* B0F750 800985B0 84A57520 */  lh    $a1, %lo(gLinkObjectIds)($a1)
/* B0F754 800985B4 8DEF62B4 */  lw    $t7, %lo(gActorOverlayTable+0x14)($t7)
/* B0F758 800985B8 3C010001 */  lui   $at, (0x000117A4 >> 16) # lui $at, 1
/* B0F75C 800985BC 342117A4 */  ori   $at, (0x000117A4 & 0xFFFF) # ori $at, $at, 0x17a4
/* B0F760 800985C0 00812021 */  addu  $a0, $a0, $at
/* B0F764 800985C4 0C025F00 */  jal   Object_Spawn
/* B0F768 800985C8 A5E50008 */   sh    $a1, 8($t7)
/* B0F76C 800985CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0F770 800985D0 27BD0018 */  addiu $sp, $sp, 0x18
/* B0F774 800985D4 03E00008 */  jr    $ra
/* B0F778 800985D8 00000000 */   nop   

