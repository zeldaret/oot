glabel BgHakaTubo_Draw
/* 008AC 80881AFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008B0 80881B00 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 008B4 80881B04 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 008B8 80881B08 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 008BC 80881B0C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008C0 80881B10 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 008C4 80881B14 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 008C8 80881B18 24A5FE40 */  addiu   $a1, $a1, 0xFE40           ## $a1 = 0600FE40
/* 008CC 80881B1C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 008D0 80881B20 0C220641 */  jal     func_80881904              
/* 008D4 80881B24 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 008D8 80881B28 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008DC 80881B2C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008E0 80881B30 03E00008 */  jr      $ra                        
/* 008E4 80881B34 00000000 */  nop
/* 008E8 80881B38 00000000 */  nop
/* 008EC 80881B3C 00000000 */  nop

