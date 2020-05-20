glabel func_809975C0
/* 01320 809975C0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01324 809975C4 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 01328 809975C8 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 0132C 809975CC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01330 809975D0 0C00B638 */  jal     Actor_MoveForward
              
/* 01334 809975D4 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 01338 809975D8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0133C 809975DC 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 01340 809975E0 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 01344 809975E4 44060000 */  mfc1    $a2, $f0                   
/* 01348 809975E8 44070000 */  mfc1    $a3, $f0                   
/* 0134C 809975EC 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 01350 809975F0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01354 809975F4 0C00B92D */  jal     func_8002E4B4              
/* 01358 809975F8 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 0135C 809975FC 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
/* 01360 80997600 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01364 80997604 3C058099 */  lui     $a1, %hi(func_809976B8)    ## $a1 = 80990000
/* 01368 80997608 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 0136C 8099760C 53000026 */  beql    $t8, $zero, .L809976A8     
/* 01370 80997610 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 01374 80997614 0C2658A8 */  jal     func_809962A0              
/* 01378 80997618 24A576B8 */  addiu   $a1, $a1, %lo(func_809976B8) ## $a1 = 809976B8
/* 0137C 8099761C 3C198016 */  lui     $t9, %hi(gSaveContext+0xee2)
/* 01380 80997620 9739F542 */  lhu     $t9, %lo(gSaveContext+0xee2)($t9)
/* 01384 80997624 240A000A */  addiu   $t2, $zero, 0x000A         ## $t2 = 0000000A
/* 01388 80997628 33280001 */  andi    $t0, $t9, 0x0001           ## $t0 = 00000000
/* 0138C 8099762C 5500001E */  bnel    $t0, $zero, .L809976A8     
/* 01390 80997630 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 01394 80997634 8E090118 */  lw      $t1, 0x0118($s0)           ## 00000118
/* 01398 80997638 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0139C 8099763C 2405281D */  addiu   $a1, $zero, 0x281D         ## $a1 = 0000281D
/* 013A0 80997640 AFA9003C */  sw      $t1, 0x003C($sp)           
/* 013A4 80997644 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 013A8 80997648 A60A0164 */  sh      $t2, 0x0164($s0)           ## 00000164
/* 013AC 8099764C 8FAB003C */  lw      $t3, 0x003C($sp)           
/* 013B0 80997650 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 013B4 80997654 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 013B8 80997658 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 013BC 8099765C 0C26600F */  jal     func_8099803C              
/* 013C0 80997660 856701BC */  lh      $a3, 0x01BC($t3)           ## 000001BC
/* 013C4 80997664 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 013C8 80997668 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 013CC 8099766C 240C0014 */  addiu   $t4, $zero, 0x0014         ## $t4 = 00000014
/* 013D0 80997670 240D01F4 */  addiu   $t5, $zero, 0x01F4         ## $t5 = 000001F4
/* 013D4 80997674 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 013D8 80997678 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 013DC 8099767C AFAF0020 */  sw      $t7, 0x0020($sp)           
/* 013E0 80997680 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 013E4 80997684 AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 013E8 80997688 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 013EC 8099768C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 013F0 80997690 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 013F4 80997694 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 013F8 80997698 3C07428C */  lui     $a3, 0x428C                ## $a3 = 428C0000
/* 013FC 8099769C 0C00CC98 */  jal     func_80033260              
/* 01400 809976A0 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 01404 809976A4 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809976A8:
/* 01408 809976A8 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 0140C 809976AC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 01410 809976B0 03E00008 */  jr      $ra                        
/* 01414 809976B4 00000000 */  nop
