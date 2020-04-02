glabel func_80AEBFD8
/* 013C8 80AEBFD8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 013CC 80AEBFDC AFBF0024 */  sw      $ra, 0x0024($sp)
/* 013D0 80AEBFE0 AFA40028 */  sw      $a0, 0x0028($sp)
/* 013D4 80AEBFE4 AFA5002C */  sw      $a1, 0x002C($sp)
/* 013D8 80AEBFE8 0C2BAD0E */  jal     func_80AEB438
/* 013DC 80AEBFEC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 013E0 80AEBFF0 1040001B */  beq     $v0, $zero, .L80AEC060
/* 013E4 80AEBFF4 8FAE002C */  lw      $t6, 0x002C($sp)
/* 013E8 80AEBFF8 94440004 */  lhu     $a0, 0x0004($v0)           ## 00000004
/* 013EC 80AEBFFC 95C31D74 */  lhu     $v1, 0x1D74($t6)           ## 00001D74
/* 013F0 80AEC000 248FFFFE */  addiu   $t7, $a0, 0xFFFE           ## $t7 = FFFFFFFE
/* 013F4 80AEC004 006F082A */  slt     $at, $v1, $t7
/* 013F8 80AEC008 14200015 */  bne     $at, $zero, .L80AEC060
/* 013FC 80AEC00C 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 01400 80AEC010 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01404 80AEC014 24848100 */  addiu   $a0, $a0, 0x8100           ## $a0 = 06008100
/* 01408 80AEC018 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0140C 80AEC01C 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 01410 80AEC020 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 01414 80AEC024 468021A0 */  cvt.s.w $f6, $f4
/* 01418 80AEC028 8FA40028 */  lw      $a0, 0x0028($sp)
/* 0141C 80AEC02C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01420 80AEC030 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 01424 80AEC034 AFB80014 */  sw      $t8, 0x0014($sp)
/* 01428 80AEC038 24A58100 */  addiu   $a1, $a1, 0x8100           ## $a1 = 06008100
/* 0142C 80AEC03C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01430 80AEC040 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01434 80AEC044 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01438 80AEC048 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 0143C 80AEC04C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01440 80AEC050 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01444 80AEC054 8FA80028 */  lw      $t0, 0x0028($sp)
/* 01448 80AEC058 24190006 */  addiu   $t9, $zero, 0x0006         ## $t9 = 00000006
/* 0144C 80AEC05C AD190264 */  sw      $t9, 0x0264($t0)           ## 00000264
.L80AEC060:
/* 01450 80AEC060 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01454 80AEC064 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01458 80AEC068 03E00008 */  jr      $ra
/* 0145C 80AEC06C 00000000 */  nop


