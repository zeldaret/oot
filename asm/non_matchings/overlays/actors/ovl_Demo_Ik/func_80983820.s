glabel func_80983820
/* 00520 80983820 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00524 80983824 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00528 80983828 AFB10028 */  sw      $s1, 0x0028($sp)
/* 0052C 8098382C AFB00024 */  sw      $s0, 0x0024($sp)
/* 00530 80983830 AFA5005C */  sw      $a1, 0x005C($sp)
/* 00534 80983834 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00538 80983838 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0053C 8098383C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00540 80983840 10400006 */  beq     $v0, $zero, .L8098385C
/* 00544 80983844 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00548 80983848 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0054C 8098384C 1041000B */  beq     $v0, $at, .L8098387C
/* 00550 80983850 3C0F0600 */  lui     $t7, 0x0600                ## $t7 = 06000000
/* 00554 80983854 10000010 */  beq     $zero, $zero, .L80983898
/* 00558 80983858 3C180600 */  lui     $t8, 0x0600                ## $t8 = 06000000
.L8098385C:
/* 0055C 8098385C 3C0E0600 */  lui     $t6, 0x0600                ## $t6 = 06000000
/* 00560 80983860 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00564 80983864 25CE0C90 */  addiu   $t6, $t6, 0x0C90           ## $t6 = 06000C90
/* 00568 80983868 3C110600 */  lui     $s1, 0x0600                ## $s1 = 06000000
/* 0056C 8098386C 44810000 */  mtc1    $at, $f0                   ## $f0 = 30.00
/* 00570 80983870 AFAE0048 */  sw      $t6, 0x0048($sp)
/* 00574 80983874 1000000E */  beq     $zero, $zero, .L809838B0
/* 00578 80983878 26310C6C */  addiu   $s1, $s1, 0x0C6C           ## $s1 = 06000C6C
.L8098387C:
/* 0057C 8098387C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00580 80983880 25EF0660 */  addiu   $t7, $t7, 0x0660           ## $t7 = 06000660
/* 00584 80983884 3C110600 */  lui     $s1, 0x0600                ## $s1 = 06000000
/* 00588 80983888 44810000 */  mtc1    $at, $f0                   ## $f0 = 10.00
/* 0058C 8098388C AFAF0048 */  sw      $t7, 0x0048($sp)
/* 00590 80983890 10000007 */  beq     $zero, $zero, .L809838B0
/* 00594 80983894 26310634 */  addiu   $s1, $s1, 0x0634           ## $s1 = 06000634
.L80983898:
/* 00598 80983898 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0059C 8098389C 27180380 */  addiu   $t8, $t8, 0x0380           ## $t8 = 06000380
/* 005A0 809838A0 3C110600 */  lui     $s1, 0x0600                ## $s1 = 06000000
/* 005A4 809838A4 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 005A8 809838A8 AFB80048 */  sw      $t8, 0x0048($sp)
/* 005AC 809838AC 2631035C */  addiu   $s1, $s1, 0x035C           ## $s1 = 0600035C
.L809838B0:
/* 005B0 809838B0 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 005B4 809838B4 44070000 */  mfc1    $a3, $f0
/* 005B8 809838B8 0C00AC78 */  jal     ActorShape_Init

/* 005BC 809838BC 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 005C0 809838C0 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 005C4 809838C4 26190190 */  addiu   $t9, $s0, 0x0190           ## $t9 = 00000190
/* 005C8 809838C8 2608019C */  addiu   $t0, $s0, 0x019C           ## $t0 = 0000019C
/* 005CC 809838CC 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 005D0 809838D0 AFA90018 */  sw      $t1, 0x0018($sp)
/* 005D4 809838D4 AFA80014 */  sw      $t0, 0x0014($sp)
/* 005D8 809838D8 AFB90010 */  sw      $t9, 0x0010($sp)
/* 005DC 809838DC AFA50034 */  sw      $a1, 0x0034($sp)
/* 005E0 809838E0 8FA4005C */  lw      $a0, 0x005C($sp)
/* 005E4 809838E4 8FA60048 */  lw      $a2, 0x0048($sp)
/* 005E8 809838E8 0C02915F */  jal     Skeleton_Init

/* 005EC 809838EC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 005F0 809838F0 0C028800 */  jal     Animation_GetLastFrame

/* 005F4 809838F4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 0600035C
/* 005F8 809838F8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 005FC 809838FC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00600 80983900 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 00604 80983904 468021A0 */  cvt.s.w $f6, $f4
/* 00608 80983908 44070000 */  mfc1    $a3, $f0
/* 0060C 8098390C AFAA0014 */  sw      $t2, 0x0014($sp)
/* 00610 80983910 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00614 80983914 02202825 */  or      $a1, $s1, $zero            ## $a1 = 0600035C
/* 00618 80983918 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0061C 8098391C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00620 80983920 0C029468 */  jal     Animation_Change

/* 00624 80983924 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00628 80983928 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0062C 8098392C 8FB00024 */  lw      $s0, 0x0024($sp)
/* 00630 80983930 8FB10028 */  lw      $s1, 0x0028($sp)
/* 00634 80983934 03E00008 */  jr      $ra
/* 00638 80983938 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
