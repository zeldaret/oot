glabel func_809CAEA0
/* 00390 809CAEA0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00394 809CAEA4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00398 809CAEA8 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0039C 809CAEAC 3C050600 */  lui     $a1, %hi(D_06001958)                ## $a1 = 06000000
/* 003A0 809CAEB0 24A51958 */  addiu   $a1, $a1, %lo(D_06001958)           ## $a1 = 06001958
/* 003A4 809CAEB4 AFA70018 */  sw      $a3, 0x0018($sp)
/* 003A8 809CAEB8 24840164 */  addiu   $a0, $a0, 0x0164           ## $a0 = 00000164
/* 003AC 809CAEBC 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 003B0 809CAEC0 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 003B4 809CAEC4 8FA70018 */  lw      $a3, 0x0018($sp)
/* 003B8 809CAEC8 3C18809D */  lui     $t8, %hi(func_809CB218)    ## $t8 = 809D0000
/* 003BC 809CAECC 240E1F40 */  addiu   $t6, $zero, 0x1F40         ## $t6 = 00001F40
/* 003C0 809CAED0 240F04B0 */  addiu   $t7, $zero, 0x04B0         ## $t7 = 000004B0
/* 003C4 809CAED4 2718B218 */  addiu   $t8, $t8, %lo(func_809CB218) ## $t8 = 809CB218
/* 003C8 809CAED8 A4EE01AE */  sh      $t6, 0x01AE($a3)           ## 000001AE
/* 003CC 809CAEDC A4EF01AC */  sh      $t7, 0x01AC($a3)           ## 000001AC
/* 003D0 809CAEE0 ACF801A8 */  sw      $t8, 0x01A8($a3)           ## 000001A8
/* 003D4 809CAEE4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 003D8 809CAEE8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003DC 809CAEEC 03E00008 */  jr      $ra
/* 003E0 809CAEF0 00000000 */  nop
