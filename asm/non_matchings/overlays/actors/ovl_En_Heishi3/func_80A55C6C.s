glabel func_80A55C6C
/* 0062C 80A55C6C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00630 80A55C70 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00634 80A55C74 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00638 80A55C78 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0063C 80A55C7C AFA5002C */  sw      $a1, 0x002C($sp)
/* 00640 80A55C80 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00644 80A55C84 24845C30 */  addiu   $a0, $a0, 0x5C30           ## $a0 = 06005C30
/* 00648 80A55C88 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0064C 80A55C8C 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00650 80A55C90 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 00654 80A55C94 468021A0 */  cvt.s.w $f6, $f4
/* 00658 80A55C98 8FA40028 */  lw      $a0, 0x0028($sp)
/* 0065C 80A55C9C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00660 80A55CA0 24A55C30 */  addiu   $a1, $a1, 0x5C30           ## $a1 = 06005C30
/* 00664 80A55CA4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00668 80A55CA8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0066C 80A55CAC 4600320D */  trunc.w.s $f8, $f6
/* 00670 80A55CB0 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00674 80A55CB4 E7B20018 */  swc1    $f18, 0x0018($sp)
/* 00678 80A55CB8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0067C 80A55CBC 440F4000 */  mfc1    $t7, $f8
/* 00680 80A55CC0 00000000 */  nop
/* 00684 80A55CC4 000FC400 */  sll     $t8, $t7, 16
/* 00688 80A55CC8 0018CC03 */  sra     $t9, $t8, 16
/* 0068C 80A55CCC 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 00690 80A55CD0 00000000 */  nop
/* 00694 80A55CD4 46805420 */  cvt.s.w $f16, $f10
/* 00698 80A55CD8 0C029468 */  jal     SkelAnime_ChangeAnim

/* 0069C 80A55CDC E7B00010 */  swc1    $f16, 0x0010($sp)
/* 006A0 80A55CE0 8FA90028 */  lw      $t1, 0x0028($sp)
/* 006A4 80A55CE4 3C0880A5 */  lui     $t0, %hi(func_80A55D00)    ## $t0 = 80A50000
/* 006A8 80A55CE8 25085D00 */  addiu   $t0, $t0, %lo(func_80A55D00) ## $t0 = 80A55D00
/* 006AC 80A55CEC AD28025C */  sw      $t0, 0x025C($t1)           ## 0000025C
/* 006B0 80A55CF0 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 006B4 80A55CF4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 006B8 80A55CF8 03E00008 */  jr      $ra
/* 006BC 80A55CFC 00000000 */  nop
