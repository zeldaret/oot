glabel EnRd_Update
/* 01EDC 80AE42DC 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01EE0 80AE42E0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01EE4 80AE42E4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01EE8 80AE42E8 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 01EEC 80AE42EC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01EF0 80AE42F0 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 01EF4 80AE42F4 0C2B9045 */  jal     func_80AE4114              
/* 01EF8 80AE42F8 AFAE0034 */  sw      $t6, 0x0034($sp)           
/* 01EFC 80AE42FC 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 01F00 80AE4300 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 01F04 80AE4304 844F1422 */  lh      $t7, 0x1422($v0)           ## 8015FA82
/* 01F08 80AE4308 51E00006 */  beql    $t7, $zero, .L80AE4324     
/* 01F0C 80AE430C 9202031C */  lbu     $v0, 0x031C($s0)           ## 0000031C
/* 01F10 80AE4310 92180318 */  lbu     $t8, 0x0318($s0)           ## 00000318
/* 01F14 80AE4314 57000003 */  bnel    $t8, $zero, .L80AE4324     
/* 01F18 80AE4318 9202031C */  lbu     $v0, 0x031C($s0)           ## 0000031C
/* 01F1C 80AE431C A4401422 */  sh      $zero, 0x1422($v0)         ## 8015FA82
/* 01F20 80AE4320 9202031C */  lbu     $v0, 0x031C($s0)           ## 0000031C
.L80AE4324:
/* 01F24 80AE4324 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 01F28 80AE4328 50410038 */  beql    $v0, $at, .L80AE440C       
/* 01F2C 80AE432C 8E0B0028 */  lw      $t3, 0x0028($s0)           ## 00000028
/* 01F30 80AE4330 9219031B */  lbu     $t9, 0x031B($s0)           ## 0000031B
/* 01F34 80AE4334 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 01F38 80AE4338 17210003 */  bne     $t9, $at, .L80AE4348       
/* 01F3C 80AE433C 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 01F40 80AE4340 50410032 */  beql    $v0, $at, .L80AE440C       
/* 01F44 80AE4344 8E0B0028 */  lw      $t3, 0x0028($s0)           ## 00000028
.L80AE4348:
/* 01F48 80AE4348 92020306 */  lbu     $v0, 0x0306($s0)           ## 00000306
/* 01F4C 80AE434C 10400002 */  beq     $v0, $zero, .L80AE4358     
/* 01F50 80AE4350 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = 8015E65F
/* 01F54 80AE4354 A2080306 */  sb      $t0, 0x0306($s0)           ## 00000306
.L80AE4358:
/* 01F58 80AE4358 8E190308 */  lw      $t9, 0x0308($s0)           ## 00000308
/* 01F5C 80AE435C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F60 80AE4360 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 01F64 80AE4364 0320F809 */  jalr    $ra, $t9                   
/* 01F68 80AE4368 00000000 */  nop
/* 01F6C 80AE436C 9202031B */  lbu     $v0, 0x031B($s0)           ## 0000031B
/* 01F70 80AE4370 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 01F74 80AE4374 5041000B */  beql    $v0, $at, .L80AE43A4       
/* 01F78 80AE4378 860900B4 */  lh      $t1, 0x00B4($s0)           ## 000000B4
/* 01F7C 80AE437C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01F80 80AE4380 C6060068 */  lwc1    $f6, 0x0068($s0)           ## 00000068
/* 01F84 80AE4384 46062032 */  c.eq.s  $f4, $f6                   
/* 01F88 80AE4388 00000000 */  nop
/* 01F8C 80AE438C 45030005 */  bc1tl   .L80AE43A4                 
/* 01F90 80AE4390 860900B4 */  lh      $t1, 0x00B4($s0)           ## 000000B4
/* 01F94 80AE4394 0C00B638 */  jal     Actor_MoveForward
              
