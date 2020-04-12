glabel EnHoll_Init
/* 000A0 80A58CB0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000A4 80A58CB4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 000A8 80A58CB8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000AC 80A58CBC 3C0580A6 */  lui     $a1, %hi(D_80A59A5C)       ## $a1 = 80A60000
/* 000B0 80A58CC0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000B4 80A58CC4 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 000B8 80A58CC8 24A59A5C */  addiu   $a1, $a1, %lo(D_80A59A5C)  ## $a1 = 80A59A5C
/* 000BC 80A58CCC 0C296312 */  jal     func_80A58C48              
/* 000C0 80A58CD0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 000C4 80A58CD4 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 000C8 80A58CD8 A1C0014F */  sb      $zero, 0x014F($t6)         ## 0000014F
/* 000CC 80A58CDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000D0 80A58CE0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000D4 80A58CE4 03E00008 */  jr      $ra                        
/* 000D8 80A58CE8 00000000 */  nop
