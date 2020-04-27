glabel EnSkjneedle_Update
/* 000EC 80B01F9C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 000F0 80B01FA0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 000F4 80B01FA4 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 000F8 80B01FA8 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 000FC 80B01FAC 848E01E0 */  lh      $t6, 0x01E0($a0)           ## 000001E0
/* 00100 80B01FB0 848201E2 */  lh      $v0, 0x01E2($a0)           ## 000001E2
/* 00104 80B01FB4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00108 80B01FB8 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 0010C 80B01FBC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00110 80B01FC0 10400003 */  beq     $v0, $zero, .L80B01FD0     
/* 00114 80B01FC4 A48F01E0 */  sh      $t7, 0x01E0($a0)           ## 000001E0
/* 00118 80B01FC8 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 0011C 80B01FCC A49801E2 */  sh      $t8, 0x01E2($a0)           ## 000001E2
.L80B01FD0:
/* 00120 80B01FD0 0C2C07DB */  jal     func_80B01F6C              
/* 00124 80B01FD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00128 80B01FD8 14400006 */  bne     $v0, $zero, .L80B01FF4     
/* 0012C 80B01FDC 00000000 */  nop
/* 00130 80B01FE0 861901E2 */  lh      $t9, 0x01E2($s0)           ## 000001E2
/* 00134 80B01FE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00138 80B01FE8 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 0013C 80B01FEC 17200005 */  bne     $t9, $zero, .L80B02004     
/* 00140 80B01FF0 00000000 */  nop
.L80B01FF4:
/* 00144 80B01FF4 0C00B55C */  jal     Actor_Kill
              
/* 00148 80B01FF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0014C 80B01FFC 1000001F */  beq     $zero, $zero, .L80B0207C   
/* 00150 80B02000 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B02004:
/* 00154 80B02004 0C00B58B */  jal     Actor_SetScale
              
/* 00158 80B02008 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 0000D70A
/* 0015C 80B0200C 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 00160 80B02010 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 00164 80B02014 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 00168 80B02018 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0016C 80B0201C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00170 80B02020 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00174 80B02024 02212821 */  addu    $a1, $s1, $at              
/* 00178 80B02028 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0017C 80B0202C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00180 80B02030 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00184 80B02034 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00188 80B02038 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0018C 80B0203C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00190 80B02040 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 00194 80B02044 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00198 80B02048 0C00B638 */  jal     Actor_MoveForward
              
/* 0019C 80B0204C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001A0 80B02050 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 001A4 80B02054 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 001A8 80B02058 24080007 */  addiu   $t0, $zero, 0x0007         ## $t0 = 00000007
/* 001AC 80B0205C AFA80014 */  sw      $t0, 0x0014($sp)           
/* 001B0 80B02060 44060000 */  mfc1    $a2, $f0                   
/* 001B4 80B02064 44070000 */  mfc1    $a3, $f0                   
/* 001B8 80B02068 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001BC 80B0206C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 001C0 80B02070 0C00B92D */  jal     func_8002E4B4              
/* 001C4 80B02074 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 001C8 80B02078 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B0207C:
/* 001CC 80B0207C 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 001D0 80B02080 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 001D4 80B02084 03E00008 */  jr      $ra                        
/* 001D8 80B02088 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
