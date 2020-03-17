glabel BgSpot00Hanebasi_Destroy
/* 0040C 808A9B8C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00410 808A9B90 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00414 808A9B94 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00418 808A9B98 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0041C 808A9B9C 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00420 808A9BA0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00424 808A9BA4 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00428 808A9BA8 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 0042C 808A9BAC 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00430 808A9BB0 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00434 808A9BB4 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 00438 808A9BB8 8FA7001C */  lw      $a3, 0x001C($sp)           
/* 0043C 808A9BBC 844F001C */  lh      $t7, 0x001C($v0)           ## 0000001C
/* 00440 808A9BC0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00444 808A9BC4 24E507A8 */  addiu   $a1, $a3, 0x07A8           ## $a1 = 000007A8
/* 00448 808A9BC8 05E20004 */  bltzl   $t7, .L808A9BDC            
/* 0044C 808A9BCC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00450 808A9BD0 0C01E9F1 */  jal     Lights_Remove
              
/* 00454 808A9BD4 8C46016C */  lw      $a2, 0x016C($v0)           ## 0000016C
/* 00458 808A9BD8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808A9BDC:
/* 0045C 808A9BDC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00460 808A9BE0 03E00008 */  jr      $ra                        
/* 00464 808A9BE4 00000000 */  nop


