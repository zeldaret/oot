glabel func_80AD167C
/* 021DC 80AD167C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 021E0 80AD1680 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 021E4 80AD1684 C4860028 */  lwc1    $f6, 0x0028($a0)           ## 00000028
/* 021E8 80AD1688 C4840080 */  lwc1    $f4, 0x0080($a0)           ## 00000080
/* 021EC 80AD168C 240E000D */  addiu   $t6, $zero, 0x000D         ## $t6 = 0000000D
/* 021F0 80AD1690 AC8E02B0 */  sw      $t6, 0x02B0($a0)           ## 000002B0
/* 021F4 80AD1694 4606203C */  c.lt.s  $f4, $f6                   
/* 021F8 80AD1698 3C01C110 */  lui     $at, 0xC110                ## $at = C1100000
/* 021FC 80AD169C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02200 80AD16A0 240600C8 */  addiu   $a2, $zero, 0x00C8         ## $a2 = 000000C8
/* 02204 80AD16A4 45000004 */  bc1f    .L80AD16B8                 
/* 02208 80AD16A8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0220C 80AD16AC 44814000 */  mtc1    $at, $f8                   ## $f8 = -9.00
/* 02210 80AD16B0 00000000 */  nop
/* 02214 80AD16B4 E4880068 */  swc1    $f8, 0x0068($a0)           ## 00000068
.L80AD16B8:
/* 02218 80AD16B8 848F008A */  lh      $t7, 0x008A($a0)           ## 0000008A
/* 0221C 80AD16BC A48002F0 */  sh      $zero, 0x02F0($a0)         ## 000002F0
/* 02220 80AD16C0 24180050 */  addiu   $t8, $zero, 0x0050         ## $t8 = 00000050
/* 02224 80AD16C4 A48F0032 */  sh      $t7, 0x0032($a0)           ## 00000032
/* 02228 80AD16C8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0222C 80AD16CC 0C00D09B */  jal     func_8003426C              
/* 02230 80AD16D0 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 02234 80AD16D4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02238 80AD16D8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0223C 80AD16DC 2405389E */  addiu   $a1, $zero, 0x389E         ## $a1 = 0000389E
/* 02240 80AD16E0 3C0580AD */  lui     $a1, %hi(func_80AD1700)    ## $a1 = 80AD0000
/* 02244 80AD16E4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02248 80AD16E8 0C2B3D28 */  jal     func_80ACF4A0              
/* 0224C 80AD16EC 24A51700 */  addiu   $a1, $a1, %lo(func_80AD1700) ## $a1 = 80AD1700
/* 02250 80AD16F0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02254 80AD16F4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02258 80AD16F8 03E00008 */  jr      $ra                        
/* 0225C 80AD16FC 00000000 */  nop
