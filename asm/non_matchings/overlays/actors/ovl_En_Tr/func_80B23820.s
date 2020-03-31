glabel func_80B23820
/* 00B30 80B23820 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00B34 80B23824 AFBF001C */  sw      $ra, 0x001C($sp)
/* 00B38 80B23828 AFB00018 */  sw      $s0, 0x0018($sp)
/* 00B3C 80B2382C 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00B40 80B23830 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B44 80B23834 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00B48 80B23838 51C00025 */  beql    $t6, $zero, .L80B238D0
/* 00B4C 80B2383C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 00B50 80B23840 848F02D8 */  lh      $t7, 0x02D8($a0)           ## 000002D8
/* 00B54 80B23844 000FC080 */  sll     $t8, $t7,  2
/* 00B58 80B23848 00B8C821 */  addu    $t9, $a1, $t8
/* 00B5C 80B2384C 8F221D8C */  lw      $v0, 0x1D8C($t9)           ## 00001D8C
/* 00B60 80B23850 5040001F */  beql    $v0, $zero, .L80B238D0
/* 00B64 80B23854 8FBF001C */  lw      $ra, 0x001C($sp)
/* 00B68 80B23858 94430000 */  lhu     $v1, 0x0000($v0)           ## 00000000
/* 00B6C 80B2385C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00B70 80B23860 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B74 80B23864 10610004 */  beq     $v1, $at, .L80B23878
/* 00B78 80B23868 2405390D */  addiu   $a1, $zero, 0x390D         ## $a1 = 0000390D
/* 00B7C 80B2386C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00B80 80B23870 54610017 */  bnel    $v1, $at, .L80B238D0
/* 00B84 80B23874 8FBF001C */  lw      $ra, 0x001C($sp)
.L80B23878:
/* 00B88 80B23878 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00B8C 80B2387C AFA70024 */  sw      $a3, 0x0024($sp)
/* 00B90 80B23880 8FA50024 */  lw      $a1, 0x0024($sp)
/* 00B94 80B23884 24080022 */  addiu   $t0, $zero, 0x0022         ## $t0 = 00000022
/* 00B98 80B23888 A60802D6 */  sh      $t0, 0x02D6($s0)           ## 000002D6
/* 00B9C 80B2388C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BA0 80B23890 0C2C90AD */  jal     func_80B242B4
/* 00BA4 80B23894 860602D8 */  lh      $a2, 0x02D8($s0)           ## 000002D8
/* 00BA8 80B23898 3C0580B2 */  lui     $a1, %hi(func_80B23690)    ## $a1 = 80B20000
/* 00BAC 80B2389C 24A53690 */  addiu   $a1, $a1, %lo(func_80B23690) ## $a1 = 80B23690
/* 00BB0 80B238A0 0C2C8B3C */  jal     func_80B22CF0
/* 00BB4 80B238A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BB8 80B238A8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00BBC 80B238AC 24A549C8 */  addiu   $a1, $a1, 0x49C8           ## $a1 = 060049C8
/* 00BC0 80B238B0 0C0294BE */  jal     SkelAnime_ChangeAnimationDefaultRepeat
/* 00BC4 80B238B4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00BC8 80B238B8 3C053B44 */  lui     $a1, 0x3B44                ## $a1 = 3B440000
/* 00BCC 80B238BC AE0002E4 */  sw      $zero, 0x02E4($s0)         ## 000002E4
/* 00BD0 80B238C0 34A59BA6 */  ori     $a1, $a1, 0x9BA6           ## $a1 = 3B449BA6
/* 00BD4 80B238C4 0C00B58B */  jal     Actor_SetScale

/* 00BD8 80B238C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BDC 80B238CC 8FBF001C */  lw      $ra, 0x001C($sp)
.L80B238D0:
/* 00BE0 80B238D0 8FB00018 */  lw      $s0, 0x0018($sp)
/* 00BE4 80B238D4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00BE8 80B238D8 03E00008 */  jr      $ra
/* 00BEC 80B238DC 00000000 */  nop


