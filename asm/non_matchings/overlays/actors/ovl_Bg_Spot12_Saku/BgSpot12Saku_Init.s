glabel BgSpot12Saku_Init
/* 00088 808B34A8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0008C 808B34AC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00090 808B34B0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00094 808B34B4 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00098 808B34B8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0009C 808B34BC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 000A0 808B34C0 24C6238C */  addiu   $a2, $a2, 0x238C           ## $a2 = 0600238C
/* 000A4 808B34C4 0C22CD08 */  jal     func_808B3420              
/* 000A8 808B34C8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 000AC 808B34CC 3C05808B */  lui     $a1, %hi(D_808B3840)       ## $a1 = 808B0000
/* 000B0 808B34D0 24A53840 */  addiu   $a1, $a1, %lo(D_808B3840)  ## $a1 = 808B3840
/* 000B4 808B34D4 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 000B8 808B34D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000BC 808B34DC 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 000C0 808B34E0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 000C4 808B34E4 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 000C8 808B34E8 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 000CC 808B34EC 10400005 */  beq     $v0, $zero, .L808B3504     
/* 000D0 808B34F0 00000000 */  nop
/* 000D4 808B34F4 0C22CDC5 */  jal     func_808B3714              
/* 000D8 808B34F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000DC 808B34FC 10000004 */  beq     $zero, $zero, .L808B3510   
/* 000E0 808B3500 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808B3504:
/* 000E4 808B3504 0C22CD54 */  jal     func_808B3550              
/* 000E8 808B3508 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000EC 808B350C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808B3510:
/* 000F0 808B3510 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 000F4 808B3514 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 000F8 808B3518 03E00008 */  jr      $ra                        
/* 000FC 808B351C 00000000 */  nop


