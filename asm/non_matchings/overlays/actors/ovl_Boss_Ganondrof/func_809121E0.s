glabel func_809121E0
/* 01BA0 809121E0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01BA4 809121E4 3C0E8091 */  lui     $t6, %hi(func_809122A4)    ## $t6 = 80910000
/* 01BA8 809121E8 25CE22A4 */  addiu   $t6, $t6, %lo(func_809122A4) ## $t6 = 809122A4
/* 01BAC 809121EC AFBF001C */  sw      $ra, 0x001C($sp)
/* 01BB0 809121F0 AFB00018 */  sw      $s0, 0x0018($sp)
/* 01BB4 809121F4 AFA5002C */  sw      $a1, 0x002C($sp)
/* 01BB8 809121F8 AFAE0024 */  sw      $t6, 0x0024($sp)
/* 01BBC 809121FC 8C8F0190 */  lw      $t7, 0x0190($a0)           ## 00000190
/* 01BC0 80912200 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01BC4 80912204 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 01BC8 80912208 11CF0011 */  beq     $t6, $t7, .L80912250
/* 01BCC 8091220C 00000000 */  nop
/* 01BD0 80912210 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 01BD4 80912214 0C028800 */  jal     SkelAnime_GetLastFrame

/* 01BD8 80912218 248408D8 */  addiu   $a0, $a0, 0x08D8           ## $a0 = 060108D8
/* 01BDC 8091221C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01BE0 80912220 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01BE4 80912224 24A508D8 */  addiu   $a1, $a1, 0x08D8           ## $a1 = 060108D8
/* 01BE8 80912228 468021A0 */  cvt.s.w $f6, $f4
/* 01BEC 8091222C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01BF0 80912230 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 01BF4 80912234 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 01BF8 80912238 E60601D0 */  swc1    $f6, 0x01D0($s0)           ## 000001D0
/* 01BFC 8091223C 24180032 */  addiu   $t8, $zero, 0x0032         ## $t8 = 00000032
/* 01C00 80912240 2419003C */  addiu   $t9, $zero, 0x003C         ## $t9 = 0000003C
/* 01C04 80912244 A61801BC */  sh      $t8, 0x01BC($s0)           ## 000001BC
/* 01C08 80912248 1000000B */  beq     $zero, $zero, .L80912278
/* 01C0C 8091224C A21901C8 */  sb      $t9, 0x01C8($s0)           ## 000001C8
.L80912250:
/* 01C10 80912250 0C028800 */  jal     SkelAnime_GetLastFrame

/* 01C14 80912254 2484FAC8 */  addiu   $a0, $a0, 0xFAC8           ## $a0 = FFFFFAC8
/* 01C18 80912258 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 01C1C 8091225C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01C20 80912260 24A5FAC8 */  addiu   $a1, $a1, 0xFAC8           ## $a1 = 0600FAC8
/* 01C24 80912264 468042A0 */  cvt.s.w $f10, $f8
/* 01C28 80912268 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01C2C 8091226C 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 01C30 80912270 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 01C34 80912274 E60A01D0 */  swc1    $f10, 0x01D0($s0)          ## 000001D0
.L80912278:
/* 01C38 80912278 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01C3C 8091227C 8FA80024 */  lw      $t0, 0x0024($sp)
/* 01C40 80912280 A60001A2 */  sh      $zero, 0x01A2($s0)         ## 000001A2
/* 01C44 80912284 E600005C */  swc1    $f0, 0x005C($s0)           ## 0000005C
/* 01C48 80912288 AE080190 */  sw      $t0, 0x0190($s0)           ## 00000190
/* 01C4C 8091228C E6000064 */  swc1    $f0, 0x0064($s0)           ## 00000064
/* 01C50 80912290 8FBF001C */  lw      $ra, 0x001C($sp)
/* 01C54 80912294 8FB00018 */  lw      $s0, 0x0018($sp)
/* 01C58 80912298 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01C5C 8091229C 03E00008 */  jr      $ra
/* 01C60 809122A0 00000000 */  nop
