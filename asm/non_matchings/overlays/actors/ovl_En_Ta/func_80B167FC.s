glabel func_80B167FC
/* 02D5C 80B167FC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02D60 80B16800 AFB00018 */  sw      $s0, 0x0018($sp)
/* 02D64 80B16804 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02D68 80B16808 AFBF001C */  sw      $ra, 0x001C($sp)
/* 02D6C 80B1680C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02D70 80B16810 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 02D74 80B16814 AFA40024 */  sw      $a0, 0x0024($sp)
/* 02D78 80B16818 10400006 */  beq     $v0, $zero, .L80B16834
/* 02D7C 80B1681C 8FA40024 */  lw      $a0, 0x0024($sp)
/* 02D80 80B16820 0C02947A */  jal     SkelAnime_ChangeAnimDefaultStop
/* 02D84 80B16824 8E0502E4 */  lw      $a1, 0x02E4($s0)           ## 000002E4
/* 02D88 80B16828 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02D8C 80B1682C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 02D90 80B16830 24056850 */  addiu   $a1, $zero, 0x6850         ## $a1 = 00006850
.L80B16834:
/* 02D94 80B16834 960E02E0 */  lhu     $t6, 0x02E0($s0)           ## 000002E0
/* 02D98 80B16838 35CF000C */  ori     $t7, $t6, 0x000C           ## $t7 = 0000000C
/* 02D9C 80B1683C A60F02E0 */  sh      $t7, 0x02E0($s0)           ## 000002E0
/* 02DA0 80B16840 8FBF001C */  lw      $ra, 0x001C($sp)
/* 02DA4 80B16844 8FB00018 */  lw      $s0, 0x0018($sp)
/* 02DA8 80B16848 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02DAC 80B1684C 03E00008 */  jr      $ra
/* 02DB0 80B16850 00000000 */  nop


