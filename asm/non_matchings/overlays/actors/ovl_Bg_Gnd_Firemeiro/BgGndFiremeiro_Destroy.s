glabel BgGndFiremeiro_Destroy
/* 000B4 80879574 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000B8 80879578 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000BC 8087957C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000C0 80879580 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 000C4 80879584 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000C8 80879588 8FB80018 */  lw      $t8, 0x0018($sp)           
/* 000CC 8087958C 15E00003 */  bne     $t7, $zero, .L8087959C     
/* 000D0 80879590 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 000D4 80879594 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 000D8 80879598 8F06014C */  lw      $a2, 0x014C($t8)           ## 0000014C
.L8087959C:
/* 000DC 8087959C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000E0 808795A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000E4 808795A4 03E00008 */  jr      $ra                        
/* 000E8 808795A8 00000000 */  nop


