glabel EnFw_Update
/* 00EAC 80A1F44C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00EB0 80A1F450 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00EB4 80A1F454 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00EB8 80A1F458 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00EBC 80A1F45C AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00EC0 80A1F460 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00EC4 80A1F464 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00EC8 80A1F468 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00ECC 80A1F46C 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 00ED0 80A1F470 24012000 */  addiu   $at, $zero, 0x2000         ## $at = 00002000
/* 00ED4 80A1F474 31CF2000 */  andi    $t7, $t6, 0x2000           ## $t7 = 00000000
/* 00ED8 80A1F478 51E10028 */  beql    $t7, $at, .L80A1F51C       
/* 00EDC 80A1F47C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00EE0 80A1F480 0C00B638 */  jal     Actor_MoveForward
              
/* 00EE4 80A1F484 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EE8 80A1F488 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00EEC 80A1F48C 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 00EF0 80A1F490 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00EF4 80A1F494 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00EF8 80A1F498 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00EFC 80A1F49C 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 00F00 80A1F4A0 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 00F04 80A1F4A4 0C00B92D */  jal     func_8002E4B4              
/* 00F08 80A1F4A8 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00F0C 80A1F4AC 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 00F10 80A1F4B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F14 80A1F4B4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00F18 80A1F4B8 0320F809 */  jalr    $ra, $t9                   
/* 00F1C 80A1F4BC 00000000 */  nop
/* 00F20 80A1F4C0 86080208 */  lh      $t0, 0x0208($s0)           ## 00000208
/* 00F24 80A1F4C4 5500000F */  bnel    $t0, $zero, .L80A1F504     
/* 00F28 80A1F4C8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00F2C 80A1F4CC 8609020A */  lh      $t1, 0x020A($s0)           ## 0000020A
/* 00F30 80A1F4D0 5520000C */  bnel    $t1, $zero, .L80A1F504     
/* 00F34 80A1F4D4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00F38 80A1F4D8 8E0B0190 */  lw      $t3, 0x0190($s0)           ## 00000190
/* 00F3C 80A1F4DC 3C0A80A2 */  lui     $t2, %hi(func_80A1ECD4)    ## $t2 = 80A20000
/* 00F40 80A1F4E0 254AECD4 */  addiu   $t2, $t2, %lo(func_80A1ECD4) ## $t2 = 80A1ECD4
/* 00F44 80A1F4E4 154B0006 */  bne     $t2, $t3, .L80A1F500       
/* 00F48 80A1F4E8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00F4C 80A1F4EC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00F50 80A1F4F0 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00F54 80A1F4F4 02212821 */  addu    $a1, $s1, $at              
/* 00F58 80A1F4F8 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00F5C 80A1F4FC 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
.L80A1F500:
/* 00F60 80A1F500 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80A1F504:
/* 00F64 80A1F504 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00F68 80A1F508 02212821 */  addu    $a1, $s1, $at              
/* 00F6C 80A1F50C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00F70 80A1F510 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00F74 80A1F514 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
/* 00F78 80A1F518 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A1F51C:
/* 00F7C 80A1F51C 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00F80 80A1F520 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00F84 80A1F524 03E00008 */  jr      $ra                        
/* 00F88 80A1F528 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000


