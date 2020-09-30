glabel func_809F43F0
/* 01130 809F43F0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01134 809F43F4 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 01138 809F43F8 AFB00030 */  sw      $s0, 0x0030($sp)
/* 0113C 809F43FC AFA5003C */  sw      $a1, 0x003C($sp)
/* 01140 809F4400 848E0264 */  lh      $t6, 0x0264($a0)           ## 00000264
/* 01144 809F4404 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01148 809F4408 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0114C 809F440C 55C00037 */  bnel    $t6, $zero, .L809F44EC
/* 01150 809F4410 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 01154 809F4414 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01158 809F4418 24840B70 */  addiu   $a0, $a0, 0x0B70           ## $a0 = 06000B70
/* 0115C 809F441C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01160 809F4420 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 01164 809F4424 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 01168 809F4428 468021A0 */  cvt.s.w $f6, $f4
/* 0116C 809F442C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01170 809F4430 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 01174 809F4434 24A50B70 */  addiu   $a1, $a1, 0x0B70           ## $a1 = 06000B70
/* 01178 809F4438 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0117C 809F443C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01180 809F4440 4600320D */  trunc.w.s $f8, $f6
/* 01184 809F4444 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01188 809F4448 44184000 */  mfc1    $t8, $f8
/* 0118C 809F444C 00000000 */  nop
/* 01190 809F4450 A618026E */  sh      $t8, 0x026E($s0)           ## 0000026E
/* 01194 809F4454 8619026E */  lh      $t9, 0x026E($s0)           ## 0000026E
/* 01198 809F4458 AFA80014 */  sw      $t0, 0x0014($sp)
/* 0119C 809F445C E7B20018 */  swc1    $f18, 0x0018($sp)
/* 011A0 809F4460 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 011A4 809F4464 00000000 */  nop
/* 011A8 809F4468 46805420 */  cvt.s.w $f16, $f10
/* 011AC 809F446C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 011B0 809F4470 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 011B4 809F4474 86090274 */  lh      $t1, 0x0274($s0)           ## 00000274
/* 011B8 809F4478 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 011BC 809F447C 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 011C0 809F4480 11210003 */  beq     $t1, $at, .L809F4490
/* 011C4 809F4484 3C064080 */  lui     $a2, 0x4080                ## $a2 = 40800000
/* 011C8 809F4488 240AFFFF */  addiu   $t2, $zero, 0xFFFF         ## $t2 = FFFFFFFF
/* 011CC 809F448C A60A0272 */  sh      $t2, 0x0272($s0)           ## 00000272
.L809F4490:
/* 011D0 809F4490 240B000A */  addiu   $t3, $zero, 0x000A         ## $t3 = 0000000A
/* 011D4 809F4494 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 011D8 809F4498 240D000F */  addiu   $t5, $zero, 0x000F         ## $t5 = 0000000F
/* 011DC 809F449C 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 011E0 809F44A0 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 011E4 809F44A4 AFAF0020 */  sw      $t7, 0x0020($sp)
/* 011E8 809F44A8 AFAE001C */  sw      $t6, 0x001C($sp)
/* 011EC 809F44AC AFAD0018 */  sw      $t5, 0x0018($sp)
/* 011F0 809F44B0 AFAC0014 */  sw      $t4, 0x0014($sp)
/* 011F4 809F44B4 AFAB0010 */  sw      $t3, 0x0010($sp)
/* 011F8 809F44B8 8FA4003C */  lw      $a0, 0x003C($sp)
/* 011FC 809F44BC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01200 809F44C0 0C00A5E9 */  jal     EffectSsHahen_SpawnBurst
/* 01204 809F44C4 AFA00024 */  sw      $zero, 0x0024($sp)
/* 01208 809F44C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0120C 809F44CC 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01210 809F44D0 2405387C */  addiu   $a1, $zero, 0x387C         ## $a1 = 0000387C
/* 01214 809F44D4 3C19809F */  lui     $t9, %hi(func_809F44FC)    ## $t9 = 809F0000
/* 01218 809F44D8 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 0121C 809F44DC 273944FC */  addiu   $t9, $t9, %lo(func_809F44FC) ## $t9 = 809F44FC
/* 01220 809F44E0 A2180218 */  sb      $t8, 0x0218($s0)           ## 00000218
/* 01224 809F44E4 AE190214 */  sw      $t9, 0x0214($s0)           ## 00000214
/* 01228 809F44E8 8FBF0034 */  lw      $ra, 0x0034($sp)
.L809F44EC:
/* 0122C 809F44EC 8FB00030 */  lw      $s0, 0x0030($sp)
/* 01230 809F44F0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01234 809F44F4 03E00008 */  jr      $ra
/* 01238 809F44F8 00000000 */  nop
