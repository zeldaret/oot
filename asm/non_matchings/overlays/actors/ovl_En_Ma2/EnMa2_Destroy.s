glabel EnMa2_Destroy
/* 00640 80AA1FE0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00644 80AA1FE4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00648 80AA1FE8 AFA40018 */  sw      $a0, 0x0018($sp)
/* 0064C 80AA1FEC AFA5001C */  sw      $a1, 0x001C($sp)
/* 00650 80AA1FF0 0C0295BC */  jal     SkelAnime_Free
/* 00654 80AA1FF4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00658 80AA1FF8 8FA50018 */  lw      $a1, 0x0018($sp)
/* 0065C 80AA1FFC 8FA4001C */  lw      $a0, 0x001C($sp)
/* 00660 80AA2000 0C0170EB */  jal     Collider_DestroyCylinder

/* 00664 80AA2004 24A50194 */  addiu   $a1, $a1, 0x0194           ## $a1 = 00000194
/* 00668 80AA2008 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0066C 80AA200C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00670 80AA2010 03E00008 */  jr      $ra
/* 00674 80AA2014 00000000 */  nop
