glabel func_80AC4288
/* 015E8 80AC4288 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 015EC 80AC428C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 015F0 80AC4290 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 015F4 80AC4294 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 015F8 80AC4298 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 015FC 80AC429C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01600 80AC42A0 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 01604 80AC42A4 0C042F6F */  jal     func_8010BDBC              
/* 01608 80AC42A8 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 0160C 80AC42AC 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 01610 80AC42B0 14410036 */  bne     $v0, $at, .L80AC438C       
/* 01614 80AC42B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01618 80AC42B8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0161C 80AC42BC 0C2B0E21 */  jal     EnOssan_Exit              
/* 01620 80AC42C0 26260014 */  addiu   $a2, $s1, 0x0014           ## $a2 = 00000014
/* 01624 80AC42C4 54400032 */  bnel    $v0, $zero, .L80AC4390     
/* 01628 80AC42C8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0162C 80AC42CC 0C041AF2 */  jal     func_80106BC8              
/* 01630 80AC42D0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01634 80AC42D4 10400009 */  beq     $v0, $zero, .L80AC42FC     
/* 01638 80AC42D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0163C 80AC42DC 0C2B1088 */  jal     func_80AC4220              
/* 01640 80AC42E0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01644 80AC42E4 50400006 */  beql    $v0, $zero, .L80AC4300     
/* 01648 80AC42E8 8E020224 */  lw      $v0, 0x0224($s0)           ## 00000224
/* 0164C 80AC42EC 0C01E221 */  jal     func_80078884              
/* 01650 80AC42F0 24044808 */  addiu   $a0, $zero, 0x4808         ## $a0 = 00004808
/* 01654 80AC42F4 10000026 */  beq     $zero, $zero, .L80AC4390   
/* 01658 80AC42F8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC42FC:
/* 0165C 80AC42FC 8E020224 */  lw      $v0, 0x0224($s0)           ## 00000224
.L80AC4300:
/* 01660 80AC4300 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01664 80AC4304 04410011 */  bgez    $v0, .L80AC434C            
/* 01668 80AC4308 00000000 */  nop
/* 0166C 80AC430C 0C2B0F46 */  jal     func_80AC3D18              
/* 01670 80AC4310 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 01674 80AC4314 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 01678 80AC4318 1041001C */  beq     $v0, $at, .L80AC438C       
/* 0167C 80AC431C 304300FF */  andi    $v1, $v0, 0x00FF           ## $v1 = 00000000
/* 01680 80AC4320 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 01684 80AC4324 A2030252 */  sb      $v1, 0x0252($s0)           ## 00000252
/* 01688 80AC4328 A60E01FC */  sh      $t6, 0x01FC($s0)           ## 000001FC
/* 0168C 80AC432C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01690 80AC4330 0C021BC0 */  jal     Interface_SetDoAction              
/* 01694 80AC4334 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 01698 80AC4338 AE000288 */  sw      $zero, 0x0288($s0)         ## 00000288
/* 0169C 80AC433C 0C01E221 */  jal     func_80078884              
/* 016A0 80AC4340 24044809 */  addiu   $a0, $zero, 0x4809         ## $a0 = 00004809
/* 016A4 80AC4344 10000012 */  beq     $zero, $zero, .L80AC4390   
/* 016A8 80AC4348 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC434C:
/* 016AC 80AC434C 1840000F */  blez    $v0, .L80AC438C            
/* 016B0 80AC4350 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016B4 80AC4354 0C2B0F46 */  jal     func_80AC3D18              
/* 016B8 80AC4358 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 016BC 80AC435C 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 016C0 80AC4360 1041000A */  beq     $v0, $at, .L80AC438C       
/* 016C4 80AC4364 304300FF */  andi    $v1, $v0, 0x00FF           ## $v1 = 00000000
/* 016C8 80AC4368 240F0005 */  addiu   $t7, $zero, 0x0005         ## $t7 = 00000005
/* 016CC 80AC436C A2030252 */  sb      $v1, 0x0252($s0)           ## 00000252
/* 016D0 80AC4370 A60F01FC */  sh      $t7, 0x01FC($s0)           ## 000001FC
/* 016D4 80AC4374 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 016D8 80AC4378 0C021BC0 */  jal     Interface_SetDoAction              
/* 016DC 80AC437C 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 016E0 80AC4380 AE0002C0 */  sw      $zero, 0x02C0($s0)         ## 000002C0
/* 016E4 80AC4384 0C01E221 */  jal     func_80078884              
/* 016E8 80AC4388 24044809 */  addiu   $a0, $zero, 0x4809         ## $a0 = 00004809
.L80AC438C:
/* 016EC 80AC438C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC4390:
/* 016F0 80AC4390 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 016F4 80AC4394 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 016F8 80AC4398 03E00008 */  jr      $ra                        
/* 016FC 80AC439C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
