glabel BossFd_Destroy
/* 00864 808CB624 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00868 808CB628 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0086C 808CB62C AFA40018 */  sw      $a0, 0x0018($sp)
/* 00870 808CB630 AFA5001C */  sw      $a1, 0x001C($sp)
/* 00874 808CB634 0C0295BC */  jal     SkelAnime_Free
/* 00878 808CB638 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0087C 808CB63C 8FA40018 */  lw      $a0, 0x0018($sp)
/* 00880 808CB640 8FA5001C */  lw      $a1, 0x001C($sp)
/* 00884 808CB644 0C0295BC */  jal     SkelAnime_Free
/* 00888 808CB648 24840190 */  addiu   $a0, $a0, 0x0190           ## $a0 = 00000190
/* 0088C 808CB64C 8FA40018 */  lw      $a0, 0x0018($sp)
/* 00890 808CB650 8FA5001C */  lw      $a1, 0x001C($sp)
/* 00894 808CB654 0C0295BC */  jal     SkelAnime_Free
/* 00898 808CB658 248401D4 */  addiu   $a0, $a0, 0x01D4           ## $a0 = 000001D4
/* 0089C 808CB65C 8FA50018 */  lw      $a1, 0x0018($sp)
/* 008A0 808CB660 8FA4001C */  lw      $a0, 0x001C($sp)
/* 008A4 808CB664 0C016F32 */  jal     func_8005BCC8
/* 008A8 808CB668 24A51490 */  addiu   $a1, $a1, 0x1490           ## $a1 = 00001490
/* 008AC 808CB66C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 008B0 808CB670 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008B4 808CB674 03E00008 */  jr      $ra
/* 008B8 808CB678 00000000 */  nop
