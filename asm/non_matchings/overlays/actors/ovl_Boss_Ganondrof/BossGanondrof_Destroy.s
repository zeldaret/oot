glabel BossGanondrof_Destroy
/* 006BC 80910CFC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 006C0 80910D00 AFB00014 */  sw      $s0, 0x0014($sp)
/* 006C4 80910D04 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 006C8 80910D08 AFBF001C */  sw      $ra, 0x001C($sp)
/* 006CC 80910D0C AFB10018 */  sw      $s1, 0x0018($sp)
/* 006D0 80910D10 3C048091 */  lui     $a0, %hi(D_80915140)       ## $a0 = 80910000
/* 006D4 80910D14 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 006D8 80910D18 0C00084C */  jal     osSyncPrintf

/* 006DC 80910D1C 24845140 */  addiu   $a0, $a0, %lo(D_80915140)  ## $a0 = 80915140
/* 006E0 80910D20 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 006E4 80910D24 0C0295BC */  jal     SkelAnime_Free
/* 006E8 80910D28 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 006EC 80910D2C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 006F0 80910D30 0C0170EB */  jal     ActorCollider_FreeCylinder

/* 006F4 80910D34 260504E0 */  addiu   $a1, $s0, 0x04E0           ## $a1 = 000004E0
/* 006F8 80910D38 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 006FC 80910D3C 0C0170EB */  jal     ActorCollider_FreeCylinder

/* 00700 80910D40 2605052C */  addiu   $a1, $s0, 0x052C           ## $a1 = 0000052C
/* 00704 80910D44 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00708 80910D48 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0070C 80910D4C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00710 80910D50 15C10003 */  bne     $t6, $at, .L80910D60
/* 00714 80910D54 262507A8 */  addiu   $a1, $s1, 0x07A8           ## $a1 = 000007A8
/* 00718 80910D58 0C01E9F1 */  jal     Lights_Remove

/* 0071C 80910D5C 8E0604CC */  lw      $a2, 0x04CC($s0)           ## 000004CC
.L80910D60:
/* 00720 80910D60 3C048091 */  lui     $a0, %hi(D_80915148)       ## $a0 = 80910000
/* 00724 80910D64 0C00084C */  jal     osSyncPrintf

/* 00728 80910D68 24845148 */  addiu   $a0, $a0, %lo(D_80915148)  ## $a0 = 80915148
/* 0072C 80910D6C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 00730 80910D70 8FB00014 */  lw      $s0, 0x0014($sp)
/* 00734 80910D74 8FB10018 */  lw      $s1, 0x0018($sp)
/* 00738 80910D78 03E00008 */  jr      $ra
/* 0073C 80910D7C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
