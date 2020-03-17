glabel func_80B59A80
/* 066D0 80B59A80 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 066D4 80B59A84 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 066D8 80B59A88 0C2D65DA */  jal     func_80B59768              
/* 066DC 80B59A8C 00000000 */  nop
/* 066E0 80B59A90 1040000B */  beq     $v0, $zero, .L80B59AC0     
/* 066E4 80B59A94 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 066E8 80B59A98 3C0E8013 */  lui     $t6, 0x8013                ## $t6 = 80130000
/* 066EC 80B59A9C 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 066F0 80B59AA0 25CE33E8 */  addiu   $t6, $t6, 0x33E8           ## $t6 = 801333E8
/* 066F4 80B59AA4 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 066F8 80B59AA8 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 066FC 80B59AAC AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 06700 80B59AB0 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 06704 80B59AB4 24045806 */  addiu   $a0, $zero, 0x5806         ## $a0 = 00005806
/* 06708 80B59AB8 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 0670C 80B59ABC 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
.L80B59AC0:
/* 06710 80B59AC0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 06714 80B59AC4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 06718 80B59AC8 03E00008 */  jr      $ra                        
/* 0671C 80B59ACC 00000000 */  nop


