glabel func_808D3A08
/* 01398 808D3A08 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0139C 808D3A0C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 013A0 808D3A10 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 013A4 808D3A14 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 013A8 808D3A18 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 013AC 808D3A1C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 013B0 808D3A20 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 013B4 808D3A24 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 013B8 808D3A28 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 013BC 808D3A2C 0C0295B2 */  jal     func_800A56C8              
/* 013C0 808D3A30 3C0540A0 */  lui     $a1, 0x40A0                ## $a1 = 40A00000
/* 013C4 808D3A34 10400006 */  beq     $v0, $zero, .L808D3A50     
/* 013C8 808D3A38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013CC 808D3A3C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 013D0 808D3A40 240538D1 */  addiu   $a1, $zero, 0x38D1         ## $a1 = 000038D1
/* 013D4 808D3A44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013D8 808D3A48 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 013DC 808D3A4C 240538D8 */  addiu   $a1, $zero, 0x38D8         ## $a1 = 000038D8
.L808D3A50:
/* 013E0 808D3A50 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 013E4 808D3A54 0C0295B2 */  jal     func_800A56C8              
/* 013E8 808D3A58 8E0501F0 */  lw      $a1, 0x01F0($s0)           ## 000001F0
/* 013EC 808D3A5C 10400003 */  beq     $v0, $zero, .L808D3A6C     
/* 013F0 808D3A60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013F4 808D3A64 0C234CAD */  jal     func_808D32B4              
/* 013F8 808D3A68 8FA5002C */  lw      $a1, 0x002C($sp)           
.L808D3A6C:
/* 013FC 808D3A6C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01400 808D3A70 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01404 808D3A74 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01408 808D3A78 03E00008 */  jr      $ra                        
/* 0140C 808D3A7C 00000000 */  nop


