glabel func_808FD4D4
/* 00594 808FD4D4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00598 808FD4D8 AFA60040 */  sw      $a2, 0x0040($sp)           
/* 0059C 808FD4DC 87AE0042 */  lh      $t6, 0x0042($sp)           
/* 005A0 808FD4E0 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 005A4 808FD4E4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005A8 808FD4E8 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 005AC 808FD4EC AFA5003C */  sw      $a1, 0x003C($sp)           
/* 005B0 808FD4F0 11C00003 */  beq     $t6, $zero, .L808FD500     
/* 005B4 808FD4F4 AFA70044 */  sw      $a3, 0x0044($sp)           
/* 005B8 808FD4F8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 005BC 808FD4FC 15C10010 */  bne     $t6, $at, .L808FD540       
.L808FD500:
/* 005C0 808FD500 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 005C4 808FD504 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 005C8 808FD508 87AF0046 */  lh      $t7, 0x0046($sp)           
/* 005CC 808FD50C 241801F4 */  addiu   $t8, $zero, 0x01F4         ## $t8 = 000001F4
/* 005D0 808FD510 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 005D4 808FD514 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 005D8 808FD518 AFA80020 */  sw      $t0, 0x0020($sp)           
/* 005DC 808FD51C AFB9001C */  sw      $t9, 0x001C($sp)           
/* 005E0 808FD520 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 005E4 808FD524 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 005E8 808FD528 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 005EC 808FD52C 260601D0 */  addiu   $a2, $s0, 0x01D0           ## $a2 = 000001D0
/* 005F0 808FD530 3C0741C8 */  lui     $a3, 0x41C8                ## $a3 = 41C80000
/* 005F4 808FD534 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 005F8 808FD538 0C00CC98 */  jal     Actor_SpawnFloorDustRing              
/* 005FC 808FD53C E7A40014 */  swc1    $f4, 0x0014($sp)           
.L808FD540:
/* 00600 808FD540 87A90042 */  lh      $t1, 0x0042($sp)           
/* 00604 808FD544 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00608 808FD548 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0060C 808FD54C 11200002 */  beq     $t1, $zero, .L808FD558     
/* 00610 808FD550 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00614 808FD554 1521000E */  bne     $t1, $at, .L808FD590       
.L808FD558:
/* 00618 808FD558 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 0061C 808FD55C 44813000 */  mtc1    $at, $f6                   ## $f6 = 8.00
/* 00620 808FD560 87AA0046 */  lh      $t2, 0x0046($sp)           
/* 00624 808FD564 240B01F4 */  addiu   $t3, $zero, 0x01F4         ## $t3 = 000001F4
/* 00628 808FD568 240C000A */  addiu   $t4, $zero, 0x000A         ## $t4 = 0000000A
/* 0062C 808FD56C 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 00630 808FD570 AFAD0020 */  sw      $t5, 0x0020($sp)           
/* 00634 808FD574 AFAC001C */  sw      $t4, 0x001C($sp)           
/* 00638 808FD578 AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 0063C 808FD57C 260601DC */  addiu   $a2, $s0, 0x01DC           ## $a2 = 000001DC
/* 00640 808FD580 3C0741C8 */  lui     $a3, 0x41C8                ## $a3 = 41C80000
/* 00644 808FD584 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00648 808FD588 0C00CC98 */  jal     Actor_SpawnFloorDustRing              
/* 0064C 808FD58C E7A60014 */  swc1    $f6, 0x0014($sp)           
.L808FD590:
/* 00650 808FD590 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00654 808FD594 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00658 808FD598 240539D7 */  addiu   $a1, $zero, 0x39D7         ## $a1 = 000039D7
/* 0065C 808FD59C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00660 808FD5A0 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00664 808FD5A4 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00668 808FD5A8 0C00CFA2 */  jal     func_80033E88              
/* 0066C 808FD5AC 2407000A */  addiu   $a3, $zero, 0x000A         ## $a3 = 0000000A
/* 00670 808FD5B0 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00674 808FD5B4 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00678 808FD5B8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 0067C 808FD5BC 03E00008 */  jr      $ra                        
/* 00680 808FD5C0 00000000 */  nop
