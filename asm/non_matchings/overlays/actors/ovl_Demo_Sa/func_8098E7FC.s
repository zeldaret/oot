.late_rodata
glabel D_80990F34
 .word 0xC61C4000

.text
glabel func_8098E7FC
/* 0039C 8098E7FC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 003A0 8098E800 AFA40028 */  sw      $a0, 0x0028($sp)
/* 003A4 8098E804 AFA5002C */  sw      $a1, 0x002C($sp)
/* 003A8 8098E808 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 003AC 8098E80C 8FA50028 */  lw      $a1, 0x0028($sp)
/* 003B0 8098E810 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 003B4 8098E814 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 003B8 8098E818 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 003BC 8098E81C 24E721D8 */  addiu   $a3, $a3, 0x21D8           ## $a3 = 060021D8
/* 003C0 8098E820 24C6B1A0 */  addiu   $a2, $a2, 0xB1A0           ## $a2 = 0600B1A0
/* 003C4 8098E824 AFA00010 */  sw      $zero, 0x0010($sp)
/* 003C8 8098E828 AFA00014 */  sw      $zero, 0x0014($sp)
/* 003CC 8098E82C AFA00018 */  sw      $zero, 0x0018($sp)
/* 003D0 8098E830 0C0291BE */  jal     SkelAnime_InitSV
/* 003D4 8098E834 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 003D8 8098E838 3C018099 */  lui     $at, %hi(D_80990F34)       ## $at = 80990000
/* 003DC 8098E83C 8FA40028 */  lw      $a0, 0x0028($sp)
/* 003E0 8098E840 C4240F34 */  lwc1    $f4, %lo(D_80990F34)($at)
/* 003E4 8098E844 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 003E8 8098E848 0C263942 */  jal     func_8098E508
/* 003EC 8098E84C E48400BC */  swc1    $f4, 0x00BC($a0)           ## 000000BC
/* 003F0 8098E850 8FA40028 */  lw      $a0, 0x0028($sp)
/* 003F4 8098E854 0C263947 */  jal     func_8098E51C
/* 003F8 8098E858 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 003FC 8098E85C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00400 8098E860 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00404 8098E864 03E00008 */  jr      $ra
/* 00408 8098E868 00000000 */  nop