/* 01F98 80AE4398 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F9C 80AE439C 9202031B */  lbu     $v0, 0x031B($s0)           ## 0000031B
/* 01FA0 80AE43A0 860900B4 */  lh      $t1, 0x00B4($s0)           ## 000000B4
.L80AE43A4:
/* 01FA4 80AE43A4 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 01FA8 80AE43A8 55200013 */  bnel    $t1, $zero, .L80AE43F8     
/* 01FAC 80AE43AC 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 01FB0 80AE43B0 50410011 */  beql    $v0, $at, .L80AE43F8       
/* 01FB4 80AE43B4 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 01FB8 80AE43B8 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 01FBC 80AE43BC C60A0068 */  lwc1    $f10, 0x0068($s0)          ## 00000068
/* 01FC0 80AE43C0 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 01FC4 80AE43C4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01FC8 80AE43C8 460A4032 */  c.eq.s  $f8, $f10                  
/* 01FCC 80AE43CC 3C0641F0 */  lui     $a2, 0x41F0                ## $a2 = 41F00000
/* 01FD0 80AE43D0 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 01FD4 80AE43D4 3C01420C */  lui     $at, 0x420C                ## $at = 420C0000
/* 01FD8 80AE43D8 45010006 */  bc1t    .L80AE43F4                 
/* 01FDC 80AE43DC 240A001D */  addiu   $t2, $zero, 0x001D         ## $t2 = 0000001D
/* 01FE0 80AE43E0 44818000 */  mtc1    $at, $f16                  ## $f16 = 35.00
/* 01FE4 80AE43E4 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 01FE8 80AE43E8 0C00B92D */  jal     func_8002E4B4              
/* 01FEC 80AE43EC E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 01FF0 80AE43F0 9202031B */  lbu     $v0, 0x031B($s0)           ## 0000031B
.L80AE43F4:
/* 01FF4 80AE43F4 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
.L80AE43F8:
/* 01FF8 80AE43F8 14410003 */  bne     $v0, $at, .L80AE4408       
/* 01FFC 80AE43FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02000 80AE4400 0C2B8FE7 */  jal     func_80AE3F9C              
/* 02004 80AE4404 8FA50044 */  lw      $a1, 0x0044($sp)           
.L80AE4408:
/* 02008 80AE4408 8E0B0028 */  lw      $t3, 0x0028($s0)           ## 00000028
.L80AE440C:
/* 0200C 80AE440C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 02010 80AE4410 8E0C0024 */  lw      $t4, 0x0024($s0)           ## 00000024
/* 02014 80AE4414 AE0B003C */  sw      $t3, 0x003C($s0)           ## 0000003C
/* 02018 80AE4418 C612003C */  lwc1    $f18, 0x003C($s0)          ## 0000003C
/* 0201C 80AE441C 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 02020 80AE4420 920D00AF */  lbu     $t5, 0x00AF($s0)           ## 000000AF
/* 02024 80AE4424 AE0C0038 */  sw      $t4, 0x0038($s0)           ## 00000038
/* 02028 80AE4428 46049180 */  add.s   $f6, $f18, $f4             
/* 0202C 80AE442C 8E0C002C */  lw      $t4, 0x002C($s0)           ## 0000002C
/* 02030 80AE4430 E606003C */  swc1    $f6, 0x003C($s0)           ## 0000003C
/* 02034 80AE4434 19A0001E */  blez    $t5, .L80AE44B0            
/* 02038 80AE4438 AE0C0040 */  sw      $t4, 0x0040($s0)           ## 00000040
/* 0203C 80AE443C 920E031B */  lbu     $t6, 0x031B($s0)           ## 0000031B
/* 02040 80AE4440 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 02044 80AE4444 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02048 80AE4448 11C10019 */  beq     $t6, $at, .L80AE44B0       
/* 0204C 80AE444C 26050320 */  addiu   $a1, $s0, 0x0320           ## $a1 = 00000320
/* 02050 80AE4450 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 02054 80AE4454 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 02058 80AE4458 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 0205C 80AE445C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02060 80AE4460 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 02064 80AE4464 00812821 */  addu    $a1, $a0, $at              
/* 02068 80AE4468 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0206C 80AE446C 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 02070 80AE4470 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 02074 80AE4474 9218031B */  lbu     $t8, 0x031B($s0)           ## 0000031B
/* 02078 80AE4478 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 0207C 80AE447C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02080 80AE4480 17010008 */  bne     $t8, $at, .L80AE44A4       
/* 02084 80AE4484 8FA20034 */  lw      $v0, 0x0034($sp)           
/* 02088 80AE4488 80480844 */  lb      $t0, 0x0844($v0)           ## 00000844
/* 0208C 80AE448C 51000009 */  beql    $t0, $zero, .L80AE44B4     
/* 02090 80AE4490 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02094 80AE4494 9219031D */  lbu     $t9, 0x031D($s0)           ## 0000031D
/* 02098 80AE4498 90490845 */  lbu     $t1, 0x0845($v0)           ## 00000845
/* 0209C 80AE449C 53290005 */  beql    $t9, $t1, .L80AE44B4       
/* 020A0 80AE44A0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE44A4:
/* 020A4 80AE44A4 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 020A8 80AE44A8 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 020AC 80AE44AC 8FA60028 */  lw      $a2, 0x0028($sp)           
.L80AE44B0:
/* 020B0 80AE44B0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE44B4:
/* 020B4 80AE44B4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 020B8 80AE44B8 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 020BC 80AE44BC 03E00008 */  jr      $ra                        
/* 020C0 80AE44C0 00000000 */  nop
