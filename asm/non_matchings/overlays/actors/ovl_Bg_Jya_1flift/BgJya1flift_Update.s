glabel BgJya1flift_Update
/* 00430 80892F90 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00434 80892F94 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 00438 80892F98 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0043C 80892F9C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00440 80892FA0 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00444 80892FA4 00451021 */  addu    $v0, $v0, $a1              
/* 00448 80892FA8 80421CBC */  lb      $v0, 0x1CBC($v0)           ## 00011CBC
/* 0044C 80892FAC 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00450 80892FB0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00454 80892FB4 10410003 */  beq     $v0, $at, .L80892FC4       
/* 00458 80892FB8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0045C 80892FBC 14400033 */  bne     $v0, $zero, .L8089308C     
/* 00460 80892FC0 00000000 */  nop
.L80892FC4:
/* 00464 80892FC4 8E1901B0 */  lw      $t9, 0x01B0($s0)           ## 000001B0
/* 00468 80892FC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0046C 80892FCC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00470 80892FD0 0320F809 */  jalr    $ra, $t9                   
/* 00474 80892FD4 00000000 */  nop
/* 00478 80892FD8 0C010D5B */  jal     func_8004356C              
/* 0047C 80892FDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00480 80892FE0 10400003 */  beq     $v0, $zero, .L80892FF0     
/* 00484 80892FE4 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 00488 80892FE8 10000001 */  beq     $zero, $zero, .L80892FF0   
/* 0048C 80892FEC 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L80892FF0:
/* 00490 80892FF0 8E0201B0 */  lw      $v0, 0x01B0($s0)           ## 000001B0
/* 00494 80892FF4 3C0E8089 */  lui     $t6, %hi(func_80892E58)    ## $t6 = 80890000
/* 00498 80892FF8 25CE2E58 */  addiu   $t6, $t6, %lo(func_80892E58) ## $t6 = 80892E58
/* 0049C 80892FFC 11C20004 */  beq     $t6, $v0, .L80893010       
/* 004A0 80893000 3C0F8089 */  lui     $t7, %hi(func_80892F50)    ## $t7 = 80890000
/* 004A4 80893004 25EF2F50 */  addiu   $t7, $t7, %lo(func_80892F50) ## $t7 = 80892F50
/* 004A8 80893008 55E20013 */  bnel    $t7, $v0, .L80893058       
/* 004AC 8089300C A20301B8 */  sb      $v1, 0x01B8($s0)           ## 000001B8
.L80893010:
/* 004B0 80893010 10600006 */  beq     $v1, $zero, .L8089302C     
/* 004B4 80893014 24050030 */  addiu   $a1, $zero, 0x0030         ## $a1 = 00000030
/* 004B8 80893018 8E240790 */  lw      $a0, 0x0790($s1)           ## 00000790
/* 004BC 8089301C 0C0169DF */  jal     func_8005A77C              
/* 004C0 80893020 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 004C4 80893024 1000000B */  beq     $zero, $zero, .L80893054   
/* 004C8 80893028 8FA30024 */  lw      $v1, 0x0024($sp)           
.L8089302C:
/* 004CC 8089302C 5460000A */  bnel    $v1, $zero, .L80893058     
/* 004D0 80893030 A20301B8 */  sb      $v1, 0x01B8($s0)           ## 000001B8
/* 004D4 80893034 921801B8 */  lbu     $t8, 0x01B8($s0)           ## 000001B8
/* 004D8 80893038 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 004DC 8089303C 53000006 */  beql    $t8, $zero, .L80893058     
/* 004E0 80893040 A20301B8 */  sb      $v1, 0x01B8($s0)           ## 000001B8
/* 004E4 80893044 8E240790 */  lw      $a0, 0x0790($s1)           ## 00000790
/* 004E8 80893048 0C0169DF */  jal     func_8005A77C              
/* 004EC 8089304C AFA30024 */  sw      $v1, 0x0024($sp)           
/* 004F0 80893050 8FA30024 */  lw      $v1, 0x0024($sp)           
.L80893054:
/* 004F4 80893054 A20301B8 */  sb      $v1, 0x01B8($s0)           ## 000001B8
.L80893058:
/* 004F8 80893058 26060164 */  addiu   $a2, $s0, 0x0164           ## $a2 = 00000164
/* 004FC 8089305C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000164
/* 00500 80893060 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00504 80893064 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00508 80893068 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0050C 8089306C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00510 80893070 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00514 80893074 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00518 80893078 02212821 */  addu    $a1, $s1, $at              
/* 0051C 8089307C 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 00520 80893080 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00524 80893084 10000004 */  beq     $zero, $zero, .L80893098   
/* 00528 80893088 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8089308C:
/* 0052C 8089308C 0C00B55C */  jal     Actor_Kill
              
/* 00530 80893090 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00534 80893094 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80893098:
/* 00538 80893098 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 0053C 8089309C 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00540 808930A0 03E00008 */  jr      $ra                        
/* 00544 808930A4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
