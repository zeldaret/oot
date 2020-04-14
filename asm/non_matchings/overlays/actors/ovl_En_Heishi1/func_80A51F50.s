glabel func_80A51F50
/* 00C80 80A51F50 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00C84 80A51F54 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00C88 80A51F58 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00C8C 80A51F5C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00C90 80A51F60 AFA5002C */  sw      $a1, 0x002C($sp)
/* 00C94 80A51F64 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00C98 80A51F68 24845C30 */  addiu   $a0, $a0, 0x5C30           ## $a0 = 06005C30
/* 00C9C 80A51F6C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00CA0 80A51F70 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00CA4 80A51F74 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 00CA8 80A51F78 468021A0 */  cvt.s.w $f6, $f4
/* 00CAC 80A51F7C 8FA40028 */  lw      $a0, 0x0028($sp)
/* 00CB0 80A51F80 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00CB4 80A51F84 24A55C30 */  addiu   $a1, $a1, 0x5C30           ## $a1 = 06005C30
/* 00CB8 80A51F88 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00CBC 80A51F8C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00CC0 80A51F90 4600320D */  trunc.w.s $f8, $f6
/* 00CC4 80A51F94 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00CC8 80A51F98 E7B20018 */  swc1    $f18, 0x0018($sp)
/* 00CCC 80A51F9C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00CD0 80A51FA0 440F4000 */  mfc1    $t7, $f8
/* 00CD4 80A51FA4 00000000 */  nop
/* 00CD8 80A51FA8 000FC400 */  sll     $t8, $t7, 16
/* 00CDC 80A51FAC 0018CC03 */  sra     $t9, $t8, 16
/* 00CE0 80A51FB0 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 00CE4 80A51FB4 00000000 */  nop
/* 00CE8 80A51FB8 46805420 */  cvt.s.w $f16, $f10
/* 00CEC 80A51FBC 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00CF0 80A51FC0 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 00CF4 80A51FC4 8FA20028 */  lw      $v0, 0x0028($sp)
/* 00CF8 80A51FC8 3C0980A5 */  lui     $t1, %hi(func_80A51FEC)    ## $t1 = 80A50000
/* 00CFC 80A51FCC 2408001E */  addiu   $t0, $zero, 0x001E         ## $t0 = 0000001E
/* 00D00 80A51FD0 25291FEC */  addiu   $t1, $t1, %lo(func_80A51FEC) ## $t1 = 80A51FEC
/* 00D04 80A51FD4 A44802A8 */  sh      $t0, 0x02A8($v0)           ## 000002A8
/* 00D08 80A51FD8 AC49025C */  sw      $t1, 0x025C($v0)           ## 0000025C
/* 00D0C 80A51FDC 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00D10 80A51FE0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00D14 80A51FE4 03E00008 */  jr      $ra
/* 00D18 80A51FE8 00000000 */  nop
