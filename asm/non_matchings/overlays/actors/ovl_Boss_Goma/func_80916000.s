glabel func_80916000
/* 005F0 80916000 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 005F4 80916004 AFA40028 */  sw      $a0, 0x0028($sp)
/* 005F8 80916008 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 005FC 8091600C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00600 80916010 AFA5002C */  sw      $a1, 0x002C($sp)
/* 00604 80916014 0C028800 */  jal     Animation_GetLastFrame

/* 00608 80916018 24842360 */  addiu   $a0, $a0, 0x2360           ## $a0 = 06002360
/* 0060C 8091601C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00610 80916020 3C01C170 */  lui     $at, 0xC170                ## $at = C1700000
/* 00614 80916024 8FA30028 */  lw      $v1, 0x0028($sp)
/* 00618 80916028 468021A0 */  cvt.s.w $f6, $f4
/* 0061C 8091602C 44814000 */  mtc1    $at, $f8                   ## $f8 = -15.00
/* 00620 80916030 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00624 80916034 24A52360 */  addiu   $a1, $a1, 0x2360           ## $a1 = 06002360
/* 00628 80916038 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0062C 8091603C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00630 80916040 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00634 80916044 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00638 80916048 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 0063C 8091604C 0C029468 */  jal     Animation_Change

/* 00640 80916050 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00644 80916054 8FA2002C */  lw      $v0, 0x002C($sp)
/* 00648 80916058 8FA30028 */  lw      $v1, 0x0028($sp)
/* 0064C 8091605C 3C0E8091 */  lui     $t6, %hi(func_80916C9C)    ## $t6 = 80910000
/* 00650 80916060 25CE6C9C */  addiu   $t6, $t6, %lo(func_80916C9C) ## $t6 = 80916C9C
/* 00654 80916064 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00658 80916068 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0065C 8091606C 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 00660 80916070 00220821 */  addu    $at, $at, $v0
/* 00664 80916074 AC6E0190 */  sw      $t6, 0x0190($v1)           ## 00000190
/* 00668 80916078 A46001D0 */  sh      $zero, 0x01D0($v1)         ## 000001D0
/* 0066C 8091607C A46F01BE */  sh      $t7, 0x01BE($v1)           ## 000001BE
/* 00670 80916080 A0380AE3 */  sb      $t8, 0x0AE3($at)           ## 00010AE3
/* 00674 80916084 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00678 80916088 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 0067C 8091608C 00220821 */  addu    $at, $at, $v0
/* 00680 80916090 A4390AFA */  sh      $t9, 0x0AFA($at)           ## 00010AFA
/* 00684 80916094 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00688 80916098 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0068C 8091609C 03E00008 */  jr      $ra
/* 00690 809160A0 00000000 */  nop
