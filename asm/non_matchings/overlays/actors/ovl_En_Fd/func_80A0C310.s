glabel func_80A0C310
/* 00C50 80A0C310 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C54 80A0C314 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00C58 80A0C318 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C5C 80A0C31C 8C8F0008 */  lw      $t7, 0x0008($a0)           ## 00000008
/* 00C60 80A0C320 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 00C64 80A0C324 8C8E000C */  lw      $t6, 0x000C($a0)           ## 0000000C
/* 00C68 80A0C328 AC8F0024 */  sw      $t7, 0x0024($a0)           ## 00000024
/* 00C6C 80A0C32C 8C8F0010 */  lw      $t7, 0x0010($a0)           ## 00000010
/* 00C70 80A0C330 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00C74 80A0C334 44813000 */  mtc1    $at, $f6                   ## $f6 = 255.00
/* 00C78 80A0C338 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 00C7C 80A0C33C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00C80 80A0C340 A480001C */  sh      $zero, 0x001C($a0)         ## 0000001C
/* 00C84 80A0C344 A09800C8 */  sb      $t8, 0x00C8($a0)           ## 000000C8
/* 00C88 80A0C348 A08004B4 */  sb      $zero, 0x04B4($a0)         ## 000004B4
/* 00C8C 80A0C34C 3C0580A1 */  lui     $a1, %hi(D_80A0DFEC)       ## $a1 = 80A10000
/* 00C90 80A0C350 AC8E0028 */  sw      $t6, 0x0028($a0)           ## 00000028
/* 00C94 80A0C354 AC8F002C */  sw      $t7, 0x002C($a0)           ## 0000002C
/* 00C98 80A0C358 E4840054 */  swc1    $f4, 0x0054($a0)           ## 00000054
/* 00C9C 80A0C35C E48604CC */  swc1    $f6, 0x04CC($a0)           ## 000004CC
/* 00CA0 80A0C360 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00CA4 80A0C364 24A5DFEC */  addiu   $a1, $a1, %lo(D_80A0DFEC)  ## $a1 = 80A0DFEC
/* 00CA8 80A0C368 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00CAC 80A0C36C 0C00D3B0 */  jal     func_80034EC0              
/* 00CB0 80A0C370 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00CB4 80A0C374 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00CB8 80A0C378 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00CBC 80A0C37C 24053981 */  addiu   $a1, $zero, 0x3981         ## $a1 = 00003981
/* 00CC0 80A0C380 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00CC4 80A0C384 3C1980A1 */  lui     $t9, %hi(func_80A0C3A0)    ## $t9 = 80A10000
/* 00CC8 80A0C388 2739C3A0 */  addiu   $t9, $t9, %lo(func_80A0C3A0) ## $t9 = 80A0C3A0
/* 00CCC 80A0C38C ACF90190 */  sw      $t9, 0x0190($a3)           ## 00000190
/* 00CD0 80A0C390 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00CD4 80A0C394 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00CD8 80A0C398 03E00008 */  jr      $ra                        
/* 00CDC 80A0C39C 00000000 */  nop
