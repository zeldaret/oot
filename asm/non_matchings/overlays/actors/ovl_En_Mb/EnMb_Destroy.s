glabel EnMb_Destroy
/* 00368 80AA63B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0036C 80AA63BC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00370 80AA63C0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00374 80AA63C4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00378 80AA63C8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0037C 80AA63CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00380 80AA63D0 0C017232 */  jal     func_8005C8C8              
/* 00384 80AA63D4 24A50434 */  addiu   $a1, $a1, 0x0434           ## $a1 = 00000434
/* 00388 80AA63D8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0038C 80AA63DC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00390 80AA63E0 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00394 80AA63E4 24A50368 */  addiu   $a1, $a1, 0x0368           ## $a1 = 00000368
/* 00398 80AA63E8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0039C 80AA63EC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 003A0 80AA63F0 0C017418 */  jal     func_8005D060              
/* 003A4 80AA63F4 24A503B4 */  addiu   $a1, $a1, 0x03B4           ## $a1 = 000003B4
/* 003A8 80AA63F8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003AC 80AA63FC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003B0 80AA6400 03E00008 */  jr      $ra                        
/* 003B4 80AA6404 00000000 */  nop


