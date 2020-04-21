glabel EnHata_Destroy
/* 0013C 80A50E8C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00140 80A50E90 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00144 80A50E94 AFA40018 */  sw      $a0, 0x0018($sp)
/* 00148 80A50E98 24840164 */  addiu   $a0, $a0, 0x0164           ## $a0 = 00000164
/* 0014C 80A50E9C 0C0295BC */  jal     SkelAnime_Free
/* 00150 80A50EA0 AFA5001C */  sw      $a1, 0x001C($sp)
/* 00154 80A50EA4 8FA4001C */  lw      $a0, 0x001C($sp)
/* 00158 80A50EA8 8FAE0018 */  lw      $t6, 0x0018($sp)
/* 0015C 80A50EAC 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00160 80A50EB0 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00164 80A50EB4 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00168 80A50EB8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0016C 80A50EBC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00170 80A50EC0 03E00008 */  jr      $ra
/* 00174 80A50EC4 00000000 */  nop
