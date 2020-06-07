glabel func_80A1B22C
/* 0088C 80A1B22C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00890 80A1B230 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00894 80A1B234 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00898 80A1B238 AFA5002C */  sw      $a1, 0x002C($sp)
/* 0089C 80A1B23C 8498001C */  lh      $t8, 0x001C($a0)           ## 0000001C
/* 008A0 80A1B240 3C1980A2 */  lui     $t9, %hi(D_80A1D0C3)       ## $t9 = 80A20000
/* 008A4 80A1B244 3C0E80A2 */  lui     $t6, %hi(D_80A1CFF0)       ## $t6 = 80A20000
/* 008A8 80A1B248 0338C821 */  addu    $t9, $t9, $t8
/* 008AC 80A1B24C 9339D0C3 */  lbu     $t9, %lo(D_80A1D0C3)($t9)
/* 008B0 80A1B250 91CECFF0 */  lbu     $t6, %lo(D_80A1CFF0)($t6)
/* 008B4 80A1B254 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 008B8 80A1B258 55D90018 */  bnel    $t6, $t9, .L80A1B2BC
/* 008BC 80A1B25C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 008C0 80A1B260 0C028800 */  jal     SkelAnime_GetFrameCount

/* 008C4 80A1B264 248407BC */  addiu   $a0, $a0, 0x07BC           ## $a0 = 060007BC
/* 008C8 80A1B268 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 008CC 80A1B26C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 008D0 80A1B270 8FA40028 */  lw      $a0, 0x0028($sp)
/* 008D4 80A1B274 468021A0 */  cvt.s.w $f6, $f4
/* 008D8 80A1B278 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 008DC 80A1B27C 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 008E0 80A1B280 44070000 */  mfc1    $a3, $f0
/* 008E4 80A1B284 AFA80014 */  sw      $t0, 0x0014($sp)
/* 008E8 80A1B288 24A507BC */  addiu   $a1, $a1, 0x07BC           ## $a1 = 060007BC
/* 008EC 80A1B28C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 008F0 80A1B290 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 008F4 80A1B294 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 008F8 80A1B298 0C029468 */  jal     SkelAnime_ChangeAnim

/* 008FC 80A1B29C E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00900 80A1B2A0 0C286B0D */  jal     func_80A1AC34
/* 00904 80A1B2A4 8FA40028 */  lw      $a0, 0x0028($sp)
/* 00908 80A1B2A8 8FAA0028 */  lw      $t2, 0x0028($sp)
/* 0090C 80A1B2AC 3C0980A2 */  lui     $t1, %hi(func_80A1B2C8)    ## $t1 = 80A20000
/* 00910 80A1B2B0 2529B2C8 */  addiu   $t1, $t1, %lo(func_80A1B2C8) ## $t1 = 80A1B2C8
/* 00914 80A1B2B4 AD490354 */  sw      $t1, 0x0354($t2)           ## 00000354
/* 00918 80A1B2B8 8FBF0024 */  lw      $ra, 0x0024($sp)
.L80A1B2BC:
/* 0091C 80A1B2BC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00920 80A1B2C0 03E00008 */  jr      $ra
/* 00924 80A1B2C4 00000000 */  nop
