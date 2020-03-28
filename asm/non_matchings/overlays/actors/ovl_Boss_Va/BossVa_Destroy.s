glabel BossVa_Destroy
/* 013E8 809506A8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 013EC 809506AC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 013F0 809506B0 AFA40018 */  sw      $a0, 0x0018($sp)
/* 013F4 809506B4 AFA5001C */  sw      $a1, 0x001C($sp)
/* 013F8 809506B8 0C0295BC */  jal     SkelAnime_Free
/* 013FC 809506BC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01400 809506C0 8FA50018 */  lw      $a1, 0x0018($sp)
/* 01404 809506C4 8FA4001C */  lw      $a0, 0x001C($sp)
/* 01408 809506C8 0C016F32 */  jal     func_8005BCC8
/* 0140C 809506CC 24A502D8 */  addiu   $a1, $a1, 0x02D8           ## $a1 = 000002D8
/* 01410 809506D0 8FA50018 */  lw      $a1, 0x0018($sp)
/* 01414 809506D4 8FA4001C */  lw      $a0, 0x001C($sp)
/* 01418 809506D8 0C0170EB */  jal     ActorCollider_FreeCylinder

/* 0141C 809506DC 24A5028C */  addiu   $a1, $a1, 0x028C           ## $a1 = 0000028C
/* 01420 809506E0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01424 809506E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01428 809506E8 03E00008 */  jr      $ra
/* 0142C 809506EC 00000000 */  nop


