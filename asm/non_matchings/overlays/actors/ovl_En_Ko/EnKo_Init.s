glabel EnKo_Init
/* 021E4 80A98F94 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 021E8 80A98F98 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 021EC 80A98F9C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 021F0 80A98FA0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 021F4 80A98FA4 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 021F8 80A98FA8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 021FC 80A98FAC 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 02200 80A98FB0 29E1000D */  slti    $at, $t7, 0x000D           
/* 02204 80A98FB4 10200009 */  beq     $at, $zero, .L80A98FDC     
/* 02208 80A98FB8 00000000 */  nop
/* 0220C 80A98FBC 0C2A5BD2 */  jal     func_80A96F48              
/* 02210 80A98FC0 00000000 */  nop
/* 02214 80A98FC4 10400005 */  beq     $v0, $zero, .L80A98FDC     
/* 02218 80A98FC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0221C 80A98FCC 0C2A5B6C */  jal     func_80A96DB0              
/* 02220 80A98FD0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02224 80A98FD4 54400004 */  bnel    $v0, $zero, .L80A98FE8     
/* 02228 80A98FD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A98FDC:
/* 0222C 80A98FDC 0C00B55C */  jal     Actor_Kill
              
/* 02230 80A98FE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02234 80A98FE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A98FE8:
/* 02238 80A98FE8 0C2A624D */  jal     func_80A98934              
/* 0223C 80A98FEC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02240 80A98FF0 14400003 */  bne     $v0, $zero, .L80A99000     
/* 02244 80A98FF4 00000000 */  nop
/* 02248 80A98FF8 0C00B55C */  jal     Actor_Kill
              
/* 0224C 80A98FFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A99000:
/* 02250 80A99000 3C1880AA */  lui     $t8, %hi(func_80A99048)    ## $t8 = 80AA0000
/* 02254 80A99004 27189048 */  addiu   $t8, $t8, %lo(func_80A99048) ## $t8 = 80A99048
/* 02258 80A99008 AE180190 */  sw      $t8, 0x0190($s0)           ## 00000190
/* 0225C 80A9900C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02260 80A99010 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02264 80A99014 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02268 80A99018 03E00008 */  jr      $ra                        
/* 0226C 80A9901C 00000000 */  nop
