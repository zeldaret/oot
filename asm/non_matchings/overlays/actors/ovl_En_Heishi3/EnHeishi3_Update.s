glabel EnHeishi3_Update
/* 0076C 80A55DAC 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00770 80A55DB0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00774 80A55DB4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00778 80A55DB8 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 0077C 80A55DBC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00780 80A55DC0 0C00B56E */  jal     Actor_SetHeight
              
/* 00784 80A55DC4 3C054270 */  lui     $a1, 0x4270                ## $a1 = 42700000
/* 00788 80A55DC8 860E0274 */  lh      $t6, 0x0274($s0)           ## 00000274
/* 0078C 80A55DCC 86020272 */  lh      $v0, 0x0272($s0)           ## 00000272
/* 00790 80A55DD0 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00794 80A55DD4 10400003 */  beq     $v0, $zero, .L80A55DE4     
/* 00798 80A55DD8 A60F0274 */  sh      $t7, 0x0274($s0)           ## 00000274
/* 0079C 80A55DDC 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 007A0 80A55DE0 A6180272 */  sh      $t8, 0x0272($s0)           ## 00000272
.L80A55DE4:
/* 007A4 80A55DE4 8E19025C */  lw      $t9, 0x025C($s0)           ## 0000025C
/* 007A8 80A55DE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007AC 80A55DEC 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 007B0 80A55DF0 0320F809 */  jalr    $ra, $t9                   
/* 007B4 80A55DF4 00000000 */  nop
/* 007B8 80A55DF8 8A090030 */  lwl     $t1, 0x0030($s0)           ## 00000030
/* 007BC 80A55DFC 9A090033 */  lwr     $t1, 0x0033($s0)           ## 00000033
/* 007C0 80A55E00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007C4 80A55E04 AA0900B4 */  swl     $t1, 0x00B4($s0)           ## 000000B4
/* 007C8 80A55E08 BA0900B7 */  swr     $t1, 0x00B7($s0)           ## 000000B7
/* 007CC 80A55E0C 96090034 */  lhu     $t1, 0x0034($s0)           ## 00000034
/* 007D0 80A55E10 0C00B638 */  jal     Actor_MoveForward
              
/* 007D4 80A55E14 A60900B8 */  sh      $t1, 0x00B8($s0)           ## 000000B8
/* 007D8 80A55E18 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 007DC 80A55E1C 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 007E0 80A55E20 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 007E4 80A55E24 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 007E8 80A55E28 240A001C */  addiu   $t2, $zero, 0x001C         ## $t2 = 0000001C
/* 007EC 80A55E2C 44060000 */  mfc1    $a2, $f0                   
/* 007F0 80A55E30 44070000 */  mfc1    $a3, $f0                   
/* 007F4 80A55E34 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 007F8 80A55E38 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 007FC 80A55E3C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00800 80A55E40 0C00B92D */  jal     func_8002E4B4              
/* 00804 80A55E44 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00808 80A55E48 2606027C */  addiu   $a2, $s0, 0x027C           ## $a2 = 0000027C
/* 0080C 80A55E4C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 0000027C
/* 00810 80A55E50 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 00814 80A55E54 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 00818 80A55E58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0081C 80A55E5C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00820 80A55E60 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00824 80A55E64 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00828 80A55E68 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 0082C 80A55E6C 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 00830 80A55E70 00812821 */  addu    $a1, $a0, $at              
/* 00834 80A55E74 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00838 80A55E78 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0083C 80A55E7C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00840 80A55E80 03E00008 */  jr      $ra                        
/* 00844 80A55E84 00000000 */  nop
