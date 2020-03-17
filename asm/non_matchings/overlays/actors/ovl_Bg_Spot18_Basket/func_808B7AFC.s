glabel func_808B7AFC
/* 003EC 808B7AFC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 003F0 808B7B00 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 003F4 808B7B04 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 003F8 808B7B08 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 003FC 808B7B0C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00400 808B7B10 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00404 808B7B14 85C5001C */  lh      $a1, 0x001C($t6)           ## 0000001C
/* 00408 808B7B18 00052A03 */  sra     $a1, $a1,  8               
/* 0040C 808B7B1C 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00410 808B7B20 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00414 808B7B24 10400008 */  beq     $v0, $zero, .L808B7B48     
/* 00418 808B7B28 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0041C 808B7B2C 2405107C */  addiu   $a1, $zero, 0x107C         ## $a1 = 0000107C
/* 00420 808B7B30 24060050 */  addiu   $a2, $zero, 0x0050         ## $a2 = 00000050
/* 00424 808B7B34 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00428 808B7B38 0C02003E */  jal     func_800800F8              
/* 0042C 808B7B3C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00430 808B7B40 0C22DED6 */  jal     func_808B7B58              
/* 00434 808B7B44 8FA40020 */  lw      $a0, 0x0020($sp)           
.L808B7B48:
/* 00438 808B7B48 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0043C 808B7B4C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00440 808B7B50 03E00008 */  jr      $ra                        
/* 00444 808B7B54 00000000 */  nop


